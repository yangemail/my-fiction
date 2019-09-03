SET FOREIGN_KEY_CHECKS=0;

#
# Update /jeecmsv8f to /myfiction for jc_config table
#
UPDATE jc_config SET context_path = '/myfiction' WHERE config_id = 1; 

#
# Update 'site_name', 'keywords', 'description' for jc_site table
#
UPDATE jc_site SET site_name = 'xxx小说网(xxxxxx.com)', keywords = 'xxx小说网,最新章节,txt阅读', description = '打眼最新小说《xx》最新章节列表免费全文阅读，xx txt阅读,无弹窗广告阅读！xxx小说网(xxxxx.com)免费提供xxx清爽干净的纯文字章节在线阅读。' WHERE site_id = 1;

#
# Updating 'is_def' data for table jc_model
#
UPDATE jc_model SET is_def = 0 WHERE is_def <> 0;
#
# Dumping data for table jc_model - Add fiction into jc_model table
#
INSERT INTO jc_model (model_id, model_name, model_path, tpl_channel_prefix, tpl_content_prefix, title_img_width, title_img_height, content_img_width, content_img_height, priority, has_content, is_disabled, is_def, is_global, site_id) VALUES (100, '小说', 'fiction', 'fiction', 'fiction', 139, 139, 310, 310, 100, 1, 0, 1, 1, null);

#
# Dumping data for table jc_model_item - channel
#
# (Model of Channel)
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (458,100,'author','作者',10,'','','','3','30','','',1,0,1,1,1,1,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (459,100,'name','栏目名称',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,0,1,0,1,1,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (460,100,'path','访问路径',10,NULL,NULL,NULL,'3','30',NULL,NULL,2,0,1,0,1,1,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (461,100,'title','meta标题',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,0,1,0,1,1,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (462,100,'keywords','meta关键字',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,0,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (463,100,'description','meta描述',10,NULL,NULL,NULL,'3','30',NULL,NULL,4,1,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (464,100,'tplChannel','栏目模板',10,NULL,NULL,NULL,'3','30',NULL,NULL,6,0,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (465,100,'tplContent','内容模板',10,NULL,NULL,NULL,'3','30',NULL,NULL,6,0,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (466,100,'tplMobileChannel','栏目手机模板',10,NULL,NULL,NULL,'3','30',NULL,NULL,6,0,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (467,100,'channelStatic','栏目静态化',10,NULL,NULL,NULL,'3','30',NULL,NULL,4,1,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (468,100,'contentStatic','内容静态化',10,NULL,NULL,NULL,'3','30',NULL,NULL,4,1,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (469,100,'priority','排列顺序',10,NULL,NULL,NULL,'3','30',NULL,NULL,2,0,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (470,100,'display','显示',10,NULL,NULL,NULL,'3','30',NULL,NULL,8,0,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (471,100,'docImg','文档图片',10,NULL,NULL,NULL,'3','30',NULL,NULL,8,1,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (472,100,'afterCheck','审核后',10,NULL,NULL,NULL,'3','30',NULL,NULL,6,0,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (473,100,'commentControl','评论',10,NULL,NULL,NULL,'3','30',NULL,NULL,8,0,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (474,100,'allowUpdown','顶踩',10,NULL,NULL,NULL,'3','30',NULL,NULL,8,0,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (475,100,'allowShare','分享',10,NULL,NULL,NULL,'3','30',NULL,NULL,8,0,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (476,100,'allowScore','评分',10,NULL,NULL,NULL,'3','30',NULL,NULL,8,0,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (477,100,'viewGroupIds','浏览权限',10,NULL,NULL,NULL,'3','30',NULL,NULL,7,0,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (478,100,'contriGroupIds','投稿权限',10,NULL,NULL,NULL,'3','30',NULL,NULL,7,0,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (479,100,'link','外部链接',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,1,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (480,100,'titleImg','标题图',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,1,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (481,100,'contentImg','内容图',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,1,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (482,100,'txt','内容',10,NULL,NULL,NULL,'3','30',NULL,NULL,4,1,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (483,100,'txt1','内容1',10,NULL,NULL,NULL,'3','30',NULL,NULL,4,1,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (484,100,'txt2','内容2',10,NULL,NULL,NULL,'3','30',NULL,NULL,4,1,1,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (485,100,'txt3','内容3',10,NULL,NULL,NULL,'3','30',NULL,NULL,4,1,1,0,1,0,NULL,NULL);
# (Model of Content)
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (486,100,'channelId','栏目',10,NULL,NULL,NULL,'3','30',NULL,NULL,6,1,0,0,1,1,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (487,100,'title','标题',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,1,0,0,1,1,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (488,100,'shortTitle','简短标题',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,0,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (489,100,'titleColor','标题颜色',10,NULL,NULL,NULL,'3','30',NULL,NULL,6,0,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (490,100,'tagStr','Tag标签',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,1,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (491,100,'description','摘要',10,NULL,NULL,NULL,'3','30',NULL,NULL,4,1,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (492,100,'author','作者',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,0,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (493,100,'origin','来源',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,0,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (494,100,'viewGroupIds','浏览权限',10,NULL,NULL,NULL,'3','30',NULL,NULL,7,1,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (495,100,'topLevel','固顶级别',10,NULL,NULL,NULL,'3','30',NULL,NULL,6,0,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (496,100,'releaseDate','发布时间',10,NULL,NULL,NULL,'3','30',NULL,NULL,5,0,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (497,100,'typeId','内容类型',10,NULL,NULL,NULL,'3','30',NULL,NULL,6,0,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (498,100,'tplContent','指定模板',10,NULL,NULL,NULL,'3','30',NULL,NULL,6,0,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (499,100,'tplMobileContent','指定手机模板',10,NULL,NULL,NULL,'3','30',NULL,NULL,6,0,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (500,100,'typeImg','类型图',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,1,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (501,100,'titleImg','标题图',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,1,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (502,100,'contentImg','内容图',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,1,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (503,100,'attachments','附件',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,1,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (504,100,'media','多媒体',10,NULL,NULL,NULL,'3','30',NULL,NULL,1,1,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (505,100,'txt','内容',10,NULL,NULL,NULL,'3','30',NULL,NULL,4,1,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (506,100,'txt1','内容1',10,NULL,NULL,NULL,'3','30',NULL,NULL,4,1,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (507,100,'txt2','内容2',10,NULL,NULL,NULL,'3','30',NULL,NULL,4,1,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (508,100,'txt3','内容3',10,NULL,NULL,NULL,'3','30',NULL,NULL,4,1,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (509,100,'pictures','图片集',10,NULL,NULL,NULL,'3','30',NULL,NULL,4,1,0,0,1,0,NULL,NULL);
INSERT INTO `jc_model_item` (`modelitem_id`,`model_id`,`field`,`item_label`,`priority`,`def_value`,`opt_value`,`text_size`,`area_rows`,`area_cols`,`help`,`help_position`,`data_type`,`is_single`,`is_channel`,`is_custom`,`is_display`,`is_required`,`image_width`,`image_height`) VALUES (510,100,'charge','是否收费',10,NULL,NULL,NULL,'3','30',NULL,NULL,7,0,0,0,1,0,NULL,NULL);



#
# Dumping data for table jc_topic
#
INSERT INTO `jc_topic`(`topic_id`,`channel_id`,`topic_name`,`short_name`,`keywords`,`description`,`title_img`,`content_img`,`tpl_content`,`priority`,`is_recommend`,`initials`) VALUES (4,NULL,'玄幻魔法','玄幻魔法','','',NULL,NULL,'',0,0,'xhmf');
INSERT INTO `jc_topic`(`topic_id`,`channel_id`,`topic_name`,`short_name`,`keywords`,`description`,`title_img`,`content_img`,`tpl_content`,`priority`,`is_recommend`,`initials`) VALUES (5,NULL,'武侠修真',NULL,'','',NULL,NULL,'',1,0,'wxxz');
INSERT INTO `jc_topic`(`topic_id`,`channel_id`,`topic_name`,`short_name`,`keywords`,`description`,`title_img`,`content_img`,`tpl_content`,`priority`,`is_recommend`,`initials`) VALUES (6,NULL,'都市言情',NULL,'','',NULL,NULL,'',2,0,'dsyq');
INSERT INTO `jc_topic`(`topic_id`,`channel_id`,`topic_name`,`short_name`,`keywords`,`description`,`title_img`,`content_img`,`tpl_content`,`priority`,`is_recommend`,`initials`) VALUES (7,NULL,'历史军事',NULL,'','',NULL,NULL,'',3,0,'lsjs');
INSERT INTO `jc_topic`(`topic_id`,`channel_id`,`topic_name`,`short_name`,`keywords`,`description`,`title_img`,`content_img`,`tpl_content`,`priority`,`is_recommend`,`initials`) VALUES (8,NULL,'侦探推理',NULL,'','',NULL,NULL,'',4,0,'zttl');
INSERT INTO `jc_topic`(`topic_id`,`channel_id`,`topic_name`,`short_name`,`keywords`,`description`,`title_img`,`content_img`,`tpl_content`,`priority`,`is_recommend`,`initials`) VALUES (9,NULL,'网游动漫',NULL,'','',NULL,NULL,'',5,0,'wydm');
INSERT INTO `jc_topic`(`topic_id`,`channel_id`,`topic_name`,`short_name`,`keywords`,`description`,`title_img`,`content_img`,`tpl_content`,`priority`,`is_recommend`,`initials`) VALUES (10,NULL,'科幻小说',NULL,'','',NULL,NULL,'',6,0,'khxs');
INSERT INTO `jc_topic`(`topic_id`,`channel_id`,`topic_name`,`short_name`,`keywords`,`description`,`title_img`,`content_img`,`tpl_content`,`priority`,`is_recommend`,`initials`) VALUES (11,NULL,'恐怖灵异',NULL,'','',NULL,NULL,'',7,0,'kbly');
INSERT INTO `jc_topic`(`topic_id`,`channel_id`,`topic_name`,`short_name`,`keywords`,`description`,`title_img`,`content_img`,`tpl_content`,`priority`,`is_recommend`,`initials`) VALUES (12,NULL,'同人小说',NULL,'','',NULL,NULL,'',8,0,'trxs');
INSERT INTO `jc_topic`(`topic_id`,`channel_id`,`topic_name`,`short_name`,`keywords`,`description`,`title_img`,`content_img`,`tpl_content`,`priority`,`is_recommend`,`initials`) VALUES (13,NULL,'穿越小说',NULL,'','',NULL,NULL,'',9,0,'cyxs');




SET FOREIGN_KEY_CHECKS=1;