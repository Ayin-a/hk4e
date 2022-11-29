-- 基础信息
local base_info = {
	group_id = 133002328
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 328007, monster_id = 20011401, pos = { x = 1682.545, y = 256.611, z = -91.467 }, rot = { x = 348.990, y = 359.084, z = 9.485 }, level = 16, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 328008, monster_id = 20011401, pos = { x = 1685.245, y = 258.510, z = -85.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 328009, monster_id = 20011401, pos = { x = 1677.557, y = 257.191, z = -85.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 328001, gadget_id = 70220008, pos = { x = 1676.350, y = 257.091, z = -85.691 }, rot = { x = 335.924, y = 21.809, z = 348.176 }, level = 16, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 328002, gadget_id = 70220008, pos = { x = 1686.193, y = 258.840, z = -84.607 }, rot = { x = 343.562, y = 22.385, z = 3.380 }, level = 16, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 328003, gadget_id = 70220008, pos = { x = 1682.569, y = 256.380, z = -92.641 }, rot = { x = 346.170, y = 22.495, z = 4.381 }, level = 16, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 328004, gadget_id = 70211011, pos = { x = 1681.860, y = 259.682, z = -86.290 }, rot = { x = 4.524, y = 1.389, z = 7.101 }, level = 16, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1328005, name = "ANY_GADGET_DIE_328005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_328005", action = "action_EVENT_ANY_GADGET_DIE_328005" },
	{ config_id = 1328010, name = "ANY_MONSTER_DIE_328010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_328010", action = "action_EVENT_ANY_MONSTER_DIE_328010" }
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
		gadgets = { 328001, 328002, 328003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_328005", "ANY_MONSTER_DIE_328010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_328005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133002328}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_328005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 328007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 328008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 328009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_328010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_328010(context, evt)
	-- 创建id为328004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 328004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end