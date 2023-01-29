-- 基础信息
local base_info = {
	group_id = 133307399
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
	-- 流沙遗迹
	{ config_id = 399001, gadget_id = 70290828, pos = { x = -1429.753, y = -27.293, z = 5584.235 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 399002, gadget_id = 70290831, pos = { x = -1429.792, y = -28.610, z = 5584.089 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 399003, gadget_id = 70290767, pos = { x = -1430.919, y = -28.611, z = 5584.375 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, interact_id = 157, area_id = 32 },
	{ config_id = 399004, gadget_id = 70290768, pos = { x = -1429.792, y = -28.610, z = 5584.089 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, interact_id = 150, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 交付棋子，生成棋子，通知黑盒刷出发条
	{ config_id = 1399005, name = "GADGET_STATE_CHANGE_399005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_399005", action = "action_EVENT_GADGET_STATE_CHANGE_399005" },
	-- 发条交付后激活棋子
	{ config_id = 1399006, name = "GADGET_STATE_CHANGE_399006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_399006", action = "action_EVENT_GADGET_STATE_CHANGE_399006" }
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
	end_suite = 2,
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
		gadgets = { 399004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_399005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 399001, 399002, 399003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_399006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_399005(context, evt)
	if 399004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_399005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307399, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307412, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_399006(context, evt)
	if 399003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_399006(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,399001, GadgetState.GearStart)
	
	return 0
end