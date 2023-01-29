-- 基础信息
local base_info = {
	group_id = 133003196
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 776, monster_id = 20011201, pos = { x = 2423.988, y = 210.460, z = -1109.042 }, rot = { x = 0.000, y = 123.877, z = 0.000 }, level = 2, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 777, monster_id = 20011201, pos = { x = 2426.151, y = 209.923, z = -1113.366 }, rot = { x = 0.000, y = 21.063, z = 0.000 }, level = 2, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 778, monster_id = 20011201, pos = { x = 2430.501, y = 209.995, z = -1110.718 }, rot = { x = 0.000, y = 282.669, z = 0.000 }, level = 2, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 779, monster_id = 20011201, pos = { x = 2428.485, y = 210.693, z = -1106.295 }, rot = { x = 0.000, y = 203.821, z = 0.000 }, level = 2, drop_tag = "史莱姆", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2902, gadget_id = 70500000, pos = { x = 2426.539, y = 209.976, z = -1112.314 }, rot = { x = 3.238, y = 75.359, z = 1.562 }, level = 2, point_type = 2003, isOneoff = true, area_id = 1 },
	{ config_id = 2903, gadget_id = 70500000, pos = { x = 2425.116, y = 210.332, z = -1109.221 }, rot = { x = 0.000, y = 178.708, z = 0.000 }, level = 2, point_type = 2003, isOneoff = true, area_id = 1 },
	{ config_id = 2904, gadget_id = 70500000, pos = { x = 2429.490, y = 210.002, z = -1110.391 }, rot = { x = 0.000, y = 353.042, z = 0.000 }, level = 2, point_type = 2003, isOneoff = true, area_id = 1 },
	{ config_id = 2905, gadget_id = 70500000, pos = { x = 2428.125, y = 210.503, z = -1107.477 }, rot = { x = 0.000, y = 255.404, z = 0.000 }, level = 2, point_type = 2003, isOneoff = true, area_id = 1 },
	{ config_id = 2910, gadget_id = 70211102, pos = { x = 2427.258, y = 210.128, z = -1109.922 }, rot = { x = 0.000, y = 97.969, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000159, name = "GATHER_159", event = EventType.EVENT_GATHER, source = "2902", condition = "condition_EVENT_GATHER_159", action = "action_EVENT_GATHER_159" },
	{ config_id = 1000160, name = "ANY_MONSTER_DIE_160", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_160", action = "action_EVENT_ANY_MONSTER_DIE_160" },
	{ config_id = 1000228, name = "GATHER_228", event = EventType.EVENT_GATHER, source = "2903", condition = "condition_EVENT_GATHER_228", action = "action_EVENT_GATHER_228" },
	{ config_id = 1000229, name = "GATHER_229", event = EventType.EVENT_GATHER, source = "2904", condition = "condition_EVENT_GATHER_229", action = "action_EVENT_GATHER_229" },
	{ config_id = 1000230, name = "GATHER_230", event = EventType.EVENT_GATHER, source = "2905", condition = "condition_EVENT_GATHER_230", action = "action_EVENT_GATHER_230" },
	{ config_id = 1196001, name = "GROUP_LOAD_196001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_196001", action = "action_EVENT_GROUP_LOAD_196001", trigger_count = 0 }
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
		gadgets = { 2902, 2903, 2904, 2905 },
		regions = { },
		triggers = { "GATHER_159", "ANY_MONSTER_DIE_160", "GATHER_228", "GATHER_229", "GATHER_230", "GROUP_LOAD_196001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_159(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003196}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_159(context, evt)
	-- 创建id为2910的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2910 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 776, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 777, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 778, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 779, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_160(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_160(context, evt)
	-- 解锁目标2910
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2910, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_228(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003196}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_228(context, evt)
	-- 创建id为2910的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2910 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 776, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 777, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 778, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 779, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_229(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003196}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_229(context, evt)
	-- 创建id为2910的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2910 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 776, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 777, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 778, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 779, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_230(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003196}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_230(context, evt)
	-- 创建id为2910的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2910 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 776, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 777, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 778, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 779, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_196001(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003196}) ~= 0 then
		return false
	end
	
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133003196) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_196001(context, evt)
	-- 创建id为2910的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2910 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 2910 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2910, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end