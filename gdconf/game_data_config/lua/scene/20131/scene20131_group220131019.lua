-- 基础信息
local base_info = {
	group_id = 220131019
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
	{ config_id = 19001, gadget_id = 70800177, pos = { x = 66.320, y = 9.337, z = 0.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 19002, gadget_id = 70800178, pos = { x = 86.103, y = 9.848, z = -23.097 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 19003, gadget_id = 70800179, pos = { x = 107.656, y = -3.531, z = -30.881 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 19004, gadget_id = 70800180, pos = { x = 107.381, y = 9.848, z = -62.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19005, gadget_id = 70800181, pos = { x = 108.809, y = -3.425, z = -25.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19008, gadget_id = 70800199, pos = { x = 82.296, y = 9.327, z = 0.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	-- 水闸1初始
	{ config_id = 19009, gadget_id = 70800201, pos = { x = 79.623, y = 8.381, z = 0.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	-- 水闸1升起来后
	{ config_id = 19010, gadget_id = 70800201, pos = { x = 79.623, y = 10.240, z = 0.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	-- 水片1升起后
	{ config_id = 19011, gadget_id = 70800177, pos = { x = 66.320, y = 9.848, z = 0.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	-- 水闸2初始
	{ config_id = 19012, gadget_id = 70800201, pos = { x = 108.893, y = 10.201, z = -32.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 水闸2初始
	{ config_id = 19013, gadget_id = 70800201, pos = { x = 108.893, y = 10.201, z = -32.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 水闸2初始
	{ config_id = 19015, gadget_id = 70800201, pos = { x = 108.893, y = 10.201, z = -32.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19017, gadget_id = 70800225, pos = { x = 84.060, y = -4.570, z = 0.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 任务结束后开启时间轴，用于延迟切水片suite
	{ config_id = 1019006, name = "QUEST_FINISH_19006", event = EventType.EVENT_QUEST_FINISH, source = "1102613", condition = "", action = "action_EVENT_QUEST_FINISH_19006", trigger_count = 0 },
	{ config_id = 1019007, name = "VARIABLE_CHANGE_19007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_19007", action = "action_EVENT_VARIABLE_CHANGE_19007" },
	-- 时间轴结束后切suite
	{ config_id = 1019016, name = "TIME_AXIS_PASS_19016", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_19016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Stage", value = 1, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 19014, gadget_id = 70800199, pos = { x = 108.893, y = 10.868, z = -28.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 19001, 19003, 19008, 19009, 19012, 19015, 19017 },
		regions = { },
		triggers = { "QUEST_FINISH_19006", "TIME_AXIS_PASS_19016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 19002, 19004, 19010, 19011, 19013 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_19007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 19005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function action_EVENT_QUEST_FINISH_19006(context, evt)
	-- 创建标识为"T1"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_19007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Stage"为3
	if ScriptLib.GetGroupVariableValue(context, "Stage") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_19007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131019, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_19016(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131019, 2)
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131019, 1)
	
	return 0
end