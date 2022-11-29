-- 基础信息
local base_info = {
	group_id = 133302628
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 628002
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
	[628001] = { config_id = 628001, gadget_id = 70330229, pos = { x = -759.192, y = 170.405, z = 2607.266 }, rot = { x = 353.430, y = 1.675, z = 342.554 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[628002] = { config_id = 628002, gadget_id = 70330251, pos = { x = -744.411, y = 166.885, z = 2606.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1628005, name = "GADGET_STATE_CHANGE_628005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_628005", action = "action_EVENT_GADGET_STATE_CHANGE_628005" }
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
		gadgets = { 628001, 628002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_628005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_628005(context, evt)
	if 628001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_628005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302627, 2)
	
	-- 改变指定group组133302627中， configid为627001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133302627, 627001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133302629中， configid为629001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133302629, 629001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "V3_0/HookLook"