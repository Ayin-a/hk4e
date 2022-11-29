-- 基础信息
local base_info = {
	group_id = 133301386
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 386004
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
	[386001] = { config_id = 386001, gadget_id = 70330229, pos = { x = -325.834, y = 150.615, z = 3974.372 }, rot = { x = 358.209, y = 50.103, z = 344.365 }, level = 33, persistent = true, mark_flag = 3, area_id = 22 },
	[386002] = { config_id = 386002, gadget_id = 70330251, pos = { x = -332.627, y = 161.665, z = 3971.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 3, area_id = 22 },
	[386003] = { config_id = 386003, gadget_id = 70220103, pos = { x = -286.401, y = 139.419, z = 3953.700 }, rot = { x = 0.000, y = 28.855, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[386004] = { config_id = 386004, gadget_id = 70220103, pos = { x = -332.627, y = 161.665, z = 3971.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[386006] = { config_id = 386006, gadget_id = 70220103, pos = { x = -324.947, y = 174.079, z = 3984.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[386007] = { config_id = 386007, gadget_id = 70220103, pos = { x = -312.052, y = 182.024, z = 3968.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[386008] = { config_id = 386008, gadget_id = 70220103, pos = { x = -335.874, y = 184.994, z = 3975.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[386009] = { config_id = 386009, gadget_id = 70220103, pos = { x = -317.397, y = 200.694, z = 3983.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[386010] = { config_id = 386010, gadget_id = 70220103, pos = { x = -318.418, y = 219.126, z = 3956.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[386011] = { config_id = 386011, gadget_id = 70330197, pos = { x = -318.560, y = 215.788, z = 3956.635 }, rot = { x = 3.802, y = 355.561, z = 352.176 }, level = 33, area_id = 22 },
	[386012] = { config_id = 386012, gadget_id = 70220103, pos = { x = -302.074, y = 248.191, z = 3937.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1386005, name = "GADGET_STATE_CHANGE_386005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_386005", action = "action_EVENT_GADGET_STATE_CHANGE_386005" }
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
		gadgets = { 386001, 386002, 386003, 386011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_386005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 386004, 386006, 386007, 386008, 386009, 386010, 386012 },
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
function condition_EVENT_GADGET_STATE_CHANGE_386005(context, evt)
	if 386001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_386005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301386, 2)
	
	return 0
end

require "V3_0/HookLook"