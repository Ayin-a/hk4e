-- 基础信息
local base_info = {
	group_id = 133102921
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 921001, monster_id = 21010201, pos = { x = 1168.759, y = 201.073, z = 390.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 5 },
	{ config_id = 921002, monster_id = 21010301, pos = { x = 1167.511, y = 200.809, z = 394.643 }, rot = { x = 0.000, y = 154.716, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 5 },
	{ config_id = 921003, monster_id = 21010201, pos = { x = 1170.189, y = 200.560, z = 392.861 }, rot = { x = 0.000, y = 272.733, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 5 },
	{ config_id = 921004, monster_id = 21011001, pos = { x = 1169.099, y = 200.395, z = 396.406 }, rot = { x = 0.000, y = 29.297, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 921005, monster_id = 21010501, pos = { x = 1171.509, y = 200.294, z = 394.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1921006, name = "QUEST_START_921006", event = EventType.EVENT_QUEST_START, source = "7182017", condition = "condition_EVENT_QUEST_START_921006", action = "action_EVENT_QUEST_START_921006", trigger_count = 0 },
	{ config_id = 1921007, name = "QUEST_START_921007", event = EventType.EVENT_QUEST_START, source = "7182018", condition = "condition_EVENT_QUEST_START_921007", action = "action_EVENT_QUEST_START_921007", trigger_count = 0 },
	{ config_id = 1921008, name = "QUEST_FINISH_921008", event = EventType.EVENT_QUEST_FINISH, source = "7182018", condition = "", action = "action_EVENT_QUEST_FINISH_921008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "quest", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		monsters = { 921001, 921002, 921003, 921004, 921005 },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_921006", "QUEST_START_921007", "QUEST_FINISH_921008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_921006", "QUEST_START_921007", "QUEST_FINISH_921008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_START_921006(context, evt)
	-- 判断变量"quest"为0
	if ScriptLib.GetGroupVariableValue(context, "quest") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_921006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102921, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_921007(context, evt)
	-- 判断变量"quest"为0
	if ScriptLib.GetGroupVariableValue(context, "quest") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_921007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102921, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_921008(context, evt)
	-- 将本组内变量名为 "quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end