-- 基础信息
local base_info = {
	group_id = 155008037
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 3,
	group_id = 155008037
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 37001, monster_id = 22010401, pos = { x = -330.877, y = 269.322, z = 318.925 }, rot = { x = 9.416, y = 20.024, z = 353.063 }, level = 36, drop_id = 1000100, area_id = 200 },
	{ config_id = 37002, monster_id = 22010101, pos = { x = -331.758, y = 268.675, z = 328.662 }, rot = { x = 6.187, y = 115.028, z = 9.923 }, level = 36, drop_id = 1000100, area_id = 200 },
	{ config_id = 37004, monster_id = 22010301, pos = { x = -323.649, y = 267.421, z = 325.999 }, rot = { x = 350.977, y = 276.456, z = 352.557 }, level = 36, drop_id = 1000100, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 哀歌蛇心之地的挑战宝箱
	{ config_id = 37003, gadget_id = 70211021, pos = { x = -328.604, y = 268.284, z = 324.806 }, rot = { x = 5.705, y = 359.414, z = 348.282 }, level = 16, drop_tag = "战斗高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1037005, name = "GROUP_LOAD_37005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_37005", action = "action_EVENT_GROUP_LOAD_37005", trigger_count = 0 },
	{ config_id = 1037006, name = "CHALLENGE_SUCCESS_37006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_37006", trigger_count = 0 },
	{ config_id = 1037007, name = "CHALLENGE_FAIL_37007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_37007", trigger_count = 0 },
	-- 成功保底
	{ config_id = 1037008, name = "GROUP_LOAD_37008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_37008", action = "action_EVENT_GROUP_LOAD_37008", trigger_count = 0 },
	{ config_id = 1037009, name = "QUEST_FINISH_37009", event = EventType.EVENT_QUEST_FINISH, source = "7224902", condition = "", action = "action_EVENT_QUEST_FINISH_37009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_37005", "CHALLENGE_SUCCESS_37006", "CHALLENGE_FAIL_37007", "GROUP_LOAD_37008", "QUEST_FINISH_37009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 37001, 37002, 37004 },
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

-- 触发条件
function condition_EVENT_GROUP_LOAD_37005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_37005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72249_ChallengeFaild_C") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155008037, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_37006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72249_ChallengeSuccess_C") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为37003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 37003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_37007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72249_ChallengeFaild_C") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155008037, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_37008(context, evt)
	-- 判断变量"isFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_37008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72249_ChallengeSuccess_C") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为37003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 37003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_37009(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end