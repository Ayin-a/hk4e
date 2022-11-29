-- 基础信息
local base_info = {
	group_id = 133217297
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
	{ config_id = 297002, gadget_id = 70360286, pos = { x = -4501.080, y = 223.118, z = -3984.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 297003, gadget_id = 70360286, pos = { x = -4496.947, y = 222.719, z = -3992.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 297004, gadget_id = 70360286, pos = { x = -4501.390, y = 223.690, z = -3994.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1297001, name = "QUEST_START_297001", event = EventType.EVENT_QUEST_START, source = "7215532", condition = "", action = "action_EVENT_QUEST_START_297001", trigger_count = 0 },
	{ config_id = 1297005, name = "GADGET_CREATE_297005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_297005", action = "action_EVENT_GADGET_CREATE_297005", trigger_count = 0 },
	{ config_id = 1297006, name = "GADGET_CREATE_297006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_297006", action = "action_EVENT_GADGET_CREATE_297006", trigger_count = 0 },
	{ config_id = 1297007, name = "GADGET_CREATE_297007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_297007", action = "action_EVENT_GADGET_CREATE_297007", trigger_count = 0 },
	-- 2
	{ config_id = 1297008, name = "SELECT_OPTION_297008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_297008", action = "action_EVENT_SELECT_OPTION_297008", trigger_count = 0 },
	-- 3
	{ config_id = 1297009, name = "SELECT_OPTION_297009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_297009", action = "action_EVENT_SELECT_OPTION_297009", trigger_count = 0 },
	-- 4
	{ config_id = 1297010, name = "SELECT_OPTION_297010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_297010", action = "action_EVENT_SELECT_OPTION_297010", trigger_count = 0 },
	{ config_id = 1297014, name = "QUEST_FINISH_297014", event = EventType.EVENT_QUEST_FINISH, source = "7215532", condition = "", action = "action_EVENT_QUEST_FINISH_297014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "One", value = 0, no_refresh = true },
	{ config_id = 2, name = "Two", value = 0, no_refresh = true },
	{ config_id = 3, name = "Three", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1297011, name = "GROUP_LOAD_297011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_297011", action = "action_EVENT_GROUP_LOAD_297011", trigger_count = 0 },
		{ config_id = 1297012, name = "GROUP_LOAD_297012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_297012", action = "action_EVENT_GROUP_LOAD_297012", trigger_count = 0 },
		{ config_id = 1297013, name = "GROUP_LOAD_297013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_297013", action = "action_EVENT_GROUP_LOAD_297013", trigger_count = 0 }
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
	end_suite = 3,
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
		triggers = { "QUEST_START_297001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 297002, 297003, 297004 },
		regions = { },
		triggers = { "QUEST_START_297001", "GADGET_CREATE_297005", "GADGET_CREATE_297006", "GADGET_CREATE_297007", "SELECT_OPTION_297008", "SELECT_OPTION_297009", "SELECT_OPTION_297010", "QUEST_FINISH_297014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function action_EVENT_QUEST_START_297001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217297, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_297005(context, evt)
	if 297002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_297005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217297, 297002, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_297006(context, evt)
	if 297003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_297006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217297, 297003, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_297007(context, evt)
	if 297004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_297007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217297, 297004, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_297008(context, evt)
	-- 判断是gadgetid 297002 option_id 91
	if 297002 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_297008(context, evt)
	-- 改变指定group组133217005中， configid为5007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133217005, 5007, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215532") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133217297, EntityType.GADGET, 297002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_297009(context, evt)
	-- 判断是gadgetid 297003 option_id 91
	if 297003 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_297009(context, evt)
	-- 改变指定group组133217005中， configid为5006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133217005, 5006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215532") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133217297, EntityType.GADGET, 297003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_297010(context, evt)
	-- 判断是gadgetid 297004 option_id 91
	if 297004 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_297010(context, evt)
	-- 改变指定group组133217005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133217005, 5001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215532") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133217297, EntityType.GADGET, 297004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_297014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217297, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end