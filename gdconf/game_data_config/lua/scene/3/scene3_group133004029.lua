-- 基础信息
local base_info = {
	group_id = 133004029
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 282, monster_id = 20011501, pos = { x = 2197.043, y = 246.826, z = -417.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "大史莱姆", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 301, gadget_id = 70220008, pos = { x = 2199.117, y = 245.636, z = -417.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, isOneoff = true, area_id = 3 },
	{ config_id = 302, gadget_id = 70220008, pos = { x = 2194.927, y = 245.730, z = -417.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, isOneoff = true, area_id = 3 },
	{ config_id = 303, gadget_id = 70220008, pos = { x = 2196.989, y = 245.404, z = -420.174 }, rot = { x = 0.000, y = 84.768, z = 0.000 }, level = 15, isOneoff = true, area_id = 3 },
	{ config_id = 304, gadget_id = 70220019, pos = { x = 2197.043, y = 239.221, z = -417.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 438, gadget_id = 70211111, pos = { x = 2197.043, y = 245.711, z = -417.955 }, rot = { x = 0.000, y = 0.000, z = 359.077 }, level = 11, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 1270, gadget_id = 70220008, pos = { x = 2197.079, y = 245.773, z = -415.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, isOneoff = true, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000137, name = "ANY_GADGET_DIE_137", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_137", action = "action_EVENT_ANY_GADGET_DIE_137" },
	{ config_id = 1000145, name = "ANY_MONSTER_DIE_145", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_145", action = "action_EVENT_ANY_MONSTER_DIE_145" }
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
		gadgets = { 301, 302, 303, 304, 1270 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_137", "ANY_MONSTER_DIE_145" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_137(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004029}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_137(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 282, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_145(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_145(context, evt)
	-- 创建id为438的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 438 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end