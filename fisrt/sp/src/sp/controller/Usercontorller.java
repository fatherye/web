package sp.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import sp.beans.Gift;
import sp.beans.Giftkeeper;
import sp.beans.GiftkeeperKey;
import sp.beans.Smsg;
import sp.beans.User;
import sp.beans.UserWithBLOBs;
import sp.beans.Userpay;
import sp.service.Giftkeeperservice;
import sp.service.Giftservice;
import sp.service.Smsgservice;
import sp.service.Userpayservice;
import sp.service.Userservice;
import sp.util.PaymentUtil;
import sp.util.UUIDUtils;

@SessionAttributes(value={"user","Smsglist"},types={String.class})
@Controller
public class Usercontorller {
	@Autowired
	Userservice userservice;
	@Autowired
	Smsgservice smsgservice;
	@Autowired
	Giftkeeperservice giftkeeperservice;
	@Autowired
	Userpayservice userpayservice;
	
	
	@RequestMapping("regedit")
	public String regedit(){
		return "regedit";
	}
	@RequestMapping("index")
	public String index(){
		
		return "index";
	}
	@RequestMapping("login")
	public String login(){
		return "login";
	}
	
	
	
	@RequestMapping(value="usercenter")
	public String usercenter(@RequestParam(value="cid")int cid,Map<String,Object> map){
		map.put("Umsg", cid);
		return "usercenter";
		
		
	}
	
	@RequestMapping(value="usermessage")
	public String usermessage(@RequestParam(value="userId")int userId,Map<String,Object> map){
		UserWithBLOBs usermsg= userservice.finduserbyid(userId);
		map.put("Umsg",usermsg );
		return "usermessage";
	}
	
	@RequestMapping(value="userimage")
	public String userimage(@RequestParam(value="userId")int userId,Map<String,Object> map){
		UserWithBLOBs usermsg= userservice.finduserbyid(userId);
		System.out.println(usermsg.getUserImage());
		map.put("Umsg",usermsg );
		return "userimage";
	}
	
	@RequestMapping(value="updateuserimage")
	public String updateuserimage(@RequestParam(value="userId")int userId,
			@RequestParam("imagename") MultipartFile file,
			Map<String,Object> map)throws Exception,IOException{
		int count=0;
		String imagetype=file.getContentType();
		if(!imagetype.equals("image/png")&&!imagetype.equals("image/jpg")&&!imagetype.equals("image/jpeg")){
			map.put("userId", ""+userId);
			map.put("message","上传失败,图片格式不合法，最好上传后缀名为png或jpg的文件");
			return "usermessageinfo";
		}
		String imagename=file.getOriginalFilename();
		String image="D:/垃圾池/workplace/sp/WebContent/image/"+imagename;
		String userImage="image/"+imagename;
		UserWithBLOBs userWithBLOBs=new UserWithBLOBs();
		userWithBLOBs.setUserImage(userImage);
		userWithBLOBs.setUserId(userId);
		count=userservice.changemessage(userWithBLOBs);
		
		if(count==1){
			file.transferTo(new File(image));
			map.put("message", "更改成功");
			map.put("userId", ""+userId);
			return "usermessageinfo";
		}
		map.put("message", "更改失败");
		map.put("userId",""+userId);
		return "usermessageinfo";
	}
	
	
	
	@RequestMapping("membercenter")
	public String membercenter(){
		return "membercenter";
	}
	
	
	
	
	
	
	@RequestMapping(value="doregedit",method=RequestMethod.POST)
	public String doregedit(UserWithBLOBs userWithBLOBs,Map<String,Object> map){
		userWithBLOBs.setUserImage("image/defalutuser.png");
		int count=userservice.doregedit(userWithBLOBs);
		System.out.println(count);
		if(count==1){
		map.put("message", "注册成功");
		
		return "info";
		}
		map.put("message","注册失败请检查你的输入信息");
		return "info";
	}
	
	@RequestMapping(value="dologin",method=RequestMethod.POST)
	public String dologin(UserWithBLOBs userWithBLOBs,Map<String,Object> map,Model m){
		List<UserWithBLOBs> usercheck=userservice.dologin(userWithBLOBs);
		List<Smsg> Smsglist=smsgservice.findSmsgbyuserid(usercheck.get(0).getUserId());
		
		System.out.println(Smsglist.size());
		String smsg=""+Smsglist.size()+"";
		if(usercheck.get(0).getUserStatement()>=10000){
			map.put("message", "你的账号已被停用");
			return "info";
		}
		if(usercheck.get(0).getUserPassword().equals(userWithBLOBs.getUserPassword())){
			m.addAttribute("Smsglist", Smsglist);
			
			map.put("user",usercheck.get(0));
			map.put("Smsg",smsg);
			return "index";
		}
		map.put("message", "密码或账号输入错误");
		return "info";
	}
	
	
	@RequestMapping("loginout")
	public String logout(HttpSession session,SessionStatus sessionStatus,Map<String,Object> map){
	
		if (session != null){
			//session中移除user 销毁session 可是我用了SessionAttributes来存储，所以这两句没用
            session.removeAttribute("user");
            session.invalidate();
            //
            sessionStatus.setComplete();
		}
		map.put("message", "你已经退出账号");
		return "info";
	}
	
	
	@RequestMapping(value="changemessage",method=RequestMethod.POST)
	public String changemessage(UserWithBLOBs userWithBLOBs,Map<String,Object> map){
		
		int count=userservice.changemessage(userWithBLOBs);
		if(count==1){
			map.put("message", "更改成功");
			map.put("userId", ""+userWithBLOBs.getUserId());
			return "usermessageinfo";
		}
		map.put("message", "更改失败");
		map.put("userId",""+ userWithBLOBs.getUserId());
		return "usermessageinfo";
	}
	
	
	
	
	
	
	@RequestMapping("giftpay")
	@ResponseBody
	public int giftpay(@RequestParam(value="userId")int userId,
			@RequestParam(value="giftId")int giftId,
			@RequestParam(value="result")int result,
			@RequestParam(value="number")int number){
		int success=1;
		int lost=0;
		int count2=0;
		int count3=0;
		UserWithBLOBs userWithBLOBs=new UserWithBLOBs();
		userWithBLOBs.setUserId(userId);
		userWithBLOBs.setUserGrade(result);
		int count1=userservice.giftpay(userWithBLOBs);
		
		GiftkeeperKey giftkeeperKey=new GiftkeeperKey();
		giftkeeperKey.setGiftId(giftId);
		giftkeeperKey.setUserId(userId);
		Giftkeeper giftkeeper=giftkeeperservice.findrecord(giftkeeperKey);
		if(giftkeeper==null){
			Giftkeeper newgiftkeeper=new Giftkeeper();
			newgiftkeeper.setGiftId(giftId);
			newgiftkeeper.setUserId(userId);
			newgiftkeeper.setGiftNumber(number);
			count2=giftkeeperservice.addrecord(newgiftkeeper);
		}
		else{
			int giftNumber=giftkeeper.getGiftNumber()+number;
			giftkeeper.setGiftNumber(giftNumber);
			giftkeeper.setGiftId(giftId);
			giftkeeper.setUserId(userId);
			count3=giftkeeperservice.updaterecord(giftkeeper);
		}
		if(count1==1&&(count2==1||count3==1)){
			return success;
		}
		return lost;
	}
	
	@RequestMapping("pay")
	public String pay(@RequestParam("userId")int userId){
		        //3:给易宝拼接参数,(将订单号,金额,时间,商品....,用户选择的银行,传递给易宝支付平台)
				// 组织发送支付公司需要哪些数据
		        Userpay userpay=new Userpay();
		        UUIDUtils id=new UUIDUtils();
		        String payid=id.getId();
		        userpay.setUserid(userId);
		        userpay.setUserpayid(payid);
		        userpayservice.insertrecord(userpay);
				String pd_FrpId = "CCB-NET-B2C";
				String p0_Cmd = "Buy";
				String p1_MerId = ResourceBundle.getBundle("keyandurl").getString("p1_MerId");
				String p2_Order = ""+payid+"";
				String p3_Amt = "0.01";
				String p4_Cur = "CNY";
				String p5_Pid = "";
				String p6_Pcat = "";
				String p7_Pdesc = "";
				// 支付成功回调地址 ---- 第三方支付公司会访问、用户访问
				// 第三方支付可以访问网址
				String p8_Url = ResourceBundle.getBundle("keyandurl").getString("responseURL");
				String p9_SAF = "";
				String pa_MP = "";
				String pr_NeedResponse = "1";
				// 加密hmac 需要密钥
				String keyValue = ResourceBundle.getBundle("keyandurl").getString("keyValue");
				String hmac = PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt,
						p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF, pa_MP,
						pd_FrpId, pr_NeedResponse, keyValue);

				
				//发送给第三方
				StringBuffer sb = new StringBuffer("https://www.yeepay.com/app-merchant-proxy/node?");
				sb.append("p0_Cmd=").append(p0_Cmd).append("&");
				sb.append("p1_MerId=").append(p1_MerId).append("&");
				sb.append("p2_Order=").append(p2_Order).append("&");
				sb.append("p3_Amt=").append(p3_Amt).append("&");
				sb.append("p4_Cur=").append(p4_Cur).append("&");
				sb.append("p5_Pid=").append(p5_Pid).append("&");
				sb.append("p6_Pcat=").append(p6_Pcat).append("&");
				sb.append("p7_Pdesc=").append(p7_Pdesc).append("&");
				sb.append("p8_Url=").append(p8_Url).append("&");
				sb.append("p9_SAF=").append(p9_SAF).append("&");
				sb.append("pa_MP=").append(pa_MP).append("&");
				sb.append("pd_FrpId=").append(pd_FrpId).append("&");
				sb.append("pr_NeedResponse=").append(pr_NeedResponse).append("&");
				sb.append("hmac=").append(hmac);
				
				
		        return "redirect:"+sb.toString();
	}
	
	//6:等待用户支付完成回来的方法
	@RequestMapping("callback")
		public String callback(@RequestParam("p1_MerId")String p1_MerId, 
				@RequestParam("r0_Cmd")String r0_Cmd,
				@RequestParam("r1_Code")String r1_Code,
				@RequestParam("r2_TrxId")String r2_TrxId,
				@RequestParam("r3_Amt")String r3_Amt,
				@RequestParam("r4_Cur")String r4_Cur,
				@RequestParam("r5_Pid")String r5_Pid,
				@RequestParam("r6_Order")String r6_Order,
				@RequestParam("r7_Uid")String r7_Uid,
				@RequestParam("r8_MP")String r8_MP,
				@RequestParam("r9_BType")String r9_BType,
				@RequestParam("rb_BankId")String rb_BankId,
				@RequestParam("ro_BankOrderId")String ro_BankOrderId,
				@RequestParam("rp_PayDate")String rp_PayDate,
				@RequestParam("rq_CardNo")String rq_CardNo,
				@RequestParam("ru_Trxtime")String ru_Trxtime,
				@RequestParam("hmac")String hmac,
				Map<String,Object> map) throws Exception {
			/*
			 * 1:获取易宝返回的数据并校验数据的合法性;(如果不合法直接提示即可)
			 * 2:如果合法,则继续判断支付的结果是否是成功的;
			 * 3:如果是成功的则修改数据库中的订单状态为1
			 * 4:提示订单支付的结果;
			 */
			//System.out.println("回来了.........................");
			//1:获取易宝返回的数据并校验数据的合法性;(如果不合法直接提示即可)
			// 身份校验 --- 判断是不是支付公司通知你
			String keyValue = ResourceBundle.getBundle("keyandurl").getString(
					"keyValue");

			// 自己对上面数据进行加密 --- 比较支付公司发过来hamc
			//校验数据是否被篡改了
			boolean isValid = PaymentUtil.verifyCallback(hmac, p1_MerId, r0_Cmd,
					r1_Code, r2_TrxId, r3_Amt, r4_Cur, r5_Pid, r6_Order, r7_Uid,
					r8_MP, r9_BType, keyValue);
			//2:如果合法,则继续判断支付的结果是否是成功的;
			System.out.println(r6_Order);
			Userpay userpay=userpayservice.findrecordbypayid(r6_Order);
			
			int userId=userpay.getUserid();
			UserWithBLOBs userWithBLOBs=userservice.finduserbyid(userId);
			
			if (isValid) {
				// 响应数据有效
				if (r9_BType.equals("1")) {
					// 浏览器重定向
					map.put("message", "您的订单号为:"+r6_Order+",金额为:"+r3_Amt+"已经支付成功,请重新登陆");
					map.put("userId", ""+userWithBLOBs.getUserId()+"");
					//3:修改订单状态为1
					userpay.setUserpaymoney(500);
					userpayservice.updaterecord(userpay);
					userWithBLOBs.setUserGrade(userWithBLOBs.getUserGrade()+500);
					userservice.report(userWithBLOBs);
					
					
				} else if (r9_BType.equals("2")) {
					// 服务器点对点 --- 支付公司通知你
					System.out.println("付款成功！222");
					// 修改订单状态 为已付款
					// 回复支付公司
					
				}else{
					//数据没有被篡改,但是支付失败了
					map.put("message", "您的订单号为:"+r6_Order+",金额为:"+r3_Amt+"支付失败,请重试~~");
				}
			} else {
				// 数据无效
				System.out.println("数据被篡改！");
				map.put("message", "客官不可以乱来,请不要修改任何参数...");
				map.put("userId", ""+userWithBLOBs.getUserId()+"");
			}
			return "usermessageinfo";
		}
	
	@RequestMapping("looked")
	@ResponseBody
	public int looked(@RequestParam(value="userId")int userId){
		int success=1;
		int lost=0;
		int count=0;
		List<Smsg> smsglist=smsgservice.findSmsgbyuserid(userId);
		for (int i = 0; i < smsglist.size(); i++) {
			smsglist.get(i).setSmsgStatement(1);
			smsgservice.update(smsglist.get(i));
			count++;
		}
		if(count==smsglist.size()){
			return success;
		}
		return lost;
	}
	
	
	@RequestMapping("checktheaccount")
	@ResponseBody
	public int checktheaccount(@RequestParam(value="userAccount")String userAccount){
		int success=1;
		int lost=0;
		UserWithBLOBs userWithBLOBs=new UserWithBLOBs();
		userWithBLOBs.setUserAccount(userAccount);
		List<UserWithBLOBs> userlist=userservice.dologin(userWithBLOBs);
		
		if(userlist.size()>0){
			return success;
		}
		return lost;
		
	}
}
