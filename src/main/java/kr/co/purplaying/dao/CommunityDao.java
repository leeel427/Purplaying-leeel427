package kr.co.purplaying.dao;

import java.util.List;

import kr.co.purplaying.domain.CommunityDto;

public interface CommunityDao {

  List<CommunityDto> selectAll(int prdt_id) throws Exception;

  int insertChat(CommunityDto communityDto) throws Exception;

  int update(CommunityDto communityDto) throws Exception;

  int delete(int chat_no) throws Exception;

  List<CommunityDto> selectCommunity(Integer prdt_id) throws Exception;
}
