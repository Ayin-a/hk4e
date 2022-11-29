-- 基础信息
local base_info = {
	group_id = 133223445
}

-- Trigger变量
local defs = {
	group_ID = 133223445,
	trigger_playRegion = 445013,
	gadget_1 = 445002
}

-- DEFS_MISCS
endLinkMap = 
{
{inPort = {445005},outPort = {445006}}
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
	{ config_id = 445001, gadget_id = 70950068, pos = { x = -6083.190, y = 208.646, z = -2865.402 }, rot = { x = 359.648, y = 27.330, z = -0.002 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 445002, gadget_id = 70950070, pos = { x = -6066.694, y = 210.613, z = -2842.529 }, rot = { x = 359.648, y = 27.564, z = -0.004 }, level = 33, area_id = 18 },
	{ config_id = 445004, gadget_id = 70950069, pos = { x = -6066.890, y = 208.266, z = -2853.221 }, rot = { x = 328.651, y = 26.781, z = 0.001 }, level = 33, area_id = 18 },
	{ config_id = 445005, gadget_id = 70330136, pos = { x = -6073.500, y = 210.489, z = -2849.920 }, rot = { x = 359.649, y = 28.735, z = 359.989 }, level = 33, area_id = 18 },
	{ config_id = 445006, gadget_id = 70330136, pos = { x = -6068.896, y = 210.542, z = -2841.377 }, rot = { x = 359.649, y = 28.735, z = 359.989 }, level = 33, area_id = 18 },
	{ config_id = 445007, gadget_id = 70211101, pos = { x = -6075.644, y = 210.543, z = -2848.819 }, rot = { x = 359.994, y = 297.993, z = 0.352 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 445013, shape = RegionShape.SPHERE, radius = 15, pos = { x = -6074.857, y = 210.576, z = -2848.693 }, area_id = 18, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1445013, name = "ENTER_REGION_445013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1445014, name = "VARIABLE_CHANGE_445014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_445014", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 445003, shape = RegionShape.SPHERE, radius = 15, pos = { x = -6062.395, y = 205.900, z = -2833.401 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1445003, name = "ENTER_REGION_445003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 445001, 445002, 445004, 445005, 445006 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_445014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 445013 },
		triggers = { "ENTER_REGION_445013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 445007 },
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
function condition_EVENT_VARIABLE_CHANGE_445014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"
require "V2_2/Circuit"