-- 基础信息
local base_info = {
	group_id = 133315171
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 171003
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
	[171001] = { config_id = 171001, gadget_id = 70330229, pos = { x = 520.884, y = 97.524, z = 2487.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[171002] = { config_id = 171002, gadget_id = 70330251, pos = { x = 512.055, y = 119.276, z = 2466.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[171003] = { config_id = 171003, gadget_id = 70220103, pos = { x = 512.055, y = 119.276, z = 2466.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[171004] = { config_id = 171004, gadget_id = 70220103, pos = { x = 492.251, y = 132.469, z = 2433.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[171006] = { config_id = 171006, gadget_id = 70220103, pos = { x = 501.458, y = 125.902, z = 2449.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1171005, name = "GADGET_STATE_CHANGE_171005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_171005", action = "action_EVENT_GADGET_STATE_CHANGE_171005" }
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
		gadgets = { 171001, 171002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_171005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 171003, 171004, 171006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_171005(context, evt)
	if 171001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_171005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315171, 2)
	
	return 0
end

require "V3_0/HookLook"
require "V3_0/DeathFieldStandard"