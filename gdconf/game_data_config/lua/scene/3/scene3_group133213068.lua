-- 基础信息
local base_info = {
	group_id = 133213068
}

-- Trigger变量
local defs = {
	group_ID = 133213068,
	trigger_playRegion = 68006,
	gadget_1 = 68002
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
	{ config_id = 68001, gadget_id = 70950068, pos = { x = -3730.526, y = 200.375, z = -3407.152 }, rot = { x = 3.801, y = 14.734, z = 0.580 }, level = 10, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 68002, gadget_id = 70950070, pos = { x = -3712.006, y = 198.237, z = -3432.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 68003, gadget_id = 70950069, pos = { x = -3729.008, y = 200.665, z = -3431.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 68004, gadget_id = 70950069, pos = { x = -3716.690, y = 200.580, z = -3435.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 68005, gadget_id = 70211111, pos = { x = -3717.656, y = 199.205, z = -3436.239 }, rot = { x = 19.335, y = 359.572, z = 357.488 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 68006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3717.103, y = 200.373, z = -3426.585 }, area_id = 12, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1068007, name = "VARIABLE_CHANGE_68007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_68007", action = "" }
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
		gadgets = { 68001, 68002, 68003, 68004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 68006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 68005 },
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
function condition_EVENT_VARIABLE_CHANGE_68007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"