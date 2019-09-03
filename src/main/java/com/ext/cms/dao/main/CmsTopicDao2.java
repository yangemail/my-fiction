package com.ext.cms.dao.main;

import java.util.List;

import com.jeecms.cms.dao.main.CmsTopicDao;
import com.jeecms.cms.entity.main.CmsTopic;

public interface CmsTopicDao2 extends CmsTopicDao {

	public List<CmsTopic> getList(Integer channelId, boolean recommend,
			boolean desc, Integer first,Integer count, boolean cacheable);
	
}
