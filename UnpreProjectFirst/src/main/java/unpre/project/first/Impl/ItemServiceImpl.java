package unpre.project.first.Impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import unpre.project.first.DAO.ItemDAO;
import unpre.project.first.service.ItemService;
@Service
public class ItemServiceImpl implements ItemService{
	
	@Autowired
	 ItemDAO itemDao;
	
	@Override
	public String create(Map<String, Object> map) {
	    int affectRowCount = this.itemDao.insert(map);
	    if (affectRowCount ==  1) {
	        return map.get("item_num").toString();
	    }
	    return null;
		}
	 @Override
	   public Map<String,Object> introduce(Map<String,Object>map){
	      return this.itemDao.selectDetail(map);
	   }	 
}
