-- 基础信息
local base_info = {
	group_id = 133302304
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 304003
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
	[304001] = { config_id = 304001, gadget_id = 70330229, pos = { x = -568.452, y = 102.687, z = 2286.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[304002] = { config_id = 304002, gadget_id = 70330251, pos = { x = -581.165, y = 116.580, z = 2304.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[304003] = { config_id = 304003, gadget_id = 70220103, pos = { x = -588.497, y = 131.336, z = 2324.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[304004] = { config_id = 304004, gadget_id = 70220103, pos = { x = -622.739, y = 158.721, z = 2323.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[304006] = { config_id = 304006, gadget_id = 70220103, pos = { x = -581.165, y = 116.580, z = 2304.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[304007] = { config_id = 304007, gadget_id = 70220103, pos = { x = -646.301, y = 172.209, z = 2333.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1304005, name = "GADGET_STATE_CHANGE_304005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_304005", action = "action_EVENT_GADGET_STATE_CHANGE_304005" }
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
		gadgets = { 304001, 304002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_304005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 304003, 304004, 304006, 304007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_304005(context, evt)
	if 304001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_304005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302304, 2)
	
	return 0
end

require "V3_0/HookLook"