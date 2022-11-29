-- 基础信息
local base_info = {
	group_id = 133315168
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 168003
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
	[168001] = { config_id = 168001, gadget_id = 70330229, pos = { x = 189.937, y = 232.047, z = 2436.674 }, rot = { x = 35.224, y = 359.617, z = 353.160 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[168002] = { config_id = 168002, gadget_id = 70330251, pos = { x = 197.550, y = 240.104, z = 2446.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[168003] = { config_id = 168003, gadget_id = 70220103, pos = { x = 212.227, y = 247.165, z = 2465.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[168004] = { config_id = 168004, gadget_id = 70220103, pos = { x = 229.014, y = 255.660, z = 2476.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[168006] = { config_id = 168006, gadget_id = 70330197, pos = { x = 185.777, y = 200.641, z = 2457.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[168007] = { config_id = 168007, gadget_id = 70220103, pos = { x = 197.550, y = 240.104, z = 2446.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[168008] = { config_id = 168008, gadget_id = 70220103, pos = { x = 187.991, y = 251.487, z = 2458.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[168009] = { config_id = 168009, gadget_id = 70330197, pos = { x = 184.884, y = 220.307, z = 2446.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1168005, name = "GADGET_STATE_CHANGE_168005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_168005", action = "action_EVENT_GADGET_STATE_CHANGE_168005" }
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
		gadgets = { 168001, 168002, 168006, 168009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_168005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 168003, 168004, 168007, 168008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_168005(context, evt)
	if 168001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_168005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315168, 2)
	
	return 0
end

require "V3_0/HookLook"