package com.ext.cms.manager.main;

import java.util.List;

import com.jeecms.cms.entity.main.CmsTopic;
import com.jeecms.cms.manager.main.CmsTopicMng;

public interface CmsTopicMng2 {
	
	public List<CmsTopic> getListForTag(Integer channelId, boolean recommend,
			boolean desc, Integer first,Integer count);

}
