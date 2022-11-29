-- 基础信息
local base_info = {
	group_id = 133210140
}

-- Trigger变量
local defs = {
	group_ID = 133210140,
	trigger_playRegion = 140006,
	gadget_1 = 140002
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
	{ config_id = 140006, shape = RegionShape.SPHERE, radius = 60, pos = { x = -3610.825, y = 207.978, z = -950.190 }, area_id = 17, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1140007, name = "VARIABLE_CHANGE_140007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_140007", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 140001, gadget_id = 70950068, pos = { x = -3640.372, y = 200.640, z = -977.507 }, rot = { x = 5.643, y = 359.934, z = 356.179 }, level = 10, state = GadgetState.GearStart, area_id = 17 },
		{ config_id = 140002, gadget_id = 70290116, pos = { x = -3585.760, y = 211.463, z = -944.487 }, rot = { x = 353.579, y = 0.396, z = 359.711 }, level = 10, area_id = 17 },
		{ config_id = 140003, gadget_id = 70950069, pos = { x = -3570.033, y = 205.479, z = -957.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 140005, gadget_id = 70211111, pos = { x = -3591.107, y = 210.947, z = -945.927 }, rot = { x = 354.790, y = 91.665, z = 356.012 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
		{ config_id = 140008, gadget_id = 70950068, pos = { x = -3611.989, y = 207.771, z = -977.895 }, rot = { x = 358.100, y = 334.231, z = 359.475 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
		{ config_id = 140009, gadget_id = 70950069, pos = { x = -3606.600, y = 211.412, z = -930.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 140010, gadget_id = 70950069, pos = { x = -3581.904, y = 202.847, z = -920.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 140011, gadget_id = 70950068, pos = { x = -3622.863, y = 210.228, z = -939.332 }, rot = { x = 2.890, y = 0.975, z = 11.479 }, level = 30, state = GadgetState.GearStart, area_id = 17 }
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
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_VARIABLE_CHANGE_140007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end