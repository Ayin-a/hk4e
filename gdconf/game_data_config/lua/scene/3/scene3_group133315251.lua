-- 基础信息
local base_info = {
	group_id = 133315251
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 251003
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
	[251001] = { config_id = 251001, gadget_id = 70330229, pos = { x = 458.424, y = 231.977, z = 2294.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[251002] = { config_id = 251002, gadget_id = 70330251, pos = { x = 479.747, y = 247.441, z = 2303.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[251003] = { config_id = 251003, gadget_id = 70220103, pos = { x = 479.747, y = 247.441, z = 2303.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[251004] = { config_id = 251004, gadget_id = 70220103, pos = { x = 494.098, y = 256.923, z = 2337.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[251006] = { config_id = 251006, gadget_id = 70220103, pos = { x = 503.450, y = 268.722, z = 2351.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[251008] = { config_id = 251008, gadget_id = 70330197, pos = { x = 432.550, y = 263.788, z = 2390.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1251005, name = "GADGET_STATE_CHANGE_251005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_251005", action = "action_EVENT_GADGET_STATE_CHANGE_251005" }
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
		gadgets = { 251001, 251002, 251008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_251005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 251003, 251004, 251006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_251005(context, evt)
	if 251001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_251005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315251, 2)
	
	return 0
end

require "V3_0/HookLook"