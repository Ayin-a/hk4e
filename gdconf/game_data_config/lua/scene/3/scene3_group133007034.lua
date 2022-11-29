-- 基础信息
local base_info = {
	group_id = 133007034
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 68, monster_id = 20011201, pos = { x = 2935.909, y = 213.706, z = 179.559 }, rot = { x = 0.000, y = 266.335, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 4 },
	{ config_id = 69, monster_id = 20010501, pos = { x = 2931.613, y = 212.932, z = 178.194 }, rot = { x = 0.000, y = 250.616, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 4 },
	{ config_id = 132, monster_id = 20011201, pos = { x = 2933.818, y = 213.920, z = 174.947 }, rot = { x = 0.000, y = 266.335, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 173, gadget_id = 70211102, pos = { x = 2933.462, y = 213.542, z = 177.354 }, rot = { x = 0.000, y = 308.335, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 426, gadget_id = 70500000, pos = { x = 2935.079, y = 213.787, z = 176.154 }, rot = { x = 0.000, y = 86.117, z = 0.000 }, level = 23, point_type = 2003, area_id = 4 },
	{ config_id = 427, gadget_id = 70500000, pos = { x = 2932.191, y = 213.486, z = 176.575 }, rot = { x = 0.000, y = 9.149, z = 0.000 }, level = 23, point_type = 2003, area_id = 4 },
	{ config_id = 428, gadget_id = 70500000, pos = { x = 2933.588, y = 213.298, z = 178.983 }, rot = { x = 0.000, y = 289.257, z = 0.000 }, level = 23, point_type = 2003, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000040, name = "GATHER_40", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_40", tlog_tag = "风龙_34_伏击_开始" },
	{ config_id = 1000087, name = "ANY_MONSTER_DIE_87", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_87", action = "action_EVENT_ANY_MONSTER_DIE_87", tlog_tag = "风龙_34_伏击_成功" }
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
		gadgets = { 426, 427, 428 },
		regions = { },
		triggers = { "GATHER_40", "ANY_MONSTER_DIE_87" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_40(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 132, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 68, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 69, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 创建id为173的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 173 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 173 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 173, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_87(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_87(context, evt)
	-- 将configid为 173 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 173, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end