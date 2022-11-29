-- 基础信息
local base_info = {
	group_id = 133303363
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 363003
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
	[363001] = { config_id = 363001, gadget_id = 70330229, pos = { x = -1727.809, y = 317.761, z = 3683.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[363002] = { config_id = 363002, gadget_id = 70330251, pos = { x = -1747.105, y = 336.145, z = 3702.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[363003] = { config_id = 363003, gadget_id = 70220103, pos = { x = -1747.105, y = 336.145, z = 3702.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[363004] = { config_id = 363004, gadget_id = 70220103, pos = { x = -1767.440, y = 351.706, z = 3683.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[363006] = { config_id = 363006, gadget_id = 70220103, pos = { x = -1783.705, y = 368.544, z = 3721.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[363007] = { config_id = 363007, gadget_id = 70220103, pos = { x = -1769.318, y = 365.338, z = 3654.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[363008] = { config_id = 363008, gadget_id = 70220103, pos = { x = -1774.570, y = 355.082, z = 3758.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[363009] = { config_id = 363009, gadget_id = 70220103, pos = { x = -1764.957, y = 357.973, z = 3626.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[363010] = { config_id = 363010, gadget_id = 70220103, pos = { x = -1788.698, y = 363.719, z = 3699.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1363005, name = "GADGET_STATE_CHANGE_363005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_363005", action = "action_EVENT_GADGET_STATE_CHANGE_363005", trigger_count = 0 }
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
		gadgets = { 363001, 363002, 363010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_363005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 363003, 363004, 363006, 363007, 363008, 363009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_363005(context, evt)
	if 363001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_363005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303363, 2)
	
	return 0
end

require "V3_0/HookLook"