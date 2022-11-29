-- 基础信息
local base_info = {
	group_id = 133217231
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 231001, monster_id = 28020504, pos = { x = -4757.791, y = 232.224, z = -3728.563 }, rot = { x = 5.451, y = 313.679, z = 356.249 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 14 },
	{ config_id = 231002, monster_id = 28020504, pos = { x = -4758.791, y = 232.331, z = -3729.038 }, rot = { x = 0.000, y = 0.665, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 231003, gadget_id = 70710110, pos = { x = -4758.645, y = 232.248, z = -3728.272 }, rot = { x = 5.213, y = 0.231, z = 0.352 }, level = 1, interact_id = 50, area_id = 14 },
	{ config_id = 231005, gadget_id = 70360001, pos = { x = -4758.665, y = 230.000, z = -3728.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1231004, name = "GADGET_STATE_CHANGE_231004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_231004", action = "action_EVENT_GADGET_STATE_CHANGE_231004" }
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
		monsters = { 231001, 231002 },
		gadgets = { 231003, 231005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_231004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_231004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217231, 231003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_231004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7221110") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end