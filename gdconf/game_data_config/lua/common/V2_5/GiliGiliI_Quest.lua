--ServerUploadTool Save to [/root/env/data/lua/common/V2_5]
--[[
=====================================================================================================================
||	Filename 	  ||	GiliGiliI_Boss  渊下宫循环BOSS
||	RelVersion    ||	2.5
||	Owner         ||	xudong.sun
||	Description   ||	2.5版本，循环BOSS挑战、任务版
||	LogName       ||    ## GiliGili_LOG
||	Protection    ||	groupunload，下线等情况由任务负责回滚，关卡做一层保底
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

--local groupID = 0
--local questID = 0
--local bright_area = 22019

=======================================================================================]]



local global = {
	darkBallNum = 5,
	intervalTime = {60}
}

local extrTriggers = {
	initialtrigger = {
		["Time_Axis"] = { config_id = 80000006, name = "Time_Axis", event= EventType.EVENT_TIME_AXIS_PASS, source = "darkballinterval", condition = "", action = "action_TimeAxis", trigger_count = 0 },
		["Boss_Die"] = { config_id = 80000008, name = "Boss_Die", event= EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_WhenBossDie", trigger_count = 0, tag = "999" },
		["Group_Unload"] = { config_id = 80000009, name = "Group_Unload", event= EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_GroupUnload", trigger_count = 0 },
		["Monster_Battle"] = { config_id = 80000010, name = "Monster_Battle", event= EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_MonsterBattle", trigger_count = 0 },
		["Notice_Timer"] = { config_id = 80000011, name = "Notice_Timer", event= EventType.EVENT_TIME_AXIS_PASS, source = "noticetimer", condition = "", action = "action_NoticeTimer", trigger_count = 0 },
		["In_Battle"] = { config_id = 80000012, name = "In_Battle", event= EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Enter_Battle_Region", trigger_count = 0, forbid_guest = false },
		["Leave_Battle"] = { config_id = 80000013, name = "Leave_Battle", event= EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_Leave_Battle_Region", trigger_count = 0, forbid_guest = false },
		["Battle_Timer"] = { config_id = 80000014, name = "Battle_Timer", event= EventType.EVENT_TIME_AXIS_PASS, source = "battletimer", condition = "", action = "action_BattleTimer", trigger_count = 0 },
		["Enter_Region"] = { config_id = 80000015, name = "Enter_Region", event= EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EnterRegion", trigger_count = 0,forbid_guest = false },
		["Leave_Region"] = { config_id = 80000016, name = "Leave_Region", event= EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_LeaveRegion", trigger_count = 0,forbid_guest = false },
	}
}

function SLC_Monster_In_Battle(context)
	ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 怪物入战，停止Tck")

	--删除重复入战逻辑
    ScriptLib.EndTimeAxis(context, "battletimer")

	return 0
end

function SLC_Deny_Lock_On(context,isOn)
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 深海龙蜥循环boss：将墙壁的DenyLockOn设置为"..isOn)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, wall_1, "SGV_deny_lock_on" ,isOn)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, wall_2, "SGV_deny_lock_on" ,isOn)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, wall_3, "SGV_deny_lock_on" ,isOn)
    return 0
end


--龙蜥向group通知脱战，直接重置boss
function SLC_Reset_Battle(context)

    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 深海龙蜥脱战server lua call，销毁并重新创建龙蜥")
    --删除重复入战逻辑
    ScriptLib.EndTimeAxis(context, "battletimer")

    --移除掉两只水龙蜥
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, monster_1)
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, monster_2)
    --再重新创建出来
	ScriptLib.CreateMonster(context, { config_id = monster_1, delay_time = 0 })
	ScriptLib.CreateMonster(context, { config_id = monster_2, delay_time = 0 })

	LF_RemoveBattleEntity(context)

	--龙蜥试图脱战重刷时，会先尝试找圈内合法的玩家作为authority。如果此时圈内没有玩家，再随缘给authority
    local uidlist = ScriptLib.GetSceneUidList(context)
    local has_avatar_in_region = false
    for i = 1, #uidlist do
        if LF_Avatar_is_in_region(context,uidlist[i],enter_battle_region) then
            ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 龙蜥重置，尝试将Authority设置给圈内玩家："..uidlist[i])
            --将Authority强行设置为进圈的玩家
            ScriptLib.ForceRefreshAuthorityByConfigId(context, monster_1, uidlist[i])
            ScriptLib.ForceRefreshAuthorityByConfigId(context, monster_2, uidlist[i])
            has_avatar_in_region = true

            break
        end
    end
    
    if (has_avatar_in_region) then
        local ret1 = ScriptLib.SetMonsterBattleByGroup(context, monster_1, groupID)
        local ret2 = ScriptLib.SetMonsterBattleByGroup(context, monster_2, groupID)
        ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 设置怪物入战的结果为"..ret1)
        ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 设置怪物入战的结果为"..ret2)
    end

    
    ScriptLib.CreateGadget(context,{config_id = wall_1})
    ScriptLib.CreateGadget(context,{config_id = wall_2}) 
    ScriptLib.CreateGadget(context,{config_id = wall_3}) 

    --ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
    return 0
end

function LF_RemoveBattleEntity(context)

	--删除黑球
	for i,v in ipairs(BlackBall) do
		if ScriptLib.GetGadgetStateByConfigId(context, 0, v) ~= -1 then

			ScriptLib.RemoveEntityByConfigId(context, groupID, EntityType.GADGET, v)

		end
	end

	--删除千灯之地
	ScriptLib.RemoveEntityByConfigId(context, groupID, EntityType.GADGET, bright_area)

	--取消时间轴
	ScriptLib.EndTimeAxis(context, "darkballinterval")
	ScriptLib.EndTimeAxis(context, "noticetimer")

	return 0
end

function LF_Avatar_is_in_region(context,uid,region_id)
    local avatar_id = ScriptLib.GetAvatarEntityIdByUid(context, uid)
	local pos1 = ScriptLib.GetPosByEntityId(context, avatar_id)
    local region = regions[region_id]

	local X = pos1.x - region.pos.x
	local Y = pos1.y - region.pos.y
	local Z = pos1.z - region.pos.z
    
	if region.shape == RegionShape.SPHERE then
		if math.sqrt(X*X+Y*Y+Z*Z) <= region.radius then
			return true
		else 
			return false
		end
	elseif region.shape == RegionShape.CUBIC then
		if math.abs(X) > region.size.x/2 or math.abs(Y) > region.size.y/2 or math.abs(Z) > region.size.z/2 then
			return false
		else
			return true
		end
	end
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
	--删除相关内容
	LF_RemoveBattleEntity(context)

	return 0
end

--处理玩家出战斗圈，转移authority
function action_Leave_Battle_Region(context, evt)
	if evt.param1 ~= enter_battle_region then
		return 0
	end
    --玩家出圈，清除context.uid的eyePoint视野锚点区域
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 玩家出战斗圈"..context.uid)
	--尝试转移config_id的authority, 当uid和config_id的authority不一致时尝试转移到region_config_id里的玩家。
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 尝试重新分配authority")
	local ret1 = ScriptLib.TryReallocateEntityAuthority(context, context.uid, monster_1, evt.param1)
	local ret2 = ScriptLib.TryReallocateEntityAuthority(context, context.uid, monster_2, evt.param1)
	

	return 0
end

--战斗期间入圈，让怪物强制入战
function action_Enter_Battle_Region(context, evt)
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 玩家进战斗圈")
	if evt.param1 ~= enter_battle_region then
		return 0
	end

    --玩家进圈时，先查询入战region范围内是否存在玩家
    --如果存在，说明该玩家不是第一个进入region的，那么圈内其他玩家中一定有authority（因为出圈会强制重新分配，入圈的时候会强制分配）
    --如果不存在，说明该玩家是第一个进入region的，将authority分配给他
    local no_avatar_in_region = true
    local uidlist = ScriptLib.GetSceneUidList(context)
    if next(uidlist)== nil then
        ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 没有取到uidlist，认为是上线触发region的情况，强制把authority刷给进圈的玩家")
        --将Authority强行设置为进圈的玩家
        ScriptLib.ForceRefreshAuthorityByConfigId(context, monster_1, context.uid)
        ScriptLib.ForceRefreshAuthorityByConfigId(context, monster_2, context.uid)
        return 0
    end
    for i = 1, #uidlist do
        if (LF_Avatar_is_in_region(context,uidlist[i],enter_battle_region) and uidlist[i] ~= context.uid) then
            no_avatar_in_region = false
            ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 圈内存在玩家："..uidlist[i].."，不分配authortiy")
            break
        end
    end
    if (no_avatar_in_region) then
        ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 第一个进入region的玩家"..context.uid.."，分配authortiy")
        --将Authority强行设置为进圈的玩家
        ScriptLib.ForceRefreshAuthorityByConfigId(context, monster_1, context.uid)
        ScriptLib.ForceRefreshAuthorityByConfigId(context, monster_2, context.uid)
    end

    --重复入战逻辑，防止角色死亡没入战；需要在怪物入战后关闭
    ScriptLib.InitTimeAxis(context, "battletimer", {5}, true)

    local ret1 = ScriptLib.SetMonsterBattleByGroup(context, monster_1, groupID)
    local ret2 = ScriptLib.SetMonsterBattleByGroup(context, monster_2, groupID)
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 设置怪物入战的结果为"..ret1)
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 设置怪物入战的结果为"..ret2)


   

	return 0
end

function action_BattleTimer( context, evt )

	ScriptLib.PrintContextLog(context, "## GiliGili_LOG : 入战TICK，尝试拉起怪物")

    local ret1 = ScriptLib.SetMonsterBattleByGroup(context, monster_1, groupID)
    local ret2 = ScriptLib.SetMonsterBattleByGroup(context, monster_2, groupID)
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 设置怪物入战的结果为"..ret1)
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 设置怪物入战的结果为"..ret2)

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
	local upNum = global.darkBallNum-leaveNum
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

function action_MonsterBattle( context, evt )

	--开启时间轴
	ScriptLib.InitTimeAxis(context, "darkballinterval", global.intervalTime, true)

	--开启一个时间轴，延迟触发reminder
	ScriptLib.InitTimeAxis(context, "noticetimer", {5}, false)

	--清空黑球提示计数
	ScriptLib.SetGroupTempValue(context, "DarkBallNotice", 0, {})

	--创建千灯之地    交给任务环控制了
	--ScriptLib.CreateGadget(context, { config_id = bright_area })
	--ScriptLib.StartPlatform(context, bright_area)

	return 0
end

function action_NoticeTimer( context, evt )

	--站在千灯之地内回能量提示
	ScriptLib.ShowReminder(context, 600100)

	--创建千灯之地
	ScriptLib.CreateGadget(context, { config_id = bright_area })

	--开启移动平台
	ScriptLib.StartPlatform(context, bright_area)

	return 0
end

function action_GroupUnload( context, evt )

	LF_RemoveBattleEntity(context)

	return 0
end


function action_WhenBossDie( context, evt )
	local tempList = ScriptLib.GetGroupAliveMonsterList(context, groupID)

	ScriptLib.PrintContextLog(context, "## GiliGili_LOG : Monster Die")

	if next(tempList)==nil  then

		ScriptLib.PrintContextLog(context, "## GiliGili_LOG : Monste All Die")

		LF_RemoveBattleEntity(context)

		--发送成功消息
		ScriptLib.AddQuestProgress(context, ""..questID)
	end

	return 0
end


function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
		table.insert(suites[2].triggers, v.name)
	end

	return 0
end


LF_Initialize_Group()
