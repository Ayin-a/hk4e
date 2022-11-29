-- 基础信息
local base_info = {
	group_id = 133303494
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 494003
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
	[494001] = { config_id = 494001, gadget_id = 70330229, pos = { x = -1718.760, y = 228.344, z = 3391.669 }, rot = { x = 0.000, y = 240.832, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[494002] = { config_id = 494002, gadget_id = 70330251, pos = { x = -1690.346, y = 231.000, z = 3375.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[494003] = { config_id = 494003, gadget_id = 70220103, pos = { x = -1690.346, y = 231.000, z = 3375.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[494004] = { config_id = 494004, gadget_id = 70220103, pos = { x = -1694.625, y = 250.704, z = 3189.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[494006] = { config_id = 494006, gadget_id = 70220103, pos = { x = -1663.104, y = 229.535, z = 3357.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[494007] = { config_id = 494007, gadget_id = 70220103, pos = { x = -1637.504, y = 228.218, z = 3336.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[494008] = { config_id = 494008, gadget_id = 70220103, pos = { x = -1610.201, y = 228.218, z = 3316.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[494010] = { config_id = 494010, gadget_id = 70220103, pos = { x = -1582.649, y = 223.490, z = 3296.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[494011] = { config_id = 494011, gadget_id = 70220103, pos = { x = -1671.053, y = 229.535, z = 3323.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[494012] = { config_id = 494012, gadget_id = 70220103, pos = { x = -1678.304, y = 233.269, z = 3294.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[494013] = { config_id = 494013, gadget_id = 70220103, pos = { x = -1681.250, y = 237.399, z = 3264.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[494014] = { config_id = 494014, gadget_id = 70220103, pos = { x = -1688.136, y = 243.100, z = 3226.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[494015] = { config_id = 494015, gadget_id = 70220103, pos = { x = -1695.990, y = 257.226, z = 3151.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1494005, name = "GADGET_STATE_CHANGE_494005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_494005", action = "action_EVENT_GADGET_STATE_CHANGE_494005" },
	-- 改其他三相state
	{ config_id = 1494009, name = "GADGET_STATE_CHANGE_494009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_494009", action = "action_EVENT_GADGET_STATE_CHANGE_494009" }
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
		gadgets = { 494001, 494002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_494005", "GADGET_STATE_CHANGE_494009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 494003, 494004, 494006, 494007, 494008, 494010, 494011, 494012, 494013, 494014, 494015 },
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
function condition_EVENT_GADGET_STATE_CHANGE_494005(context, evt)
	if 494001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_494005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303494, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_494009(context, evt)
	if 494001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_494009(context, evt)
	-- 改变指定group组133303633中， configid为633001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133303633, 633001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133303634中， configid为634001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133303634, 634001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "V3_0/HookLook"