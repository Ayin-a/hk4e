-- 基础信息
local base_info = {
	group_id = 133302627
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 627003
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
	[627001] = { config_id = 627001, gadget_id = 70330229, pos = { x = -697.965, y = 177.921, z = 2531.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[627002] = { config_id = 627002, gadget_id = 70330251, pos = { x = -690.249, y = 179.667, z = 2543.862 }, rot = { x = 11.529, y = 0.000, z = 8.740 }, level = 27, mark_flag = 3, area_id = 24 },
	[627003] = { config_id = 627003, gadget_id = 70220103, pos = { x = -690.249, y = 179.667, z = 2543.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[627004] = { config_id = 627004, gadget_id = 70220103, pos = { x = -677.715, y = 173.489, z = 2579.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[627006] = { config_id = 627006, gadget_id = 70220103, pos = { x = -632.130, y = 176.003, z = 2608.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[627007] = { config_id = 627007, gadget_id = 70220103, pos = { x = -740.060, y = 172.613, z = 2606.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[627008] = { config_id = 627008, gadget_id = 70220103, pos = { x = -704.345, y = 171.267, z = 2595.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[627009] = { config_id = 627009, gadget_id = 70220103, pos = { x = -658.172, y = 173.327, z = 2595.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[627010] = { config_id = 627010, gadget_id = 70220103, pos = { x = -762.087, y = 173.652, z = 2609.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[627011] = { config_id = 627011, gadget_id = 70220103, pos = { x = -616.355, y = 178.273, z = 2607.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[627012] = { config_id = 627012, gadget_id = 70220103, pos = { x = -696.393, y = 180.080, z = 2529.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1627005, name = "GADGET_STATE_CHANGE_627005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_627005", action = "action_EVENT_GADGET_STATE_CHANGE_627005" }
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
		gadgets = { 627001, 627002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_627005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 627003, 627004, 627006, 627007, 627008, 627009, 627010, 627011, 627012 },
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
function condition_EVENT_GADGET_STATE_CHANGE_627005(context, evt)
	if 627001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_627005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302627, 2)
	
	-- 改变指定group组133302628中， configid为628001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133302628, 628001, GadgetState.GearStart) then
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