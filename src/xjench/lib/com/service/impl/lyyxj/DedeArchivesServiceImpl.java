package xjench.lib.com.service.impl.lyyxj;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import xjench.lib.com.entity.lyyxj.DedeArchivesEntity;
import xjench.lib.com.service.lyyxj.DedeArchivesServiceI;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;

@Service("dedeArchivesService")
@Transactional
public class DedeArchivesServiceImpl extends CommonServiceImpl implements DedeArchivesServiceI {
	
	private static int itemCountSinglePage=16;
	/**获取相应页数的数据*/
	public List<DedeArchivesEntity> getDedeArchives(int typeid, int pageNo) {
		List<DedeArchivesEntity> DedeArchivesList=findHql("from DedeArchivesEntity where typeid=? order by sortrank desc", new Object[]{typeid});
		List<DedeArchivesEntity> productList = null ;
		int size= DedeArchivesList.size();
		int end=pageNo*itemCountSinglePage;
		int start=(pageNo-1)*itemCountSinglePage;
		if(start < size){
			if(size < end){
				end=size;
			}
			productList=DedeArchivesList.subList(start, end);
		}
		return productList;
	}
   /**获取总页数*/
	public int getDedeArchivePageCount(int typeid) {
		List<DedeArchivesEntity> DedeArchivesList=findHql("from DedeArchivesEntity where typeid=? order by sortrank desc",new Object[]{typeid});
		int itemSize=DedeArchivesList.size();
		
		int result=itemSize % itemCountSinglePage;
		int pageNo;
		if(result==0){
			pageNo=itemSize / itemCountSinglePage;
		}else{
			pageNo=itemSize / itemCountSinglePage+1;
		}
		return pageNo;
	}
	
}