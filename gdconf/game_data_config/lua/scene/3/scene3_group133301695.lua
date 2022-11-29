-- 基础信息
local base_info = {
	group_id = 133301695
}

-- Trigger变量
local defs = {
	point_camera = 695001,
	gadget_lookEntity = 695002,
	look_duration = 5
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = false,
    delay = 0,
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
	[695002] = { config_id = 695002, gadget_id = 70360001, pos = { x = -576.492, y = 143.740, z = 3381.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1695003, name = "VARIABLE_CHANGE_695003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_695003", action = "action_EVENT_VARIABLE_CHANGE_695003" }
}

-- 点位
points = {
	[695001] = { config_id = 695001, pos = { x = -589.364, y = 168.661, z = 3386.861 }, rot = { x = 0.000, y = 100.839, z = 0.000 }, area_id = 22 }
}

-- 变量
variables = {
	{ config_id = 1, name = "camera", value = 0, no_refresh = true }
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
		gadgets = { 695002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_695003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_695003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"camera"为1
	if ScriptLib.GetGroupVariableValue(context, "camera") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_695003(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/CameraLook"