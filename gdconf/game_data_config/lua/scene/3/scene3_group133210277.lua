-- 基础信息
local base_info = {
	group_id = 133210277
}

-- Trigger变量
local defs = {
	group_ID = 133210277,
	trigger_playRegion = 277006,
	gadget_1 = 277002
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
	{ config_id = 277002, gadget_id = 70290116, pos = { x = -3733.886, y = 134.056, z = -767.004 }, rot = { x = 351.123, y = 348.790, z = 3.518 }, level = 10, area_id = 17 },
	{ config_id = 277004, gadget_id = 70950069, pos = { x = -3747.360, y = 140.740, z = -733.658 }, rot = { x = 0.000, y = 165.275, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 277005, gadget_id = 70211111, pos = { x = -3734.489, y = 134.755, z = -761.753 }, rot = { x = 6.244, y = 177.857, z = 358.371 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 277008, gadget_id = 70950068, pos = { x = -3775.014, y = 132.023, z = -767.068 }, rot = { x = 343.551, y = 343.652, z = 355.703 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 277009, gadget_id = 70950068, pos = { x = -3738.321, y = 124.575, z = -794.152 }, rot = { x = 351.260, y = 15.717, z = 11.194 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 277010, gadget_id = 70950069, pos = { x = -3771.289, y = 126.654, z = -782.308 }, rot = { x = 0.000, y = 165.275, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 277006, shape = RegionShape.SPHERE, radius = 55, pos = { x = -3733.375, y = 124.544, z = -767.830 }, area_id = 17, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1277007, name = "VARIABLE_CHANGE_277007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_277007", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 277001, gadget_id = 70950068, pos = { x = -3685.043, y = 124.435, z = -765.750 }, rot = { x = 348.030, y = 24.012, z = 8.962 }, level = 10, state = GadgetState.GearStart, area_id = 17 },
		{ config_id = 277003, gadget_id = 70950069, pos = { x = -3706.492, y = 122.992, z = -756.010 }, rot = { x = 0.000, y = 344.780, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 277011, gadget_id = 70950069, pos = { x = -3732.499, y = 113.657, z = -813.170 }, rot = { x = 0.000, y = 342.137, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 277012, gadget_id = 70950069, pos = { x = -3703.299, y = 111.307, z = -785.301 }, rot = { x = 0.000, y = 342.137, z = 0.000 }, level = 30, area_id = 17 }
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
		gadgets = { 277002, 277004, 277008, 277009, 277010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 277006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 277005 },
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
function condition_EVENT_VARIABLE_CHANGE_277007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"