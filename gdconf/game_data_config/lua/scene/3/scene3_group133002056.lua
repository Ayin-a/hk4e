-- 基础信息
local base_info = {
	group_id = 133002056
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
	{ config_id = 56001, gadget_id = 70710588, pos = { x = 1200.568, y = 374.220, z = -791.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 56003, gadget_id = 70710558, pos = { x = 1201.172, y = 374.210, z = -793.137 }, rot = { x = 0.000, y = 318.670, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 56004, gadget_id = 70710558, pos = { x = 1198.693, y = 374.216, z = -791.660 }, rot = { x = 0.000, y = 89.683, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 56005, gadget_id = 70710558, pos = { x = 1199.475, y = 374.194, z = -793.130 }, rot = { x = 0.000, y = 28.475, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 56006, gadget_id = 70710558, pos = { x = 1199.764, y = 374.238, z = -790.247 }, rot = { x = 0.000, y = 147.819, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 56007, gadget_id = 70710562, pos = { x = 1202.161, y = 374.223, z = -791.705 }, rot = { x = 0.000, y = 275.092, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 56008, gadget_id = 70710588, pos = { x = 1200.568, y = 374.220, z = -791.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1056002, name = "GADGET_STATE_CHANGE_56002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56002", action = "action_EVENT_GADGET_STATE_CHANGE_56002" }
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
		gadgets = { 56001, 56003, 56004, 56005, 56006, 56007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_56002" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 56003, 56004, 56005, 56006, 56007, 56008 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56002(context, evt)
	if 56001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4002708") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end