-- 基础信息
local base_info = {
	group_id = 220133080
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80001, monster_id = 21020501, pos = { x = 2642.555, y = 583.914, z = -1767.813 }, rot = { x = 0.000, y = 243.998, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401 },
	{ config_id = 80005, monster_id = 21011201, pos = { x = 2639.253, y = 584.051, z = -1776.382 }, rot = { x = 0.000, y = 335.915, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010 },
	{ config_id = 80008, monster_id = 21010501, pos = { x = 2637.611, y = 583.929, z = -1767.172 }, rot = { x = 0.000, y = 170.699, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32 },
	{ config_id = 80014, monster_id = 21020501, pos = { x = 2642.712, y = 583.911, z = -1778.029 }, rot = { x = 0.000, y = 314.846, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401 },
	{ config_id = 80016, monster_id = 21011201, pos = { x = 2642.364, y = 584.052, z = -1773.289 }, rot = { x = 0.000, y = 287.025, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 80002, gadget_id = 70211022, pos = { x = 2654.898, y = 583.929, z = -1772.877 }, rot = { x = 0.000, y = 274.780, z = 0.000 }, level = 16, drop_tag = "战斗高级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 80004, gadget_id = 70310018, pos = { x = 2628.572, y = 583.908, z = -1792.579 }, rot = { x = 0.000, y = 30.263, z = 0.000 }, level = 1 },
	{ config_id = 80006, gadget_id = 70310001, pos = { x = 2654.715, y = 583.921, z = -1755.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 80007, gadget_id = 70310001, pos = { x = 2649.059, y = 583.911, z = -1750.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 80009, gadget_id = 70300085, pos = { x = 2638.330, y = 583.873, z = -1771.674 }, rot = { x = 0.000, y = 81.321, z = 0.000 }, level = 1 },
	{ config_id = 80010, gadget_id = 70310001, pos = { x = 2619.674, y = 583.909, z = -1768.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 80011, gadget_id = 70310001, pos = { x = 2619.702, y = 583.924, z = -1776.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 80012, gadget_id = 70220013, pos = { x = 2656.744, y = 583.935, z = -1775.687 }, rot = { x = 0.000, y = 281.272, z = 0.000 }, level = 1 },
	{ config_id = 80013, gadget_id = 70220013, pos = { x = 2655.681, y = 583.926, z = -1777.851 }, rot = { x = 0.000, y = 331.832, z = 0.000 }, level = 1 },
	{ config_id = 80015, gadget_id = 70220026, pos = { x = 2654.523, y = 583.948, z = -1775.844 }, rot = { x = 359.373, y = 304.582, z = 0.242 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1080003, name = "ANY_MONSTER_DIE_80003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_80003", action = "action_EVENT_ANY_MONSTER_DIE_80003", trigger_count = 0 }
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
		monsters = { 80001, 80005, 80008, 80014, 80016 },
		gadgets = { 80002, 80004, 80006, 80007, 80009, 80010, 80011, 80012, 80013, 80015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_80003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_80003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_80003(context, evt)
	-- 将configid为 80002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220133032, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end