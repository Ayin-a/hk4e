--- ServerUploadTool Save to [/root/env/data/lua/common/V2_3]  ---
--[[
	2.3狗子活动 救小动物潜行关
]]

--[[

local defs = {

	group_id = ,

	--触发开始/接续挑战的region，此region在suite1
	start_region_id = ,

	--开始挑战后，哪些suit要Add
	challenge_suits = 
	{ 2 },

  --挑战index
  ChallengeIndex = 1001,
  
  --开始小光柱
  starting_point_id = 590040,

	--玩法限定region，出圈触发暂离，此region在suite1
	level_region_id = ,

	--挑战id
	challenge_id = 2003001,

	--目标捕捉数
	taget_score = 5,
	--已捕捉数
	exhibition_id = 5,

	--狗和寻路点。格式为：[狗configid] = {startMarkFlag, endMarkFlag},
	waypoint = {
		[0000] = {1, 10},
		[0000] = {11, 20},
	}
}

]]

local extraTriggers={
	{ config_id = 8000000, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
  { config_id = 8000001,name = "Enter_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0 },
  { config_id = 8000002,name = "LeaveRegion_Region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", trigger_count = 0 },
  --挑战计数trigger
  { config_id = 8000003, name = "Variable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "saved_progress", condition = "", action = "", trigger_count = 0 ,tag = "1000"},
  { config_id = 8000004,name = "Challenge_Success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0 },
  { config_id = 8000005, name = "Group_Refresh", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_group_refresh", trigger_count = 0 },
  { config_id = 8000006, name = "Any_Monster_Die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_any_monster_die", trigger_count = 0 },
   { config_id = 8000007, name = "Group_Will_Unload", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0},
   { config_id = 8000008,name = "Challenge_Fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0 },
 --挑战暂离
 { config_id = 8000009,name = "Challenge_Pause", event = EventType.EVENT_CHALLENGE_PAUSE, source = "", condition = "", action = "action_challenge_pause", trigger_count = 0 },
  --活动任务中，第一个潜行、战斗营地的首次挑战是由任务通知开启的
  { config_id = 8800001, name = "Quest_Notify_Challenge", event= EventType.EVENT_QUEST_FINISH, source = "4003109", condition = "", action = "action_quest4003109_notify", trigger_count = 0 },
  { config_id = 8800002, name = "Quest_Notify_Challenge2", event= EventType.EVENT_QUEST_FINISH, source = "4003103", condition = "", action = "action_quest4003103_notify", trigger_count = 0 },

}

--运营日志所需key，都是累计值。
--作为groupTempVa，在挑战开始时重置，在挑战结束时上报。需求见单号 1286672
local log_enum = {
	"found_times",--本次挑战中被狗子发现的次数 怪物SLC
	"tool1_used_times",--本次挑战中使用潜行物件烟雾的次数 物件SLC
	"tool2_used_times",--本次挑战中使用潜行物件诱饵的次数 物件SLC
	"widget_times",--本次挑战中使用抓捕小道具的次数 小道具SLC
	"capture_times"--本次挑战中抓到小动物的次数 小道具SLC
}

function Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	--进度保存
	table.insert(variables,{ config_id=50000001,name = "saved_progress", value = 0, no_refresh =true})
	--挑战状态标记
	table.insert(variables,{ config_id=50000002,name = "challenge_state", value = 0})
	--路点状态标记
	table.insert(variables,{ config_id=50000003,name = "waypoint_set", value = 0})
	--最多4只动物 存活记录
	table.insert(variables,{ config_id=50000004,name = "animal", value = 10000})

	--第一个营地的挑战是否已通过任务正常开启（如果不是的话，接到第二次任务通知，要再开一次挑战）
	table.insert(variables,{ config_id=50000005,name = "quest_done", value = 0, no_refresh =true})

end
function action_challenge_pause(context, evt)
	UpLoadActionLog(context, evt.param_str1)
	return 0
end
--处理小动物意外死亡 约定小动物都在Suit 5
function action_any_monster_die(context, evt)
	if CheckIsInTable(context, evt.param1, suites[5].monsters) then 
		
		local exist_int = ScriptLib.GetGroupVariableValue(context, "animal")
		local exist_table = LF_Split_Int(context, exist_int)
		ScriptLib.PrintContextLog(context, "[HachiSneak] Try Set Animal. exist_int@"..exist_int)
		local animal_index = GetIndexInTable(context, evt.param1, suites[5].monsters)
		if exist_table[animal_index] == 0 then
			local ret = ScriptLib.CreateMonster(context, { config_id = evt.param1, delay_time = 2 })
			ScriptLib.PrintContextLog(context, "[HachiSneak] Reset animal@"..evt.param1.." ret@"..ret)
		end
	end 
	return 0

end
--Group一旦被卸载的保护
function action_group_will_unload(context,evt)
	--清SGV
	ScriptLib.PrintContextLog(context, "[HachiSneak] SGV_CAN_CLEAR_THREAT Set: 0")
	local uidList = ScriptLib.GetSceneUidList(context)
	if #uidList > 0 then
		ScriptLib.SetTeamServerGlobalValue(context, uidList[1], "SGV_CAN_CLEAR_THREAT", 0)
		--ScriptLib.SetTeamServerGlobalValue(context, uidList[1], "Hachi_IsInSmokeArea", 0)
	end
	--弹出暂离提示
	--ScriptLib.PauseChallenge(context, defs.ChallengeIndex)
	--如果正在挑战中，清挑战标记
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 1 then
		ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
	end

	return 0
end

function action_group_load(context, evt)
	if defs.group_id == 133212590 then--首个潜行营地和任务耦合
		PrepareStartPoint(context)
	end
	--LF_SetAnimal(context)
	return 0
end

function action_group_refresh(context, evt)
	if defs.group_id == 133212590 then--首个潜行营地和任务耦合
		PrepareStartPoint(context)
	end
	return 0
end
--根据任务状态，是否显示常规潜行起点。 4003103任务状态为finished时开启黄点
function PrepareStartPoint(context)
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 2 then
		return 0
	end
	if true == ScriptLib.CheckIsInMpMode(context) then
		--ScriptLib.ShowReminder(context, 400053)
		return 0
	end

	--此处不能通过get玩家questState来判断，因为可能取不到玩家uid
	if ScriptLib.GetGroupVariableValue(context, "quest_done") == 0 then
		--隐藏黄点
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.starting_point_id, 201)

	else
		--显示黄点
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.starting_point_id, 0)
	end
	return 0
end

--狗潜行活动的挑战ability上，给玩家挂一个onKill时执行的SLC
--关卡接到后检查任务状态，如果标志任务4003103没完成，则退出挑战状态
function SLC_PlayerDie_DuringQuest(context)

	if ScriptLib.GetGroupVariableValue(context,"challenge_state") ~= 1 then 
		return 0
	end

	local quest_state = ScriptLib.GetQuestState(context, context.source_entity_id, 4003103)
	if 3 ~= quest_state then 
		--允许再次接受任务通知
		ScriptLib.SetGroupVariableValue(context, "quest_done", 0)
		--恢复玩家SGV
		ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_CAN_CLEAR_THREAT", 0)
		--ScriptLib.SetTeamServerGlobalValue(context, context.uid, "Hachi_IsInSmokeArea", 0)
		--暂离挑战
		ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
		--ScriptLib.StopChallenge(context,defs.challenge_id,1)
		ScriptLib.PauseChallenge(context, defs.ChallengeIndex)

		--处理黄点
		--ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.starting_point_id, 0)

		--移除开挑战时添加的suit，
		for k,v in pairs(defs.challenge_suits) do
			ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, v)
		end

	end

	return 0
end

function LF_SetAnimal(context)
	if #suites[5].monsters > 4 then
		ScriptLib.PrintContextLog(context, "[HachiSneak] #WARN# Too Many Animal in Suit 5! Tell LD.")
		return -1
	end
	local exist_int = ScriptLib.GetGroupVariableValue(context, "animal")
	local exist_table = LF_Split_Int(context, exist_int)
	ScriptLib.PrintContextLog(context, "[HachiSneak] Try Set Animal. exist_int@"..exist_int)
	for i=1, #suites[5].monsters do
		if exist_table[i] == 0 then
			ScriptLib.CreateMonster(context, { config_id = suites[5].monsters[i], delay_time = 0 })
		end
	end
	return 0
end
function LF_Split_Int(context, num)
    local tb = {0,0,0,0}
    for i=1, #tb do
    	tb[i] = num%10
    	num = math.floor(num/10)
    end
    return tb
end

function action_challenge_success(context, evt)
	--任务通知
	ScriptLib.AddQuestProgress(context, defs.group_id.."_finish")
	--挑战标记
	ScriptLib.SetGroupVariableValue(context, "challenge_state", 2)
	--处理黄点
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.starting_point_id, GadgetState.GearStart)
	--移除开挑战时添加的suit，
	for k,v in pairs(defs.challenge_suits) do
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, v)
	end
	--恢复玩家SGV
	ScriptLib.PrintContextLog(context, "[HachiSneak] SGV_CAN_CLEAR_THREAT Set: 0")
	local uidList = ScriptLib.GetSceneUidList(context)
	if #uidList > 0 then
		ScriptLib.SetTeamServerGlobalValue(context, uidList[1], "SGV_CAN_CLEAR_THREAT", 0)
		--ScriptLib.SetTeamServerGlobalValue(context, uidList[1], "Hachi_IsInSmokeArea", 0)
	end
	UpLoadActionLog(context, evt.param_str1)

	return 0
end
--常规流程不会有失败，做个保底
function action_challenge_fail(context,evt)

	UpLoadActionLog(context, evt.param_str1)

	--挑战标记
	ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
	--处理黄点
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.starting_point_id, 0)

	--恢复玩家SGV
	ScriptLib.PrintContextLog(context, "[HachiSneak] SGV_CAN_CLEAR_THREAT Set: 0")

	local uidList = ScriptLib.GetSceneUidList(context)
	if #uidList > 0 then
		ScriptLib.SetTeamServerGlobalValue(context, uidList[1], "SGV_CAN_CLEAR_THREAT", 0)
		--ScriptLib.SetTeamServerGlobalValue(context, uidList[1], "Hachi_IsInSmokeArea", 0)
		--移除开挑战时添加的suit，
	end
	for k,v in pairs(defs.challenge_suits) do
		
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, v)
		
	end

	return 0
end

function ResetGroupTempVar(context)
	for k,v in pairs(log_enum) do
		ScriptLib.SetGroupTempValue(context, v,0,{})
	end
	return 0
end

--给狗分配路点。为了保证时序，这个方法由怪物在ability准备好后调用，只调用一次
function SetHachiWayPointGV(context)
	if ScriptLib.GetGroupVariableValue(context, "waypoint_set") == 0 then

		ScriptLib.SetGroupVariableValue(context, "waypoint_set", 1)

		for k,v in pairs(defs.waypoint) do 
			ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {k}, "_INU_SHIHANDAI_SEARCH_START" ,v[1])
			ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {k}, "_INU_SHIHANDAI_SEARCH_END" ,v[2])
			local tmp = ScriptLib.GetEntityIdByConfigId(context, k)
			ScriptLib.PrintContextLog(context, "[HachiSneak] Add GV: DogConfigID@"..k.." EntityID@"..tmp.." SEARCH_START@"..v[1].." SEARCH_END@"..v[2])
		end
	end
	
	return 0
end

function action_quest4003109_notify(context,evt)

	ScriptLib.PrintContextLog(context, "[HachiSneak] 4003109 Quest notify Challenge. UID@"..context.uid)

	--不再接受任务通知
	ScriptLib.SetGroupVariableValue(context, "quest_done", 1)
	--处理开始挑战
	--挑战标记
	ScriptLib.SetGroupVariableValue(context, "challenge_state", 1)
	ScriptLib.SetGroupVariableValue(context, "waypoint_set", 0)

	ScriptLib.SetGroupTempValue(context, "player_uid", context.uid, {} )

	--处理黄点
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.starting_point_id, 201)

	local start_process = ScriptLib.GetGroupVariableValue(context,"saved_progress")
	ScriptLib.PrintContextLog(context, "[HachiSneak] Start Challenge. ChallengeID@ "..defs.challenge_id.." TargetScore@".. defs.taget_score.." CurrentScore@"..start_process)
	--参数1： event_type所在枚举序号； 参数2： trigger_tag；参数3： 次数；参数4：Bool，次数达成是否计为成功；参数5：初始次数值
	ScriptLib.StartChallenge(context, defs.ChallengeIndex, defs.challenge_id, {3, 1000, defs.taget_score, 1, start_process})
	--迭代后suite 5 的内容不通过addsuit来加，由LF_SetAnimal管
	for k,v in pairs(defs.challenge_suits) do
		if k ~= 5 then
			ScriptLib.AddExtraGroupSuite(context, defs.group_id, v)
			ScriptLib.PrintContextLog(context, "[HachiSneak] Add Suit @"..v)
		end
	end
	--安排动物
	LF_SetAnimal(context)
	--重置日志
	ResetGroupTempVar(context)

	return 0
end

function action_quest4003103_notify(context,evt)

	ScriptLib.PrintContextLog(context, "[HachiSneak] 4003103 Quest notify Challenge. UID@"..context.uid)

	if ScriptLib.GetGroupVariableValue(context, "quest_done") ~= 0 then
		return 0
	end
	--不再接受任务通知
	ScriptLib.SetGroupVariableValue(context, "quest_done", 1)
	--处理开始挑战
	--挑战标记
	ScriptLib.SetGroupVariableValue(context, "challenge_state", 1)
	ScriptLib.SetGroupVariableValue(context, "waypoint_set", 0)

	ScriptLib.SetGroupTempValue(context, "player_uid", context.uid, {} )

	--处理黄点
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.starting_point_id, 201)

	local start_process = ScriptLib.GetGroupVariableValue(context,"saved_progress")
	ScriptLib.PrintContextLog(context, "[HachiSneak] Start Challenge. ChallengeID@ "..defs.challenge_id.." TargetScore@".. defs.taget_score.." CurrentScore@"..start_process)
	--参数1： event_type所在枚举序号； 参数2： trigger_tag；参数3： 次数；参数4：Bool，次数达成是否计为成功；参数5：初始次数值
	ScriptLib.StartChallenge(context, defs.ChallengeIndex, defs.challenge_id, {3, 1000, defs.taget_score, 1, start_process})
	--迭代后suite 5 的内容不通过addsuit来加，由LF_SetAnimal管
	for k,v in pairs(defs.challenge_suits) do
		if k ~= 5 then
			ScriptLib.AddExtraGroupSuite(context, defs.group_id, v)
			ScriptLib.PrintContextLog(context, "[HachiSneak] Add Suit @"..v)
		end
	end
	--安排动物
	LF_SetAnimal(context)
	--重置日志
	ResetGroupTempVar(context)

	return 0
end

function action_leave_region(context,evt)
	if defs.level_region_id ~= evt.param1 then
		return -1
	end

	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 1 then
		return -1
	end

	--暂离挑战
	ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
	--ScriptLib.StopChallenge(context,defs.challenge_id,1)
	ScriptLib.PauseChallenge(context, defs.ChallengeIndex)

	--处理黄点
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.starting_point_id, 0)

	--移除开挑战时添加的suit，
	for k,v in pairs(defs.challenge_suits) do
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, v)
	end
	--恢复玩家SGV
	ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_CAN_CLEAR_THREAT", 0)
	--ScriptLib.SetTeamServerGlobalValue(context, context.uid, "Hachi_IsInSmokeArea", 0)

	return 0
end

function action_enter_region(context,evt)

	--检查是不是起点区域
	if defs.start_region_id ~= evt.param1 then
		return -1
	end

	--检查前置任务 4003103任务状态不为finished时隐藏黄点，不可踩region开挑战
	local avatar_entity = ScriptLib.GetAvatarEntityIdByUid(context, context.uid)
	if 3 ~= ScriptLib.GetQuestState(context, avatar_entity, 4003103) then
		return -1
	end

	--检查联机
	if true == ScriptLib.CheckIsInMpMode(context) then
		ScriptLib.ShowReminder(context, 400053)
		return -1
	end
	--检查挑战状态
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 0 then 
		return -1
	else
		--处理开始挑战
		--挑战标记
		ScriptLib.SetGroupVariableValue(context, "challenge_state", 1)
		ScriptLib.SetGroupVariableValue(context, "waypoint_set", 0)

		ScriptLib.SetGroupTempValue(context, "player_uid", context.uid, {} )

		--处理黄点
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.starting_point_id, GadgetState.GearStart)

		--读取进度
		--local start_process = ScriptLib.GetGroupVariableValue(context,"saved_progress")
		local start_process  = ScriptLib.GetExhibitionAccumulableData(context, context.uid, defs.exhibition_id)
		ScriptLib.PrintContextLog(context, "[HachiSneak] Start Challenge. ChallengeID@ "..defs.challenge_id.." TargetScore@".. defs.taget_score.." CurrentScore@"..start_process)
		--参数1： event_type所在枚举序号； 参数2： trigger_tag；参数3： 次数；参数4：Bool，次数达成是否计为成功；参数5：初始次数值
		ScriptLib.StartChallenge(context, defs.ChallengeIndex, defs.challenge_id, {3, 1000, defs.taget_score, 1, start_process})

		--迭代后suite 5 的内容不通过addsuit来加，由LF_SetAnimal管
		for k,v in pairs(defs.challenge_suits) do
			if v ~= 5 then
				ScriptLib.AddExtraGroupSuite(context, defs.group_id, v)
				ScriptLib.PrintContextLog(context, "[HachiSneak] Add Suit @"..v)
			end
		end
		--安排动物
		LF_SetAnimal(context)
		--重置日志
		ResetGroupTempVar(context)

	end

	return 0
end

--小动物被抓时，告诉关卡进度+1, 然后移除它，并标记到GroupVar
function MonsterCallCaught(context)
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 1 then
		ScriptLib.PrintContextLog(context, "[HachiSneak] #WARN# Challenge Not Open but Got Animal LuaCall!!")
		return -1
	end
	
	local player_uid = ScriptLib.GetGroupTempValue(context, "player_uid", {})
	ScriptLib.ChangeGroupTempValue(context, "capture_times", 1, {})
	ScriptLib.ChangeGroupVariableValue(context,"saved_progress",1)
	
	ScriptLib.AddExhibitionAccumulableData(context, player_uid, "Activity_Hachi_Group_"..defs.group_id, 1)
	ScriptLib.PrintContextLog(context, "[HachiSneak] Exhibition Update. UID@"..player_uid.." key@".."Activity_Hachi_Group_"..defs.group_id)
	--
	local animal = ScriptLib.GetMonsterConfigId(context, { monster_eid = context.source_entity_id })
	LF_MarkAnimal(context,animal)
	ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.MONSTER, animal)
	--ScriptLib.KillEntityByConfigId(context, { config_id = animal })
	
	return 0
end

function LF_MarkAnimal(context,animal_id)
	local animal_index = GetIndexInTable(context, animal_id, suites[5].monsters)
	local mark = math.pow(10,animal_index-1)
	ScriptLib.PrintContextLog(context, "[HachiSneak] Exhibition Update. animal_index@"..animal_index.." AnimalMark@"..mark)
	ScriptLib.ChangeGroupVariableValue(context, "animal",mark)

	return 0
end

--日志埋点 小道具使用次数
function HachiSneakWidgetUsed(context)

	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 1 then
		ScriptLib.PrintContextLog(context, "[HachiSneak] #WARN# Challenge Not Open but Got Widget LuaCall!!")
		return -1
	end
	ScriptLib.PrintContextLog(context, "[HachiSneak] Widget Use!!")
	ScriptLib.ChangeGroupTempValue(context, "widget_times", 1, {})
	return 0
end

--用于记录本次挑战中被狗子发现的次数 日志埋点
function MonsterCallPlayerCaught(context)
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 1 then
		return -1
	end
	ScriptLib.PrintContextLog(context, "[HachiSneak] Got PlayerCaught LuaCall!!")
	ScriptLib.ChangeGroupTempValue(context, "found_times", 1, {})
	return 0
end

--烟雾弹物件会serverLuaCall处理玩家清仇恨的SGV。清仇恨功能详见单子s1260223。
function SLC_SmokeClearThreat(context)
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 1 then
		return -1
	end
	ScriptLib.PrintContextLog(context, "[HachiSneak] SGV_CAN_CLEAR_THREAT Set: 1")
	local uidList = ScriptLib.GetSceneUidList(context)
	if #uidList > 0 then
		ScriptLib.SetTeamServerGlobalValue(context, uidList[1], "SGV_CAN_CLEAR_THREAT", 1)
	end
	return 0
end

--烟雾弹物件会serverLuaCall处理玩家清仇恨的SGV。清仇恨功能详见单子s1260223。
function SLC_SmokeSetThreat(context)
	--[[if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 1 then
		return -1
	end]]
	ScriptLib.PrintContextLog(context, "[HachiSneak] SGV_CAN_CLEAR_THREAT Set: 0")
	local uidList = ScriptLib.GetSceneUidList(context)
	if #uidList > 0 then
		ScriptLib.SetTeamServerGlobalValue(context, uidList[1], "SGV_CAN_CLEAR_THREAT", 0)
	end
	return 0
end

--上报运营日志数据 
function UpLoadActionLog(context,transaction)

	local log = {
		["found_times"] = 0,--本次挑战中被狗子发现的次数 怪物SLC
		["tool1_used_times"] = 0,--本次挑战中使用潜行物件烟雾的次数 物件SLC
		["tool2_used_times"] = 0,--本次挑战中使用潜行物件诱饵的次数 物件SLC
		["widget_times"] = 0,--本次挑战中使用抓捕小道具的次数 小道具SLC
		["capture_times"] = 0--本次挑战中抓到小动物的次数 小道具SLC
	}

	for k, v in pairs(log) do
		log[k] =  ScriptLib.GetGroupTempValue(context, k ,{})
	end

	ScriptLib.MarkGroupLuaAction(context, "ActivityHachi_1", transaction, log)

	ScriptLib.PrintContextLog(context, "[HachiSneak] UpLoadActionLog: "..log["found_times"].." |"..log["tool1_used_times"].." |"..log["tool2_used_times"].." |"..log["widget_times"].." |"..log["capture_times"])
	return 0
end

function SLC_HachiGadgetActionMark(context,param1)
	--["tool1_used_times"] = 0,--本次挑战中使用潜行物件烟雾的次数
	--["tool2_used_times"] = 0,--本次挑战中使用潜行物件诱饵的次数
		ScriptLib.PrintContextLog(context, "[HachiSneak] Got SLC_HachiGadgetActionMark @"..param1)
	if param1 == 1 then
		ScriptLib.ChangeGroupTempValue(context, "tool1_used_times", 1, {})
	elseif param1 == 2 then
		ScriptLib.ChangeGroupTempValue(context, "tool2_used_times", 1, {})
	end

	return 0
end
--用于检查value是否在目标table中
function CheckIsInTable(context,value,check_table)

	for i = 1, #check_table do
		if check_table[i] == value then
			return true
		end
	end
	return false
end
function GetIndexInTable(context, value, check_table)
	for i = 1, #check_table do
		if check_table[i] == value then
			return i
		end
	end
	return 0
end

Initialize_Group(triggers, suites)