-- 基础信息
local base_info = {
	group_id = 133223489
}

-- Trigger变量
local defs = {
	group_ID = 133223489,
	trigger_playRegion = 489006,
	gadget_1 = 489002
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
	{ config_id = 489001, gadget_id = 70950068, pos = { x = -6781.934, y = 200.848, z = -2703.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 489002, gadget_id = 70950070, pos = { x = -6786.078, y = 200.560, z = -2662.131 }, rot = { x = 0.000, y = 17.834, z = 0.000 }, level = 10, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 489003, gadget_id = 70950069, pos = { x = -6778.301, y = 198.688, z = -2676.375 }, rot = { x = 319.573, y = 0.000, z = 0.000 }, level = 10, area_id = 18 },
	{ config_id = 489004, gadget_id = 70950069, pos = { x = -6796.710, y = 198.815, z = -2675.993 }, rot = { x = 0.000, y = 0.000, z = 30.556 }, level = 10, area_id = 18 },
	{ config_id = 489005, gadget_id = 70211101, pos = { x = -6786.700, y = 200.388, z = -2677.596 }, rot = { x = 0.000, y = 52.469, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 489006, shape = RegionShape.SPHERE, radius = 37, pos = { x = -6785.934, y = 200.288, z = -2681.588 }, area_id = 18, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1489007, name = "VARIABLE_CHANGE_489007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_489007", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 489008, shape = RegionShape.SPHERE, radius = 15, pos = { x = -6786.434, y = 201.909, z = -2680.973 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1489008, name = "ENTER_REGION_489008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 489001, 489002, 489003, 489004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 489006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 489005 },
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
function condition_EVENT_VARIABLE_CHANGE_489007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"