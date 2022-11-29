-- 基础信息
local base_info = {
	group_id = 133210250
}

-- Trigger变量
local defs = {
	group_ID = 133210250,
	trigger_playRegion = 250006,
	gadget_1 = 250002
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
	{ config_id = 250001, gadget_id = 70950068, pos = { x = -3930.065, y = 129.545, z = -727.793 }, rot = { x = 339.189, y = 328.604, z = 352.638 }, level = 10, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 250002, gadget_id = 70290117, pos = { x = -3930.680, y = 130.323, z = -703.830 }, rot = { x = 353.521, y = 317.310, z = 10.394 }, level = 10, area_id = 17 },
	{ config_id = 250003, gadget_id = 70950069, pos = { x = -3901.128, y = 130.683, z = -707.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 250004, gadget_id = 70950068, pos = { x = -3945.430, y = 129.906, z = -684.937 }, rot = { x = 346.721, y = 328.192, z = 1.372 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 250005, gadget_id = 70211101, pos = { x = -3935.099, y = 130.912, z = -700.626 }, rot = { x = 16.747, y = 118.181, z = 3.428 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 250008, gadget_id = 70950068, pos = { x = -3918.015, y = 128.030, z = -684.306 }, rot = { x = 2.347, y = 271.734, z = 350.887 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 250013, gadget_id = 70950069, pos = { x = -3930.946, y = 129.088, z = -689.467 }, rot = { x = 0.000, y = 41.991, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 250006, shape = RegionShape.SPHERE, radius = 60, pos = { x = -3906.536, y = 127.977, z = -701.789 }, area_id = 17, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1250007, name = "VARIABLE_CHANGE_250007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_250007", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 250010, gadget_id = 70950069, pos = { x = -3881.122, y = 127.759, z = -699.557 }, rot = { x = 0.000, y = 41.991, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 250011, gadget_id = 70950069, pos = { x = -3909.763, y = 130.366, z = -700.470 }, rot = { x = 0.000, y = 63.818, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 250012, gadget_id = 70950069, pos = { x = -3901.333, y = 129.948, z = -662.465 }, rot = { x = 0.000, y = 107.893, z = 0.000 }, level = 30, area_id = 17 }
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
		gadgets = { 250001, 250002, 250003, 250004, 250008, 250013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 250006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 250005 },
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
function condition_EVENT_VARIABLE_CHANGE_250007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"