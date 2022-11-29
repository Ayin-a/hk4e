-- 基础信息
local base_info = {
	group_id = 133315258
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 258003
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
	[258001] = { config_id = 258001, gadget_id = 70330229, pos = { x = 41.226, y = 458.047, z = 2039.915 }, rot = { x = 348.530, y = 0.270, z = 357.316 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[258002] = { config_id = 258002, gadget_id = 70330251, pos = { x = 41.703, y = 467.221, z = 2058.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[258003] = { config_id = 258003, gadget_id = 70220103, pos = { x = 41.711, y = 467.279, z = 2058.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1258005, name = "GADGET_STATE_CHANGE_258005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_258005", action = "action_EVENT_GADGET_STATE_CHANGE_258005" }
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
		gadgets = { 258001, 258002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_258005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 258003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_258005(context, evt)
	if 258001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_258005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315258, 2)
	
	return 0
end

require "V3_0/HookLook"