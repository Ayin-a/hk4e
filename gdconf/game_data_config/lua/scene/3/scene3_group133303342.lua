-- 基础信息
local base_info = {
	group_id = 133303342
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 342001, gadget_id = 70330404, pos = { x = -2299.950, y = 277.475, z = 3945.682 }, rot = { x = 351.016, y = 1.493, z = 350.523 }, level = 1, persistent = true, area_id = 26 },
	{ config_id = 342003, gadget_id = 70330430, pos = { x = -2300.650, y = 277.339, z = 3945.232 }, rot = { x = 13.967, y = 123.983, z = 14.945 }, level = 1, area_id = 26 },
	{ config_id = 342004, gadget_id = 70220103, pos = { x = -2300.224, y = 284.528, z = 3950.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1342002, name = "GADGET_STATE_CHANGE_342002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_342002", action = "action_EVENT_GADGET_STATE_CHANGE_342002" }
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
		monsters = { },
		gadgets = { 342001, 342003, 342004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_342002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_342002(context, evt)
	if 342001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_342002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "302007") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end