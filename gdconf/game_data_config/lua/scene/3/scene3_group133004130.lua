-- 基础信息
local base_info = {
	group_id = 133004130
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 363, monster_id = 20011001, pos = { x = 2380.943, y = 295.779, z = -316.868 }, rot = { x = 0.000, y = 225.649, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 364, monster_id = 20011001, pos = { x = 2380.931, y = 295.815, z = -318.867 }, rot = { x = 0.000, y = 320.712, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 365, monster_id = 20011001, pos = { x = 2378.930, y = 295.727, z = -318.846 }, rot = { x = 0.000, y = 49.748, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 366, monster_id = 20011001, pos = { x = 2378.934, y = 295.667, z = -316.866 }, rot = { x = 0.000, y = 124.216, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 796, gadget_id = 70500000, pos = { x = 2381.932, y = 295.930, z = -317.852 }, rot = { x = 0.000, y = 327.809, z = 0.000 }, level = 15, point_type = 2003, area_id = 3 },
	{ config_id = 797, gadget_id = 70500000, pos = { x = 2379.934, y = 295.727, z = -319.878 }, rot = { x = 0.000, y = 50.016, z = 0.000 }, level = 15, point_type = 2003, area_id = 3 },
	{ config_id = 798, gadget_id = 70500000, pos = { x = 2377.935, y = 295.699, z = -317.846 }, rot = { x = 0.000, y = 82.707, z = 0.000 }, level = 15, point_type = 2003, area_id = 3 },
	{ config_id = 799, gadget_id = 70500000, pos = { x = 2379.936, y = 295.733, z = -315.878 }, rot = { x = 0.000, y = 48.156, z = 0.000 }, level = 15, point_type = 2003, area_id = 3 },
	{ config_id = 800, gadget_id = 70211101, pos = { x = 2379.936, y = 295.752, z = -317.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000165, name = "GATHER_165", event = EventType.EVENT_GATHER, source = "796", condition = "condition_EVENT_GATHER_165", action = "action_EVENT_GATHER_165" },
	{ config_id = 1000166, name = "ANY_MONSTER_DIE_166", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_166", action = "action_EVENT_ANY_MONSTER_DIE_166", trigger_count = 0 },
	{ config_id = 1000168, name = "GATHER_168", event = EventType.EVENT_GATHER, source = "797", condition = "condition_EVENT_GATHER_168", action = "action_EVENT_GATHER_168" },
	{ config_id = 1000169, name = "GATHER_169", event = EventType.EVENT_GATHER, source = "798", condition = "condition_EVENT_GATHER_169", action = "action_EVENT_GATHER_169" },
	{ config_id = 1000170, name = "GATHER_170", event = EventType.EVENT_GATHER, source = "799", condition = "condition_EVENT_GATHER_170", action = "action_EVENT_GATHER_170" }
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
		gadgets = { 796, 797, 798, 799 },
		regions = { },
		triggers = { "GATHER_165", "ANY_MONSTER_DIE_166", "GATHER_168", "GATHER_169", "GATHER_170" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_165(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004130}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_165(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 363, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 364, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 366, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_166(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_166(context, evt)
	-- 创建id为800的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 800 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_168(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004130}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_168(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 363, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 364, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 366, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_169(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004130}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_169(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 363, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 364, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 366, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_170(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004130}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_170(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 363, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 364, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 366, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end