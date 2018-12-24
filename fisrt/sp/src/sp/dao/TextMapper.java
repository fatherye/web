package sp.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import sp.beans.Text;
import sp.beans.TextExample;

public interface TextMapper {
    long countByExample(TextExample example);

    int deleteByExample(TextExample example);

    int deleteByPrimaryKey(Integer textId);

    int insert(Text record);

    int insertSelective(Text record);

    List<Text> selectByExampleWithBLOBs(TextExample example);
    List<Text> selectByExampleWithBLOBswithUser(TextExample example);

    List<Text> selectByExample(TextExample example);

    Text selectByPrimaryKey(Integer textId);
    Text selectByPrimaryKeywithUser(Integer textId);

    int updateByExampleSelective(@Param("record") Text record, @Param("example") TextExample example);

    int updateByExampleWithBLOBs(@Param("record") Text record, @Param("example") TextExample example);

    int updateByExample(@Param("record") Text record, @Param("example") TextExample example);

    int updateByPrimaryKeySelective(Text record);

    int updateByPrimaryKeyWithBLOBs(Text record);

    int updateByPrimaryKey(Text record);
}