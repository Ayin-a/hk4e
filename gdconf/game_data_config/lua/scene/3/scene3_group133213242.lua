-- 基础信息
local base_info = {
	group_id = 133213242
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
	{ config_id = 242001, gadget_id = 70900380, pos = { x = -3996.587, y = 208.612, z = -2912.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242002, gadget_id = 70900380, pos = { x = -4014.302, y = 215.264, z = -2916.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242003, gadget_id = 70900380, pos = { x = -4038.627, y = 221.290, z = -2907.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242004, gadget_id = 70900380, pos = { x = -4032.661, y = 221.290, z = -2937.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242005, gadget_id = 70900380, pos = { x = -4054.720, y = 227.846, z = -2926.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242006, gadget_id = 70900380, pos = { x = -4074.406, y = 233.978, z = -2924.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242007, gadget_id = 70900380, pos = { x = -4109.711, y = 224.645, z = -2930.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242008, gadget_id = 70900380, pos = { x = -4124.269, y = 208.093, z = -2976.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242009, gadget_id = 70900380, pos = { x = -4121.886, y = 219.974, z = -2990.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242010, gadget_id = 70900380, pos = { x = -4119.417, y = 232.781, z = -3004.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242011, gadget_id = 70900380, pos = { x = -4117.313, y = 241.107, z = -3019.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242012, gadget_id = 70900380, pos = { x = -4106.211, y = 232.363, z = -3073.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242013, gadget_id = 70900380, pos = { x = -4109.737, y = 241.107, z = -3059.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242014, gadget_id = 70900380, pos = { x = -4113.522, y = 246.234, z = -3039.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242015, gadget_id = 70900380, pos = { x = -4099.707, y = 219.974, z = -3086.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242016, gadget_id = 70900380, pos = { x = -4095.912, y = 208.093, z = -3101.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242018, gadget_id = 70330064, pos = { x = -3986.245, y = 203.070, z = -2911.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 12 },
	{ config_id = 242019, gadget_id = 70330064, pos = { x = -4099.480, y = 200.314, z = -3112.871 }, rot = { x = 5.298, y = 1.423, z = 355.048 }, level = 27, interact_id = 35, area_id = 12 },
	{ config_id = 242021, gadget_id = 70900380, pos = { x = -4119.430, y = 212.442, z = -2943.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 242022, gadget_id = 70900380, pos = { x = -4091.987, y = 235.799, z = -2925.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1242017, name = "GADGET_STATE_CHANGE_242017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_242017", action = "action_EVENT_GADGET_STATE_CHANGE_242017", trigger_count = 0 },
	{ config_id = 1242020, name = "GADGET_STATE_CHANGE_242020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_242020", action = "action_EVENT_GADGET_STATE_CHANGE_242020", trigger_count = 0 }
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
		gadgets = { 242018, 242019 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_242017", "GADGET_STATE_CHANGE_242020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 242001, 242002, 242003, 242004, 242005, 242006, 242007, 242008, 242009, 242010, 242011, 242012, 242013, 242014, 242015, 242016, 242021, 242022 },
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
function condition_EVENT_GADGET_STATE_CHANGE_242017(context, evt)
	if 242018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_242017(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213242, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_242020(context, evt)
	if 242019 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_242020(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213242, 2)
	
	return 0
end

require "V2_0/ElectricCore"