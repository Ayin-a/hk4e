-- 基础信息
local base_info = {
	group_id = 133213194
}

-- Trigger变量
local defs = {
	group_ID = 133213194,
	trigger_playRegion = 194006,
	gadget_1 = 194002
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
	{ config_id = 194001, gadget_id = 70950068, pos = { x = -3220.489, y = 227.784, z = -3518.087 }, rot = { x = 358.908, y = 0.573, z = 15.003 }, level = 10, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 194002, gadget_id = 70950070, pos = { x = -3248.306, y = 235.349, z = -3551.139 }, rot = { x = 342.905, y = 0.197, z = 358.047 }, level = 10, area_id = 12 },
	{ config_id = 194003, gadget_id = 70950069, pos = { x = -3222.884, y = 226.689, z = -3533.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 194004, gadget_id = 70950069, pos = { x = -3209.776, y = 228.691, z = -3525.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 194005, gadget_id = 70211111, pos = { x = -3245.112, y = 235.423, z = -3550.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 194008, gadget_id = 70950069, pos = { x = -3209.546, y = 227.196, z = -3539.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 194009, gadget_id = 70950069, pos = { x = -3241.580, y = 231.494, z = -3560.886 }, rot = { x = 339.837, y = 359.795, z = 358.722 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 194006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3224.790, y = 224.417, z = -3540.600 }, area_id = 12, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1194007, name = "VARIABLE_CHANGE_194007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_194007", action = "" }
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
		gadgets = { 194001, 194002, 194003, 194004, 194008, 194009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 194006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 194005 },
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
function condition_EVENT_VARIABLE_CHANGE_194007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"