-- 基础信息
local base_info = {
	group_id = 133003427
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1425, monster_id = 28030401, pos = { x = 2209.131, y = 229.575, z = -1360.253 }, rot = { x = 0.000, y = 68.397, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1426, monster_id = 28030402, pos = { x = 2211.916, y = 230.109, z = -1358.229 }, rot = { x = 0.000, y = 282.250, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1427, monster_id = 28030402, pos = { x = 2210.645, y = 230.103, z = -1357.043 }, rot = { x = 0.000, y = 351.288, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1428, monster_id = 28020102, pos = { x = 2231.189, y = 234.020, z = -1370.738 }, rot = { x = 0.000, y = 184.587, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, area_id = 1 },
	{ config_id = 427001, monster_id = 20010301, pos = { x = 2231.117, y = 235.792, z = -1372.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4092, gadget_id = 70220008, pos = { x = 2231.154, y = 234.063, z = -1372.349 }, rot = { x = 0.000, y = 2.100, z = 0.000 }, level = 5, isOneoff = true, area_id = 1 },
	{ config_id = 427004, gadget_id = 70211001, pos = { x = 2234.026, y = 234.165, z = -1373.941 }, rot = { x = 0.000, y = 316.143, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1427002, name = "ANY_GADGET_DIE_427002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_427002", action = "action_EVENT_ANY_GADGET_DIE_427002" },
	{ config_id = 1427003, name = "ANY_MONSTER_DIE_427003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_427003", action = "action_EVENT_ANY_MONSTER_DIE_427003" }
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
		monsters = { 1425, 1426, 1427, 1428 },
		gadgets = { 4092 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_427002", "ANY_MONSTER_DIE_427003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_427002(context, evt)
	if 4092 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_427002(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 427001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_427003(context, evt)
	if 427001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_427003(context, evt)
	-- 创建id为427004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 427004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end