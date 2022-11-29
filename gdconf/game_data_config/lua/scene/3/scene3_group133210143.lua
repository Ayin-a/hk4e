-- 基础信息
local base_info = {
	group_id = 133210143
}

-- Trigger变量
local defs = {
	group_ID = 133210143,
	trigger_playRegion = 143006,
	gadget_1 = 143002
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
	{ config_id = 143001, gadget_id = 70950068, pos = { x = -3554.511, y = 208.620, z = -1193.928 }, rot = { x = 0.000, y = 316.230, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 143002, gadget_id = 70290117, pos = { x = -3540.575, y = 207.862, z = -1153.950 }, rot = { x = 0.000, y = 312.155, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 143003, gadget_id = 70950069, pos = { x = -3529.441, y = 197.777, z = -1163.636 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 143004, gadget_id = 70950069, pos = { x = -3537.256, y = 197.456, z = -1174.325 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 143005, gadget_id = 70211111, pos = { x = -3540.013, y = 207.936, z = -1147.453 }, rot = { x = 0.000, y = 172.806, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 143008, gadget_id = 70950069, pos = { x = -3541.894, y = 176.130, z = -1152.390 }, rot = { x = 0.000, y = 96.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 143010, gadget_id = 70950068, pos = { x = -3531.535, y = 226.922, z = -1172.958 }, rot = { x = 0.000, y = 41.674, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 143011, gadget_id = 70950068, pos = { x = -3579.029, y = 204.416, z = -1146.638 }, rot = { x = 0.000, y = 43.010, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 143006, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3535.075, y = 196.055, z = -1171.457 }, area_id = 17, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1143007, name = "VARIABLE_CHANGE_143007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_143007", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 143012, gadget_id = 70950069, pos = { x = -3539.207, y = 226.994, z = -1163.450 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 30, area_id = 17 }
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
		gadgets = { 143001, 143002, 143003, 143004, 143008, 143010, 143011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 143006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 143005 },
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
function condition_EVENT_VARIABLE_CHANGE_143007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"