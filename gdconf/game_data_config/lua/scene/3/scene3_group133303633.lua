-- 基础信息
local base_info = {
	group_id = 133303633
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 633002
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
	[633001] = { config_id = 633001, gadget_id = 70330229, pos = { x = -1580.359, y = 219.123, z = 3297.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[633002] = { config_id = 633002, gadget_id = 70330251, pos = { x = -1610.201, y = 228.218, z = 3316.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1633003, name = "GADGET_STATE_CHANGE_633003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_633003", action = "action_EVENT_GADGET_STATE_CHANGE_633003" },
	-- 改其他三相状态
	{ config_id = 1633005, name = "GADGET_STATE_CHANGE_633005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_633005", action = "action_EVENT_GADGET_STATE_CHANGE_633005" }
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
		gadgets = { 633001, 633002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_633003", "GADGET_STATE_CHANGE_633005" },
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
function condition_EVENT_GADGET_STATE_CHANGE_633003(context, evt)
	if 633001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_633003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303494, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_633005(context, evt)
	if 633001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_633005(context, evt)
	-- 改变指定group组133303494中， configid为494001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133303494, 494001, GadgetState.GearStart) then
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