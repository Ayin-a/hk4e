-- 基础信息
local base_info = {
	group_id = 133302602
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 602003
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
	[602001] = { config_id = 602001, gadget_id = 70330229, pos = { x = -71.385, y = 223.104, z = 2433.632 }, rot = { x = 359.158, y = 359.853, z = 19.768 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[602002] = { config_id = 602002, gadget_id = 70330251, pos = { x = -71.812, y = 234.826, z = 2444.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[602003] = { config_id = 602003, gadget_id = 70220103, pos = { x = -71.812, y = 234.826, z = 2444.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[602004] = { config_id = 602004, gadget_id = 70220103, pos = { x = -63.602, y = 254.359, z = 2471.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[602006] = { config_id = 602006, gadget_id = 70220103, pos = { x = -70.767, y = 268.225, z = 2493.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1602005, name = "GADGET_STATE_CHANGE_602005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_602005", action = "action_EVENT_GADGET_STATE_CHANGE_602005" }
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
		gadgets = { 602001, 602002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_602005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 602003, 602004, 602006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_602005(context, evt)
	if 602001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_602005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302602, 2)
	
	return 0
end

require "V3_0/HookLook"