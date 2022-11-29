-- 基础信息
local base_info = {
	group_id = 111101165
}

-- Trigger变量
local defs = {
	group_ID = 111101165,
	trigger_playRegion = 165006,
	gadget_1 = 165002
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
	{ config_id = 165001, gadget_id = 70950068, pos = { x = 2922.400, y = 260.574, z = -1387.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 165002, gadget_id = 70290116, pos = { x = 2913.167, y = 258.171, z = -1403.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 165003, gadget_id = 70950069, pos = { x = 2918.312, y = 259.579, z = -1393.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 165004, gadget_id = 70950069, pos = { x = 2905.814, y = 258.385, z = -1408.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 165005, gadget_id = 70211111, pos = { x = 2924.107, y = 259.221, z = -1393.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 165008, gadget_id = 70950068, pos = { x = 2895.524, y = 258.121, z = -1397.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 165006, shape = RegionShape.SPHERE, radius = 30, pos = { x = 2908.485, y = 259.966, z = -1397.461 }, ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1165007, name = "VARIABLE_CHANGE_165007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_165007", action = "" }
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
		gadgets = { 165001, 165002, 165003, 165004, 165008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 165006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 165005 },
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
function condition_EVENT_VARIABLE_CHANGE_165007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"