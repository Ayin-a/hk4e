-- 基础信息
local base_info = {
	group_id = 133307203
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203001, monster_id = 28050106, pos = { x = -1504.503, y = 26.856, z = 5688.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 203002, monster_id = 28050106, pos = { x = -1504.631, y = 26.905, z = 5689.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 203005, monster_id = 28060401, pos = { x = -1500.065, y = 26.500, z = 5693.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 203003, gadget_id = 70330430, pos = { x = -1504.834, y = 26.939, z = 5688.751 }, rot = { x = 0.529, y = 3.455, z = 348.527 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 203006, gadget_id = 70330430, pos = { x = -1501.132, y = 26.625, z = 5693.648 }, rot = { x = 356.888, y = 358.087, z = 352.075 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1203004, name = "ANY_GADGET_DIE_203004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_203004", action = "action_EVENT_ANY_GADGET_DIE_203004" },
	{ config_id = 1203007, name = "ANY_GADGET_DIE_203007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_203007", action = "action_EVENT_ANY_GADGET_DIE_203007" }
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
		gadgets = { 203003, 203006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_203004", "ANY_GADGET_DIE_203007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_203004(context, evt)
	if 203003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_203004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 203001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 203002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_203007(context, evt)
	if 203006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_203007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 203005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end