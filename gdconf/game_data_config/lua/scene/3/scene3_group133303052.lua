-- 基础信息
local base_info = {
	group_id = 133303052
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 52003
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
	[52001] = { config_id = 52001, gadget_id = 70330229, pos = { x = -1494.221, y = 221.480, z = 3148.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[52002] = { config_id = 52002, gadget_id = 70330251, pos = { x = -1505.570, y = 217.024, z = 3160.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[52003] = { config_id = 52003, gadget_id = 70220103, pos = { x = -1505.570, y = 217.024, z = 3160.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[52004] = { config_id = 52004, gadget_id = 70220103, pos = { x = -1524.331, y = 209.897, z = 3174.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[52006] = { config_id = 52006, gadget_id = 70220103, pos = { x = -1547.583, y = 211.108, z = 3189.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[52007] = { config_id = 52007, gadget_id = 70220103, pos = { x = -1561.274, y = 214.046, z = 3212.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[52008] = { config_id = 52008, gadget_id = 70220103, pos = { x = -1584.840, y = 211.000, z = 3227.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1052005, name = "GADGET_STATE_CHANGE_52005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52005", action = "action_EVENT_GADGET_STATE_CHANGE_52005" },
	{ config_id = 1052009, name = "GROUP_LOAD_52009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_52009", action = "action_EVENT_GROUP_LOAD_52009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "deathzoneover", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
	end_suite = 1,
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
		gadgets = { 52001, 52002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_52005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 52003, 52004, 52006, 52007, 52008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_52009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_52005(context, evt)
	if 52001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303052, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_52009(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_52009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303052, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/HookLook"
require "V3_0/DeathFieldStandard"