-- 基础信息
local base_info = {
	group_id = 133307402
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
	{ config_id = 402001, gadget_id = 70290823, pos = { x = -1396.530, y = -20.815, z = 5603.871 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 402002, gadget_id = 70290830, pos = { x = -1396.529, y = -28.610, z = 5603.873 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 402003, gadget_id = 70290767, pos = { x = -1400.688, y = -25.975, z = 5604.941 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, interact_id = 155, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1402004, name = "QUEST_START_402004", event = EventType.EVENT_QUEST_START, source = "7330501", condition = "", action = "action_EVENT_QUEST_START_402004", trigger_count = 0 },
	-- 发条交付后激活棋子
	{ config_id = 1402006, name = "GADGET_STATE_CHANGE_402006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_402006", action = "action_EVENT_GADGET_STATE_CHANGE_402006" }
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
		gadgets = { 402001, 402002 },
		regions = { },
		triggers = { "QUEST_START_402004", "GADGET_STATE_CHANGE_402006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 402003 },
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
function action_EVENT_QUEST_START_402004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307410, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_402006(context, evt)
	if 402003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_402006(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,402001, GadgetState.GearStart)
	
	return 0
end