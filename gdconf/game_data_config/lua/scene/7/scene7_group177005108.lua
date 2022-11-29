-- 基础信息
local base_info = {
	group_id = 177005108
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 108005, monster_id = 21020701, pos = { x = 627.805, y = 260.060, z = 530.215 }, rot = { x = 0.000, y = 229.170, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 210 },
	{ config_id = 108006, monster_id = 21010301, pos = { x = 622.402, y = 259.361, z = 522.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9003, area_id = 210 },
	{ config_id = 108008, monster_id = 21010301, pos = { x = 620.802, y = 259.128, z = 528.332 }, rot = { x = 0.000, y = 68.065, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9003, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 108001, gadget_id = 70300089, pos = { x = 630.967, y = 260.175, z = 522.731 }, rot = { x = 2.775, y = 349.006, z = 2.866 }, level = 1, area_id = 210 },
	{ config_id = 108002, gadget_id = 70211156, pos = { x = 627.457, y = 260.145, z = 521.669 }, rot = { x = 4.242, y = 308.648, z = 4.023 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 108003, gadget_id = 70300089, pos = { x = 628.770, y = 260.169, z = 520.522 }, rot = { x = 0.000, y = 351.027, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 210 },
	{ config_id = 108007, gadget_id = 70300089, pos = { x = 626.259, y = 259.943, z = 518.439 }, rot = { x = 356.183, y = 353.378, z = 3.506 }, level = 1, area_id = 210 },
	{ config_id = 108009, gadget_id = 70300081, pos = { x = 629.877, y = 259.326, z = 534.801 }, rot = { x = 1.450, y = 299.675, z = 0.826 }, level = 36, area_id = 210 },
	{ config_id = 108010, gadget_id = 70300081, pos = { x = 612.314, y = 257.573, z = 519.874 }, rot = { x = 356.572, y = 171.523, z = 0.511 }, level = 36, area_id = 210 },
	{ config_id = 108011, gadget_id = 70300091, pos = { x = 620.389, y = 258.762, z = 516.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 108012, gadget_id = 70220013, pos = { x = 617.460, y = 258.576, z = 520.112 }, rot = { x = 359.560, y = 6.584, z = 10.236 }, level = 36, area_id = 210 },
	{ config_id = 108013, gadget_id = 70220013, pos = { x = 616.071, y = 258.272, z = 522.147 }, rot = { x = 0.000, y = 0.000, z = 10.128 }, level = 36, area_id = 210 },
	{ config_id = 108014, gadget_id = 70310006, pos = { x = 624.504, y = 259.596, z = 528.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	{ config_id = 108015, gadget_id = 70220014, pos = { x = 622.500, y = 259.440, z = 518.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1108004, name = "ANY_MONSTER_DIE_108004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_108004", action = "action_EVENT_ANY_MONSTER_DIE_108004", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { 108005, 108006, 108008 },
		gadgets = { 108001, 108002, 108003, 108007, 108009, 108010, 108011, 108012, 108013, 108014, 108015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_108004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_108004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_108004(context, evt)
	-- 将configid为 108002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end