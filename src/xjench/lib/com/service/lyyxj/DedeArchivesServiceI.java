package xjench.lib.com.service.lyyxj;

import java.util.List;

import org.jeecgframework.core.common.service.CommonService;

import xjench.lib.com.entity.lyyxj.DedeArchivesEntity;

public interface DedeArchivesServiceI extends CommonService{
	public List<DedeArchivesEntity> getDedeArchives(int typeid, int pageNo);
	public int getDedeArchivePageCount(int typeid);
}
