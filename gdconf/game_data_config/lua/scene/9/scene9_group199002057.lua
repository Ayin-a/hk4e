-- 基础信息
local base_info = {
	group_id = 199002057
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 57001, gadget_id = 70710763, pos = { x = 344.684, y = 121.008, z = 115.456 }, rot = { x = 8.656, y = 3.258, z = 358.203 }, level = 20, area_id = 402 },
	{ config_id = 57006, gadget_id = 70360001, pos = { x = 347.826, y = 120.376, z = 121.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 57009, gadget_id = 70360001, pos = { x = 344.684, y = 121.008, z = 115.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 57010, gadget_id = 70710763, pos = { x = 344.684, y = 121.008, z = 115.456 }, rot = { x = 8.656, y = 3.258, z = 358.203 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1057007, name = "GADGET_CREATE_57007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_57007", action = "action_EVENT_GADGET_CREATE_57007", trigger_count = 0 },
	{ config_id = 1057008, name = "SELECT_OPTION_57008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_57008", action = "action_EVENT_SELECT_OPTION_57008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish_num", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1057002, name = "QUEST_FINISH_57002", event = EventType.EVENT_QUEST_FINISH, source = "7902124", condition = "", action = "action_EVENT_QUEST_FINISH_57002", trigger_count = 0 },
		{ config_id = 1057003, name = "GROUP_LOAD_57003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_57003", action = "action_EVENT_GROUP_LOAD_57003", trigger_count = 0 },
		{ config_id = 1057004, name = "QUEST_FINISH_57004", event = EventType.EVENT_QUEST_FINISH, source = "7902119", condition = "", action = "action_EVENT_QUEST_FINISH_57004", trigger_count = 0 },
		{ config_id = 1057005, name = "GROUP_LOAD_57005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_57005", action = "action_EVENT_GROUP_LOAD_57005", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 57001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 57006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 57009, 57010 },
		regions = { },
		triggers = { "GADGET_CREATE_57007", "SELECT_OPTION_57008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_57007(context, evt)
	if 57009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_57007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199002057, 57009, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_57008(context, evt)
	-- 判断是gadgetid 57009 option_id 64
	if 57009 ~= evt.param1 then
		return false	
	end
	
	if 64 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_57008(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=344, y=121, z=115}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "sfx_quest_WQ_ChuanLingShuShi_xylophone", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end