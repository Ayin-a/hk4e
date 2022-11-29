-- 基础信息
local base_info = {
	group_id = 111101050
}

-- Trigger变量
local defs = {
	group_ID = 111101050,
	trigger_playRegion = 50005,
	gadget_1 = 50002
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
	{ config_id = 50001, gadget_id = 70950068, pos = { x = 2453.300, y = 296.149, z = -1604.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 50002, gadget_id = 70950070, pos = { x = 2434.015, y = 294.699, z = -1617.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 50003, gadget_id = 70950069, pos = { x = 2447.763, y = 296.102, z = -1617.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 50004, gadget_id = 70950069, pos = { x = 2436.857, y = 293.492, z = -1604.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 50006, gadget_id = 70211111, pos = { x = 2441.238, y = 293.878, z = -1610.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 50005, shape = RegionShape.SPHERE, radius = 30, pos = { x = 2445.138, y = 294.624, z = -1609.925 }, ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1050007, name = "VARIABLE_CHANGE_50007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_50007", action = "" }
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
		gadgets = { 50001, 50002, 50003, 50004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 50005 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 50006 },
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
function condition_EVENT_VARIABLE_CHANGE_50007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"