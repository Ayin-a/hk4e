-- 基础信息
local base_info = {
	group_id = 133307395
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
	{ config_id = 395001, gadget_id = 70290824, pos = { x = -1429.023, y = -27.293, z = 5630.194 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 395003, gadget_id = 70290831, pos = { x = -1429.023, y = -28.610, z = 5630.194 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 395004, gadget_id = 70290767, pos = { x = -1429.558, y = -27.293, z = 5628.212 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, interact_id = 159, area_id = 32 },
	{ config_id = 395005, gadget_id = 70290768, pos = { x = -1429.023, y = -28.610, z = 5630.194 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, interact_id = 152, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 交付棋子，生成棋子，通知黑盒刷出发条
	{ config_id = 1395006, name = "GADGET_STATE_CHANGE_395006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_395006", action = "action_EVENT_GADGET_STATE_CHANGE_395006" },
	-- 发条交付后激活棋子
	{ config_id = 1395007, name = "GADGET_STATE_CHANGE_395007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_395007", action = "action_EVENT_GADGET_STATE_CHANGE_395007" }
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
		gadgets = { 395005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_395006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 395001, 395003, 395004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_395007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_395006(context, evt)
	if 395005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_395006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307395, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307414, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_395007(context, evt)
	if 395004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_395007(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,395001, GadgetState.GearStart)
	
	return 0
end