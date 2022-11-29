-- 基础信息
local base_info = {
	group_id = 133309760
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
	{ config_id = 760003, gadget_id = 70330392, pos = { x = -2314.364, y = 191.043, z = 5780.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 760004, gadget_id = 70330392, pos = { x = -2324.364, y = 191.043, z = 5780.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 760005, gadget_id = 70330392, pos = { x = -2324.364, y = 191.043, z = 5770.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 760008, gadget_id = 70330392, pos = { x = -2329.024, y = 185.749, z = 5780.256 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 760009, gadget_id = 70330392, pos = { x = -2329.024, y = 185.749, z = 5770.294 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 760010, gadget_id = 70330392, pos = { x = -2314.537, y = 185.697, z = 5784.938 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 760011, gadget_id = 70330392, pos = { x = -2323.649, y = 185.697, z = 5784.938 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 760012, gadget_id = 70330392, pos = { x = -2329.024, y = 175.779, z = 5780.256 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1760023, name = "VARIABLE_CHANGE_760023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_760023", action = "action_EVENT_VARIABLE_CHANGE_760023" },
	{ config_id = 1760024, name = "GROUP_LOAD_760024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_760024", action = "action_EVENT_GROUP_LOAD_760024", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 760001, gadget_id = 70330264, pos = { x = -2324.410, y = 155.948, z = 5784.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 760002, gadget_id = 70330264, pos = { x = -2314.450, y = 155.948, z = 5784.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 760006, gadget_id = 70330264, pos = { x = -2328.701, y = 155.948, z = 5780.163 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 760007, gadget_id = 70330264, pos = { x = -2328.629, y = 155.948, z = 5770.207 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 }
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
		gadgets = { 760003, 760004, 760005, 760008, 760009, 760010, 760011, 760012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_760023", "GROUP_LOAD_760024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_760023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_760023(context, evt)
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133309760, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_760024(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_760024(context, evt)
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133309760, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
	return 0
end