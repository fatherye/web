package sp.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import sp.beans.Dummp;
import sp.beans.DummpExample;

public interface DummpMapper {
    long countByExample(DummpExample example);

    int deleteByExample(DummpExample example);

    int deleteByPrimaryKey(Integer dummpId);

    int insert(Dummp record);

    int insertSelective(Dummp record);

    List<Dummp> selectByExample(DummpExample example);
    
    List<Dummp> selectByExamplewithUser(DummpExample example);

    Dummp selectByPrimaryKey(Integer dummpId);

    int updateByExampleSelective(@Param("record") Dummp record, @Param("example") DummpExample example);

    int updateByExample(@Param("record") Dummp record, @Param("example") DummpExample example);

    int updateByPrimaryKeySelective(Dummp record);

    int updateByPrimaryKey(Dummp record);
}