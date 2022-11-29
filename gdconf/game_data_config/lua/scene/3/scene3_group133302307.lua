-- 基础信息
local base_info = {
	group_id = 133302307
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 307003
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
	[307001] = { config_id = 307001, gadget_id = 70330229, pos = { x = -341.104, y = 120.201, z = 2256.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[307002] = { config_id = 307002, gadget_id = 70330251, pos = { x = -326.741, y = 136.035, z = 2257.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[307003] = { config_id = 307003, gadget_id = 70220103, pos = { x = -326.741, y = 136.035, z = 2257.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[307004] = { config_id = 307004, gadget_id = 70220103, pos = { x = -318.373, y = 150.369, z = 2272.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[307006] = { config_id = 307006, gadget_id = 70220103, pos = { x = -311.887, y = 134.355, z = 2214.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1307005, name = "GADGET_STATE_CHANGE_307005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_307005", action = "action_EVENT_GADGET_STATE_CHANGE_307005" }
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
		gadgets = { 307001, 307002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_307005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 307003, 307004, 307006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_307005(context, evt)
	if 307001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_307005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302307, 2)
	
	return 0
end

require "V3_0/HookLook"