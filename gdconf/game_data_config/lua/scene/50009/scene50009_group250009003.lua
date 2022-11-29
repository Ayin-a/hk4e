-- 基础信息
local base_info = {
	group_id = 250009003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6, monster_id = 20010901, pos = { x = 155.604, y = 3.990, z = -4.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13, gadget_id = 70211001, pos = { x = 154.317, y = 3.990, z = -7.327 }, rot = { x = 0.000, y = 353.493, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 20, gadget_id = 70500000, pos = { x = 151.110, y = 3.990, z = -5.680 }, rot = { x = 0.000, y = 285.112, z = 0.000 }, level = 1, point_type = 3007 },
	{ config_id = 21, gadget_id = 70500000, pos = { x = 158.050, y = 3.990, z = -3.350 }, rot = { x = 0.000, y = 285.112, z = 0.000 }, level = 1, point_type = 3007 },
	{ config_id = 22, gadget_id = 70500000, pos = { x = 155.394, y = 3.990, z = -1.287 }, rot = { x = 0.000, y = 285.112, z = 0.000 }, level = 1, point_type = 3007 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000009, name = "GADGET_STATE_CHANGE_9", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9", action = "action_EVENT_GADGET_STATE_CHANGE_9" },
	{ config_id = 1000010, name = "ANY_MONSTER_DIE_10", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_10" }
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
		gadgets = { 20, 21, 22 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9", "ANY_MONSTER_DIE_10" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9(context, evt)
	if 12 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10(context, evt)
	-- 创建id为13的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 13 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end