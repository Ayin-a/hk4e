-- 基础信息
local base_info = {
	group_id = 133302671
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 671003
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
	[671001] = { config_id = 671001, gadget_id = 70330229, pos = { x = -85.847, y = 323.703, z = 2189.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[671002] = { config_id = 671002, gadget_id = 70330251, pos = { x = -74.076, y = 341.383, z = 2186.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[671003] = { config_id = 671003, gadget_id = 70220103, pos = { x = -74.076, y = 341.383, z = 2186.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[671004] = { config_id = 671004, gadget_id = 70220103, pos = { x = -52.986, y = 355.000, z = 2170.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[671006] = { config_id = 671006, gadget_id = 70310198, pos = { x = -87.055, y = 322.273, z = 2194.781 }, rot = { x = 0.000, y = 260.562, z = 0.000 }, level = 27, area_id = 20 },
	[671007] = { config_id = 671007, gadget_id = 70220103, pos = { x = -30.641, y = 372.869, z = 2155.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[671008] = { config_id = 671008, gadget_id = 70220103, pos = { x = -17.049, y = 387.126, z = 2134.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[671009] = { config_id = 671009, gadget_id = 70220103, pos = { x = 5.699, y = 412.872, z = 2123.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[671010] = { config_id = 671010, gadget_id = 70220103, pos = { x = 29.331, y = 456.332, z = 2080.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[671011] = { config_id = 671011, gadget_id = 70220103, pos = { x = 13.450, y = 432.639, z = 2103.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[671012] = { config_id = 671012, gadget_id = 70220103, pos = { x = 36.937, y = 441.930, z = 2108.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1671005, name = "GADGET_STATE_CHANGE_671005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_671005", action = "action_EVENT_GADGET_STATE_CHANGE_671005" }
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
		gadgets = { 671001, 671002, 671006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_671005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 671003, 671004, 671007, 671008, 671009, 671010, 671011, 671012 },
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
function condition_EVENT_GADGET_STATE_CHANGE_671005(context, evt)
	if 671001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_671005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302671, 2)
	
	return 0
end

require "V3_0/HookLook"