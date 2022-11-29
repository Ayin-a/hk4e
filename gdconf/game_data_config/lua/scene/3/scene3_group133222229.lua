-- 基础信息
local base_info = {
	group_id = 133222229
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
	{ config_id = 229001, gadget_id = 70330064, pos = { x = -4690.300, y = 517.420, z = -4211.100 }, rot = { x = 8.059, y = 256.518, z = 5.098 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 229002, gadget_id = 70900380, pos = { x = -4689.985, y = 523.484, z = -4210.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 229003, gadget_id = 70900380, pos = { x = -4682.915, y = 549.407, z = -4211.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 229004, gadget_id = 70900380, pos = { x = -4686.688, y = 537.660, z = -4211.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 229005, gadget_id = 70900380, pos = { x = -4677.380, y = 558.980, z = -4207.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 229008, gadget_id = 70330100, pos = { x = -4675.164, y = 556.222, z = -4196.208 }, rot = { x = 0.000, y = 307.686, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 229009, gadget_id = 70330093, pos = { x = -4676.322, y = 555.333, z = -4192.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 229010, gadget_id = 70330093, pos = { x = -4674.142, y = 554.343, z = -4187.879 }, rot = { x = 0.000, y = 6.915, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 229011, gadget_id = 70330093, pos = { x = -4672.791, y = 552.895, z = -4183.420 }, rot = { x = 0.000, y = 327.418, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 229012, gadget_id = 70330093, pos = { x = -4674.421, y = 551.822, z = -4177.781 }, rot = { x = 0.000, y = 292.835, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 229013, gadget_id = 70330064, pos = { x = -4675.139, y = 556.492, z = -4196.427 }, rot = { x = 8.059, y = 256.518, z = 5.098 }, level = 30, interact_id = 35, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1229006, name = "GADGET_STATE_CHANGE_229006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229006", action = "action_EVENT_GADGET_STATE_CHANGE_229006", trigger_count = 0 },
	{ config_id = 1229007, name = "GADGET_STATE_CHANGE_229007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229007", action = "action_EVENT_GADGET_STATE_CHANGE_229007", trigger_count = 0 }
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
		gadgets = { 229001, 229008, 229009, 229010, 229011, 229012, 229013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_229006", "GADGET_STATE_CHANGE_229007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 229002, 229003, 229004, 229005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_229006(context, evt)
	if 229001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222229, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229007(context, evt)
	if 229001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222229, 3)
	
	return 0
end

require "V2_0/ElectricCore"