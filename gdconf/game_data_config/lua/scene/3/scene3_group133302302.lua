-- 基础信息
local base_info = {
	group_id = 133302302
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 302003
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
	[302001] = { config_id = 302001, gadget_id = 70330229, pos = { x = -570.745, y = 129.116, z = 2267.026 }, rot = { x = 356.088, y = 358.443, z = 21.721 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[302002] = { config_id = 302002, gadget_id = 70330251, pos = { x = -571.215, y = 145.330, z = 2236.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[302003] = { config_id = 302003, gadget_id = 70220103, pos = { x = -571.656, y = 145.330, z = 2235.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1302005, name = "GADGET_STATE_CHANGE_302005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_302005", action = "action_EVENT_GADGET_STATE_CHANGE_302005" }
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
		gadgets = { 302001, 302002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_302005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 302003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_302005(context, evt)
	if 302001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_302005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302302, 2)
	
	return 0
end

require "V3_0/HookLook"