-- 基础信息
local base_info = {
	group_id = 133303632
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 632002
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
	[632001] = { config_id = 632001, gadget_id = 70330229, pos = { x = -1504.721, y = 283.354, z = 3245.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[632002] = { config_id = 632002, gadget_id = 70330251, pos = { x = -1483.678, y = 278.649, z = 3268.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1632003, name = "GADGET_STATE_CHANGE_632003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_632003", action = "action_EVENT_GADGET_STATE_CHANGE_632003" },
	-- 改三相状态
	{ config_id = 1632005, name = "GADGET_STATE_CHANGE_632005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_632005", action = "action_EVENT_GADGET_STATE_CHANGE_632005" }
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
		gadgets = { 632001, 632002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_632003", "GADGET_STATE_CHANGE_632005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_632003(context, evt)
	if 632001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_632003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303364, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_632005(context, evt)
	if 632001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_632005(context, evt)
	-- 改变指定group组133303364中， configid为364001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133303364, 364001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133303631中， configid为631001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133303631, 631001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "V3_0/HookLook"