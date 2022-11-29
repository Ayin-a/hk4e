-- 基础信息
local base_info = {
	group_id = 240054002
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 2002
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
	[2001] = { config_id = 2001, gadget_id = 70330229, pos = { x = 328.396, y = 76.688, z = 683.031 }, rot = { x = 0.000, y = 291.559, z = 0.000 }, level = 30, mark_flag = 3 },
	[2002] = { config_id = 2002, gadget_id = 70330251, pos = { x = 305.708, y = 105.255, z = 689.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3 },
	[2003] = { config_id = 2003, gadget_id = 70220103, pos = { x = 261.791, y = 114.264, z = 693.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	[2004] = { config_id = 2004, gadget_id = 70220103, pos = { x = 285.035, y = 109.474, z = 686.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	[2006] = { config_id = 2006, gadget_id = 70220103, pos = { x = 305.708, y = 105.255, z = 689.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	[2007] = { config_id = 2007, gadget_id = 70900201, pos = { x = 328.396, y = 79.537, z = 683.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002005, name = "GADGET_STATE_CHANGE_2005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2005", action = "action_EVENT_GADGET_STATE_CHANGE_2005" }
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
		gadgets = { 2001, 2002, 2007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_2005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2003, 2004, 2006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_2005(context, evt)
	if 2001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240054002, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240054003, 9)
	
	return 0
end

require "V3_0/HookLook"