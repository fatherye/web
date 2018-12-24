package sp.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import sp.beans.Smsg;
import sp.beans.SmsgExample;

public interface SmsgMapper {
    long countByExample(SmsgExample example);

    int deleteByExample(SmsgExample example);

    int deleteByPrimaryKey(Integer smsgId);

    int insert(Smsg record);

    int insertSelective(Smsg record);

    List<Smsg> selectByExampleWithBLOBs(SmsgExample example);

    List<Smsg> selectByExample(SmsgExample example);

    Smsg selectByPrimaryKey(Integer smsgId);

    int updateByExampleSelective(@Param("record") Smsg record, @Param("example") SmsgExample example);

    int updateByExampleWithBLOBs(@Param("record") Smsg record, @Param("example") SmsgExample example);

    int updateByExample(@Param("record") Smsg record, @Param("example") SmsgExample example);

    int updateByPrimaryKeySelective(Smsg record);

    int updateByPrimaryKeyWithBLOBs(Smsg record);

    int updateByPrimaryKey(Smsg record);
}