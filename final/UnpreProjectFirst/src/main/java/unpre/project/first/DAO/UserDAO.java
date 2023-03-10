package unpre.project.first.DAO;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//회원가입
	public int insert(Map<String, Object> map) {
		  return this.sqlSessionTemplate.insert("user.user_insert", map);
		}
	
	//로그인
	public Map<String, Object> select(Map<String, Object> map) {
		  return this.sqlSessionTemplate.selectOne("user.login_check", map);
		}
	
	//마이페이지 정보변경
	public int userupdate(Map<String, Object> map) {
		  return this.sqlSessionTemplate.update("user.user_update", map);
		}
	
	//마이페이지 정보변경 후 게시글 닉네임 변경
		public int updateBoardNickname(Map<String, Object> map) {
			return this.sqlSessionTemplate.update("board.update_myboard_nickname", map);
			}
	
	//내 게시글 목록 메소드
	public List<Map<String, Object>> selectMyList(Map<String, Object> map) {
		return this.sqlSessionTemplate.selectList("board.myboard_list", map);
	}
	
}
