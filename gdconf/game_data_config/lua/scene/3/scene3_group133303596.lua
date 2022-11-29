-- 基础信息
local base_info = {
	group_id = 133303596
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 596003
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
	[596001] = { config_id = 596001, gadget_id = 70330229, pos = { x = -1414.734, y = 345.995, z = 3625.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[596002] = { config_id = 596002, gadget_id = 70330251, pos = { x = -1406.666, y = 353.057, z = 3640.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[596003] = { config_id = 596003, gadget_id = 70220103, pos = { x = -1421.551, y = 340.800, z = 3609.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[596004] = { config_id = 596004, gadget_id = 70220103, pos = { x = -1424.983, y = 329.791, z = 3581.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[596006] = { config_id = 596006, gadget_id = 70220103, pos = { x = -1430.852, y = 319.347, z = 3553.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[596007] = { config_id = 596007, gadget_id = 70220103, pos = { x = -1439.012, y = 306.199, z = 3522.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[596008] = { config_id = 596008, gadget_id = 70220103, pos = { x = -1446.043, y = 294.543, z = 3493.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[596009] = { config_id = 596009, gadget_id = 70220103, pos = { x = -1450.876, y = 283.961, z = 3465.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1596005, name = "GADGET_STATE_CHANGE_596005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_596005", action = "action_EVENT_GADGET_STATE_CHANGE_596005" }
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
		gadgets = { 596001, 596002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_596005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 596003, 596004, 596006, 596007, 596008, 596009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_596005(context, evt)
	if 596001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_596005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303596, 2)
	
	return 0
end

require "V3_0/HookLook"