-- 基础信息
local base_info = {
	group_id = 133304300
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 300003
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
	[300001] = { config_id = 300001, gadget_id = 70330229, pos = { x = -1092.398, y = 201.149, z = 2232.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 21 },
	[300002] = { config_id = 300002, gadget_id = 70330251, pos = { x = -1118.979, y = 200.308, z = 2236.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 21 },
	[300003] = { config_id = 300003, gadget_id = 70220103, pos = { x = -1118.979, y = 200.308, z = 2236.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	[300006] = { config_id = 300006, gadget_id = 70220103, pos = { x = -1142.616, y = 197.437, z = 2243.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[300007] = { config_id = 300007, gadget_id = 70220103, pos = { x = -1172.608, y = 190.084, z = 2259.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1300005, name = "GADGET_STATE_CHANGE_300005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_300005", action = "action_EVENT_GADGET_STATE_CHANGE_300005" }
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
		gadgets = { 300001, 300002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_300005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 300003, 300006, 300007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_300005(context, evt)
	if 300001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_300005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304300, 2)
	
	return 0
end

require "V3_0/HookLook"