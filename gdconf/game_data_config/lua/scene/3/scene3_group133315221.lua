-- 基础信息
local base_info = {
	group_id = 133315221
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 221003
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
	[221001] = { config_id = 221001, gadget_id = 70330229, pos = { x = 64.226, y = 104.538, z = 2905.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[221002] = { config_id = 221002, gadget_id = 70330251, pos = { x = 46.238, y = 119.464, z = 2915.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[221003] = { config_id = 221003, gadget_id = 70220103, pos = { x = 46.238, y = 119.464, z = 2915.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[221004] = { config_id = 221004, gadget_id = 70220103, pos = { x = 44.500, y = 124.086, z = 2940.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1221005, name = "GADGET_STATE_CHANGE_221005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221005", action = "action_EVENT_GADGET_STATE_CHANGE_221005" }
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
		gadgets = { 221001, 221002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_221005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 221003, 221004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_221005(context, evt)
	if 221001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315221, 2)
	
	return 0
end

require "V3_0/HookLook"