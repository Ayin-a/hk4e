-- 基础信息
local base_info = {
	group_id = 133222215
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
	{ config_id = 215001, gadget_id = 70330064, pos = { x = -4539.029, y = 357.296, z = -4262.859 }, rot = { x = 3.143, y = 307.112, z = 357.920 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 215002, gadget_id = 70900380, pos = { x = -4537.186, y = 360.209, z = -4255.165 }, rot = { x = 1.978, y = 301.062, z = 358.554 }, level = 30, area_id = 14 },
	{ config_id = 215003, gadget_id = 70900380, pos = { x = -4534.479, y = 367.246, z = -4244.083 }, rot = { x = 1.978, y = 301.062, z = 358.554 }, level = 30, area_id = 14 },
	{ config_id = 215006, gadget_id = 70900380, pos = { x = -4532.444, y = 374.142, z = -4234.551 }, rot = { x = 1.978, y = 301.062, z = 358.554 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1215004, name = "GADGET_STATE_CHANGE_215004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_215004", action = "action_EVENT_GADGET_STATE_CHANGE_215004", trigger_count = 0 },
	{ config_id = 1215005, name = "GADGET_STATE_CHANGE_215005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_215005", action = "action_EVENT_GADGET_STATE_CHANGE_215005", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 215001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_215004", "GADGET_STATE_CHANGE_215005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 215002, 215003, 215006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_215004(context, evt)
	if 215001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_215004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222215, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_215005(context, evt)
	if 215001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_215005(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222215, 3)
	
	return 0
end

require "V2_0/ElectricCore"