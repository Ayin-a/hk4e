-- 基础信息
local base_info = {
	group_id = 133304254
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 254003
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1254005, name = "GADGET_STATE_CHANGE_254005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_254005", action = "action_EVENT_GADGET_STATE_CHANGE_254005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 254001, gadget_id = 70330229, pos = { x = -1384.861, y = 168.486, z = 2855.249 }, rot = { x = 353.135, y = 346.244, z = 343.483 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
		{ config_id = 254002, gadget_id = 70330251, pos = { x = -1371.730, y = 173.137, z = 2853.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
		{ config_id = 254003, gadget_id = 70220103, pos = { x = -1371.730, y = 173.137, z = 2853.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
		{ config_id = 254004, gadget_id = 70220103, pos = { x = -1353.782, y = 178.593, z = 2866.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
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
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_254005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_254005(context, evt)
	if 254001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_254005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304254, 2)
	
	return 0
end

require "V3_0/HookLook"