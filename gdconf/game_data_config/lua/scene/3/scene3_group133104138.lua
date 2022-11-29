-- 基础信息
local base_info = {
	group_id = 133104138
}

-- Trigger变量
local defs = {
	challenge_1_duration = 130,
	challenge_2_duration = 110,
	challenge_3_duration = 100,
	group_id = 133104138,
	father_quest = 21005,
	region = 230,
	gadget_chest_1 = 444,
	gadget_chest_2 = 443,
	gadget_chest_3 = 442,
	nonRecordChallengeID = 184,
	recordChallengeID = 168,
	group_id_lift = 133104187
}

-- DEFS_MISCS
defs.quest_1_id = defs.father_quest.."02"

defs.quest_2_id = defs.father_quest.."04"

defs.quest_3_id = defs.father_quest.."06"

defs.quest_4_id = defs.father_quest.."08"

defs.quest_1_success = defs.group_id.."0101"

defs.quest_1_fail = defs.group_id.."0102"

defs.quest_2_success = defs.group_id.."0201"

defs.quest_2_fail = defs.group_id.."0202"

defs.quest_3_success = defs.group_id.."0301"

defs.quest_3_fail = defs.group_id.."0302"

defs.quest_4_success = defs.group_id.."0401"

defs.quest_4_fail = defs.group_id.."0402"

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
	{ config_id = 3, npc_id = 20029, pos = { x = 935.714, y = 208.321, z = 308.544 }, rot = { x = 0.000, y = 353.712, z = 0.000 }, area_id = 5 }
}

-- 装置
gadgets = {
	{ config_id = 442, gadget_id = 70211121, pos = { x = 938.727, y = 208.320, z = 311.883 }, rot = { x = 0.023, y = 315.554, z = 359.643 }, level = 16, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 443, gadget_id = 70211111, pos = { x = 940.324, y = 208.306, z = 313.404 }, rot = { x = 0.028, y = 316.307, z = 359.643 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 444, gadget_id = 70211101, pos = { x = 937.201, y = 208.333, z = 310.389 }, rot = { x = 0.027, y = 316.224, z = 359.643 }, level = 16, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 445, gadget_id = 70900201, pos = { x = 881.181, y = 265.041, z = 325.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 138001, gadget_id = 70220013, pos = { x = 924.132, y = 212.757, z = 346.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 138002, gadget_id = 70360025, pos = { x = 881.169, y = 265.445, z = 325.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 230, shape = RegionShape.SPHERE, radius = 3, pos = { x = 881.138, y = 265.000, z = 325.380 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1000225, name = "QUEST_START_225", event = EventType.EVENT_QUEST_START, source = "2100502", condition = "", action = "action_EVENT_QUEST_START_225", trigger_count = 0 },
	{ config_id = 1000226, name = "QUEST_START_226", event = EventType.EVENT_QUEST_START, source = "2100504", condition = "", action = "action_EVENT_QUEST_START_226", trigger_count = 0 },
	{ config_id = 1000227, name = "QUEST_START_227", event = EventType.EVENT_QUEST_START, source = "2100506", condition = "", action = "action_EVENT_QUEST_START_227", trigger_count = 0 },
	{ config_id = 1000228, name = "CHALLENGE_SUCCESS_228", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "10", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_228", trigger_count = 0 },
	{ config_id = 1000229, name = "CHALLENGE_FAIL_229", event = EventType.EVENT_CHALLENGE_FAIL, source = "10", condition = "", action = "action_EVENT_CHALLENGE_FAIL_229", trigger_count = 0 },
	{ config_id = 1000230, name = "ENTER_REGION_230", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_230", action = "action_EVENT_ENTER_REGION_230", trigger_count = 0, tag = "555" },
	{ config_id = 1000231, name = "QUEST_START_231", event = EventType.EVENT_QUEST_START, source = "2100508", condition = "", action = "action_EVENT_QUEST_START_231", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Challenge_Flag", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 5,
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
		gadgets = { 138001 },
		regions = { },
		triggers = { "QUEST_START_225", "QUEST_START_226", "QUEST_START_227", "QUEST_START_231" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 445, 138002 },
		regions = { 230 },
		triggers = { "CHALLENGE_SUCCESS_228", "CHALLENGE_FAIL_229", "ENTER_REGION_230" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 445, 138002 },
		regions = { 230 },
		triggers = { "CHALLENGE_SUCCESS_228", "CHALLENGE_FAIL_229", "ENTER_REGION_230" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 445, 138002 },
		regions = { 230 },
		triggers = { "CHALLENGE_SUCCESS_228", "CHALLENGE_FAIL_229", "ENTER_REGION_230" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 138001 },
		regions = { },
		triggers = { "QUEST_START_225", "QUEST_START_226", "QUEST_START_227", "QUEST_START_231" },
		npcs = { 3 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_225(context, evt)
	-- 添加2号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.nonRecordChallengeID, defs.challenge_1_duration, 4, 555, 1)
	--关闭电梯
	ScriptLib.SetGroupVariableValueByGroup(context, "switch", 0, defs.group_id_lift)
	-- 设定挑战标志符为1
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 1)
	
	--添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 1, 1)
	ScriptLib.MarkPlayerAction(context, 3000, 2, 2)
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_226(context, evt)
	-- 添加3号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.nonRecordChallengeID, defs.challenge_2_duration, 4, 555, 1)
	--关闭电梯
	ScriptLib.SetGroupVariableValueByGroup(context, "switch", 0, defs.group_id_lift)
	-- 设定挑战标志符为2
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 2)
	
	--添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 2, 3)
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_227(context, evt)
	-- 添加4号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.recordChallengeID, defs.challenge_3_duration, 4, 555, 1)
	--关闭电梯
	
	ScriptLib.SetGroupVariableValueByGroup(context, "switch", 0, defs.group_id_lift)
	
	-- 设定挑战标志符为3
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 3)
	
	--添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 2, 4)
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_228(context, evt)
	-- 根据触发的挑战类型决定奖励物品
	local reward = ScriptLib.GetGroupVariableValue(context, "Challenge_Flag")
	if reward == 1 then
	ScriptLib.CreateGadget(context, {config_id = defs.gadget_chest_1} )
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context,defs.quest_1_success)
	--开启电梯
	
	ScriptLib.SetGroupVariableValueByGroup(context, "switch", 1, defs.group_id_lift)
	
	--添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 3, 2)
	--刷新电梯的GroupSuit1
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 2 })
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 1 })
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
	elseif reward == 2 then
	ScriptLib.CreateGadget(context, {config_id = defs.gadget_chest_2} )
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_2_success)
	--开启电梯
	
	ScriptLib.SetGroupVariableValueByGroup(context, "switch", 1, defs.group_id_lift)
	
	--添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 3, 3)
	--刷新电梯的GroupSuit1
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 2 })
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 1 })
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	elseif reward == 3 then
	ScriptLib.CreateGadget(context, {config_id = defs.gadget_chest_3} )
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_3_success)
	--开启电梯
	
	ScriptLib.SetGroupVariableValueByGroup(context, "switch", 1, defs.group_id_lift)
	
	--添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 3, 4)
	--刷新电梯的GroupSuit1
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 2 })
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 1 })
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	elseif reward == 4 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_4_success)
	--开启电梯
	
	ScriptLib.SetGroupVariableValueByGroup(context, "switch", 1, defs.group_id_lift)
	
	--添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 3, 5)
	--刷新电梯的GroupSuit1
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 2 })
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 1 })
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	end
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_229(context, evt)
	local reward = ScriptLib.GetGroupVariableValue(context, "Challenge_Flag")
	if reward == 1 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_1_fail)
	--开启电梯
	
	ScriptLib.SetGroupVariableValueByGroup(context, "switch", 1, defs.group_id_lift)
	
	--添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 4, 2)
	--刷新电梯的GroupSuit1
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 2 })
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 1 })
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
	elseif reward == 2 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_2_fail)
	--开启电梯
	
	ScriptLib.SetGroupVariableValueByGroup(context, "switch", 1, defs.group_id_lift)
	
	--添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 4, 3)
	--刷新电梯的GroupSuit1
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 2 })
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 1 })
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	elseif reward == 3 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_3_fail)
	--开启电梯
	
	ScriptLib.SetGroupVariableValueByGroup(context, "switch", 1, defs.group_id_lift)
	
	--添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 4, 4)
	--刷新电梯的GroupSuit1
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 2 })
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 1 })
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	elseif reward == 4 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_4_fail)
	--开启电梯
	
	ScriptLib.SetGroupVariableValueByGroup(context, "switch", 1, defs.group_id_lift)
	
	--添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 4, 5)
	--刷新电梯的GroupSuit1
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 2 })
	--ScriptLib.RefreshGroup(context, { group_id = defs.group_id_lift, suite = 1 })
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_230(context, evt)
	if evt.param1 ~= defs.region then 
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_230(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 138002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_231(context, evt)
	-- 添加4号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.recordChallengeID, defs.challenge_3_duration, 4, 555, 1)
	--关闭电梯
	
	ScriptLib.SetGroupVariableValueByGroup(context, "switch", 0, defs.group_id_lift)
	
	-- 设定挑战标志符为3
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 4)
	
	--添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 2, 5)
	return 0
end