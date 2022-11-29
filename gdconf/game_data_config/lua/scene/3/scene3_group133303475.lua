-- 基础信息
local base_info = {
	group_id = 133303475
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 475004
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
	[475001] = { config_id = 475001, gadget_id = 70330229, pos = { x = -1476.882, y = 252.444, z = 3443.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[475002] = { config_id = 475002, gadget_id = 70330251, pos = { x = -1498.012, y = 261.244, z = 3448.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[475004] = { config_id = 475004, gadget_id = 70220103, pos = { x = -1498.012, y = 261.244, z = 3448.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[475006] = { config_id = 475006, gadget_id = 70220103, pos = { x = -1530.557, y = 261.000, z = 3450.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[475007] = { config_id = 475007, gadget_id = 70220103, pos = { x = -1564.532, y = 261.244, z = 3442.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[475008] = { config_id = 475008, gadget_id = 70220103, pos = { x = -1598.516, y = 261.000, z = 3435.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[475009] = { config_id = 475009, gadget_id = 70220103, pos = { x = -1633.127, y = 255.000, z = 3428.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[475010] = { config_id = 475010, gadget_id = 70220103, pos = { x = -1660.985, y = 248.000, z = 3419.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[475011] = { config_id = 475011, gadget_id = 70220103, pos = { x = -1689.031, y = 241.000, z = 3408.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1475005, name = "GADGET_STATE_CHANGE_475005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_475005", action = "action_EVENT_GADGET_STATE_CHANGE_475005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 475003, gadget_id = 70220103, pos = { x = -1477.760, y = 251.654, z = 3447.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
		{ config_id = 475012, gadget_id = 70220103, pos = { x = -1718.336, y = 227.651, z = 3394.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
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
		gadgets = { 475001, 475002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_475005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 475004, 475006, 475007, 475008, 475009, 475010, 475011 },
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
function condition_EVENT_GADGET_STATE_CHANGE_475005(context, evt)
	if 475001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_475005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303475, 2)
	
	return 0
end

require "V3_0/HookLook"