-- 基础信息
local base_info = {
	group_id = 133002105
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 876, monster_id = 20011501, pos = { x = 1840.389, y = 227.514, z = -723.879 }, rot = { x = 0.000, y = 86.559, z = 0.000 }, level = 6, drop_tag = "大史莱姆", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2159, gadget_id = 70220021, pos = { x = 1843.792, y = 227.508, z = -724.135 }, rot = { x = 0.000, y = 47.329, z = 0.000 }, level = 10, isOneoff = true, area_id = 3 },
	{ config_id = 2160, gadget_id = 70211101, pos = { x = 1839.696, y = 227.520, z = -723.349 }, rot = { x = 0.000, y = 93.669, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 2163, gadget_id = 70310001, pos = { x = 1848.013, y = 227.444, z = -728.108 }, rot = { x = 0.000, y = 51.197, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 2164, gadget_id = 70310001, pos = { x = 1848.519, y = 226.850, z = -720.028 }, rot = { x = 0.000, y = 51.197, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 2167, gadget_id = 70220021, pos = { x = 1843.985, y = 227.829, z = -724.085 }, rot = { x = 0.000, y = 47.329, z = 0.000 }, level = 10, isOneoff = true, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000297, name = "ANY_GADGET_DIE_297", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_297", action = "action_EVENT_ANY_GADGET_DIE_297" }
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
	suite = 3,
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
		gadgets = { 2159 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_297" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2160, 2163, 2164, 2167 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
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

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_297(context, evt)
	if 2159 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_297(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 876, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end