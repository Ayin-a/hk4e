-- 基础信息
local base_info = {
	group_id = 133301436
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 436003
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
	[436001] = { config_id = 436001, gadget_id = 70330229, pos = { x = -351.140, y = 219.381, z = 3072.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 22 },
	[436002] = { config_id = 436002, gadget_id = 70330251, pos = { x = -357.933, y = 233.360, z = 3097.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 22 },
	[436003] = { config_id = 436003, gadget_id = 70220103, pos = { x = -357.933, y = 233.360, z = 3097.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	[436004] = { config_id = 436004, gadget_id = 70220103, pos = { x = -363.278, y = 238.768, z = 3117.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	[436006] = { config_id = 436006, gadget_id = 70330197, pos = { x = -355.513, y = 200.060, z = 3063.374 }, rot = { x = 358.789, y = 28.112, z = 0.368 }, level = 27, area_id = 22 },
	[436007] = { config_id = 436007, gadget_id = 70220103, pos = { x = -361.259, y = 235.054, z = 3143.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1436005, name = "GADGET_STATE_CHANGE_436005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_436005", action = "action_EVENT_GADGET_STATE_CHANGE_436005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 436008, gadget_id = 70220103, pos = { x = -350.718, y = 237.863, z = 3177.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 22 }
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
		gadgets = { 436001, 436002, 436006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_436005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 436003, 436004, 436007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_436005(context, evt)
	if 436001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_436005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301436, 2)
	
	return 0
end

require "V3_0/HookLook"