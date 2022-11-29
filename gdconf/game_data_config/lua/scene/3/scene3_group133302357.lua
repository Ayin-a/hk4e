-- 基础信息
local base_info = {
	group_id = 133302357
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 357003
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
	[357001] = { config_id = 357001, gadget_id = 70330229, pos = { x = -164.237, y = 247.120, z = 2779.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[357002] = { config_id = 357002, gadget_id = 70330251, pos = { x = -185.140, y = 245.433, z = 2788.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[357003] = { config_id = 357003, gadget_id = 70220103, pos = { x = -185.140, y = 245.433, z = 2788.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[357004] = { config_id = 357004, gadget_id = 70220103, pos = { x = -216.742, y = 245.159, z = 2789.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[357006] = { config_id = 357006, gadget_id = 70220103, pos = { x = -251.177, y = 244.725, z = 2779.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1357005, name = "GADGET_STATE_CHANGE_357005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_357005", action = "action_EVENT_GADGET_STATE_CHANGE_357005" }
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
		gadgets = { 357001, 357002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_357005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 357003, 357004, 357006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_357005(context, evt)
	if 357001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_357005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302357, 2)
	
	return 0
end

require "V3_0/HookLook"