-- 基础信息
local base_info = {
	group_id = 133303364
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 364002
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
	[364001] = { config_id = 364001, gadget_id = 70330229, pos = { x = -1442.179, y = 236.752, z = 3428.974 }, rot = { x = 353.258, y = 359.978, z = 6.575 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[364002] = { config_id = 364002, gadget_id = 70330251, pos = { x = -1433.552, y = 244.526, z = 3394.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[364003] = { config_id = 364003, gadget_id = 70220103, pos = { x = -1440.025, y = 244.018, z = 3426.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[364004] = { config_id = 364004, gadget_id = 70220103, pos = { x = -1426.795, y = 254.826, z = 3362.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[364006] = { config_id = 364006, gadget_id = 70220103, pos = { x = -1406.398, y = 261.068, z = 3330.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[364007] = { config_id = 364007, gadget_id = 70220103, pos = { x = -1376.605, y = 267.409, z = 3314.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[364008] = { config_id = 364008, gadget_id = 70220103, pos = { x = -1433.552, y = 244.526, z = 3394.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[364012] = { config_id = 364012, gadget_id = 70220103, pos = { x = -1483.678, y = 278.649, z = 3268.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[364013] = { config_id = 364013, gadget_id = 70220103, pos = { x = -1440.177, y = 265.025, z = 3329.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[364014] = { config_id = 364014, gadget_id = 70220103, pos = { x = -1461.607, y = 271.972, z = 3298.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[364015] = { config_id = 364015, gadget_id = 70220103, pos = { x = -1499.922, y = 286.153, z = 3244.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1364005, name = "GADGET_STATE_CHANGE_364005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_364005", action = "action_EVENT_GADGET_STATE_CHANGE_364005" },
	-- 改三相状态
	{ config_id = 1364011, name = "GADGET_STATE_CHANGE_364011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_364011", action = "action_EVENT_GADGET_STATE_CHANGE_364011" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 364009, gadget_id = 70330229, pos = { x = -1371.451, y = 257.139, z = 3314.005 }, rot = { x = 0.000, y = 218.194, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, area_id = 23 },
		{ config_id = 364010, gadget_id = 70330251, pos = { x = -1377.062, y = 267.278, z = 3312.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 5, area_id = 23 },
		{ config_id = 364016, gadget_id = 70330229, pos = { x = -1504.385, y = 280.284, z = 3245.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 6, area_id = 23 },
		{ config_id = 364017, gadget_id = 70330251, pos = { x = -1483.678, y = 278.649, z = 3268.897 }, rot = { x = 316.322, y = 278.649, z = 28.897 }, level = 30, mark_flag = 6, area_id = 23 }
	},
	triggers = {
		{ config_id = 1364018, name = "GADGET_STATE_CHANGE_364018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_364018", action = "action_EVENT_GADGET_STATE_CHANGE_364018" }
	}
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
		gadgets = { 364001, 364002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_364005", "GADGET_STATE_CHANGE_364011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 364003, 364004, 364006, 364007, 364008, 364012, 364013, 364014, 364015 },
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
function condition_EVENT_GADGET_STATE_CHANGE_364005(context, evt)
	if 364001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_364005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303364, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_364011(context, evt)
	if 364001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_364011(context, evt)
	-- 改变指定group组133303631中， configid为631001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133303631, 631001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133303632中， configid为632001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133303632, 632001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "V3_0/HookLook"