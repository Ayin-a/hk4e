-- 基础信息
local base_info = {
	group_id = 133315244
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 244003
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
	[244001] = { config_id = 244001, gadget_id = 70330229, pos = { x = 71.665, y = 294.298, z = 2260.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[244002] = { config_id = 244002, gadget_id = 70330251, pos = { x = 80.928, y = 301.359, z = 2276.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[244003] = { config_id = 244003, gadget_id = 70220103, pos = { x = 80.928, y = 301.359, z = 2276.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[244006] = { config_id = 244006, gadget_id = 70220103, pos = { x = 97.079, y = 301.192, z = 2308.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1244005, name = "GADGET_STATE_CHANGE_244005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_244005", action = "action_EVENT_GADGET_STATE_CHANGE_244005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 244004, gadget_id = 70220103, pos = { x = 88.715, y = 303.283, z = 2291.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
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
		gadgets = { 244001, 244002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_244005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 244003, 244006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_244005(context, evt)
	if 244001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_244005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315244, 2)
	
	return 0
end

require "V3_0/HookLook"