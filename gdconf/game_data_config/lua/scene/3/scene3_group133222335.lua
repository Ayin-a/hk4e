-- 基础信息
local base_info = {
	group_id = 133222335
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
	{ config_id = 335001, gadget_id = 70330064, pos = { x = -5029.450, y = 222.976, z = -4289.888 }, rot = { x = 3.534, y = 359.981, z = 359.390 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 335002, gadget_id = 70900380, pos = { x = -5028.523, y = 228.447, z = -4291.485 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 335003, gadget_id = 70900380, pos = { x = -5028.852, y = 243.228, z = -4291.560 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 335004, gadget_id = 70900380, pos = { x = -5029.185, y = 258.216, z = -4291.635 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 335006, gadget_id = 70900380, pos = { x = -5029.524, y = 273.457, z = -4291.712 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1335007, name = "GADGET_STATE_CHANGE_335007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_335007", action = "action_EVENT_GADGET_STATE_CHANGE_335007", trigger_count = 0 },
	{ config_id = 1335008, name = "GADGET_STATE_CHANGE_335008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_335008", action = "action_EVENT_GADGET_STATE_CHANGE_335008", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 335005, gadget_id = 70900380, pos = { x = -5029.185, y = 258.216, z = -4291.635 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
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
		gadgets = { 335001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_335007", "GADGET_STATE_CHANGE_335008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 335002, 335003, 335004, 335006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_335007(context, evt)
	if 335001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_335007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222335, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_335008(context, evt)
	if 335001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_335008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222335, 2)
	
	return 0
end

require "V2_0/ElectricCore"