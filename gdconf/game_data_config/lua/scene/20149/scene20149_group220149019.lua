-- 基础信息
local base_info = {
	group_id = 220149019
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 19003
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
	[19001] = { config_id = 19001, gadget_id = 70330229, pos = { x = 468.464, y = 132.467, z = 378.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3 },
	[19002] = { config_id = 19002, gadget_id = 70330251, pos = { x = 438.828, y = 148.647, z = 370.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3 },
	[19003] = { config_id = 19003, gadget_id = 70220103, pos = { x = 438.828, y = 148.647, z = 370.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1019005, name = "GADGET_STATE_CHANGE_19005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19005", action = "action_EVENT_GADGET_STATE_CHANGE_19005" }
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
		gadgets = { 19001, 19002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_19005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 19003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_19005(context, evt)
	if 19001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220149019, 2)
	
	-- 将本组内变量名为 "RaioState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "RaioState", 1, 220149017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_0/HookLook"