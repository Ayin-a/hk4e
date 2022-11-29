-- 基础信息
local base_info = {
	group_id = 133301558
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 558003
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
	[558001] = { config_id = 558001, gadget_id = 70330229, pos = { x = -340.838, y = 234.233, z = 3686.241 }, rot = { x = 0.000, y = 52.562, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 22 },
	[558002] = { config_id = 558002, gadget_id = 70330251, pos = { x = -353.978, y = 241.540, z = 3692.181 }, rot = { x = 0.000, y = 221.709, z = 0.000 }, level = 27, mark_flag = 3, area_id = 22 },
	[558003] = { config_id = 558003, gadget_id = 70220103, pos = { x = -355.095, y = 246.199, z = 3692.095 }, rot = { x = 0.000, y = 221.709, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	[558004] = { config_id = 558004, gadget_id = 70220103, pos = { x = -399.911, y = 251.868, z = 3697.185 }, rot = { x = 0.000, y = 221.709, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	[558006] = { config_id = 558006, gadget_id = 70220103, pos = { x = -421.819, y = 258.673, z = 3707.609 }, rot = { x = 0.000, y = 221.709, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[558007] = { config_id = 558007, gadget_id = 70330251, pos = { x = -399.911, y = 251.868, z = 3697.185 }, rot = { x = 0.000, y = 221.709, z = 0.000 }, level = 27, mark_flag = 3, area_id = 22 },
	[558008] = { config_id = 558008, gadget_id = 70330251, pos = { x = -421.819, y = 258.673, z = 3707.609 }, rot = { x = 0.000, y = 221.709, z = 0.000 }, level = 33, mark_flag = 3, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1558005, name = "GADGET_STATE_CHANGE_558005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_558005", action = "action_EVENT_GADGET_STATE_CHANGE_558005" }
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
		gadgets = { 558001, 558002, 558007, 558008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_558005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 558003, 558004, 558006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_558005(context, evt)
	if 558001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_558005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301558, 2)
	
	return 0
end

require "V3_0/HookLook"