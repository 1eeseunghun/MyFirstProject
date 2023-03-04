package unpre.project.first.service;

import java.util.List;
import java.util.Map;

public interface SearchService {

	//게시글 검색
	List<Map<String, Object>> searchList(Map<String, Object> map);

	//닉네임 검색
	List<Map<String, Object>> nicknameDistinct(Map<String, Object> map);

	//아이템 검색
	List<Map<String, Object>> searchItem(Map<String, Object> map);

	
}
