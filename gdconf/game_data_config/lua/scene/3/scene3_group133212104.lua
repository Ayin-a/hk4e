-- 基础信息
local base_info = {
	group_id = 133212104
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
	{ config_id = 104001, gadget_id = 70330064, pos = { x = -3997.415, y = 202.727, z = -2286.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 104002, gadget_id = 70900380, pos = { x = -3997.715, y = 208.947, z = -2286.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 104003, gadget_id = 70900380, pos = { x = -3994.224, y = 218.405, z = -2281.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 104004, gadget_id = 70900380, pos = { x = -3992.221, y = 227.773, z = -2278.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 104007, gadget_id = 70900380, pos = { x = -3988.047, y = 237.566, z = -2276.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 104008, gadget_id = 70900380, pos = { x = -3977.366, y = 240.314, z = -2273.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 104009, gadget_id = 70900380, pos = { x = -3991.323, y = 242.740, z = -2279.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 104010, gadget_id = 70900380, pos = { x = -3993.554, y = 247.438, z = -2284.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 104011, gadget_id = 70900380, pos = { x = -3993.788, y = 253.679, z = -2287.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1104005, name = "GADGET_STATE_CHANGE_104005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104005", action = "action_EVENT_GADGET_STATE_CHANGE_104005", trigger_count = 0 },
	{ config_id = 1104006, name = "GADGET_STATE_CHANGE_104006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104006", action = "action_EVENT_GADGET_STATE_CHANGE_104006", trigger_count = 0 }
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
		gadgets = { 104001, 104011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_104005", "GADGET_STATE_CHANGE_104006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 104002, 104003, 104004, 104007, 104008, 104009, 104010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_104005(context, evt)
	if 104001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212104, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104006(context, evt)
	if 104001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212104, 2)
	
	return 0
end

require "V2_0/ElectricCore"