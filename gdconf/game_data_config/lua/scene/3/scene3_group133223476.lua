-- 基础信息
local base_info = {
	group_id = 133223476
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
	{ config_id = 476002, gadget_id = 70350319, pos = { x = -6311.528, y = 212.525, z = -2692.389 }, rot = { x = 0.001, y = 100.173, z = 42.835 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 476003, gadget_id = 70350319, pos = { x = -6311.275, y = 213.510, z = -2692.541 }, rot = { x = 23.403, y = 40.908, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 476004, gadget_id = 70350319, pos = { x = -6311.714, y = 213.898, z = -2694.083 }, rot = { x = 1.095, y = 88.684, z = 39.811 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 476005, gadget_id = 70350319, pos = { x = -6312.198, y = 212.911, z = -2694.229 }, rot = { x = 0.000, y = 272.294, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1476001, name = "VARIABLE_CHANGE_476001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_476001", trigger_count = 0 },
	{ config_id = 1476006, name = "GROUP_LOAD_476006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_476006", trigger_count = 0 },
	{ config_id = 1476007, name = "QUEST_FINISH_476007", event = EventType.EVENT_QUEST_FINISH, source = "7217303", condition = "", action = "action_EVENT_QUEST_FINISH_476007", trigger_count = 0 },
	{ config_id = 1476011, name = "QUEST_FINISH_476011", event = EventType.EVENT_QUEST_FINISH, source = "7217305", condition = "", action = "action_EVENT_QUEST_FINISH_476011", trigger_count = 0 },
	{ config_id = 1476012, name = "QUEST_FINISH_476012", event = EventType.EVENT_QUEST_FINISH, source = "7217307", condition = "", action = "action_EVENT_QUEST_FINISH_476012", trigger_count = 0 },
	{ config_id = 1476013, name = "QUEST_FINISH_476013", event = EventType.EVENT_QUEST_FINISH, source = "7217311", condition = "", action = "action_EVENT_QUEST_FINISH_476013", trigger_count = 0 },
	{ config_id = 1476014, name = "QUEST_START_476014", event = EventType.EVENT_QUEST_START, source = "7217344", condition = "", action = "action_EVENT_QUEST_START_476014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "feather_count", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1476008, name = "VARIABLE_CHANGE_476008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_476008", trigger_count = 0 },
		{ config_id = 1476009, name = "VARIABLE_CHANGE_476009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_476009", trigger_count = 0 },
		{ config_id = 1476010, name = "VARIABLE_CHANGE_476010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_476010", trigger_count = 0 }
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
	end_suite = 2,
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
		triggers = { "VARIABLE_CHANGE_476001", "GROUP_LOAD_476006", "QUEST_FINISH_476007", "QUEST_FINISH_476011", "QUEST_FINISH_476012", "QUEST_FINISH_476013", "QUEST_START_476014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function action_EVENT_VARIABLE_CHANGE_476001(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.source_name ~= "feather_count" then
	  return -1
	end
	
	if evt.param1 == 1 then
	  ScriptLib.CreateGadget(context, { config_id = 476002 })
	
	end
	
	if evt.param1 == 2 then
	  ScriptLib.CreateGadget(context, { config_id = 476002 })
	  ScriptLib.CreateGadget(context, { config_id = 476003 })
	end
	
	if evt.param1 == 3 then
	  ScriptLib.CreateGadget(context, { config_id = 476002 })
	  ScriptLib.CreateGadget(context, { config_id = 476003 })
	  ScriptLib.CreateGadget(context, { config_id = 476004 })
	end
	
	if evt.param1 == 4 then
	  ScriptLib.CreateGadget(context, { config_id = 476002 })
	  ScriptLib.CreateGadget(context, { config_id = 476003 })
	  ScriptLib.CreateGadget(context, { config_id = 476004 })
	  ScriptLib.CreateGadget(context, { config_id = 476005 })
	end
	
	if evt.param1 == 0 then
	  ScriptLib.RefreshGroup(context,{ group_id = 133223476, suite = 2})
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_476006(context, evt)
	if ScriptLib.GetGroupVariableValueByGroup(context, "feather_count", 133223476) == 0 then
	  return 0
	end
	
	if ScriptLib.GetGroupVariableValueByGroup(context, "feather_count", 133223476) == 1 then
	  ScriptLib.CreateGadget(context, { config_id = 476002 })
	end
	
	if ScriptLib.GetGroupVariableValueByGroup(context, "feather_count", 133223476) == 2 then
	  ScriptLib.CreateGadget(context, { config_id = 476002 })
	  ScriptLib.CreateGadget(context, { config_id = 476003 })
	end
	
	if ScriptLib.GetGroupVariableValueByGroup(context, "feather_count", 133223476) == 3 then
	  ScriptLib.CreateGadget(context, { config_id = 476002 })
	  ScriptLib.CreateGadget(context, { config_id = 476003 })
	  ScriptLib.CreateGadget(context, { config_id = 476004 })
	end
	
	if ScriptLib.GetGroupVariableValueByGroup(context, "feather_count", 133223476) == 4 then
	  ScriptLib.CreateGadget(context, { config_id = 476002 })
	  ScriptLib.CreateGadget(context, { config_id = 476003 })
	  ScriptLib.CreateGadget(context, { config_id = 476004 })
	  ScriptLib.CreateGadget(context, { config_id = 476005 })
	end
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_476007(context, evt)
	-- 将本组内变量名为 "feather_count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "feather_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_476011(context, evt)
	-- 将本组内变量名为 "feather_count" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "feather_count", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_476012(context, evt)
	-- 将本组内变量名为 "feather_count" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "feather_count", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_476013(context, evt)
	-- 将本组内变量名为 "feather_count" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "feather_count", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_476014(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133223476, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133223476, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end