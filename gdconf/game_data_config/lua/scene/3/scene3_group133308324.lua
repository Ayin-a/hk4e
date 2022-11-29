-- 基础信息
local base_info = {
	group_id = 133308324
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 324001, monster_id = 28020604, pos = { x = -2005.687, y = 291.627, z = 4303.263 }, rot = { x = 0.000, y = 101.908, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 324002, gadget_id = 70330266, pos = { x = -2005.594, y = 291.661, z = 4303.121 }, rot = { x = 10.176, y = 9.759, z = 3.526 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1324003, name = "ANY_GADGET_DIE_324003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_324003", action = "action_EVENT_ANY_GADGET_DIE_324003" }
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
		gadgets = { 324002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_324003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_324003(context, evt)
	if 324002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_324003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 324001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end