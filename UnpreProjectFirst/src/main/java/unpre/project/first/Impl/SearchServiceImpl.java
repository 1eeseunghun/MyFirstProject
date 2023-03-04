package unpre.project.first.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import unpre.project.first.DAO.SearchDAO;
import unpre.project.first.DAO.WriteDAO;
import unpre.project.first.service.SearchService;

@Service
public class SearchServiceImpl implements SearchService{

	@Autowired
	SearchDAO searchDao;
	
	//게시글 목록
	@Override  
	public List<Map<String, Object>> searchList(Map<String, Object> map){  
		return this.searchDao.selectList(map);
	}
	
	//닉네임 목록
	@Override  
	public List<Map<String, Object>> nicknameDistinct (Map<String, Object> map){  
		return this.searchDao.distinct(map);
	}
	
	//아이템 목록
	@Override  
	public List<Map<String, Object>> searchItem(Map<String, Object> map){  
		return this.searchDao.selectItem(map);
	}
}
