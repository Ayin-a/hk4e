-- 基础信息
local base_info = {
	group_id = 133309238
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
	{ config_id = 238001, gadget_id = 70330267, pos = { x = -2726.751, y = 196.769, z = 5635.553 }, rot = { x = 1.161, y = 0.046, z = 4.494 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 238006, gadget_id = 70330315, pos = { x = -2722.364, y = 201.542, z = 5640.462 }, rot = { x = 345.652, y = 48.849, z = 0.889 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 238007, gadget_id = 70330225, pos = { x = -2753.443, y = 201.693, z = 5627.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1238008, name = "GADGET_STATE_CHANGE_238008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_238008", action = "action_EVENT_GADGET_STATE_CHANGE_238008", trigger_count = 0 },
	{ config_id = 1238009, name = "GROUP_LOAD_238009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_238009", action = "action_EVENT_GROUP_LOAD_238009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "built", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 238002, gadget_id = 70330283, pos = { x = -2721.733, y = 198.554, z = 5638.684 }, rot = { x = 359.689, y = 318.801, z = 4.135 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 4}, area_id = 27 }
	},
	triggers = {
		{ config_id = 1238003, name = "SELECT_OPTION_238003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_238003", action = "action_EVENT_SELECT_OPTION_238003", trigger_count = 0 },
		{ config_id = 1238004, name = "GADGET_STATE_CHANGE_238004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_238004", action = "action_EVENT_GADGET_STATE_CHANGE_238004", trigger_count = 0 },
		{ config_id = 1238005, name = "GROUP_LOAD_238005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_238005", action = "action_EVENT_GROUP_LOAD_238005", trigger_count = 0 }
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
		gadgets = { 238006, 238007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_238008", "GROUP_LOAD_238009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_238008(context, evt)
	-- 检测config_id为238006的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 238006 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_238008(context, evt)
	-- 将本组内变量名为 "built" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "built", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 238007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_238009(context, evt)
	-- 判断变量"built"为1
	if ScriptLib.GetGroupVariableValue(context, "built") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_238009(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 238007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_1/Engineer_Mark"