package sp.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import sp.beans.Gift;
import sp.beans.GiftExample;

public interface GiftMapper {
    long countByExample(GiftExample example);

    int deleteByExample(GiftExample example);

    int deleteByPrimaryKey(Integer giftId);

    int insert(Gift record);

    int insertSelective(Gift record);

    List<Gift> selectByExampleWithBLOBs(GiftExample example);

    List<Gift> selectByExample(GiftExample example);

    Gift selectByPrimaryKey(Integer giftId);

    int updateByExampleSelective(@Param("record") Gift record, @Param("example") GiftExample example);

    int updateByExampleWithBLOBs(@Param("record") Gift record, @Param("example") GiftExample example);

    int updateByExample(@Param("record") Gift record, @Param("example") GiftExample example);

    int updateByPrimaryKeySelective(Gift record);

    int updateByPrimaryKeyWithBLOBs(Gift record);

    int updateByPrimaryKey(Gift record);
}