-- 基础信息
local base_info = {
	group_id = 133303219
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 219004
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
	[219001] = { config_id = 219001, gadget_id = 70330229, pos = { x = -1312.979, y = 277.998, z = 3619.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[219002] = { config_id = 219002, gadget_id = 70330251, pos = { x = -1296.553, y = 291.436, z = 3593.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[219004] = { config_id = 219004, gadget_id = 70220103, pos = { x = -1296.553, y = 291.436, z = 3593.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[219006] = { config_id = 219006, gadget_id = 70220103, pos = { x = -1285.142, y = 285.008, z = 3572.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1219005, name = "GADGET_STATE_CHANGE_219005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_219005", action = "action_EVENT_GADGET_STATE_CHANGE_219005" }
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
		gadgets = { 219001, 219002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_219005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 219004, 219006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_219005(context, evt)
	if 219001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_219005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303219, 2)
	
	return 0
end

require "V3_0/HookLook"