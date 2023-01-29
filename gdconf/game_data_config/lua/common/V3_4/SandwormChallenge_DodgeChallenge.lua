
--[[======================================
||	filename:	SandwormChallenge_DodgeChallenge
||	owner: 		luyao.huang
||	description: 主要是用于管理沙虫躲避挑战里面的父子挑战结构，和沙虫没有太多联系
||	LogName:	SandwormChallenge_DodgeChallenge
||	Protection:	
=======================================]]--



local local_defs = 
{
    challenge_index = 666,
    challenge_id = 2012004,
    live_challenge_index = 667,
    live_challenge_id = 2012003,
    dodge_challenge_index = 668,
    dodge_challenge_id = 2012002,
    challenge_option = 177,
}



local challenge_Tri = {
    [1] = { name = "select_option_dodge_challenge", config_id = 200010001, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option_dodge_challenge", trigger_count = 0},
    [2] = { name = "group_load_dodge_challenge", config_id = 200010002, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load_dodge_challenge", trigger_count = 0},
    [3] = { name = "challenge_fail_dodge_challenge", config_id = 200010003, event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail_dodge_challenge", trigger_count = 0},
    [4] = { name = "challenge_success_dodge_challenge", config_id = 200010004, event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success_dodge_challenge", trigger_count = 0},
    [6] = { name = "gadget_state_change_dodge_challenge", config_id = 200010006, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change_dodge_challenge", trigger_count = 0},
}

function dodge_challenge_Initialize()
    for k,v in pairs(challenge_Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
    table.insert(variables,{ config_id = 200010001,  name = "is_success", value = 0})
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--
function action_gadget_state_change_dodge_challenge(context,evt)
    if evt.param2 == defs.worktop_id then

        ScriptLib.PrintContextLog(context,"## [SandwormChallenge_DodgeChallenge] gadget_state_change：操作台状态变化")
        if evt.param1 == 0 then
            --恢复选项
            ScriptLib.PrintContextLog(context,"## [SandwormChallenge_DodgeChallenge] gadget_state_change：操作台到0状态，恢复选项")
            ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.worktop_id, {local_defs.challenge_option})
        end
        if evt.param1 == 201 or evt.param1 == 202 then
            --清选项
            ScriptLib.PrintContextLog(context,"## [SandwormChallenge_DodgeChallenge] gadget_state_change：操作台到非0状态，清理选项")
            ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, defs.worktop_id, local_defs.challenge_option)
        end
    end
    return 0
end


function action_select_option_dodge_challenge(context,evt)
    if evt.param2 == local_defs.challenge_option then
        ScriptLib.PrintContextLog(context,"## [SandwormChallenge_DodgeChallenge] select_option：选择选项，开启挑战")
        --开挑战
	    --ScriptLib.ActiveChallenge(context, local_defs.challenge_index, local_defs.challenge_id, defs.challenge_time, defs.max_hit_times, 0, 0)

        local uid = ScriptLib.GetSceneOwnerUid(context)
        ScriptLib.CreateFatherChallenge(context, local_defs.challenge_index, local_defs.challenge_id, defs.challenge_time, {success = 10, fail = 5, fail_on_wipe = true})
        ScriptLib.StartFatherChallenge(context, local_defs.challenge_index)
        ScriptLib.AttachChildChallenge(context, local_defs.challenge_index, local_defs.dodge_challenge_index, local_defs.dodge_challenge_id,
                {3,1,defs.max_hit_times,0,0},{},{success=10, fail=5})
        ScriptLib.AttachChildChallenge(context, local_defs.challenge_index, local_defs.live_challenge_index, local_defs.live_challenge_id,
                {defs.challenge_time},{},{success=10, fail=5})

        --转操作台状态
        ScriptLib.SetGadgetStateByConfigId(context, defs.worktop_id, GadgetState.GearStart) 


        --开启挑战时立刻召一次沙虫
        local uid = ScriptLib.GetSceneOwnerUid(context)
        LF_Summon_Direct_Sandworm_By_Avatar(context,uid,defs.attack_times)

        --开启玩法杂项
        LF_Start_Play(context)
    end
    return 0
end

function action_challenge_success_dodge_challenge(context,evt)
    ScriptLib.PrintContextLog(context,"## [SandwormChallenge_DodgeChallenge] challenge_success：挑战成功，挑战id为"..evt.param1)
    if evt.param1 == local_defs.live_challenge_id then
        ScriptLib.PrintContextLog(context,"## [SandwormChallenge_DodgeChallenge] challenge_success：挑战成功")

        ScriptLib.StopChallenge(context,local_defs.challenge_index,1)

        --记一个变量，方便下次恢复
        ScriptLib.SetGroupVariableValue(context, "is_success", 1)

        --创建宝箱
        ScriptLib.CreateGadget(context, { config_id = defs.chest_id })

        --转操作台状态到完成
        ScriptLib.SetGadgetStateByConfigId(context, defs.worktop_id, GadgetState.GearStop)

        --清理玩法杂项
        LF_Clear_Play(context)
    end
    return 0
end

function action_challenge_fail_dodge_challenge(context,evt)
    ScriptLib.PrintContextLog(context,"## [SandwormChallenge_DodgeChallenge] challenge_success：挑战失败，挑战id为"..evt.param1)
    if evt.param1 == local_defs.live_challenge_id then
        ScriptLib.StopChallenge(context,local_defs.challenge_index,1)

        
        --记一个变量，方便下次恢复
        ScriptLib.SetGroupVariableValue(context, "is_success", 1)

        --创建宝箱
        ScriptLib.CreateGadget(context, { config_id = defs.chest_id })

        --转操作台状态到完成
        ScriptLib.SetGadgetStateByConfigId(context, defs.worktop_id, GadgetState.GearStop)

        --清理玩法杂项
        LF_Clear_Play(context)
    end


    if evt.param1 == local_defs.dodge_challenge_id then

        ScriptLib.StopChallenge(context,local_defs.challenge_index,0)

        ScriptLib.PrintContextLog(context,"## [SandwormChallenge_DodgeChallenge] challenge_fail：挑战失败")
        --转操作台状态到初始
        ScriptLib.SetGadgetStateByConfigId(context, defs.worktop_id, GadgetState.Default)

        --清理玩法杂项
        LF_Clear_Play(context)
    end
    return 0
end


function action_group_load_dodge_challenge(context,evt)
    
    local is_success = ScriptLib.GetGroupVariableValue(context,"is_success") == 1
    if is_success then
        ScriptLib.PrintContextLog(context,"## [SandwormChallenge_DodgeChallenge] group_load：group加载，之前已成功")
        --如果之前已成功，将操作台直接转到完成状态
        ScriptLib.SetGadgetStateByConfigId(context, defs.worktop_id, GadgetState.GearStop)
    else
        ScriptLib.PrintContextLog(context,"## [SandwormChallenge_DodgeChallenge] group_load：group加载，之前未成功")
        --如果之前未成功，则正常给操作台上选项
        ScriptLib.SetGadgetStateByConfigId(context, defs.worktop_id, GadgetState.Default)
        ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.worktop_id, {local_defs.challenge_option})
    end
    return 0
end



--[[-----------------------------------------------------------------
||                                                                 ||
||                      杂项方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--
function LF_Start_Play(context)

    --开空气墙
    ScriptLib.CreateGadget(context, { config_id = defs.airwall_id })
    --打开沙虫计数开关
    ScriptLib.SetGroupVariableValue(context, "is_attack_count", 1)
end


function LF_Clear_Play(context)
    --清掉空气墙
    ScriptLib.KillEntityByConfigId(context, { config_id = defs.airwall_id })

    --关掉计数
    ScriptLib.SetGroupVariableValue(context, "is_attack_count", 0)
end



------------------------------------------------------------------
dodge_challenge_Initialize()