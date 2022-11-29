-- 基础信息
local base_info = {
	group_id = 220135005
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
	{ config_id = 5001, gadget_id = 70290137, pos = { x = 100.067, y = 101.180, z = -14.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 5004, gadget_id = 70360001, pos = { x = 100.000, y = 102.350, z = -14.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005002, name = "GADGET_CREATE_5002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5002", action = "action_EVENT_GADGET_CREATE_5002", trigger_count = 0 },
	{ config_id = 1005003, name = "SELECT_OPTION_5003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5003", action = "action_EVENT_SELECT_OPTION_5003", trigger_count = 0 },
	-- 开门任务期间，刷到2
	{ config_id = 1005005, name = "GROUP_LOAD_5005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_5005", trigger_count = 0 },
	-- 黑白空间结束刷到3
	{ config_id = 1005007, name = "GROUP_LOAD_5007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_5007", trigger_count = 0 }
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
		gadgets = { 5001 },
		regions = { },
		triggers = { "GROUP_LOAD_5005", "GROUP_LOAD_5007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5001, 5004 },
		regions = { },
		triggers = { "GADGET_CREATE_5002", "SELECT_OPTION_5003", "GROUP_LOAD_5007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_5005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_5002(context, evt)
	if 5004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220135005, 5004, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5003(context, evt)
	-- 判断是gadgetid 5004 option_id 1
	if 5004 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5003(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=108.311, y=-221.17, z=528.0668}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=0, z=0}}) then
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
function action_EVENT_GROUP_LOAD_5005(context, evt)
			    if ScriptLib.GetHostQuestState(context,4006615)==2 then
				ScriptLib.RefreshGroup(context, { group_id = 220135005, suite = 2 }) 
				end
			
			return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_5007(context, evt)
			    if ScriptLib.GetHostQuestState(context,4006616)==3 then
				ScriptLib.RefreshGroup(context, { group_id = 220135005, suite = 3 }) 
				end
			
			return 0
end