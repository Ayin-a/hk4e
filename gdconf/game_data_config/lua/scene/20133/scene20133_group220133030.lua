-- 基础信息
local base_info = {
	group_id = 220133030
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
	{ config_id = 30001, gadget_id = 70360001, pos = { x = 497.987, y = 176.085, z = 1879.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1030002, name = "GADGET_CREATE_30002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_30002", action = "action_EVENT_GADGET_CREATE_30002", trigger_count = 0 },
	{ config_id = 1030003, name = "SELECT_OPTION_30003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_30003", action = "action_EVENT_SELECT_OPTION_30003", trigger_count = 0 },
	{ config_id = 1030004, name = "GROUP_LOAD_30004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_30004", trigger_count = 0 },
	{ config_id = 1030005, name = "GROUP_LOAD_30005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_30005", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_30004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 30001 },
		regions = { },
		triggers = { "GADGET_CREATE_30002", "SELECT_OPTION_30003", "GROUP_LOAD_30005" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_30002(context, evt)
	if 30001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_30002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220133030, 30001, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_30003(context, evt)
	-- 判断是gadgetid 30001 option_id 1
	if 30001 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_30003(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=1062.296, y=-388.4613, z=2108.598}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=90, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_30004(context, evt)
		    if ScriptLib.GetHostQuestState(context,4006912)==2 then
			ScriptLib.RefreshGroup(context, { group_id = 220133030, suite = 2 }) 
			end
		
		return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_30005(context, evt)
		    if ScriptLib.GetHostQuestState(context,4006912)==3 then
			ScriptLib.RefreshGroup(context, { group_id = 220133030, suite = 1 }) 
			end
		
		return 0
end