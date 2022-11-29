-- 基础信息
local base_info = {
	group_id = 133217230
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 230001, monster_id = 28020503, pos = { x = -4700.792, y = 215.164, z = -3689.017 }, rot = { x = 0.000, y = 242.171, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 14 },
	{ config_id = 230002, monster_id = 28020505, pos = { x = -4700.799, y = 215.092, z = -3689.675 }, rot = { x = 0.000, y = 285.408, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 230003, gadget_id = 70710110, pos = { x = -4701.653, y = 215.127, z = -3689.406 }, rot = { x = 5.213, y = 0.231, z = 0.352 }, level = 1, interact_id = 50, area_id = 14 },
	{ config_id = 230005, gadget_id = 70360001, pos = { x = -4701.667, y = 213.363, z = -3689.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1230004, name = "GADGET_STATE_CHANGE_230004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_230004", action = "action_EVENT_GADGET_STATE_CHANGE_230004" }
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
		monsters = { 230001, 230002 },
		gadgets = { 230003, 230005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_230004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_230004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217230, 230003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_230004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7221109") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end