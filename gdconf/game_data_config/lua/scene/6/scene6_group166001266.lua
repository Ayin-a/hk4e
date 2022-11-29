-- 基础信息
local base_info = {
	group_id = 166001266
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 266003, monster_id = 24020101, pos = { x = 688.010, y = 935.801, z = 1082.080 }, rot = { x = 0.000, y = 55.955, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 100, area_id = 300 },
	{ config_id = 266005, monster_id = 24020301, pos = { x = 681.905, y = 935.841, z = 1080.920 }, rot = { x = 0.000, y = 138.164, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 101, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 266001, gadget_id = 70290214, pos = { x = 678.950, y = 939.121, z = 1084.551 }, rot = { x = 0.000, y = 141.007, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 266002, gadget_id = 70211002, pos = { x = 684.385, y = 935.822, z = 1084.720 }, rot = { x = 14.720, y = 161.752, z = 346.347 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1266004, name = "ANY_MONSTER_DIE_266004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_266004", action = "action_EVENT_ANY_MONSTER_DIE_266004" },
	{ config_id = 1266006, name = "MONSTER_BATTLE_266006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_266006", action = "action_EVENT_MONSTER_BATTLE_266006" }
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
		monsters = { 266005 },
		gadgets = { 266001, 266002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_266004", "MONSTER_BATTLE_266006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_266004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_266004(context, evt)
	-- 将configid为 266002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 266002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_266006(context, evt)
	if 266005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_266006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 266003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end