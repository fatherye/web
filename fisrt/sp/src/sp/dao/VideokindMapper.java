package sp.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import sp.beans.Videokind;
import sp.beans.VideokindExample;

public interface VideokindMapper {
    long countByExample(VideokindExample example);

    int deleteByExample(VideokindExample example);

    int deleteByPrimaryKey(Integer videokindId);

    int insert(Videokind record);

    int insertSelective(Videokind record);

    List<Videokind> selectByExample(VideokindExample example);

    Videokind selectByPrimaryKey(Integer videokindId);

    int updateByExampleSelective(@Param("record") Videokind record, @Param("example") VideokindExample example);

    int updateByExample(@Param("record") Videokind record, @Param("example") VideokindExample example);

    int updateByPrimaryKeySelective(Videokind record);

    int updateByPrimaryKey(Videokind record);
}