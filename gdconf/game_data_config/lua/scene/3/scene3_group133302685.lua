-- 基础信息
local base_info = {
	group_id = 133302685
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 685003
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
	[685001] = { config_id = 685001, gadget_id = 70330229, pos = { x = -361.944, y = 290.529, z = 2077.667 }, rot = { x = 10.346, y = 358.801, z = 346.809 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[685002] = { config_id = 685002, gadget_id = 70330251, pos = { x = -364.789, y = 296.524, z = 2091.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[685003] = { config_id = 685003, gadget_id = 70220103, pos = { x = -364.789, y = 296.524, z = 2091.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[685004] = { config_id = 685004, gadget_id = 70220103, pos = { x = -382.187, y = 295.375, z = 2122.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[685006] = { config_id = 685006, gadget_id = 70310198, pos = { x = -352.242, y = 288.241, z = 2074.506 }, rot = { x = 0.000, y = 210.149, z = 0.000 }, level = 27, area_id = 24 },
	[685007] = { config_id = 685007, gadget_id = 70220103, pos = { x = -399.538, y = 295.375, z = 2152.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[685008] = { config_id = 685008, gadget_id = 70220103, pos = { x = -413.827, y = 295.375, z = 2187.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[685009] = { config_id = 685009, gadget_id = 70220103, pos = { x = -432.901, y = 295.375, z = 2214.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1685005, name = "GADGET_STATE_CHANGE_685005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_685005", action = "action_EVENT_GADGET_STATE_CHANGE_685005" }
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
		gadgets = { 685001, 685002, 685006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_685005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 685003, 685004, 685007, 685008, 685009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_685005(context, evt)
	if 685001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_685005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302685, 2)
	
	return 0
end

require "V3_0/HookLook"