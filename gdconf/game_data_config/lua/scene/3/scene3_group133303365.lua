-- 基础信息
local base_info = {
	group_id = 133303365
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 365003
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
	[365001] = { config_id = 365001, gadget_id = 70330229, pos = { x = -1777.658, y = 143.964, z = 3502.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[365002] = { config_id = 365002, gadget_id = 70330251, pos = { x = -1797.882, y = 147.689, z = 3508.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[365003] = { config_id = 365003, gadget_id = 70220103, pos = { x = -1797.882, y = 147.689, z = 3508.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[365004] = { config_id = 365004, gadget_id = 70220103, pos = { x = -1795.598, y = 134.169, z = 3486.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[365006] = { config_id = 365006, gadget_id = 70220103, pos = { x = -1827.802, y = 121.455, z = 3466.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[365007] = { config_id = 365007, gadget_id = 70220103, pos = { x = -1847.238, y = 134.241, z = 3472.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[365008] = { config_id = 365008, gadget_id = 70220103, pos = { x = -1844.664, y = 116.618, z = 3447.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[365009] = { config_id = 365009, gadget_id = 70220103, pos = { x = -1835.539, y = 141.566, z = 3513.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[365010] = { config_id = 365010, gadget_id = 70220103, pos = { x = -1815.423, y = 146.226, z = 3521.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[365011] = { config_id = 365011, gadget_id = 70220103, pos = { x = -1789.532, y = 155.546, z = 3537.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[365012] = { config_id = 365012, gadget_id = 70220103, pos = { x = -1805.636, y = 112.895, z = 3433.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[365016] = { config_id = 365016, gadget_id = 70220103, pos = { x = -1793.586, y = 128.511, z = 3461.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[365017] = { config_id = 365017, gadget_id = 70220103, pos = { x = -1816.953, y = 131.385, z = 3486.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[365018] = { config_id = 365018, gadget_id = 70220103, pos = { x = -1809.767, y = 147.531, z = 3544.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1365005, name = "GADGET_STATE_CHANGE_365005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_365005", action = "action_EVENT_GADGET_STATE_CHANGE_365005" },
	-- 改双相
	{ config_id = 1365015, name = "GADGET_STATE_CHANGE_365015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_365015", action = "action_EVENT_GADGET_STATE_CHANGE_365015" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 365013, gadget_id = 70330229, pos = { x = -1788.315, y = 87.098, z = 3418.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, area_id = 23 },
		{ config_id = 365014, gadget_id = 70330251, pos = { x = -1805.636, y = 112.895, z = 3433.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 5, area_id = 23 }
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
		gadgets = { 365001, 365002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_365005", "GADGET_STATE_CHANGE_365015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 365003, 365004, 365006, 365007, 365008, 365009, 365010, 365011, 365012, 365016, 365017, 365018 },
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
function condition_EVENT_GADGET_STATE_CHANGE_365005(context, evt)
	if 365001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_365005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303365, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_365015(context, evt)
	if 365001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_365015(context, evt)
	-- 改变指定group组133303629中， configid为629001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133303629, 629001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "V3_0/HookLook"