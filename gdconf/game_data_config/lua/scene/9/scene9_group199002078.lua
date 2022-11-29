-- 基础信息
local base_info = {
	group_id = 199002078
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
	-- 恶龙
	{ config_id = 78003, gadget_id = 70310332, pos = { x = 499.636, y = 126.754, z = -453.402 }, rot = { x = 2.625, y = 293.985, z = 358.374 }, level = 20, area_id = 401 },
	-- 公主
	{ config_id = 78004, gadget_id = 70310332, pos = { x = 497.460, y = 127.410, z = -440.671 }, rot = { x = 0.000, y = 39.747, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从甲
	{ config_id = 78005, gadget_id = 70310332, pos = { x = 499.480, y = 126.791, z = -456.853 }, rot = { x = 0.000, y = 43.700, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从乙
	{ config_id = 78006, gadget_id = 70310332, pos = { x = 499.321, y = 127.044, z = -440.272 }, rot = { x = 0.000, y = 288.393, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从丙
	{ config_id = 78007, gadget_id = 70310332, pos = { x = 497.310, y = 127.351, z = -438.840 }, rot = { x = 0.000, y = 136.389, z = 0.000 }, level = 20, area_id = 401 },
	-- 暮夜剧团团团长
	{ config_id = 78008, gadget_id = 70310332, pos = { x = 495.660, y = 128.697, z = -447.703 }, rot = { x = 0.000, y = 108.539, z = 0.000 }, level = 20, area_id = 401 },
	-- 莱昂
	{ config_id = 78009, gadget_id = 70310472, pos = { x = 498.544, y = 126.980, z = -452.829 }, rot = { x = 0.000, y = 98.619, z = 0.000 }, level = 20, area_id = 401 },
	-- 旁白
	{ config_id = 78010, gadget_id = 70310332, pos = { x = 495.279, y = 128.708, z = -441.963 }, rot = { x = 0.000, y = 124.111, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1078001, name = "VARIABLE_CHANGE_78001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_78001", action = "action_EVENT_VARIABLE_CHANGE_78001", trigger_count = 0 },
	{ config_id = 1078002, name = "VARIABLE_CHANGE_78002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_78002", action = "action_EVENT_VARIABLE_CHANGE_78002", trigger_count = 0 },
	{ config_id = 1078011, name = "QUEST_FINISH_78011", event = EventType.EVENT_QUEST_FINISH, source = "7902607", condition = "", action = "action_EVENT_QUEST_FINISH_78011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "play_state", value = 4, no_refresh = true },
	{ config_id = 3, name = "QuestFinish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1078012, name = "VARIABLE_CHANGE_78012", event = EventType.EVENT_VARIABLE_CHANGE, source = "play_state", condition = "condition_EVENT_VARIABLE_CHANGE_78012", action = "", trigger_count = 0 },
		{ config_id = 1078013, name = "VARIABLE_CHANGE_78013", event = EventType.EVENT_VARIABLE_CHANGE, source = "play_state", condition = "condition_EVENT_VARIABLE_CHANGE_78013", action = "", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_78001", "VARIABLE_CHANGE_78002", "QUEST_FINISH_78011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 78003, 78004, 78005, 78006, 78007, 78008, 78009, 78010 },
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
function condition_EVENT_VARIABLE_CHANGE_78001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"play_state"为0
	if ScriptLib.GetGroupVariableValue(context, "play_state") ~= 0 then
			return false
	end
	
	-- 判断变量"QuestFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_78001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002078, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_78002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"play_state"为4
	if ScriptLib.GetGroupVariableValue(context, "play_state") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_78002(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002078, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_78011(context, evt)
	-- 将本组内变量名为 "QuestFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end