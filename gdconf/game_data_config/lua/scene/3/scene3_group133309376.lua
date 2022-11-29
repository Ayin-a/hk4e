-- 基础信息
local base_info = {
	group_id = 133309376
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
	{ config_id = 376005, gadget_id = 70330392, pos = { x = -2993.186, y = 222.508, z = 5293.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 376008, gadget_id = 70330392, pos = { x = -2993.173, y = 217.332, z = 5288.768 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 376009, gadget_id = 70330392, pos = { x = -2988.462, y = 217.271, z = 5293.455 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 376010, gadget_id = 70330392, pos = { x = -2993.226, y = 217.165, z = 5298.212 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 376011, gadget_id = 70330392, pos = { x = -2997.918, y = 217.366, z = 5293.557 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1376006, name = "VARIABLE_CHANGE_376006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_376006", action = "action_EVENT_VARIABLE_CHANGE_376006" },
	{ config_id = 1376007, name = "GROUP_LOAD_376007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_376007", action = "action_EVENT_GROUP_LOAD_376007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 376001, gadget_id = 70330264, pos = { x = -2993.385, y = 201.324, z = 5289.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 376002, gadget_id = 70330264, pos = { x = -2989.049, y = 201.324, z = 5293.455 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 376003, gadget_id = 70330264, pos = { x = -2993.285, y = 201.324, z = 5297.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 376004, gadget_id = 70330264, pos = { x = -2997.555, y = 201.324, z = 5293.403 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 }
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
		gadgets = { 376005, 376008, 376009, 376010, 376011 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_376006", "GROUP_LOAD_376007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_376006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_376006(context, evt)
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133309376, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_376007(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_376007(context, evt)
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133309376, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
	return 0
end