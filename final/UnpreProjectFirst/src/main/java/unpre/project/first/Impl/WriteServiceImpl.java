package unpre.project.first.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import unpre.project.first.DAO.WriteDAO;
import unpre.project.first.service.WriteService;

@Service
public class WriteServiceImpl implements WriteService{
	@Autowired
	WriteDAO writeDao;
		
		//게시글 작성
		@Override
		public String create(Map<String, Object> map) {
			int affectRowCount = this.writeDao.insert(map);
			if (affectRowCount == 1) {
				return map.get("b_num").toString();
			}
			return null;			
		}
		
		//게시글 상세
		@Override
		public Map<String, Object> detail(Map<String, Object> map){
		    return this.writeDao.selectDetail(map);
		}
		
		//게시글 수정
		@Override  
		public boolean edit(Map<String, Object> map) {  
		int boardUpdateCount = this.writeDao.update(map);
			return boardUpdateCount == 1;
		}
		
		//게시글 삭제
		@Override  
		public boolean remove(Map<String, Object> map) {
		int affectRowCount = this.writeDao.delete(map);  
		return affectRowCount == 1;

		}
		
		//게시글 목록
		@Override  
		public List<Map<String, Object>> list(Map<String, Object> map){  
		return this.writeDao.selectList(map);
		}
		
		//마이페이지 게시글 목록 추가
		@Override  
		public List<Map<String, Object>> plusMyBoard(Map<String, Object> map){  
		return this.writeDao.plusMyBoardList(map);
		}
}