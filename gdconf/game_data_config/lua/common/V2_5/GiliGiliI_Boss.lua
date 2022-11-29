--ServerUploadTool Save to [/root/env/data/lua/common/V2_5]
--[[
=====================================================================================================================
||	Filename 	  ||	GiliGiliI_Boss  渊下宫循环BOSS
||	RelVersion    ||	2.5
||	Owner         ||	xudong.sun
||	Description   ||	2.5版本，循环BOSS挑战
||	LogName       ||    ## GiliGili_LOG
||	Protection    ||	groupunload、challengefail、challengesuccess时，回收怪物
=====================================================================================================================
-- local LowBossID = {1,1}
-- local MidBossID = {1,1}
-- local HighBossID = {1,1}

-- local LowChallengeID = 1
-- local MidChallengeID = 1
-- local HighChallengeID = 1

-- local SwitchGadgetID = 1
-- local MovePlatID = 1
-- local BlackBall = {75023,75024,75025,75026,75027,75028,75029,75030}

=======================================================================================]]

--b1326549  循环版龙蜥挑战，怪物脱战后直接触发挑战失败     function SLC_Reset_Battle(context)


local darkBallNum = 5
local intervalTime = {60}
local groupID = 177005075
local watcherRange = 100
local noticeTimer = {10}


local extrTriggers = {
	initialtrigger = {
		["Interact_Dwon"] = { config_id = 80000003, name = "Interact_Dwon", event= EventType.EVENT_MICHIAE_INTERACT, source = "", condition = "", action = "action_InteractDwon", trigger_count = 0 },
		["Challenge_Success"] = { config_id = 80000004, name = "Challenge_Success", event= EventType.EVENT_CHALLENGE_SUCCESS, source = "233", condition = "", action = "action_ChallengeSuccess", trigger_count = 0 },
		["Challenge_Fail"] = { config_id = 80000005, name = "Challenge_Fail", event= EventType.EVENT_CHALLENGE_FAIL, source = "233", condition = "", action = "action_ChallengeFail", trigger_count = 0 },
		["Time_Axis"] = { config_id = 80000006, name = "Time_Axis", event= EventType.EVENT_TIME_AXIS_PASS, source = "darkballinterval", condition = "", action = "action_TimeAxis", trigger_count = 0 },
		["Boss_Die"] = { config_id = 80000008, name = "Boss_Die", event= EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_WhenBossDie", trigger_count = 0, tag = "999" },
		["Group_Unload"] = { config_id = 80000009, name = "Group_Unload", event= EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_GroupUnload", trigger_count = 0 },
		["Notice_Timer"] = { config_id = 80000010, name = "Notice_Timer", event= EventType.EVENT_TIME_AXIS_PASS, source = "noticetimer", condition = "", action = "action_NoticeTimer", trigger_count = 0 },
		["Enter_Region"] = { config_id = 80000011, name = "Enter_Region", event= EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EnterRegion", trigger_count = 0,forbid_guest = false },
		["Leave_Region"] = { config_id = 80000012, name = "Leave_Region", event= EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_LeaveRegion", trigger_count = 0,forbid_guest = false },
	}
}

function SLC_Deny_Lock_On(context,isOn)
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 深海龙蜥循环boss：将墙壁的DenyLockOn设置为"..isOn)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, wall_1, "SGV_deny_lock_on" ,isOn)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, wall_2, "SGV_deny_lock_on" ,isOn)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, wall_3, "SGV_deny_lock_on" ,isOn)
    return 0
end

--龙蜥向group通知脱战，直接重置boss
function SLC_Reset_Battle(context)

    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 龙蜥脱战，直接挑战失败")

 --    if ScriptLib.GetGroupTempValue(context, "ChallengeMode", {}) == 2 then
	--     --移除掉两只水龙蜥
	-- 	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, LowBossID[1])
	-- 	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, LowBossID[2])
	--     --再重新创建出来
	-- 	ScriptLib.CreateMonster(context, { config_id = LowBossID[1], delay_time = 0 })
	-- 	ScriptLib.CreateMonster(context, { config_id = LowBossID[2], delay_time = 0 })
	-- elseif ScriptLib.GetGroupTempValue(context, "ChallengeMode", {}) == 3 then
	-- 	 --移除掉两只水龙蜥
	-- 	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, MidBossID[1])
	-- 	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, MidBossID[2])
	--     --再重新创建出来
	-- 	ScriptLib.CreateMonster(context, { config_id = MidBossID[1], delay_time = 0 })
	-- 	ScriptLib.CreateMonster(context, { config_id = MidBossID[2], delay_time = 0 })
	-- elseif ScriptLib.GetGroupTempValue(context, "ChallengeMode", {}) == 4 then
	-- 	 --移除掉两只水龙蜥
	-- 	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, HighBossID[1])
	-- 	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, HighBossID[2])
	--     --再重新创建出来
	-- 	ScriptLib.CreateMonster(context, { config_id = HighBossID[1], delay_time = 0 })
	-- 	ScriptLib.CreateMonster(context, { config_id = HighBossID[2], delay_time = 0 })
	-- end

	ScriptLib.StopChallenge(context, 233, 0)

    
    ScriptLib.CreateGadget(context,{config_id = wall_1})
    ScriptLib.CreateGadget(context,{config_id = wall_2}) 
    ScriptLib.CreateGadget(context,{config_id = wall_3}) 

    --ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
    return 0
end

function GetPointDistance(x1,y1,x2,y2)
	return math.sqrt(math.pow((y2-y1),2)+math.pow((x2-x1),2))
end

function action_WhenBossDie(context, evt)
	return 0
end

function action_TimeAxis( context, evt )

	ScriptLib.PrintContextLog(context, "## GiliGili_LOG : Time_Axis")


	if ScriptLib.GetGroupTempValue(context, "DarkBallNotice", {})==0 then
		--杀黑球提示
		ScriptLib.ShowReminder(context, 600101)
		ScriptLib.SetGroupTempValue(context, "DarkBallNotice", 1, {})
	end

	--复制黑球List，同时筛选出剩余的球
	local leaveNum = 0

    local tempList = {}
	for i,v in ipairs(BlackBall) do
		if ScriptLib.GetGadgetStateByConfigId(context, 0, v) ~= -1 then
			leaveNum = leaveNum + 1
		else
			table.insert(tempList, v)
		end	
	end

	--获取需要补的球数
	local upNum = darkBallNum-leaveNum
	if upNum <= 0 then
		return 0
	end

	
	--补齐黑球到指定数量
	for i=1,upNum do
		local randomIndex = math.random(1,#tempList)
		ScriptLib.CreateGadget(context, { config_id = tempList[randomIndex] })

		table.remove(tempList, randomIndex)
	end
	


	return 0
end

function action_EnterRegion( context, evt )
	if evt.param1 ~= vision_region then
		return 0
	end

	--进入优化圈，开启可见部分
	ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {vision_type_id})

	return 0
end

function action_LeaveRegion( context, evt )
	if evt.param1 ~= vision_region then
		return 0
	end
	--离开优化圈，还原视野
	ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})

	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) == 0 then

		--设置挑战失败
		ScriptLib.StopChallenge(context, 233, 0)
	end

	return 0
end

function action_GroupUnload( context, evt )

	--取消时间轴
	ScriptLib.EndTimeAxis(context, "darkballinterval")
	ScriptLib.EndTimeAxis(context, "noticetimer")

	-- --移除额外的suite
	-- if ScriptLib.GetGroupTempValue(context, "ChallengeMode", {})~= 0 then
	-- 	ScriptLib.RemoveExtraGroupSuite(context, groupID, ScriptLib.GetGroupTempValue(context, "ChallengeMode", {}))
	-- end

	-- --删除黑球
	-- for i,v in ipairs(BlackBall) do
	-- 	if ScriptLib.GetGadgetStateByConfigId(context, 0, v) ~= -1 then

	-- 		ScriptLib.RemoveEntityByConfigId(context, groupID, EntityType.GADGET, v)

	-- 	end
	-- end

	--重置到suite1
	ScriptLib.RefreshGroup(context, { group_id = groupID, suite = 1})

	ScriptLib.SetGroupTempValue(context, "ChallengeMode", 0, {})

	return 0
end


function action_ChallengeFail( context, evt )

	-- --回收Suit
	-- ScriptLib.RemoveExtraGroupSuite(context, groupID, ScriptLib.GetGroupTempValue(context, "ChallengeMode", {}))

	-- --回收千灯之地
	-- ScriptLib.KillEntityByConfigId(context, {config_id = MovePlatID})

	-- --切换开启机关状态
	-- ScriptLib.CreateGadget(context, {config_id = SwitchGadgetID})

	-- --删除黑球
	-- for i,v in ipairs(BlackBall) do
	-- 	if ScriptLib.GetGadgetStateByConfigId(context, 0, v) ~= -1 then

	-- 		ScriptLib.RemoveEntityByConfigId(context, groupID, EntityType.GADGET, v)

	-- 	end
	-- end

	--重置到suite1
	ScriptLib.RefreshGroup(context, { group_id = groupID, suite = 1})

	--取消时间轴
	ScriptLib.EndTimeAxis(context, "darkballinterval")
	ScriptLib.EndTimeAxis(context, "noticetimer")


	ScriptLib.SetGroupTempValue(context, "ChallengeMode", 0, {})


	return 0
end

function action_ChallengeSuccess( context, evt )
	local uidList = ScriptLib.GetSceneUidList(context)

	-- --回收Suit
	-- ScriptLib.RemoveExtraGroupSuite(context, groupID, ScriptLib.GetGroupTempValue(context, "ChallengeMode", {}))

	-- --回收千灯之地
	-- ScriptLib.KillEntityByConfigId(context, {config_id = MovePlatID})

	-- --切换开启机关状态
	-- ScriptLib.CreateGadget(context, {config_id = SwitchGadgetID})

	-- --删除黑球
	-- for i,v in ipairs(BlackBall) do
	-- 	if ScriptLib.GetGadgetStateByConfigId(context, 0, v) ~= -1 then

	-- 		ScriptLib.RemoveEntityByConfigId(context, groupID, EntityType.GADGET, v)

	-- 	end
	-- end

	--重置到suite1
	ScriptLib.RefreshGroup(context, { group_id = groupID, suite = 1})

	--取消时间轴
	ScriptLib.EndTimeAxis(context, "darkballinterval")
	ScriptLib.EndTimeAxis(context, "noticetimer")

	


	local centerPos = ScriptLib.GetPosByEntityId(context, ScriptLib.GetEntityIdByConfigId(context, SwitchGadgetID))

	--计陈列室
	if ScriptLib.GetGroupTempValue(context, "ChallengeMode", {}) == 2 then
		for i,v in ipairs(uidList) do
			local playerPos = ScriptLib.GetPosByEntityId(context, ScriptLib.GetAvatarEntityIdByUid(context, v))

			if GetPointDistance(playerPos.x, playerPos.z, centerPos.x, centerPos.z)<=watcherRange and math.abs(playerPos.y - centerPos.y)<50 then

				ScriptLib.AddExhibitionAccumulableData(context, v, "Activity_Michiae_watcher_boss_easy", 1)

			end
		end

	elseif ScriptLib.GetGroupTempValue(context, "ChallengeMode", {}) == 3 then
		for i,v in ipairs(uidList) do
			local playerPos = ScriptLib.GetPosByEntityId(context, ScriptLib.GetAvatarEntityIdByUid(context, v))

			if GetPointDistance(playerPos.x, playerPos.z, centerPos.x, centerPos.z)<=watcherRange and math.abs(playerPos.y - centerPos.y)<50 then

				ScriptLib.AddExhibitionAccumulableData(context, v, "Activity_Michiae_watcher_boss_easy", 1)
				ScriptLib.AddExhibitionAccumulableData(context, v, "Activity_Michiae_watcher_boss_normal", 1)

			end
		end
		
	elseif ScriptLib.GetGroupTempValue(context, "ChallengeMode", {}) == 4 then
		for i,v in ipairs(uidList) do
			local playerPos = ScriptLib.GetPosByEntityId(context, ScriptLib.GetAvatarEntityIdByUid(context, v))

			if GetPointDistance(playerPos.x, playerPos.z, centerPos.x, centerPos.z)<=watcherRange and math.abs(playerPos.y - centerPos.y)<50 then

				ScriptLib.AddExhibitionAccumulableData(context, v, "Activity_Michiae_watcher_boss_easy", 1)
				ScriptLib.AddExhibitionAccumulableData(context, v, "Activity_Michiae_watcher_boss_normal", 1)
				ScriptLib.AddExhibitionAccumulableData(context, v, "Activity_Michiae_watcher_boss_hard", 1)

			end
		end
	end

	ScriptLib.SetGroupTempValue(context, "ChallengeMode", 0, {})

	return 0
end



function action_InteractDwon( context, evt )

	ScriptLib.PrintContextLog(context, "## GiliGili_LOG : Interact_Dwon")

	if ScriptLib.GetGroupTempValue(context, "ChallengeMode", {})~=0 then
		return 0
	end

	if evt.param2 == 1 then
		--开启低级挑战
		ScriptLib.SetGroupTempValue(context, "ChallengeMode", 2, {})
		-- ScriptLib.CreateMonster(context, { config_id = LowBossID[1], delay_time = 0 })
		-- ScriptLib.CreateMonster(context, { config_id = LowBossID[2], delay_time = 0 })

		--创建挑战
		ScriptLib.StartChallenge(context,233, LowChallengeID,{1,999,2})

		ScriptLib.AddExtraGroupSuite(context, groupID, 2)

		--黑球时间轴
		ScriptLib.InitTimeAxis(context, "darkballinterval", intervalTime, true)
		--千灯之地时间轴
		ScriptLib.InitTimeAxis(context, "noticetimer", noticeTimer, false)

	elseif evt.param2 == 2 then
		--开启中级挑战
		ScriptLib.SetGroupTempValue(context, "ChallengeMode", 3, {})
		

		--创建挑战
		ScriptLib.StartChallenge(context,233, MidChallengeID,{1,999,2})

		ScriptLib.AddExtraGroupSuite(context, groupID, 3)

		--黑球时间轴
		ScriptLib.InitTimeAxis(context, "darkballinterval", intervalTime, true)
		--千灯之地时间轴
		ScriptLib.InitTimeAxis(context, "noticetimer", noticeTimer, false)

	elseif evt.param2 == 3 then
		--开启高级挑战
		ScriptLib.SetGroupTempValue(context, "ChallengeMode", 4, {})
		

		--创建挑战
		ScriptLib.StartChallenge(context,233, HighChallengeID,{1,999,2})

		ScriptLib.AddExtraGroupSuite(context, groupID, 4)

		--黑球时间轴
		ScriptLib.InitTimeAxis(context, "darkballinterval", intervalTime, true)
		--千灯之地时间轴
		ScriptLib.InitTimeAxis(context, "noticetimer", noticeTimer, false)

	end

	--切换开启机关状态
	ScriptLib.KillEntityByConfigId(context, {config_id = SwitchGadgetID})

	

	--清空黑球提示计数
	ScriptLib.SetGroupTempValue(context, "DarkBallNotice", 0, {})

	return 0
end

function action_NoticeTimer( context, evt )

	--站在千灯之地内回能量提示
	ScriptLib.ShowReminder(context, 600100)

	--创建千灯之地
	ScriptLib.CreateGadget(context, { config_id = MovePlatID })

	--开启移动平台
	ScriptLib.StartPlatform(context, MovePlatID)

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
