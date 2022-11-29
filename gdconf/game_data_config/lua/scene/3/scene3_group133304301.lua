-- 基础信息
local base_info = {
	group_id = 133304301
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 301003
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
	[301001] = { config_id = 301001, gadget_id = 70330229, pos = { x = -1115.111, y = 189.940, z = 2138.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	[301002] = { config_id = 301002, gadget_id = 70330251, pos = { x = -1110.833, y = 195.737, z = 2164.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
	[301003] = { config_id = 301003, gadget_id = 70220103, pos = { x = -1110.833, y = 195.737, z = 2164.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[301004] = { config_id = 301004, gadget_id = 70220103, pos = { x = -1102.809, y = 198.828, z = 2193.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	[301006] = { config_id = 301006, gadget_id = 70220103, pos = { x = -1097.507, y = 200.392, z = 2224.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1301005, name = "GADGET_STATE_CHANGE_301005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_301005", action = "action_EVENT_GADGET_STATE_CHANGE_301005" }
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
		gadgets = { 301001, 301002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_301005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 301003, 301004, 301006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_301005(context, evt)
	if 301001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_301005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304301, 2)
	
	return 0
end

require "V3_0/HookLook"