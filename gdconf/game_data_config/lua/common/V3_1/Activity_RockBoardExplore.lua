--[[======================================
||	filename:       Activity_RockBoardExplore
||	owner:          juntao.chen
||	description:    石板探索活动
||	LogName:        Activity_RockBoardExplore
||	Protection:     [Protection]
=======================================]]

--需求defs
--[[
    local defs = {
        enter_region = 111,
        leave_region = 111,
    }
    local stage_child_challenge_list = {}
]]
local challenge_list = {
    ["FindRock"] = 2010073,
    ["BeatMonster"] = 2010076,
    ["FindClue"] = 2010079,
    ["PuzzleProgress"] = 2010077,
}
local challenge_goal = {
    ["FindRock"] = defs.FindRock,
    ["BeatMonster"] = defs.BeatMonster,
    ["FindClue"] = defs.FindClue,
    ["PuzzleProgress"] = defs.PuzzleProgress,
}
local father_challenge_id = 2010078

local temp_Variables = {
    --挑战触发器
	{  config_id=50000001,name = "FindRock_Trigger", value = 0, no_refresh = false },
	{  config_id=50000002,name = "BeatMonster_Trigger", value = 0, no_refresh = false },
	{  config_id=50000003,name = "FindClue_Trigger", value = 0, no_refresh = false },
	{  config_id=50000004,name = "PuzzleProgress_Trigger", value = 0, no_refresh = false },
    --子挑战完成次数存档
	{  config_id=50000005,name = "Child_Finished_Count", value = 0, no_refresh = true },
}
local temp_Tirgger = {
	{event = EventType.EVENT_ENTER_REGION, source = "", action = "action_EVENT_ENTER_REGION"},
	{event = EventType.EVENT_LEAVE_REGION, source = "", action = "action_EVENT_LEAVE_REGION"},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "", action = "action_EVENT_VARIABLE_CHANGE"},
	{event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", action = "action_EVENT_CHALLENGE_SUCCESS"},
	{event = EventType.EVENT_CHALLENGE_FAIL, source = "", action = "action_EVENT_CHALLENGE_FAIL"},
	{event = EventType.EVENT_GROUP_LOAD, source = "", action = "action_EVENT_GROUP_LOAD"},
	{event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", action = "action_EVENT_GROUP_WILL_UNLOAD"},
	{event = EventType.EVENT_TIME_AXIS_PASS, source = "tick", action = "action_EVENT_TIME_AXIS_PASS_tick"},
	{event = EventType.EVENT_TIME_AXIS_PASS, source = "challenge_timer", action = "action_EVENT_TIME_AXIS_PASS_challenge_timer"},
	{event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", action = "action_EVENT_GADGET_STATE_CHANGE"},
    --子挑战用trigger
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "FindRock_Trigger", action = "action_EVENT_VARIABLE_CHANGE_FindRock_Trigger",tag = "2010073"},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "BeatMonster_Trigger", action = "action_EVENT_VARIABLE_CHANGE_BeatMonster_Trigger",tag = "2010076"},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "FindClue_Trigger", action = "action_EVENT_VARIABLE_CHANGE_FindClue_Trigger",tag = "2010079"},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "PuzzleProgress_Trigger", action = "action_EVENT_VARIABLE_CHANGE_PuzzleProgress_Trigger",tag = "2010077"},
}
function action_EVENT_GADGET_STATE_CHANGE(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_GADGET_STATE_CHANGE:evt.param1="..evt.param1.."|evt.param3="..evt.param3)
    local _gadgetid = ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid)
    ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_GADGET_STATE_CHANGE:_gadgetid=".._gadgetid)
    if 70330392 == _gadgetid then
        if evt.param1 ~= 0  and evt.param3 == 0 then
            ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_GADGET_STATE_CHANGE:MarkGroupLuaAction")
            local _trans =  ScriptLib.GetChallengeTransaction(context, father_challenge_id)
            ScriptLib.MarkGroupLuaAction(context, "ActivityDiscover_3",_trans,{})
        end
    end
    return 0
end
function action_EVENT_VARIABLE_CHANGE_FindRock_Trigger(context,evt)
    if ScriptLib.IsChallengeStartedByChallengeIndex(context,base_info.group_id,father_challenge_id) then 
        ScriptLib.StopChallenge(context, father_challenge_id, 1)
    end
    --父挑战完成
    ScriptLib.FinishGroupLinkBundle(context, base_info.group_id)
    ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.REGION, defs.enter_region)
    ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.REGION, defs.leave_region)
    --结束挑战时(成功)，发埋点
    --[[【3.1 backlog内】数据埋点 - 探索活动（TD）相关运营埋点】
    https://www.tapd.cn/22963631/prong/stories/view/1122963631001540457 ]]
    local _trans = evt.param_str1
    local _param = {
        ["tool_used_times"] = ScriptLib.GetGroupTempValue(context,"count",{}),
        ["total_time"] = ScriptLib.GetGroupTempValue(context,"challenge_time",{}),
        ["result"] = 1,
    }
    LF_Debug_ShowTable(context,_param)
    ScriptLib.MarkGroupLuaAction(context, "ActivityDiscover_2",_trans,_param)
    --关小道具检测器
    ScriptLib.EndTimeAxis(context, "tick")
    local _hostuid = ScriptLib.GetSceneOwnerUid(context)
    ScriptLib.RevokePlayerShowTemplateReminder(context, 199, {_hostuid})
    --关挑战用时检测器
    ScriptLib.EndTimeAxis(context, "challenge_timer")
    return 0 
end
function action_EVENT_VARIABLE_CHANGE_BeatMonster_Trigger(context,evt) return 0 end
function action_EVENT_VARIABLE_CHANGE_FindClue_Trigger(context,evt) return 0 end
function action_EVENT_VARIABLE_CHANGE_PuzzleProgress_Trigger(context,evt) return 0 end
function action_EVENT_CHALLENGE_FAIL(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_CHALLENGE_FAIL")
    if evt.param1 ~= father_challenge_id then 
        return 0 
    end
    --结束挑战时(失败)，发埋点
    --[[【3.1 backlog内】数据埋点 - 探索活动（TD）相关运营埋点】
    https://www.tapd.cn/22963631/prong/stories/view/1122963631001540457 ]]
    local _trans =  evt.param_str1
    local _c = ScriptLib.GetGroupTempValue(context,"count",{})
    ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_CHALLENGE_FAIL|_c=".._c)
    local _param = {
        ["tool_used_times"] = _c,
        ["total_time"] = ScriptLib.GetGroupTempValue(context,"challenge_time",{}),
        ["result"] = 0,
    }
    LF_Debug_ShowTable(context,_param)
    ScriptLib.MarkGroupLuaAction(context, "ActivityDiscover_2",_trans,_param)
    --关小道具检测器
    ScriptLib.EndTimeAxis(context,"tick")
    local _hostuid = ScriptLib.GetSceneOwnerUid(context)
    ScriptLib.RevokePlayerShowTemplateReminder(context, 199, {_hostuid})
    return 0
end
--给挑战计时
function action_EVENT_TIME_AXIS_PASS_challenge_timer(context,evt)
    ScriptLib.ChangeGroupTempValue(context,"challenge_time",1,{})
    return 0
end
--接受ld变量，改挑战进度
function action_EVENT_VARIABLE_CHANGE(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_VARIABLE_CHANGE:evt.source_name = ".. evt.source_name.."| value = "..evt.param1)
    for k,v in pairs(challenge_list) do
        if evt.source_name == k then 
            if evt.param1 == 0 then 
                local _uidlist = ScriptLib.GetSceneUidList(context)
                if ScriptLib.IsChallengeStartedByChallengeIndex(context,base_info.group_id,father_challenge_id) then 
                   ScriptLib.AttachChildChallenge(context,father_challenge_id,v,v,{3,v,challenge_goal[k],1,0},_uidlist,{success=1,fail=1})
                end
            end
            if evt.param1 > 0 then 
                ScriptLib.SetGroupVariableValue(context,k.."_Trigger",1)
            end

        end
    end
    return 0
end
--完成父挑战后，关闭黄圈、关闭region(使小道具禁用)
function action_EVENT_CHALLENGE_SUCCESS(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_CHALLENGE_SUCCESS:evt.param1="..evt.param1)
    if evt.param1 ~= father_challenge_id then
        --子挑战完成
        ScriptLib.ChangeGroupVariableValue(context,"Child_Finished_Count",1)
    else
        --父挑战完成
        --此处不处理bundle完成，因为玩家有可能在没挂父挑战的情况下捡到石板
    end
    return 0
end
--reminder开关控制器,持续判断
function action_EVENT_TIME_AXIS_PASS_tick(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_TIME_AXIS_PASS_tick")
    local _hostuid = ScriptLib.GetSceneOwnerUid(context)
    local _isshow = ScriptLib.GetGroupTempValue(context,"isshow",{})
    local _iswiget = ScriptLib.IsWidgetEquipped(context, _hostuid, 220064)
    if _iswiget == -1 then
        ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_TIME_AXIS_PASS_tick:_iswiget=".._iswiget)
    end
    if _iswiget == false then
        ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_TIME_AXIS_PASS_tick:_iswiget == false")
        if _isshow == 0 then 
            ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_TIME_AXIS_PASS_tick:ShowTemplateReminder")
            ScriptLib.AssignPlayerShowTemplateReminder(context,199,{param_uid_vec={},param_vec={},uid_vec={_hostuid}})
            ScriptLib.SetGroupTempValue(context,"isshow",1,{})
        end
    else
        ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_TIME_AXIS_PASS_tick:_iswiget == true")
        ScriptLib.RevokePlayerShowTemplateReminder(context, 199, {_hostuid})
        if _isshow == 1 then ScriptLib.SetGroupTempValue(context,"isshow",0,{}) end
    end
    return 0
end
function action_EVENT_GROUP_LOAD(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_GROUP_LOAD:2")
    return 0
end
function action_EVENT_ENTER_REGION(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_ENTER_REGION:evt.uid"..evt.uid)
    --判断是否目标region
    if evt.param1 ~= defs.enter_region then 
        return 0
    end
    --判断是否已开挑战
    if ScriptLib.IsChallengeStartedByChallengeIndex(context,base_info.group_id,father_challenge_id) then 
        return 0
    end
    --开挑战，从存档进度开始
    local _child_finished_count = ScriptLib.GetGroupVariableValue(context,"Child_Finished_Count")
    ScriptLib.CreateFatherChallenge(context, father_challenge_id, father_challenge_id, 9999999, {success=defs.Total-_child_finished_count,fail=9999})
    --打开小道具检测器
    ScriptLib.InitTimeAxis(context,"tick",{2},true)
    ScriptLib.SetGroupTempValue(context,"isshow",0,{})
    --子挑战显示
    local _uidlist = ScriptLib.GetSceneUidList(context)
    for k,v in pairs(challenge_list) do
        local _score = ScriptLib.GetGroupVariableValue(context,k)
        ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_ENTER_REGION:"..k .."=".. _score.."|v="..v)
        if _score >= 0 then 
            if _score < challenge_goal[k] then
                ScriptLib.AttachChildChallenge(context,father_challenge_id,v,v,{3,v,challenge_goal[k],1,_score},_uidlist,{success=1,fail=1})
            end
        end
    end
    ScriptLib.StartFatherChallenge(context, father_challenge_id)
    --开始挑战时，发埋点
    --[[【3.1 backlog内】数据埋点 - 探索活动（TD）相关运营埋点】
    https://www.tapd.cn/22963631/prong/stories/view/1122963631001540457 ]]
    local _trans =  ScriptLib.GetChallengeTransaction(context, father_challenge_id)
    ScriptLib.MarkGroupLuaAction(context, "ActivityDiscover_1",_trans,{})
    --重置小道具使用次数计数
    ScriptLib.SetGroupTempValue(context,"count",0,{})
    --重置挑战计时
    ScriptLib.SetGroupTempValue(context,"challenge_time",0,{})
    ScriptLib.InitTimeAxis(context,"challenge_timer",{1},true)
    return 0
end
function action_EVENT_LEAVE_REGION(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_LEAVE_REGION:")
    if evt.param1 == defs.leave_region then 
        if ScriptLib.IsChallengeStartedByChallengeIndex(context,base_info.group_id,father_challenge_id) then
            ScriptLib.StopChallenge(context, father_challenge_id, 0)
        end
    end
    return 0
end
function action_EVENT_GROUP_WILL_UNLOAD(context,evt)--保底清除reminder
    ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore action_EVENT_GROUP_WILL_UNLOAD:")
    local _hostuid = ScriptLib.GetSceneOwnerUid(context)
    ScriptLib.RevokePlayerShowTemplateReminder(context, 199, {_hostuid})
    ScriptLib.EndTimeAxis(context,"tick")
    return 0
end
function LF_GetDistance(context,pos1,pos2)
	local X = pos1.x - pos2.x
	local Y = pos1.y - pos2.y
	local Z = pos1.z - pos2.z
	return math.sqrt(X*X+Y*Y+Z*Z)
end
function SLC_Use_Widget(context)
    ScriptLib.PrintContextLog(context,"## Activity_RockBoardExplore SLC_Use_Widget:")
    ScriptLib.ChangeGroupTempValue(context,"count",1,{})
    return 0
end
function LF_Debug_ShowTable(context,tab)
    for k,v in pairs(tab) do
        ScriptLib.PrintContextLog(context,"## LF_Debug_ShowTable:"..k.." = "..v)
    end
end
--初始化
function Initialize()
	--加触发器
    if temp_Tirgger ~= nil then 
        for k,v in pairs(temp_Tirgger) do
            v.name = v.action
            v.config_id = 40000000 + k
            v.trigger_count = 0
            v.condition = ""
            table.insert(triggers, v)
            table.insert(suites[init_config.suite].triggers, v.name)
        end
    end
	--加变量
    if temp_Variables ~= nil then 
        for k,v in pairs(temp_Variables) do
            table.insert(variables,v)
        end
    end

	return 0
end
Initialize()