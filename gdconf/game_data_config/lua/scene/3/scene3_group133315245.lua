-- 基础信息
local base_info = {
	group_id = 133315245
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 245003
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
	[245001] = { config_id = 245001, gadget_id = 70330229, pos = { x = 208.123, y = 259.771, z = 2224.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[245002] = { config_id = 245002, gadget_id = 70330251, pos = { x = 258.100, y = 266.135, z = 2219.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[245003] = { config_id = 245003, gadget_id = 70220103, pos = { x = 258.100, y = 266.135, z = 2219.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[245006] = { config_id = 245006, gadget_id = 70290543, pos = { x = 208.202, y = 259.841, z = 2224.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1245005, name = "GADGET_STATE_CHANGE_245005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_245005", action = "action_EVENT_GADGET_STATE_CHANGE_245005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 245004, gadget_id = 70220103, pos = { x = 279.950, y = 272.256, z = 2215.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
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
		gadgets = { 245001, 245002, 245006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_245005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 245003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_245005(context, evt)
	if 245001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_245005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315245, 2)
	
	return 0
end

require "V3_0/HookLook"