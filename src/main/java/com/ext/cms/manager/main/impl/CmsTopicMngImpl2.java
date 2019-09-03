package com.ext.cms.manager.main.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ext.cms.dao.main.CmsTopicDao2;
import com.ext.cms.manager.main.CmsTopicMng2;
import com.jeecms.cms.entity.main.CmsTopic;
import com.jeecms.cms.manager.main.ChannelMng;
import com.jeecms.cms.service.ChannelDeleteChecker;

@Service
@Transactional
public class CmsTopicMngImpl2 implements CmsTopicMng2, ChannelDeleteChecker {
	
		@Transactional(readOnly = true)
		public List<CmsTopic> getListForTag(Integer channelId, boolean recommend,
				boolean desc, Integer first,Integer count) {
			return dao.getList(channelId, recommend, desc, first,count, true);
		}

		@Override
		public String checkForChannelDelete(Integer channelId) {
			if (dao.countByChannelId(channelId) > 0) {
				return "cmsTopic.error.cannotDeleteChannel";
			} else {
				return null;
			}
		}
		
		private ChannelMng channelMng;
		private CmsTopicDao2 dao;

		@Autowired
		@Qualifier("cmsTopicDao2")
		public void setDao(CmsTopicDao2 dao) {
			this.dao = dao;
		}

		@Autowired
		public void setChannelMng(ChannelMng channelMng) {
			this.channelMng = channelMng;
		}


}
