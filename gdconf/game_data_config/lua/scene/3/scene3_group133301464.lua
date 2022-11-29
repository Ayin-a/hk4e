-- 基础信息
local base_info = {
	group_id = 133301464
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 464003
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
	[464001] = { config_id = 464001, gadget_id = 70330229, pos = { x = -1431.917, y = 201.963, z = 2743.136 }, rot = { x = 0.000, y = 17.271, z = 351.145 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	[464002] = { config_id = 464002, gadget_id = 70330251, pos = { x = -1422.866, y = 206.805, z = 2728.019 }, rot = { x = 0.000, y = 136.731, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
	[464003] = { config_id = 464003, gadget_id = 70220103, pos = { x = -1423.953, y = 205.967, z = 2722.058 }, rot = { x = 0.000, y = 136.731, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[464006] = { config_id = 464006, gadget_id = 70220103, pos = { x = -1416.897, y = 209.457, z = 2689.493 }, rot = { x = 0.000, y = 136.731, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[464008] = { config_id = 464008, gadget_id = 70330251, pos = { x = -1419.401, y = 207.107, z = 2691.485 }, rot = { x = 0.000, y = 136.731, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1464005, name = "GADGET_STATE_CHANGE_464005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_464005", action = "action_EVENT_GADGET_STATE_CHANGE_464005" }
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
		gadgets = { 464001, 464002, 464008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_464005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 464003, 464006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_464005(context, evt)
	if 464001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_464005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301464, 2)
	
	return 0
end

require "V3_0/HookLook"