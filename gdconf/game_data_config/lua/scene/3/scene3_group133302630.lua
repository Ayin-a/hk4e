-- 基础信息
local base_info = {
	group_id = 133302630
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 630003
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
	[630001] = { config_id = 630001, gadget_id = 70330229, pos = { x = -742.567, y = 218.297, z = 2716.982 }, rot = { x = 12.436, y = 358.420, z = 354.305 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[630002] = { config_id = 630002, gadget_id = 70330251, pos = { x = -731.900, y = 218.888, z = 2729.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[630003] = { config_id = 630003, gadget_id = 70220103, pos = { x = -731.900, y = 218.888, z = 2729.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[630004] = { config_id = 630004, gadget_id = 70220103, pos = { x = -735.117, y = 214.794, z = 2752.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[630006] = { config_id = 630006, gadget_id = 70220107, pos = { x = -741.722, y = 217.512, z = 2718.100 }, rot = { x = 355.212, y = 250.970, z = 0.031 }, level = 27, area_id = 24 },
	[630007] = { config_id = 630007, gadget_id = 70220103, pos = { x = -753.041, y = 213.664, z = 2769.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[630008] = { config_id = 630008, gadget_id = 70220103, pos = { x = -757.613, y = 216.551, z = 2789.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[630009] = { config_id = 630009, gadget_id = 70220103, pos = { x = -708.460, y = 216.263, z = 2740.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[630010] = { config_id = 630010, gadget_id = 70220103, pos = { x = -681.618, y = 214.888, z = 2741.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[630011] = { config_id = 630011, gadget_id = 70220103, pos = { x = -651.615, y = 208.964, z = 2836.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[630012] = { config_id = 630012, gadget_id = 70220103, pos = { x = -651.838, y = 202.624, z = 2864.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	[630013] = { config_id = 630013, gadget_id = 70220103, pos = { x = -691.088, y = 201.665, z = 2870.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	[630014] = { config_id = 630014, gadget_id = 70220103, pos = { x = -718.144, y = 204.405, z = 2908.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	[630015] = { config_id = 630015, gadget_id = 70220103, pos = { x = -719.977, y = 201.372, z = 2883.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1630005, name = "GADGET_STATE_CHANGE_630005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_630005", action = "action_EVENT_GADGET_STATE_CHANGE_630005" }
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
		gadgets = { 630001, 630002, 630006, 630011, 630012, 630013, 630014, 630015 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_630005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 630003, 630004, 630007, 630008, 630009, 630010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_630005(context, evt)
	if 630001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_630005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302630, 2)
	
	return 0
end

require "V3_0/HookLook"