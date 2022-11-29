-- 基础信息
local base_info = {
	group_id = 133304320
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 320003
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
	[320001] = { config_id = 320001, gadget_id = 70330229, pos = { x = -1357.945, y = 270.758, z = 2748.289 }, rot = { x = 0.000, y = 0.000, z = 13.292 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	[320002] = { config_id = 320002, gadget_id = 70330251, pos = { x = -1383.319, y = 256.860, z = 2714.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
	[320003] = { config_id = 320003, gadget_id = 70220103, pos = { x = -1383.319, y = 256.860, z = 2714.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[320004] = { config_id = 320004, gadget_id = 70220103, pos = { x = -1387.243, y = 252.480, z = 2680.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[320006] = { config_id = 320006, gadget_id = 70220103, pos = { x = -1397.615, y = 260.918, z = 2624.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[320007] = { config_id = 320007, gadget_id = 70220103, pos = { x = -1395.212, y = 252.692, z = 2644.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1320005, name = "GADGET_STATE_CHANGE_320005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_320005", action = "action_EVENT_GADGET_STATE_CHANGE_320005" }
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
		gadgets = { 320001, 320002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_320005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 320003, 320004, 320006, 320007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_320005(context, evt)
	if 320001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_320005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304320, 2)
	
	return 0
end

require "V3_0/HookLook"