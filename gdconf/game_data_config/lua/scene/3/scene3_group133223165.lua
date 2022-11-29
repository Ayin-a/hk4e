-- 基础信息
local base_info = {
	group_id = 133223165
}

-- Trigger变量
local defs = {
	group_ID = 133223165,
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
	{ config_id = 165001, gadget_id = 70950068, pos = { x = -5986.032, y = 200.087, z = -2424.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 165002, gadget_id = 70290117, pos = { x = -6002.455, y = 203.461, z = -2442.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 18 },
	{ config_id = 165004, gadget_id = 70950069, pos = { x = -6031.988, y = 200.994, z = -2404.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 18 },
	{ config_id = 165005, gadget_id = 70211111, pos = { x = -6006.457, y = 200.647, z = -2431.993 }, rot = { x = 0.000, y = 322.318, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 165008, gadget_id = 70950068, pos = { x = -6024.679, y = 200.135, z = -2455.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 165009, gadget_id = 70950068, pos = { x = -6015.831, y = 199.886, z = -2431.874 }, rot = { x = 0.000, y = 314.202, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 165006, shape = RegionShape.SPHERE, radius = 55, pos = { x = -6013.447, y = 202.236, z = -2433.087 }, area_id = 18, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1165007, name = "VARIABLE_CHANGE_165007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_165007", action = "action_EVENT_VARIABLE_CHANGE_165007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 165003, gadget_id = 70950069, pos = { x = -6010.444, y = 201.520, z = -2454.710 }, rot = { x = 35.462, y = 0.000, z = 0.000 }, level = 10, area_id = 18 }
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
		gadgets = { 165001, 165002, 165004, 165008, 165009 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_165007" },
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

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_165007(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133223168, 2)
	
	return 0
end

require "BlackBoxPlay/ChargingPort"