-- 基础信息
local base_info = {
	group_id = 133315239
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 239003
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
	[239001] = { config_id = 239001, gadget_id = 70330229, pos = { x = 523.039, y = 97.000, z = 2407.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[239002] = { config_id = 239002, gadget_id = 70330251, pos = { x = 536.552, y = 113.774, z = 2423.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[239003] = { config_id = 239003, gadget_id = 70220103, pos = { x = 536.552, y = 113.774, z = 2423.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[239004] = { config_id = 239004, gadget_id = 70220103, pos = { x = 546.767, y = 127.236, z = 2436.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 20 },
	[239006] = { config_id = 239006, gadget_id = 70220103, pos = { x = 562.852, y = 136.843, z = 2449.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1239005, name = "GADGET_STATE_CHANGE_239005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_239005", action = "action_EVENT_GADGET_STATE_CHANGE_239005" }
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
		gadgets = { 239001, 239002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_239005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 239003, 239004, 239006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_239005(context, evt)
	if 239001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_239005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315239, 2)
	
	return 0
end

require "V3_0/HookLook"
require "V3_0/DeathFieldStandard"