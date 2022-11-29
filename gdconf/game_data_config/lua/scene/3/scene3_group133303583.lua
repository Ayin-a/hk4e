-- 基础信息
local base_info = {
	group_id = 133303583
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 583003
}

-- DEFS_MISCS
local RequireSuite = {1}

local HookLookPlay = {
    HookPoint = defs.gadget_LookHookCid,
    Duration = 3,
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
	[583001] = { config_id = 583001, gadget_id = 70330229, pos = { x = -1512.732, y = 283.349, z = 3231.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[583002] = { config_id = 583002, gadget_id = 70330251, pos = { x = -1532.903, y = 283.094, z = 3221.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[583003] = { config_id = 583003, gadget_id = 70220103, pos = { x = -1532.903, y = 283.094, z = 3221.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[583004] = { config_id = 583004, gadget_id = 70220103, pos = { x = -1515.269, y = 287.206, z = 3231.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[583006] = { config_id = 583006, gadget_id = 70220103, pos = { x = -1553.836, y = 275.801, z = 3207.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[583007] = { config_id = 583007, gadget_id = 70220103, pos = { x = -1583.203, y = 273.575, z = 3191.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[583008] = { config_id = 583008, gadget_id = 70220103, pos = { x = -1609.522, y = 268.328, z = 3174.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[583009] = { config_id = 583009, gadget_id = 70220103, pos = { x = -1633.342, y = 264.104, z = 3158.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[583010] = { config_id = 583010, gadget_id = 70220103, pos = { x = -1660.188, y = 258.825, z = 3140.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1583005, name = "GADGET_STATE_CHANGE_583005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_583005", action = "action_EVENT_GADGET_STATE_CHANGE_583005" }
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
		gadgets = { 583001, 583002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_583005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 583003, 583004, 583006, 583007, 583008, 583009, 583010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_583005(context, evt)
	if 583001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_583005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303583, 2)
	
	return 0
end

require "V3_0/HookLook"