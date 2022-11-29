-- 基础信息
local base_info = {
	group_id = 133302305
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 305003
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
	[305001] = { config_id = 305001, gadget_id = 70330229, pos = { x = -701.633, y = 127.806, z = 2269.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[305002] = { config_id = 305002, gadget_id = 70330251, pos = { x = -678.441, y = 131.474, z = 2260.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[305003] = { config_id = 305003, gadget_id = 70220103, pos = { x = -654.482, y = 135.742, z = 2260.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[305004] = { config_id = 305004, gadget_id = 70220103, pos = { x = -678.441, y = 131.474, z = 2260.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1305005, name = "GADGET_STATE_CHANGE_305005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_305005", action = "action_EVENT_GADGET_STATE_CHANGE_305005" }
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
		gadgets = { 305001, 305002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_305005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 305003, 305004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_305005(context, evt)
	if 305001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_305005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302305, 2)
	
	return 0
end

require "V3_0/HookLook"