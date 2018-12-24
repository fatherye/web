package sp.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import sp.beans.Userpay;
import sp.beans.UserpayExample;

public interface UserpayMapper {
    long countByExample(UserpayExample example);

    int deleteByExample(UserpayExample example);

    int deleteByPrimaryKey(String userpayid);

    int insert(Userpay record);

    int insertSelective(Userpay record);

    List<Userpay> selectByExample(UserpayExample example);

    Userpay selectByPrimaryKey(String userpayid);

    int updateByExampleSelective(@Param("record") Userpay record, @Param("example") UserpayExample example);

    int updateByExample(@Param("record") Userpay record, @Param("example") UserpayExample example);

    int updateByPrimaryKeySelective(Userpay record);

    int updateByPrimaryKey(Userpay record);
}