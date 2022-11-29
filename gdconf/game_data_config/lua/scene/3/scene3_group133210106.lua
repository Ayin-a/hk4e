-- 基础信息
local base_info = {
	group_id = 133210106
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1106001, name = "VARIABLE_CHANGE_106001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_106001", action = "action_EVENT_VARIABLE_CHANGE_106001", trigger_count = 0 },
	{ config_id = 1106002, name = "VARIABLE_CHANGE_106002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_106002", action = "action_EVENT_VARIABLE_CHANGE_106002", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GadgetCreate", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 106003, gadget_id = 70900380, pos = { x = -3853.807, y = 258.052, z = -529.935 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106004, gadget_id = 70900380, pos = { x = -3855.905, y = 259.396, z = -544.189 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106005, gadget_id = 70900380, pos = { x = -3858.419, y = 261.044, z = -558.716 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106006, gadget_id = 70900380, pos = { x = -3864.319, y = 261.311, z = -571.748 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106007, gadget_id = 70900380, pos = { x = -3874.272, y = 259.816, z = -585.066 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106008, gadget_id = 70900380, pos = { x = -3884.771, y = 252.471, z = -599.082 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106009, gadget_id = 70900380, pos = { x = -3892.487, y = 245.125, z = -613.858 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106010, gadget_id = 70900380, pos = { x = -3898.562, y = 236.465, z = -628.415 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106011, gadget_id = 70900380, pos = { x = -3904.800, y = 228.091, z = -643.361 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106012, gadget_id = 70900380, pos = { x = -3910.943, y = 220.563, z = -658.080 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106013, gadget_id = 70900380, pos = { x = -3917.510, y = 212.606, z = -673.815 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106014, gadget_id = 70900380, pos = { x = -3923.542, y = 203.100, z = -688.269 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106015, gadget_id = 70900380, pos = { x = -3930.043, y = 193.776, z = -703.846 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106016, gadget_id = 70900380, pos = { x = -3935.974, y = 188.586, z = -724.209 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106017, gadget_id = 70900380, pos = { x = -3941.928, y = 184.370, z = -745.380 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106018, gadget_id = 70900380, pos = { x = -3947.678, y = 181.130, z = -766.398 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106019, gadget_id = 70900380, pos = { x = -3953.155, y = 178.756, z = -787.951 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106020, gadget_id = 70900380, pos = { x = -3957.816, y = 176.239, z = -809.216 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106021, gadget_id = 70900380, pos = { x = -3960.879, y = 174.387, z = -824.638 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106022, gadget_id = 70900380, pos = { x = -3961.707, y = 174.387, z = -847.367 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 106023, gadget_id = 70900380, pos = { x = -3966.237, y = 177.528, z = -866.340 }, rot = { x = 0.000, y = 202.653, z = 0.000 }, level = 30, area_id = 17 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_106001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetCreate"为0
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_106001(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210106, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_106002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetCreate"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_106002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210106, 2)
	
	return 0
end

require "V2_0/ElectricCore"