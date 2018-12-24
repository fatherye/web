package sp.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import sp.beans.Giftkeeper;
import sp.beans.GiftkeeperExample;
import sp.beans.GiftkeeperKey;

public interface GiftkeeperMapper {
    long countByExample(GiftkeeperExample example);

    int deleteByExample(GiftkeeperExample example);

    int deleteByPrimaryKey(GiftkeeperKey key);

    int insert(Giftkeeper record);

    int insertSelective(Giftkeeper record);

    List<Giftkeeper> selectByExample(GiftkeeperExample example);
    
    List<Giftkeeper> selectByExamplewithGift(GiftkeeperExample example);

    Giftkeeper selectByPrimaryKey(GiftkeeperKey key);

    int updateByExampleSelective(@Param("record") Giftkeeper record, @Param("example") GiftkeeperExample example);

    int updateByExample(@Param("record") Giftkeeper record, @Param("example") GiftkeeperExample example);

    int updateByPrimaryKeySelective(Giftkeeper record);

    int updateByPrimaryKey(Giftkeeper record);
}