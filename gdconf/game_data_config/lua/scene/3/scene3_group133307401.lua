-- 基础信息
local base_info = {
	group_id = 133307401
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
	{ config_id = 401001, gadget_id = 70290822, pos = { x = -1444.142, y = -22.192, z = 5640.263 }, rot = { x = 359.990, y = 284.950, z = 0.034 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 401002, gadget_id = 70290830, pos = { x = -1444.142, y = -28.610, z = 5640.278 }, rot = { x = 359.990, y = 284.950, z = 0.034 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 401003, gadget_id = 70290767, pos = { x = -1449.038, y = -25.974, z = 5641.475 }, rot = { x = 359.990, y = 284.950, z = 0.034 }, level = 32, persistent = true, interact_id = 154, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1401004, name = "QUEST_START_401004", event = EventType.EVENT_QUEST_START, source = "7330501", condition = "", action = "action_EVENT_QUEST_START_401004", trigger_count = 0 },
	-- 发条交付后激活棋子
	{ config_id = 1401006, name = "GADGET_STATE_CHANGE_401006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401006", action = "action_EVENT_GADGET_STATE_CHANGE_401006" }
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
		gadgets = { 401001, 401002 },
		regions = { },
		triggers = { "QUEST_START_401004", "GADGET_STATE_CHANGE_401006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 401003 },
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

-- 触发操作
function action_EVENT_QUEST_START_401004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307401, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401006(context, evt)
	if 401003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401006(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,401001, GadgetState.GearStart)
	
	return 0
end