-- 基础信息
local base_info = {
	group_id = 133210138
}

-- Trigger变量
local defs = {
	group_ID = 133210138,
	trigger_playRegion = 138006,
	gadget_1 = 138002
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
	{ config_id = 1138007, name = "VARIABLE_CHANGE_138007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_138007", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 138001, gadget_id = 70950068, pos = { x = -4010.555, y = 215.397, z = -694.709 }, rot = { x = 354.654, y = 25.626, z = 4.930 }, level = 10, state = GadgetState.GearStart, area_id = 17 },
		{ config_id = 138002, gadget_id = 70290117, pos = { x = -4033.757, y = 217.301, z = -660.422 }, rot = { x = 2.506, y = 0.221, z = 19.352 }, level = 10, area_id = 17 },
		{ config_id = 138003, gadget_id = 70950069, pos = { x = -4007.243, y = 211.601, z = -673.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 138004, gadget_id = 70950069, pos = { x = -4040.130, y = 215.749, z = -631.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 138005, gadget_id = 70211111, pos = { x = -4038.373, y = 215.492, z = -659.785 }, rot = { x = 355.305, y = 101.984, z = 358.076 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
		{ config_id = 138008, gadget_id = 70950068, pos = { x = -4046.660, y = 212.365, z = -692.723 }, rot = { x = 359.154, y = 0.186, z = 2.923 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
		{ config_id = 138009, gadget_id = 70950068, pos = { x = -4014.005, y = 224.523, z = -643.533 }, rot = { x = 3.418, y = 0.549, z = 20.776 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
		{ config_id = 138010, gadget_id = 70950069, pos = { x = -4014.876, y = 204.052, z = -677.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
	},
	regions = {
		{ config_id = 138006, shape = RegionShape.SPHERE, radius = 70, pos = { x = -4026.200, y = 215.377, z = -677.389 }, area_id = 17, team_ability_group_list = { "Move_Electric_Stake_Play" } }
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
function condition_EVENT_VARIABLE_CHANGE_138007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end