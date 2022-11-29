-- 基础信息
local base_info = {
	group_id = 133302288
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 288003
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
	[288001] = { config_id = 288001, gadget_id = 70330229, pos = { x = -240.392, y = 180.809, z = 2268.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[288002] = { config_id = 288002, gadget_id = 70330251, pos = { x = -250.191, y = 198.191, z = 2250.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[288003] = { config_id = 288003, gadget_id = 70220103, pos = { x = -250.191, y = 198.191, z = 2250.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[288004] = { config_id = 288004, gadget_id = 70220103, pos = { x = -230.385, y = 206.147, z = 2253.959 }, rot = { x = 0.000, y = 123.433, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1288005, name = "GADGET_STATE_CHANGE_288005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_288005", action = "action_EVENT_GADGET_STATE_CHANGE_288005" }
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
		gadgets = { 288001, 288002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_288005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 288003, 288004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_288005(context, evt)
	if 288001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_288005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302288, 2)
	
	return 0
end

require "V3_0/HookLook"