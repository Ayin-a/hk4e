-- 基础信息
local base_info = {
	group_id = 111101166
}

-- Trigger变量
local defs = {
	group_ID = 111101166,
	trigger_playRegion = 166006,
	gadget_1 = 166002
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
	{ config_id = 166001, gadget_id = 70950068, pos = { x = 2951.351, y = 260.542, z = -1377.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 166002, gadget_id = 70290117, pos = { x = 2963.766, y = 261.756, z = -1356.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 166003, gadget_id = 70950069, pos = { x = 2962.568, y = 261.472, z = -1371.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 166004, gadget_id = 70950069, pos = { x = 2953.968, y = 261.069, z = -1362.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 166005, gadget_id = 70211111, pos = { x = 2970.185, y = 262.069, z = -1354.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 166008, gadget_id = 70950068, pos = { x = 2939.464, y = 262.833, z = -1357.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 166009, gadget_id = 70950068, pos = { x = 2963.564, y = 266.344, z = -1339.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 166010, gadget_id = 70950069, pos = { x = 2960.598, y = 263.568, z = -1351.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 166011, gadget_id = 70950069, pos = { x = 2961.678, y = 261.842, z = -1364.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 166012, gadget_id = 70950069, pos = { x = 2953.354, y = 262.510, z = -1354.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 166006, shape = RegionShape.SPHERE, radius = 23, pos = { x = 2958.523, y = 262.856, z = -1360.100 }, ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1166007, name = "VARIABLE_CHANGE_166007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_166007", action = "" }
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
		gadgets = { 166001, 166002, 166003, 166004, 166008, 166009, 166010, 166011, 166012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 166006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 166005 },
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
function condition_EVENT_VARIABLE_CHANGE_166007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"