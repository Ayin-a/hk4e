-- 基础信息
local base_info = {
	group_id = 199002105
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 105002, monster_id = 28030301, pos = { x = 583.519, y = 250.679, z = -483.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "鸟类", area_id = 401 },
	{ config_id = 105003, monster_id = 28030301, pos = { x = 584.149, y = 250.679, z = -481.444 }, rot = { x = 0.000, y = 260.826, z = 0.000 }, level = 20, drop_tag = "鸟类", area_id = 401 },
	{ config_id = 105004, monster_id = 28030301, pos = { x = 582.031, y = 250.679, z = -481.893 }, rot = { x = 0.000, y = 36.324, z = 0.000 }, level = 20, drop_tag = "鸟类", area_id = 401 },
	{ config_id = 105005, monster_id = 28030301, pos = { x = 583.019, y = 250.679, z = -480.551 }, rot = { x = 0.000, y = 261.821, z = 0.000 }, level = 20, drop_tag = "鸟类", area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 105001, gadget_id = 70310332, pos = { x = 580.715, y = 250.564, z = -481.192 }, rot = { x = 0.000, y = 85.791, z = 0.000 }, level = 20, persistent = true, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1105006, name = "ANY_MONSTER_DIE_105006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_105006", action = "action_EVENT_ANY_MONSTER_DIE_105006", trigger_count = 0 },
	{ config_id = 1105007, name = "GROUP_LOAD_105007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_105007", action = "action_EVENT_GROUP_LOAD_105007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "refresh", value = 0, no_refresh = false }
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
		monsters = { 105002, 105003, 105004, 105005 },
		gadgets = { 105001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_105006", "GROUP_LOAD_105007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_105006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 199002105) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_105006(context, evt)
	ScriptLib.SetGroupVariableValue(context,"refresh",1)
	ScriptLib.SetGadgetTalkByConfigId(context, 199002105, 105001, 6800369)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_105007(context, evt)
	-- 判断变量"refresh"为0
	if ScriptLib.GetGroupVariableValue(context, "refresh") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_105007(context, evt)
	ScriptLib.SetGadgetTalkByConfigId(context, 199002105, 105001, 0)
	return 0
end