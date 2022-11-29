-- 基础信息
local base_info = {
	group_id = 133104728
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 728001, monster_id = 20010501, pos = { x = 589.211, y = 202.301, z = 388.809 }, rot = { x = 0.000, y = 101.464, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 728002, monster_id = 20011201, pos = { x = 590.793, y = 202.198, z = 386.476 }, rot = { x = 0.000, y = 188.188, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 728003, monster_id = 20011301, pos = { x = 591.826, y = 202.359, z = 390.193 }, rot = { x = 352.662, y = 196.231, z = 357.867 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 728004, monster_id = 20010501, pos = { x = 593.260, y = 202.513, z = 386.898 }, rot = { x = 0.000, y = 209.146, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 728006, gadget_id = 70210120, pos = { x = 593.844, y = 202.086, z = 390.922 }, rot = { x = 356.140, y = 225.032, z = 6.294 }, level = 16, chest_drop_id = 1050160, drop_count = 1, state = GadgetState.ChestLocked, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1728005, name = "ANY_MONSTER_DIE_728005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_728005", action = "action_EVENT_ANY_MONSTER_DIE_728005", trigger_count = 0 },
	{ config_id = 1728007, name = "GADGET_STATE_CHANGE_728007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_728007", action = "action_EVENT_GADGET_STATE_CHANGE_728007" }
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
		monsters = { 728001, 728002, 728003, 728004 },
		gadgets = { 728006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_728005", "GADGET_STATE_CHANGE_728007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_728005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_728005(context, evt)
	-- 将configid为 728006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 728006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_728007(context, evt)
	if 728006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_728007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104728") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end