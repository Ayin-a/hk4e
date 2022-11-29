--[[======================================
||	filename:	IrodoriMaster
||	owner: 		luyao.huang
||	description:	2.6容彩祭-剑道大师挑战
||	LogName:	IrodoriMaster
||	Protection:	
=======================================]]--

------
--local defs = {
--    challenge_time = 240,
--    hard_challenge_time = 120,
--    father_challenge_id = 123,
--    normal_challenge_id = 1234,
--    hard_challenge_id = 1235,
--    gallery_id = 123456,
--    swordmaster_id = 120,
--}
local local_defs = 
{
    swordmaster_reminder_hp_ratio = 50
}
local Tri = {
    [1] = { name = "select_difficulty", config_id = 8000001, event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "", action = "action_select_difficulty", trigger_count = 0},
    [2] = { name = "irodori_master_ready", config_id = 8000002, event = EventType.EVENT_IRODORI_MASTER_READY, source = "", condition = "", action = "action_irodori_master_ready", trigger_count = 0},
    [3] = { name = "challenge_success", config_id = 8000003, event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0},
    [4] = { name = "challenge_fail", config_id = 8000004, event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0},
    --[5] = { name = "leave_region", config_id = 8000005, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", trigger_count = 0},
    [6] = { name = "group_will_unload", config_id = 8000006, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0},
    [7] = { name = "specific_monster_hp_change_1", config_id = 80000007, event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = tostring(swordmaster_id[1]), condition = "condition_specific_monster_hp_change", action = "action_specific_monster_hp_change_1", trigger_count = 1},
    [8] = { name = "specific_monster_hp_change_2", config_id = 80000008, event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = tostring(swordmaster_id[2]), condition = "condition_specific_monster_hp_change", action = "action_specific_monster_hp_change_2", trigger_count = 1},
    [9] = { name = "specific_monster_hp_change_3", config_id = 80000009, event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = tostring(swordmaster_id[3]), condition = "condition_specific_monster_hp_change", action = "action_specific_monster_hp_change_3", trigger_count = 1},

}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

end

------------------------------------------------------------------

--选择难度后，加载剑道大师、空气墙，并卸载剑道大师NPC
function action_select_difficulty(context,evt)
    ScriptLib.PrintContextLog(context,"## [IrodoriMaster] action_select_difficulty： 玩家选择挑战难度，加载对应suite")

    local difficulty = evt.param3
    ScriptLib.SetGroupTempValue(context, "current_difficulty", difficulty, { group_id = base_info.group_id})
    ScriptLib.PrintContextLog(context,"## [IrodoriMaster] action_select_difficulty： 选择的难度为"..difficulty)
    LF_Init_Play(context,difficulty)
    return 0
end

--挑战开启前准备工作准备完毕，正式开启挑战
function action_irodori_master_ready(context,evt)

    ScriptLib.PrintContextLog(context,"## [IrodoriMaster] action_cutscene_end: 前置工作完成，开启挑战")

    local uidList = ScriptLib.GetSceneUidList(context)
    local difficulty = ScriptLib.GetGroupTempValue(context, "current_difficulty", { group_id = base_info.group_id})

    --播完cutscene之后，创建剑道大师怪物
	ScriptLib.CreateMonster(context, { config_id = swordmaster_id[difficulty], delay_time = 0 })


    ScriptLib.CreateFatherChallenge(context, 1, defs.father_challenge_id, defs.challenge_time, {success = 5, fail = 10})
	--先开，再attach，给子挑战保序
	ScriptLib.StartFatherChallenge(context,1)
	ScriptLib.AttachChildChallenge(context,1, 11, defs.normal_challenge_id,{defs.challenge_time,base_info.group_id,swordmaster_id[difficulty]},{uidList[1]},{success = 5,fail = 10}) --普通挑战	
	
    --只有中等难度有两个挑战目标
    if (difficulty == 2) then
        ScriptLib.AttachChildChallenge(context,1, 10, defs.hard_challenge_id,{defs.hard_challenge_time,base_info.group_id,swordmaster_id[difficulty]},{uidList[1]},{success = 0,fail = 0}) --优秀挑战	
	end	
    return 0
end

--处理挑战成功
function  action_challenge_success(context,evt)
    local success_challenge_id = evt.param1
    if (success_challenge_id == defs.normal_challenge_id) then
        ScriptLib.PrintContextLog(context,"## [IrodoriMaster] action_challenge_success： 普通挑战成功")
        LF_Clear_Stage(context)
        --普通挑战成功、优秀挑战失败
        ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["is_finish"] = true, ["timeout"] = false})
    end
    if (success_challenge_id == defs.hard_challenge_id) then
        ScriptLib.PrintContextLog(context,"## [IrodoriMaster] action_challenge_success： 优秀挑战成功")
        LF_Clear_Stage(context)
        --普通挑战成功、优秀挑战成功
        ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["is_finish"] = true, ["timeout"] = false})
    end
    return 0
end

--处理挑战失败
function  action_challenge_fail(context,evt)
    local fail_challenge_id = evt.param1
    if (fail_challenge_id == defs.father_challenge_id) then
        ScriptLib.PrintContextLog(context,"## [IrodoriMaster] action_challenge_fail： 父挑战失败") 
        LF_Clear_Stage(context)
        --只需要处理父挑战失败：普通挑战失败，则父挑战失败；优秀挑战失败，则无事发生
        if (evt.param2 <= 0) then
            ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["is_finish"] = false, ["timeout"] = true})
        else
            ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["is_finish"] = false, ["timeout"] = false})
        end
    end
    return 0
end


--group意外卸载保护
function action_group_will_unload(context,evt)
    ScriptLib.PrintContextLog(context,"## [IrodoriMaster] action_group_will_unload：group即将卸载，回滚所有玩法状态")
    LF_Reset_Play(context)
    return 0
end

function condition_specific_monster_hp_change(context,evt)
    if evt.param3 <= local_defs.swordmaster_reminder_hp_ratio then
        return true
    end
    return false
end


--剑道大师低血量说话
function action_specific_monster_hp_change_1(context,evt)
    ScriptLib.ShowReminder(context,defs.swordmaster_reminder_id)
    return 0
end

--剑道大师低血量说话
function action_specific_monster_hp_change_2(context,evt)
    ScriptLib.ShowReminder(context,defs.swordmaster_reminder_id)
    return 0
end

--剑道大师低血量说话
function action_specific_monster_hp_change_3(context,evt)
    ScriptLib.ShowReminder(context,defs.swordmaster_reminder_id)
    return 0
end

------------------------------------------------------------------

function LF_Init_Play(context, difficulty)
	ScriptLib.CreateGadget(context, { config_id = defs.airwall_id})
    --隐藏剑道大师NPC
    ScriptLib.RefreshGroup(context, { group_id = defs.NPC_group_id, suite = 2})
    --屏蔽天气
	ScriptLib.SetWeatherAreaState(context, defs.weather_id, 1)
end


function LF_Clear_Stage(context)
    --恢复剑道大师NPC
    ScriptLib.RefreshGroup(context, { group_id = defs.NPC_group_id, suite = 1})
    ScriptLib.PrintContextLog(context,"## [IrodoriMaster] LF_Reset_Play：开始重置玩法")
    --移除空气墙
    local ret1 = ScriptLib.RemoveEntityByConfigId(context,0,EntityType.GADGET, defs.airwall_id)
    ScriptLib.PrintContextLog(context,"## [IrodoriMaster] LF_Reset_Play：移除空气墙"..ret1)
    --移除怪物
    --local difficulty = ScriptLib.GetGroupTempValue(context,"current_difficulty",{})
    --local ret2 = ScriptLib.RemoveEntityByConfigId(context,0,EntityType.MONSTER, swordmaster_id[difficulty])
    --ScriptLib.PrintContextLog(context,"## [IrodoriMaster] LF_Reset_Play：移除怪物"..ret2)
    --开启天气
	ScriptLib.SetWeatherAreaState(context, defs.weather_id, 0)
end


--重置玩法的方法
function LF_Reset_Play(context)
    LF_Clear_Stage(context)
    --强行以失败终止挑战
    ScriptLib.StopChallenge(context,defs.normal_challenge_id,0)
    ScriptLib.StopChallenge(context,defs.hard_challenge_id,0)
    ScriptLib.StopChallenge(context,defs.father_challenge_id,0)
end



------------------------------------------------------------------
Initialize()