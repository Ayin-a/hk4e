-- 基础信息
local base_info = {
	group_id = 133304056
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
	-- 一共三个SGV值已经注册了，注意看TempContent的修改。需要注意SGV是不存档的，所以需要自行记录变量，之后在GroupLoad的时候根据变量还原。完成玩法后也 可将物件设置为201，使3个枝条维持点亮效果。
	{ config_id = 56001, gadget_id = 70290390, pos = { x = -1653.160, y = 138.030, z = 2704.310 }, rot = { x = 0.107, y = 0.335, z = 359.965 }, level = 19, server_global_value_config = {["SGV_Vine_01"] = 0, ["SGV_Vine_02"] = 0, ["SGV_Vine_03"] = 0}, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1056005, name = "VARIABLE_CHANGE_56005", event = EventType.EVENT_VARIABLE_CHANGE, source = "vine1", condition = "condition_EVENT_VARIABLE_CHANGE_56005", action = "action_EVENT_VARIABLE_CHANGE_56005", trigger_count = 0 },
	{ config_id = 1056006, name = "VARIABLE_CHANGE_56006", event = EventType.EVENT_VARIABLE_CHANGE, source = "vine2", condition = "condition_EVENT_VARIABLE_CHANGE_56006", action = "action_EVENT_VARIABLE_CHANGE_56006", trigger_count = 0 },
	{ config_id = 1056007, name = "VARIABLE_CHANGE_56007", event = EventType.EVENT_VARIABLE_CHANGE, source = "vine3", condition = "condition_EVENT_VARIABLE_CHANGE_56007", action = "action_EVENT_VARIABLE_CHANGE_56007", trigger_count = 0 },
	{ config_id = 1056008, name = "GROUP_LOAD_56008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_56008", action = "action_EVENT_GROUP_LOAD_56008", trigger_count = 0 },
	{ config_id = 1056009, name = "GROUP_LOAD_56009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_56009", action = "action_EVENT_GROUP_LOAD_56009", trigger_count = 0 },
	{ config_id = 1056010, name = "GROUP_LOAD_56010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_56010", action = "action_EVENT_GROUP_LOAD_56010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = false },
	{ config_id = 2, name = "vine1", value = 0, no_refresh = true },
	{ config_id = 3, name = "vine2", value = 0, no_refresh = true },
	{ config_id = 4, name = "vine3", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1056002, name = "GADGET_STATE_CHANGE_56002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56002", action = "action_EVENT_GADGET_STATE_CHANGE_56002", trigger_count = 0 },
		{ config_id = 1056003, name = "GADGET_STATE_CHANGE_56003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56003", action = "action_EVENT_GADGET_STATE_CHANGE_56003", trigger_count = 0 },
		{ config_id = 1056004, name = "GADGET_STATE_CHANGE_56004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56004", action = "action_EVENT_GADGET_STATE_CHANGE_56004", trigger_count = 0 }
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
		gadgets = { 56001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_56005", "VARIABLE_CHANGE_56006", "VARIABLE_CHANGE_56007", "GROUP_LOAD_56008", "GROUP_LOAD_56009", "GROUP_LOAD_56010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_56005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"vine1"为1
	if ScriptLib.GetGroupVariableValue(context, "vine1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_56005(context, evt)
	-- 为特定56001物件设置其SGV:"SGV_Vine_01"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 56001, "SGV_Vine_01", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_56006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"vine2"为1
	if ScriptLib.GetGroupVariableValue(context, "vine2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_56006(context, evt)
	-- 为特定56001物件设置其SGV:"SGV_Vine_02"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 56001, "SGV_Vine_02", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_56007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"vine3"为1
	if ScriptLib.GetGroupVariableValue(context, "vine3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_56007(context, evt)
	-- 为特定56001物件设置其SGV:"SGV_Vine_03"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 56001, "SGV_Vine_03", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_56008(context, evt)
	-- 判断变量"vine1"为1
	if ScriptLib.GetGroupVariableValue(context, "vine1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_56008(context, evt)
	-- 为特定56001物件设置其SGV:"SGV_Vine_01"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 56001, "SGV_Vine_01", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_56009(context, evt)
	-- 判断变量"vine2"为1
	if ScriptLib.GetGroupVariableValue(context, "vine2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_56009(context, evt)
	-- 为特定56001物件设置其SGV:"SGV_Vine_02"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 56001, "SGV_Vine_02", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_56010(context, evt)
	-- 判断变量"vine3"为1
	if ScriptLib.GetGroupVariableValue(context, "vine3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_56010(context, evt)
	-- 为特定56001物件设置其SGV:"SGV_Vine_03"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 56001, "SGV_Vine_03", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end