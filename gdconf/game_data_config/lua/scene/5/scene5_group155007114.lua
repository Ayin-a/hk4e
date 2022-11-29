-- 基础信息
local base_info = {
	group_id = 155007114
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
	{ config_id = 114001, gadget_id = 70310156, pos = { x = -370.492, y = 213.686, z = 1506.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1114002, name = "QUEST_FINISH_114002", event = EventType.EVENT_QUEST_FINISH, source = "7223912", condition = "", action = "action_EVENT_QUEST_FINISH_114002", trigger_count = 0 },
	{ config_id = 1114003, name = "TIME_AXIS_PASS_114003", event = EventType.EVENT_TIME_AXIS_PASS, source = "active", condition = "", action = "action_EVENT_TIME_AXIS_PASS_114003", trigger_count = 0 }
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
		gadgets = { 114001 },
		regions = { },
		triggers = { "QUEST_FINISH_114002", "TIME_AXIS_PASS_114003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_114002(context, evt)
	-- 创建标识为"active"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "active", {2}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_114003(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,114001 , 201)
	return 0
end