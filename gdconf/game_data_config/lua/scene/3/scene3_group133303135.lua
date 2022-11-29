-- 基础信息
local base_info = {
	group_id = 133303135
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 135003
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
	[135001] = { config_id = 135001, gadget_id = 70330229, pos = { x = -1734.560, y = 270.504, z = 3142.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[135002] = { config_id = 135002, gadget_id = 70330251, pos = { x = -1755.842, y = 277.565, z = 3153.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[135003] = { config_id = 135003, gadget_id = 70220103, pos = { x = -1755.842, y = 277.565, z = 3153.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[135004] = { config_id = 135004, gadget_id = 70220103, pos = { x = -1785.864, y = 281.003, z = 3163.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[135006] = { config_id = 135006, gadget_id = 70220103, pos = { x = -1819.987, y = 287.797, z = 3177.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[135007] = { config_id = 135007, gadget_id = 70220103, pos = { x = -1848.911, y = 293.338, z = 3185.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[135008] = { config_id = 135008, gadget_id = 70220103, pos = { x = -1883.078, y = 298.904, z = 3193.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1135005, name = "GADGET_STATE_CHANGE_135005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_135005", action = "action_EVENT_GADGET_STATE_CHANGE_135005" }
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
		gadgets = { 135001, 135002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_135005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 135003, 135004, 135006, 135007, 135008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_135005(context, evt)
	if 135001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_135005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303135, 2)
	
	return 0
end

require "V3_0/HookLook"