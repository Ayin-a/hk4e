-- 基础信息
local base_info = {
	group_id = 133220402
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 402001, monster_id = 24020201, pos = { x = -2267.548, y = 224.956, z = -4274.449 }, rot = { x = 0.000, y = 278.724, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 402002, monster_id = 24020201, pos = { x = -2272.053, y = 225.648, z = -4275.915 }, rot = { x = 354.089, y = 356.430, z = 0.369 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 402003, monster_id = 24020101, pos = { x = -2271.749, y = 224.801, z = -4272.166 }, rot = { x = 5.458, y = 316.892, z = 359.974 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1402005, name = "MONSTER_BATTLE_402005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_402005", action = "action_EVENT_MONSTER_BATTLE_402005", trigger_count = 0 },
	{ config_id = 1402006, name = "ANY_MONSTER_DIE_402006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_402006", action = "action_EVENT_ANY_MONSTER_DIE_402006" }
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
		monsters = { 402001, 402002, 402003 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_402005", "ANY_MONSTER_DIE_402006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_402005(context, evt)
	if 402001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_402005(context, evt)
	-- 改变指定group组133220112中， configid为112004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220112, 112004, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_402006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_402006(context, evt)
	-- 改变指定group组133220112中， configid为112004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220112, 112004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end