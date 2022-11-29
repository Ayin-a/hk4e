-- 基础信息
local base_info = {
	group_id = 133307003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 28020108, pos = { x = -1831.240, y = 165.630, z = 5530.036 }, rot = { x = 0.000, y = 294.147, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 27 },
	{ config_id = 3003, monster_id = 28020108, pos = { x = -1836.039, y = 165.378, z = 5528.304 }, rot = { x = 0.000, y = 32.606, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, area_id = 27 },
	{ config_id = 3004, monster_id = 28020604, pos = { x = -1833.567, y = 165.630, z = 5530.563 }, rot = { x = 0.000, y = 108.792, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3002, gadget_id = 70330266, pos = { x = -1834.137, y = 165.791, z = 5530.962 }, rot = { x = 0.635, y = 265.828, z = 9.149 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003005, name = "ANY_GADGET_DIE_3005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_3005", action = "action_EVENT_ANY_GADGET_DIE_3005" }
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
		monsters = { 3001, 3003 },
		gadgets = { 3002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_3005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_3005(context, evt)
	if 3002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_3005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end