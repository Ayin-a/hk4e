-- 基础信息
local base_info = {
	group_id = 133307387
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
	{ config_id = 387001, gadget_id = 70290826, pos = { x = -1415.297, y = -27.290, z = 5638.182 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 387003, gadget_id = 70290831, pos = { x = -1415.297, y = -28.607, z = 5638.181 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 387004, gadget_id = 70290767, pos = { x = -1415.423, y = -26.366, z = 5638.239 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, interact_id = 160, area_id = 32 },
	{ config_id = 387005, gadget_id = 70290768, pos = { x = -1415.297, y = -28.609, z = 5638.182 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, interact_id = 153, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 交付棋子，生成棋子，通知黑盒刷出发条
	{ config_id = 1387006, name = "GADGET_STATE_CHANGE_387006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_387006", action = "action_EVENT_GADGET_STATE_CHANGE_387006" },
	-- 发条交付后激活棋子
	{ config_id = 1387007, name = "GADGET_STATE_CHANGE_387007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_387007", action = "action_EVENT_GADGET_STATE_CHANGE_387007" }
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
		gadgets = { 387005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_387006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 387001, 387003, 387004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_387007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_387006(context, evt)
	if 387005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_387006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307387, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307409, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_387007(context, evt)
	if 387004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_387007(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,387001, GadgetState.GearStart)
	
	return 0
end