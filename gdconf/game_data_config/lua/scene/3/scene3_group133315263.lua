-- 基础信息
local base_info = {
	group_id = 133315263
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 263003
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
	[263001] = { config_id = 263001, gadget_id = 70330229, pos = { x = 167.686, y = 394.778, z = 2078.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[263002] = { config_id = 263002, gadget_id = 70330251, pos = { x = 176.205, y = 401.727, z = 2092.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[263003] = { config_id = 263003, gadget_id = 70220103, pos = { x = 156.743, y = 412.477, z = 2064.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[263004] = { config_id = 263004, gadget_id = 70220103, pos = { x = 137.447, y = 424.606, z = 2042.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1263005, name = "GADGET_STATE_CHANGE_263005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_263005", action = "action_EVENT_GADGET_STATE_CHANGE_263005" }
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
		gadgets = { 263001, 263002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_263005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 263003, 263004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_263005(context, evt)
	if 263001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_263005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315263, 2)
	
	return 0
end

require "V3_0/HookLook"