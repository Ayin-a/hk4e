-- 基础信息
local base_info = {
	group_id = 133307385
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
	{ config_id = 385001, gadget_id = 70290827, pos = { x = -1453.540, y = -27.293, z = 5625.240 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 385003, gadget_id = 70290831, pos = { x = -1453.539, y = -28.610, z = 5625.243 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 385004, gadget_id = 70290767, pos = { x = -1455.323, y = -28.611, z = 5625.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, interact_id = 156, area_id = 32 },
	{ config_id = 385005, gadget_id = 70290768, pos = { x = -1453.539, y = -28.610, z = 5625.243 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, interact_id = 149, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 交付棋子，生成棋子，通知黑盒刷出发条
	{ config_id = 1385006, name = "GADGET_STATE_CHANGE_385006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_385006", action = "action_EVENT_GADGET_STATE_CHANGE_385006" },
	-- 发条交付后激活棋子
	{ config_id = 1385007, name = "GADGET_STATE_CHANGE_385007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_385007", action = "action_EVENT_GADGET_STATE_CHANGE_385007" }
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
		gadgets = { 385005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_385006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 385001, 385003, 385004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_385007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_385006(context, evt)
	if 385005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_385006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307385, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307411, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_385007(context, evt)
	if 385004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_385007(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,385001, GadgetState.GearStart)
	
	return 0
end