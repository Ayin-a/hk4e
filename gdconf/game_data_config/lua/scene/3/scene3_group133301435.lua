-- 基础信息
local base_info = {
	group_id = 133301435
}

-- Trigger变量
local defs = {
	point_camera = 435003,
	gadget_lookEntity = 435001,
	look_duration = 5
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 0,
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
	[435001] = { config_id = 435001, gadget_id = 70360001, pos = { x = -768.233, y = 112.702, z = 3394.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1435002, name = "VARIABLE_CHANGE_435002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_435002", action = "action_EVENT_VARIABLE_CHANGE_435002" }
}

-- 点位
points = {
	[435003] = { config_id = 435003, pos = { x = -760.270, y = 144.989, z = 3415.341 }, rot = { x = 0.000, y = 190.192, z = 0.000 }, area_id = 23 }
}

-- 变量
variables = {
	{ config_id = 1, name = "camera", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1435004, name = "VARIABLE_CHANGE_435004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_435004", action = "action_EVENT_VARIABLE_CHANGE_435004" }
	}
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
		gadgets = { 435001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_435002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_435002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"camera"为1
	if ScriptLib.GetGroupVariableValue(context, "camera") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_435002(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/CameraLook"