-- 基础信息
local base_info = {
	group_id = 133222302
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
	{ config_id = 302001, gadget_id = 70330064, pos = { x = -4496.107, y = 367.346, z = -4246.683 }, rot = { x = 26.524, y = 309.826, z = 354.350 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 302002, gadget_id = 70900380, pos = { x = -4494.517, y = 373.633, z = -4240.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 302003, gadget_id = 70900380, pos = { x = -4492.890, y = 381.429, z = -4230.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 302004, gadget_id = 70900380, pos = { x = -4489.737, y = 388.342, z = -4222.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 302007, gadget_id = 70900380, pos = { x = -4486.682, y = 395.884, z = -4213.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 302010, gadget_id = 70900380, pos = { x = -4486.996, y = 405.322, z = -4201.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 302011, gadget_id = 70900380, pos = { x = -4487.341, y = 413.193, z = -4193.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1302008, name = "GADGET_STATE_CHANGE_302008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_302008", action = "action_EVENT_GADGET_STATE_CHANGE_302008", trigger_count = 0 },
	{ config_id = 1302009, name = "GADGET_STATE_CHANGE_302009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_302009", action = "action_EVENT_GADGET_STATE_CHANGE_302009", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 302005, gadget_id = 70330093, pos = { x = -4496.373, y = 389.898, z = -4218.480 }, rot = { x = 0.000, y = 312.194, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 302006, gadget_id = 70330093, pos = { x = -4493.879, y = 389.898, z = -4213.545 }, rot = { x = 0.000, y = 6.535, z = 0.000 }, level = 30, area_id = 14 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 302001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_302008", "GADGET_STATE_CHANGE_302009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 302002, 302003, 302004, 302007, 302010, 302011 },
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
function condition_EVENT_GADGET_STATE_CHANGE_302008(context, evt)
	if 302001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_302008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222302, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_302009(context, evt)
	if 302001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_302009(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222302, 3)
	
	return 0
end

require "V2_0/ElectricCore"