-- 基础信息
local base_info = {
	group_id = 133220724
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
	{ config_id = 724001, gadget_id = 70290135, pos = { x = -2423.192, y = 239.938, z = -4250.343 }, rot = { x = 6.729, y = 329.088, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724002, gadget_id = 70290135, pos = { x = -2432.793, y = 236.157, z = -4238.137 }, rot = { x = 16.531, y = 330.649, z = 0.002 }, level = 27, area_id = 11 },
	{ config_id = 724003, gadget_id = 70290135, pos = { x = -2445.970, y = 229.822, z = -4216.176 }, rot = { x = 9.220, y = 302.459, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724004, gadget_id = 70290135, pos = { x = -2459.336, y = 226.465, z = -4204.558 }, rot = { x = 4.884, y = 298.634, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724005, gadget_id = 70290135, pos = { x = -2471.056, y = 226.670, z = -4192.102 }, rot = { x = 0.000, y = 316.476, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724006, gadget_id = 70290135, pos = { x = -2478.639, y = 228.574, z = -4184.007 }, rot = { x = 0.000, y = 337.019, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724007, gadget_id = 70290135, pos = { x = -2484.260, y = 227.538, z = -4163.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724008, gadget_id = 70290135, pos = { x = -2488.437, y = 225.349, z = -4147.897 }, rot = { x = 0.000, y = 37.531, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724009, gadget_id = 70290135, pos = { x = -2475.984, y = 224.888, z = -4136.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724010, gadget_id = 70900380, pos = { x = -2428.147, y = 246.653, z = -4239.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724011, gadget_id = 70290135, pos = { x = -2416.500, y = 242.164, z = -4259.657 }, rot = { x = 0.000, y = 330.570, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724012, gadget_id = 70900380, pos = { x = -2440.244, y = 248.315, z = -4225.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724013, gadget_id = 70900380, pos = { x = -2451.885, y = 245.608, z = -4208.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724014, gadget_id = 70900380, pos = { x = -2463.583, y = 243.914, z = -4190.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724015, gadget_id = 70290135, pos = { x = -2411.333, y = 246.674, z = -4273.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724016, gadget_id = 70900380, pos = { x = -2474.299, y = 241.284, z = -4171.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724017, gadget_id = 70900380, pos = { x = -2479.327, y = 238.637, z = -4154.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724018, gadget_id = 70290135, pos = { x = -2399.167, y = 246.549, z = -4285.322 }, rot = { x = 0.000, y = 297.136, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724019, gadget_id = 70900380, pos = { x = -2482.385, y = 232.793, z = -4136.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 724020, gadget_id = 70330064, pos = { x = -2420.084, y = 240.224, z = -4245.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 724021, gadget_id = 70290135, pos = { x = -2387.661, y = 244.406, z = -4281.632 }, rot = { x = 346.937, y = 261.101, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1724022, name = "GADGET_STATE_CHANGE_724022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_724022", action = "action_EVENT_GADGET_STATE_CHANGE_724022", trigger_count = 0 },
	{ config_id = 1724023, name = "GADGET_STATE_CHANGE_724023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_724023", action = "action_EVENT_GADGET_STATE_CHANGE_724023", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 724001, 724002, 724003, 724004, 724005, 724006, 724007, 724008, 724009, 724011, 724015, 724018, 724020, 724021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_724022", "GADGET_STATE_CHANGE_724023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 724010, 724012, 724013, 724014, 724016, 724017, 724019 },
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
function condition_EVENT_GADGET_STATE_CHANGE_724022(context, evt)
	if 724020 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_724022(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220724, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_724023(context, evt)
	if 724021 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_724023(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220724, 3)
	
	return 0
end

require "V2_0/ElectricCore"