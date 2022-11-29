-- 基础信息
local base_info = {
	group_id = 133003290
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 290001, monster_id = 20011401, pos = { x = 2855.546, y = 276.544, z = -1554.470 }, rot = { x = 0.000, y = 301.117, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3958, gadget_id = 70220008, pos = { x = 2855.891, y = 274.837, z = -1554.477 }, rot = { x = 6.872, y = 294.350, z = 7.944 }, level = 30, isOneoff = true, area_id = 1 },
	{ config_id = 3960, gadget_id = 70211111, pos = { x = 2854.661, y = 274.763, z = -1556.260 }, rot = { x = 7.777, y = 316.794, z = 2.099 }, level = 26, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000493, name = "ANY_GADGET_DIE_493", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_493", action = "action_EVENT_ANY_GADGET_DIE_493" },
	{ config_id = 1290002, name = "ANY_MONSTER_DIE_290002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_290002", action = "action_EVENT_ANY_MONSTER_DIE_290002" }
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
	rand_suite = true
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
		gadgets = { 3958 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_493", "ANY_MONSTER_DIE_290002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_493(context, evt)
	if 3958 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_493(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 290001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_290002(context, evt)
	if 290001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_290002(context, evt)
	-- 创建id为3960的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3960 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end