package sp.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import sp.beans.Video;
import sp.beans.VideoExample;
import sp.beans.VideoWithBLOBs;

public interface VideoMapper {
    long countByExample(VideoExample example);

    int deleteByExample(VideoExample example);

    int deleteByPrimaryKey(Integer videoId);

    int insert(VideoWithBLOBs record);

    int insertSelective(VideoWithBLOBs record);

    List<VideoWithBLOBs> selectByExampleWithBLOBs(VideoExample example);
    List<VideoWithBLOBs> selectByExampleWithBLOBsandKind(VideoExample example);
    List<VideoWithBLOBs> selectByExampleWithBLOBsandUser(VideoExample example);
    List<Video> selectByExample(VideoExample example);

    VideoWithBLOBs selectByPrimaryKey(Integer videoId);

    int updateByExampleSelective(@Param("record") VideoWithBLOBs record, @Param("example") VideoExample example);

    int updateByExampleWithBLOBs(@Param("record") VideoWithBLOBs record, @Param("example") VideoExample example);

    int updateByExample(@Param("record") Video record, @Param("example") VideoExample example);

    int updateByPrimaryKeySelective(VideoWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(VideoWithBLOBs record);

    int updateByPrimaryKey(Video record);
}