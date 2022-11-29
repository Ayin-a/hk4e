--[[
	2.3狗子活动 救小动物战斗关
]]

--[[

local defs = {

	group_id = ,

	--触发开始/接续挑战的region
	start_region_id = ,

	--玩法限定region，出圈触发暂离
	level_region_id = ,

	--挑战id
	challenge_id = 2003001,

  -- 挑战index
  ChallengeIndex = 1002,

	--目标开笼子数
	taget_score = 5,
	--迭代：杀到这个数才能开笼子
	Monster_Count = 8,

	--目标笼子
	--[笼子configID] = {老狗configID, 新狗configID}
	target_id = {
		[笼子configID] = {老狗configID, 新狗configID}，
	}
}

]]

local extraTriggers={
  { config_id = 8000001,name = "Enter_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0 },
  --挑战计数trigger
  { config_id = 8000002, name = "Variable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "saved_progress", condition = "", action = "", trigger_count = 0 ,tag = "1000"},
  { config_id = 8000003,name = "LeaveRegion_Region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", trigger_count = 0 },
  { config_id = 8000004,name = "GadgetState_Change", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadgetstate_change", trigger_count = 0 },
  { config_id = 8000005,name = "Challenge_Success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0 },
  { config_id = 8000006, name = "ANY_MONSTER_DIE", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_ANY_MONSTER_DIE", trigger_count = 0 },
  { config_id = 8000007, name = "Group_Will_Unload", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_Will_Unload", trigger_count = 0},
  { config_id = 8000008, name = "Challenge_Fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_Challenge_Fail", trigger_count = 0},
  { config_id = 8000009, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0},
  --{ config_id = 8000006, name = "Animal_Time_Axis", event= EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
   --活动任务中，第一个潜行、战斗营地的首次挑战是由任务通知开启的
  { config_id = 8100001, name = "Quest_Notify_Challenge", event= EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_quest_notify", trigger_count = 0 },

}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	--进度保存
	table.insert(variables,{ config_id=50000001,name = "saved_progress", value = 0, no_refresh =true})
	--杀怪计数
	table.insert(variables,{ config_id=50000002,name = "kill_count", value = 0})
	--挑战状态标记
	table.insert(variables,{ config_id=50000003,name = "challenge_state", value = 0})

end

function action_ANY_MONSTER_DIE(context, evt)
	--排除狗 其他都是要杀的怪
	local monster_id = monsters[evt.param1].monster_id
	if monster_id == 28020403 then
		return 0
	end
	ScriptLib.ChangeGroupVariableValue(context, "kill_count", 1)
	--检查杀够数量了没
	if defs.Monster_Count ~= nil then 
		local kill_count = ScriptLib.GetGroupVariableValue(context, "kill_count")
		if kill_count >= defs.Monster_Count then
			LF_EnableCageInteract(context)
		end
	end
	return 0
end
function LF_DisableCageInteract(context)
	for k, v in pairs(defs.target_id) do 
		--客户端交互
		ScriptLib.SetGadgetStateByConfigId(context, k, 903)
		--服务器交互
		ScriptLib.SetGadgetEnableInteract(context, defs.group_id, k, false)
	end
	return 0
end

function LF_EnableCageInteract(context)
	for k, v in pairs(defs.target_id) do 
		--服务器交互
		ScriptLib.SetGadgetEnableInteract(context, defs.group_id, k, true)
		--客户端交互
		ScriptLib.SetGadgetStateByConfigId(context, k, 0)
	end
	return 0
end

function action_quest_notify(context,evt)

	ScriptLib.PrintContextLog(context, "[HachiBattle] Quest notify Challenge UID@"..context.uid)


	--检查是不是起点区域
	if defs.start_region_id ~= evt.param1 then
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

		ScriptLib.SetGroupTempValue(context, "player_uid", context.uid, {} )

		local start_process = ScriptLib.GetGroupVariableValue(context,"saved_progress")
		ScriptLib.PrintContextLog(context, "[HachiBattle] Start Challenge. ChallengeID@ "..defs.challenge_id.." TargetCages@".. defs.taget_score.." CurrentCages@"..start_process)
		--参数1： event_type所在枚举序号； 参数2： trigger_tag；参数3： 次数；参数4：Bool，次数达成是否计为成功；参数5：初始次数值
		ScriptLib.StartChallenge(context, defs.ChallengeIndex, defs.challenge_id, {3, 1000, defs.taget_score, 1, start_process})

	end

	return 0
end
function action_gadgetstate_change(context, evt)

	if evt.param1 ~= 201 then 
		return 0
	end
	
	--GadgetLua上已经有这个判断了 做双保险
	if ScriptLib.CheckIsInMpMode(context) == true then
		ScriptLib.PrintContextLog(context, "[HachiBattle] Is in MP mode, refuse state cahnge.")
		ScriptLib.SetGadgetStateByConfigId(context, evt.param2, 0)
		--将其状态置回去后，还需设为可交互
		ScriptLib.SetGadgetEnableInteract(context, defs.group_id, evt.param2, true)
		return 0
	end

	local result = CheckTableAndReturnValue(context, evt.param2, defs.target_id) 

		if result ~= 0 then

			--ScriptLib.PrintContextLog(context, "[HachiSneak] Cage Opend! configID@"..evt.param2)
			ScriptLib.ChangeGroupVariableValue(context,"saved_progress",1)

			local player_uid = ScriptLib.GetGroupTempValue(context, "player_uid", {})
			ScriptLib.AddExhibitionAccumulableData(context, player_uid, "Activity_Hachi_Group_"..defs.group_id, 1)

			-- 移除老狗
			ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.MONSTER, result[1])
			-- 刷出新狗
			if 0 ~= ScriptLib.CreateMonster(context, { config_id = result[2], delay_time = 0 }) then
			  ScriptLib.PrintContextLog(context, "[HachiBattle] #WARN# Create NewDog Faild targetID@"..result[2])
			  return -1
			end
			--以新狗的configID为Key，创建时间轴
			--ScriptLib.InitTimeAxis(context, tostring(result[2]), {6}, false)

		end

	return 0
end

--狗消失
function action_time_axis_pass(context, evt)

	ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.MONSTER, tonumber(evt.source_name))

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

	return 0
end

function action_enter_region(context,evt)

		-- 通知groupid为220000037中,configid为：的怪物入战或者脱战，set为1是入战，为0是脱战
--	ScriptLib.SetMonsterBattleByGroup(context, 598013, defs.group_id)


	--检查是不是起点区域
	if defs.start_region_id ~= evt.param1 then
		return 0
	end
	--检查联机
	if true == ScriptLib.CheckIsInMpMode(context) then
		ScriptLib.ShowReminder(context, 400053)
		return 0
	end
	--检查挑战状态
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 0 then 
		return 0
	else
		--处理开始挑战
		--挑战标记
		ScriptLib.SetGroupVariableValue(context, "challenge_state", 1)
		--禁用笼子交互(不在这处理了，LD直接配初始状态903)
		--LF_DisableCageInteract(context)

		ScriptLib.SetGroupTempValue(context, "player_uid", context.uid, {} )


		local start_process = ScriptLib.GetGroupVariableValue(context,"saved_progress")		
		ScriptLib.PrintContextLog(context, "[HachiBattle] Start Challenge. ChallengeID@ "..defs.challenge_id.." TargetCages@".. defs.taget_score.." CurrentCages@"..start_process)
		--参数1： event_type所在枚举序号； 参数2： trigger_tag；参数3： 次数；参数4：Bool，次数达成是否计为成功；参数5：初始次数值
		ScriptLib.StartChallenge(context, defs.ChallengeIndex, defs.challenge_id, {3, 1000, defs.taget_score, 1, start_process})

		--重新进圈开挑战时，再检查一次杀怪数量
		local kill_count = ScriptLib.GetGroupVariableValue(context, "kill_count")
		if kill_count >= defs.Monster_Count then
			for k, v in pairs(defs.target_id) do 
				--客户端可交互的笼子
				if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, k) then
					--设置服务器可交互
					ScriptLib.SetGadgetEnableInteract(context, defs.group_id, k, true)
				end
			end
		end

	end

	return 0
end

function action_challenge_success(context, evt)
		--任务通知
	ScriptLib.AddQuestProgress(context, defs.group_id.."_finish")
	--挑战标记
	ScriptLib.SetGroupVariableValue(context, "challenge_state", 2)

	return 0
end

--用于检查key是否在目标table中，返回value
function CheckTableAndReturnValue(context,key,table)

	for k, v in pairs(table) do
		if k == key then
			return v
		end
	end
	return 0
end

function action_Will_Unload(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 1 then 
		ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
	end	
	return 0
end
function action_Challenge_Fail(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 1 then 
		ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
	end
	return 0
end
--12.14补丁，雷雨天无狗导致第二波怪没刷出来 b1324472
--只修改后两个营地,第一个营地suite数不一样，
function action_Group_Load(context,evt)
	if 133212598 == defs.group_id then
		return 0
	end
	local kill_count = ScriptLib.GetGroupVariableValue(context, "kill_count")
	ScriptLib.PrintContextLog(context, "[HachiBattle] Group load. kill_count@"..kill_count.." first wave monster@"..#suites[3].monsters)
	if #suites[3].monsters == kill_count then 
		ScriptLib.PrintContextLog(context, "[HachiBattle] Try re-add suite 4.")
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	end
	return 0
end

LF_Initialize_Group(triggers, suites)