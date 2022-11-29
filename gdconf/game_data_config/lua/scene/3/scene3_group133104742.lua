-- 基础信息
local base_info = {
	group_id = 133104742
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 742001, monster_id = 21010101, pos = { x = 658.015, y = 201.147, z = 333.339 }, rot = { x = 0.000, y = 137.940, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9016, area_id = 9 },
	{ config_id = 742002, monster_id = 21010101, pos = { x = 662.340, y = 201.075, z = 331.567 }, rot = { x = 0.000, y = 197.751, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 9 },
	{ config_id = 742004, monster_id = 21010401, pos = { x = 658.956, y = 201.367, z = 329.835 }, rot = { x = 0.000, y = 53.001, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 742007, monster_id = 21020301, pos = { x = 660.918, y = 201.075, z = 335.450 }, rot = { x = 0.000, y = 205.081, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 742005, gadget_id = 70210122, pos = { x = 663.994, y = 201.075, z = 335.142 }, rot = { x = 0.000, y = 226.459, z = 0.000 }, level = 16, chest_drop_id = 1050161, drop_count = 1, state = GadgetState.ChestLocked, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1742003, name = "ANY_MONSTER_DIE_742003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_742003", action = "action_EVENT_ANY_MONSTER_DIE_742003", trigger_count = 0 },
	{ config_id = 1742006, name = "GADGET_STATE_CHANGE_742006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_742006", action = "action_EVENT_GADGET_STATE_CHANGE_742006" }
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
		monsters = { 742001, 742002, 742004, 742007 },
		gadgets = { 742005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_742003", "GADGET_STATE_CHANGE_742006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_742003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_742003(context, evt)
	-- 将configid为 742005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 742005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_742006(context, evt)
	if 742005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_742006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104742") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end