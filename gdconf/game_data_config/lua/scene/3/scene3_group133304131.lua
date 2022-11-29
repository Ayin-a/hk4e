-- 基础信息
local base_info = {
	group_id = 133304131
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131001, monster_id = 23010301, pos = { x = -1473.678, y = 265.761, z = 3003.199 }, rot = { x = 0.000, y = 166.173, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, area_id = 21 },
	{ config_id = 131004, monster_id = 23010401, pos = { x = -1483.333, y = 261.690, z = 2991.433 }, rot = { x = 0.000, y = 235.689, z = 0.000 }, level = 30, drop_tag = "先遣队", pose_id = 9002, area_id = 21 },
	{ config_id = 131005, monster_id = 23010601, pos = { x = -1503.880, y = 255.716, z = 2991.650 }, rot = { x = 0.000, y = 238.607, z = 0.000 }, level = 30, drop_tag = "先遣队", pose_id = 9001, area_id = 21 },
	{ config_id = 131006, monster_id = 23020101, pos = { x = -1486.722, y = 260.403, z = 2996.387 }, rot = { x = 0.000, y = 177.662, z = 0.000 }, level = 30, drop_tag = "债务处理人", area_id = 21 },
	{ config_id = 131009, monster_id = 23010501, pos = { x = -1493.161, y = 256.787, z = 2990.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "先遣队", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 131002, gadget_id = 70211151, pos = { x = -1468.273, y = 265.591, z = 2996.719 }, rot = { x = 0.000, y = 347.328, z = 0.000 }, level = 26, chest_drop_id = 21910048, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 131007, gadget_id = 70210101, pos = { x = -1505.509, y = 256.637, z = 2992.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", area_id = 21 },
	{ config_id = 131008, gadget_id = 70210101, pos = { x = -1467.191, y = 267.368, z = 3002.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1131003, name = "ANY_MONSTER_DIE_131003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_131003", action = "action_EVENT_ANY_MONSTER_DIE_131003" },
	{ config_id = 1131010, name = "ANY_MONSTER_DIE_131010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_131010", action = "action_EVENT_ANY_MONSTER_DIE_131010", trigger_count = 0 }
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
		monsters = { 131001, 131004, 131005 },
		gadgets = { 131002, 131007, 131008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_131003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 131006, 131009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_131010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_131003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_131003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304131, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_131010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_131010(context, evt)
	-- 将configid为 131002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 131002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end