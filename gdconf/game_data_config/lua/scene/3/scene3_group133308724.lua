-- 基础信息
local base_info = {
	group_id = 133308724
}

-- Trigger变量
local defs = {
	point_camera = 724003,
	gadget_lookEntity = 724002,
	look_duration = 2
}

-- DEFS_MISCS
--注目相关参数
local CameraLookSetting = {
    blend_type = 1,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = true,
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
	[724002] = { config_id = 724002, gadget_id = 70360001, pos = { x = -1269.143, y = 45.936, z = 4541.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1724001, name = "VARIABLE_CHANGE_724001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_724001", action = "action_EVENT_VARIABLE_CHANGE_724001", trigger_count = 0 }
}

-- 点位
points = {
	[724003] = { config_id = 724003, pos = { x = -1283.130, y = 58.000, z = 4543.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 26 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isLook", value = 0, no_refresh = true }
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
		gadgets = { 724002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_724001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_724001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isLook"为1
	if ScriptLib.GetGroupVariableValue(context, "isLook") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_724001(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/CameraLook"