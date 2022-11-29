-- 基础信息
local base_info = {
	group_id = 144002012
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
	{ config_id = 12008, npc_id = 2003052, pos = { x = 457.388, y = 122.372, z = -583.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 101 }
}

-- 装置
gadgets = {
	-- 挖掘点
	{ config_id = 12005, gadget_id = 70360001, pos = { x = 459.734, y = 121.411, z = -584.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 12007, gadget_id = 70211131, pos = { x = 457.390, y = 121.648, z = -583.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 2002500, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1012001, name = "QUEST_START_12001", event = EventType.EVENT_QUEST_START, source = "7900001", condition = "", action = "action_EVENT_QUEST_START_12001", trigger_count = 0 },
	{ config_id = 1012002, name = "SELECT_OPTION_12002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12002", action = "action_EVENT_SELECT_OPTION_12002", trigger_count = 0 },
	-- 宝箱打开完成任务
	{ config_id = 1012003, name = "GADGET_STATE_CHANGE_12003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12003", action = "action_EVENT_GADGET_STATE_CHANGE_12003", trigger_count = 0 },
	{ config_id = 1012004, name = "GADGET_CREATE_12004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12004", action = "action_EVENT_GADGET_CREATE_12004", trigger_count = 0 },
	{ config_id = 1012006, name = "QUEST_FINISH_12006", event = EventType.EVENT_QUEST_FINISH, source = "7900008", condition = "", action = "action_EVENT_QUEST_FINISH_12006" },
	-- 02开始刷挖掘保底
	{ config_id = 1012009, name = "QUEST_START_12009", event = EventType.EVENT_QUEST_START, source = "7900001", condition = "", action = "action_EVENT_QUEST_START_12009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "haspick", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
	end_suite = 4,
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
		gadgets = { 12005 },
		regions = { },
		triggers = { "SELECT_OPTION_12002", "GADGET_STATE_CHANGE_12003", "GADGET_CREATE_12004", "QUEST_FINISH_12006", "QUEST_START_12009" },
		npcs = { 12008 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 12007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_12003", "QUEST_FINISH_12006" },
		npcs = { 12008 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_12001" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_12001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144002012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12002(context, evt)
	-- 判断是gadgetid 12005 option_id 39
	if 12005 ~= evt.param1 then
		return false	
	end
	
	if 39 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900001finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144002012, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除指定group： 144002012 ；指定config：12005；物件身上指定option：39；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144002012, 12005, 39) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建id为12007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 12007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12003(context, evt)
	if 12007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900003finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002012, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_12004(context, evt)
	if 12005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_12004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002012, 12005, {39}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_12006(context, evt)
	-- 将configid为 12007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_12009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002012, 12005, {39}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end