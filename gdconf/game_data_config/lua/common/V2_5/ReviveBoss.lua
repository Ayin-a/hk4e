--ServerUploadTool Save to [/root/env/data/lua/common/V2_5]

--[[
=====================================================================================================================
||	Filename 	  ||	ReviveBoss 双子BOSS挑战
||	RelVersion    ||	2.5
||	Owner         ||	xudong.sun
||	Description   ||	2.5版本，复活怪物挑战，挑战需要杀死两个能互相复活的怪物；挑战部分LD自行处理
||	LogName       ||    ## ReviveBoss_LOG
||	Protection    ||	1. 使用精确计数，而非判定当前group怪物清空，防止LD布设小怪导致挑战无法完成
=====================================================================================================================


--local BossConfigID = {1,1}
--local bossReviveTime = 30
--local ReviveGadgetID = 0
--local OperatorConfigID = 0
--local OptionID = 0

--local ChallengeID = 0
--local ChallengeDuration = 0
--local ChestID = 0


--local GroupID = 0

=======================================================================================]]

--12.23  b1328470  LD自行处理失败，使用不可言说控制所有逻辑

local Global = {
	DieY = 105
}


local extrTriggers = {
	initialtrigger = {
		["Boss_Die"] = { config_id = 8000001, name = "Boss_Die", event= EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "condition_WhenBossDie", action = "action_WhenBossDie", trigger_count = 0 },
		["Revive_Timer"] = { config_id = 8000002, name = "Revive_Timer", event= EventType.EVENT_TIME_AXIS_PASS, source = "bossReviveTimer", condition = "", action = "action_BossReviveTimer", trigger_count = 0 },
		["Challenge_Success"] = { config_id = 8000003, name = "Challenge_Success", event= EventType.EVENT_CHALLENGE_SUCCESS, source = "233", condition = "", action = "action_ChallengeSuccess", trigger_count = 0 },
		["Challenge_Fail"] = { config_id = 8000004, name = "Challenge_Fail", event= EventType.EVENT_CHALLENGE_FAIL, source = "233", condition = "", action = "action_ChallengeFail", trigger_count = 0 },
		["Group_Unload"] = { config_id = 8000005, name = "Group_Unload", event= EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_GroupUnload", trigger_count = 0 },
		["Option_Down"] = { config_id = 8000006, name = "Option_Down", event= EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_OptionDown", trigger_count = 0 },
		["Time_Axis"] = { config_id = 8000007, name = "Time_Axis", event= EventType.EVENT_TIME_AXIS_PASS, source = "revivenotice", condition = "", action = "action_TimeAxis", trigger_count = 0 },
		["Group_Load"] = { config_id = 8000009, name = "Group_Load", event= EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_GroupLoad", trigger_count = 0 },
		["State_Change"] = { config_id = 8000010, name = "State_Change", event= EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_GadgetStateChange", trigger_count = 0 },
	}
}

function action_ChallengeSuccess( context, evt )

	ScriptLib.PrintContextLog(context, "## ReviveBoss_LOG : Challenge_Success")

	--收怪
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.MONSTER, BossConfigID[1])
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.MONSTER, BossConfigID[2])

	--收复活法阵
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.GADGET, ReviveGadgetID)

	--设置挑战台状态
	ScriptLib.SetGadgetStateByConfigId(context, OperatorConfigID, 202)

	ScriptLib.EndTimeAxis(context, "bossReviveTimer")
	ScriptLib.EndTimeAxis(context, "revivenotice")

	ScriptLib.CreateGadget(context, { config_id = ChestID })

	ScriptLib.SetGroupVariableValue(context, "isFinish", 2)

	return 0
end

function action_GadgetStateChange( context, evt )

	if evt.param1 ~= 0 or evt.param2 ~= OperatorConfigID then
		return 0
	end

	--设置按键
	ScriptLib.SetWorktopOptionsByGroupId(context, GroupID, OperatorConfigID, {OptionID})

	--设置进度
	ScriptLib.SetGroupVariableValue(context, "isFinish", 1)

	return 0
end


function action_ChallengeFail( context, evt )
	ScriptLib.PrintContextLog(context, "## ReviveBoss_LOG : Challenge_Fail")

	--收怪
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.MONSTER, BossConfigID[1])
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.MONSTER, BossConfigID[2])

	--收复活法阵
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.GADGET, ReviveGadgetID)

	--恢复按键
	ScriptLib.SetWorktopOptionsByGroupId(context, GroupID, OperatorConfigID, {OptionID})

	--设置挑战台状态
	ScriptLib.SetGadgetStateByConfigId(context, OperatorConfigID, 0)

--删除时间轴
	ScriptLib.EndTimeAxis(context, "bossReviveTimer")
	ScriptLib.EndTimeAxis(context, "revivenotice")


	return 0
end

function action_GroupUnload( context, evt )
	ScriptLib.PrintContextLog(context, "## ReviveBoss_LOG : Group Group_Unload")

	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 1 then
		return 0
	end

	--收怪
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.MONSTER, BossConfigID[1])
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.MONSTER, BossConfigID[2])

	--恢复按键
	ScriptLib.SetWorktopOptionsByGroupId(context, GroupID, OperatorConfigID, {OptionID})

	--收复活法阵
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.GADGET, ReviveGadgetID)

	--设置挑战台状态
	ScriptLib.SetGadgetStateByConfigId(context, OperatorConfigID, 0)

	--删除时间轴
	ScriptLib.EndTimeAxis(context, "bossReviveTimer")
	ScriptLib.EndTimeAxis(context, "revivenotice")
	

	return 0
end

function action_GroupLoad( context, evt )

	ScriptLib.PrintContextLog(context, "## ReviveBoss_LOG : Group Group Load")

	if ScriptLib.GetGroupVariableValue(context, "isFinish")==0 then
		--设置挑战台状态
		ScriptLib.SetGadgetStateByConfigId(context, OperatorConfigID, 204)

	elseif ScriptLib.GetGroupVariableValue(context, "isFinish")==1 then
		--设置挑战台状态
		ScriptLib.SetGadgetStateByConfigId(context, OperatorConfigID, 0)

	elseif ScriptLib.GetGroupVariableValue(context, "isFinish")==2 then
		--设置挑战台状态
		ScriptLib.SetGadgetStateByConfigId(context, OperatorConfigID, 202)

	end

	--收复活法阵
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.GADGET, ReviveGadgetID)

	--收怪
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.MONSTER, BossConfigID[1])
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.MONSTER, BossConfigID[2])

	return 0
end

function action_OptionDown( context, evt )

	ScriptLib.PrintContextLog(context, "## ReviveBoss_LOG : Option_Down")

	--开挑战，参数固定直接写死：触发一次variablechange之后挑战完成   233为挑战ID  3代表需要触发的EVENT类型，999为triggertag，1为触发次数
	ScriptLib.StartChallenge(context, 233, ChallengeID, {ChallengeDuration,1,999,1})

	--放怪
	ScriptLib.CreateMonster(context, { config_id = BossConfigID[1], delay_time = 0 })
	ScriptLib.CreateMonster(context, { config_id = BossConfigID[2], delay_time = 0 })

	--删按键
	ScriptLib.DelWorktopOptionByGroupId(context, GroupID, OperatorConfigID, OptionID)

	--设置BOSS变量
	ScriptLib.SetGroupTempValue(context, "DieBossCount", 0, {})

	--设置挑战台状态
	ScriptLib.SetGadgetStateByConfigId(context, OperatorConfigID, 201)

	return 0
end

function action_TimeAxis( context, evt )

	ScriptLib.PrintContextLog(context, "## ReviveBoss_LOG : Notice Time_Axis")

	--播出第二个计时通知

	ScriptLib.ShowReminder(context, 400129)

	return 0
end


function action_WhenBossDie(context,evt )

	--设置挑战成功
	ScriptLib.StopChallenge(context, 233, 1)

	return 0
end

function condition_WhenBossDie( context,evt )

	ScriptLib.PrintContextLog(context, "## ReviveBoss_LOG : Monster_Die")

	if evt.param1 ~= BossConfigID[1] and evt.param1 ~= BossConfigID[2] then
		return false
	end

	--死亡BOSS数量累加
	if ScriptLib.ChangeGroupTempValue(context, "DieBossCount", 1, {}) == -1 then

		ScriptLib.PrintContextLog(context, "## RB_LOG : init DieBossCount")
		ScriptLib.SetGroupTempValue(context, "DieBossCount", 1, {})
	end



	--获取当前Boss死亡数量
	if ScriptLib.GetGroupTempValue(context, "DieBossCount", {}) == 1 then

		ScriptLib.PrintContextLog(context, "## RB_LOG : entityID: "..evt.source_eid)

		local DiePos = ScriptLib.GetPosByEntityId(context, evt.source_eid)

		--开启复活时间轴
		ScriptLib.InitTimeAxis(context, "bossReviveTimer", {bossReviveTime}, false)

		--记下当前死亡的BOSSconfigID
		ScriptLib.SetGroupTempValue(context, "DieBossID", evt.param1, {})

		if Global.DieY <105 or math.abs(DiePos.y-Global.DieY)<30 then
			local monsterConfig = {}

			for i,v in ipairs(monsters) do
				if v.config_id == evt.param1 then
					monsterConfig = v
				end
			end


			--使用config位置创生
			ScriptLib.SetGroupTempValue(context, "DieX", math.floor(monsterConfig.pos.x), {})
			ScriptLib.SetGroupTempValue(context, "DieY", math.floor(monsterConfig.pos.y), {})
			ScriptLib.SetGroupTempValue(context, "DieZ", math.floor(monsterConfig.pos.z), {})

			ScriptLib.PrintContextLog(context, "## RB_LOG : X: "..monsterConfig.pos.x)
			ScriptLib.PrintContextLog(context, "## RB_LOG : Y: "..monsterConfig.pos.y)
			ScriptLib.PrintContextLog(context, "## RB_LOG : Z: "..monsterConfig.pos.z)

		else
			--记下当前死亡BOSS的POS
			ScriptLib.SetGroupTempValue(context, "DieX", math.floor(DiePos.x), {})
			ScriptLib.SetGroupTempValue(context, "DieY", math.floor(DiePos.y), {})
			ScriptLib.SetGroupTempValue(context, "DieZ", math.floor(DiePos.z), {})

			ScriptLib.PrintContextLog(context, "## RB_LOG : X: "..ScriptLib.GetGroupTempValue(context, "DieX",{}))
			ScriptLib.PrintContextLog(context, "## RB_LOG : Y: "..ScriptLib.GetGroupTempValue(context, "DieY",{}))
			ScriptLib.PrintContextLog(context, "## RB_LOG : Z: "..ScriptLib.GetGroupTempValue(context, "DieZ",{}))
		end

		--在死亡点创建Gadget
		ScriptLib.CreateGadgetByConfigIdByPos(context, ReviveGadgetID, {x= ScriptLib.GetGroupTempValue(context, "DieX", {}) ,y= ScriptLib.GetGroupTempValue(context, "DieY", {}) ,z= ScriptLib.GetGroupTempValue(context, "DieZ", {}) }, {x=0,y=0,z=0})

		--播出第一个计时通知消息，并开启计时器
		ScriptLib.ShowReminder(context, 400128)
		ScriptLib.InitTimeAxis(context, "revivenotice", {10}, false)

		return false

	end

	return true

end

function action_BossReviveTimer( context,evt)

	ScriptLib.PrintContextLog(context, "## ReviveBoss_LOG : Revive_Timer")

	--复活死亡的BOSS
	--取出当前死亡的BOSSconfigID
	local ReviveID = ScriptLib.GetGroupTempValue(context, "DieBossID", {})

	ScriptLib.CreateMonsterByConfigIdByPos(context, ReviveID, {x= ScriptLib.GetGroupTempValue(context, "DieX", {}) ,y= ScriptLib.GetGroupTempValue(context, "DieY", {}) ,z= ScriptLib.GetGroupTempValue(context, "DieZ", {}) }, {x=0,y=0,z=0})

	--死亡计数-1
	ScriptLib.ChangeGroupTempValue(context, "DieBossCount", -1, {})

	--移除定点gadget
	ScriptLib.KillEntityByConfigId(context, {config_id = ReviveGadgetID})
	return 0
end


function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end

	return 0
end


LF_Initialize_Group()
