-- 基础信息
local base_info = {
	group_id = 133307400
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
	{ config_id = 400001, gadget_id = 70290821, pos = { x = -1443.489, y = -27.293, z = 5576.077 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 400002, gadget_id = 70290831, pos = { x = -1443.490, y = -28.610, z = 5576.077 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 400003, gadget_id = 70290767, pos = { x = -1445.671, y = -28.610, z = 5576.488 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, interact_id = 158, area_id = 32 },
	{ config_id = 400004, gadget_id = 70290768, pos = { x = -1443.490, y = -28.610, z = 5576.077 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, interact_id = 151, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 交付棋子，生成棋子，通知黑盒刷出发条
	{ config_id = 1400005, name = "GADGET_STATE_CHANGE_400005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_400005", action = "action_EVENT_GADGET_STATE_CHANGE_400005" },
	-- 发条交付后激活棋子
	{ config_id = 1400006, name = "GADGET_STATE_CHANGE_400006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_400006", action = "action_EVENT_GADGET_STATE_CHANGE_400006" }
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
		gadgets = { 400004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_400005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 400001, 400002, 400003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_400006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_400005(context, evt)
	if 400004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_400005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307400, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307408, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_400006(context, evt)
	if 400003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_400006(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,400001, GadgetState.GearStart)
	
	return 0
end