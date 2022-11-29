--[[======================================
||	filename:       CampChallenge
||	owner:          juntao.chen
||	description:    营地挑战玩法
||	LogName:        CampChallenge
||	Protection:     [Protection]
=======================================]]

--需求defs
--[[
    local defs = {
        challenge_id = 111,
        enter_region = 1,
        leave_region = 1,
        trigger_time = 1
    }
]]
local buff_id_list = {
    [2010060] = 1,
    [2010061] = 3,
    [2010062] = 2,
    [2010063] = 3,
    [2010064] = 1,
}
local temp_Variables = {
	{  config_id=50000001,name = "SET_TRIGGER", value = 0, no_refresh = true },
}
local temp_Tirgger = {
	{event = EventType.EVENT_ENTER_REGION, source = "", action = "action_EVENT_ENTER_REGION",forbid_guest = false},
	{event = EventType.EVENT_LEAVE_REGION, source = "", action = "action_EVENT_LEAVE_REGION",forbid_guest = false},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "SET_TRIGGER", action = "EVENT_VARIABLE_CHANGE_SET_TRIGGER",tag = "111"},
	{event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", action = "action_EVENT_CHALLENGE_SUCCESS"},
	{event = EventType.EVENT_CHALLENGE_FAIL, source = "", action = "action_EVENT_CHALLENGE_FAIL"},
	{event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", action = "action_EVENT_GADGET_STATE_CHANGE"},
	--{event = EventType.EVENT_MONSTER_BATTLE, source = "", action = "action_EVENT_MONSTER_BATTLE"}, --不需要了
}
--[[ function action_EVENT_MONSTER_BATTLE(context,evt)
    ScriptLib.PrintContextLog(context, "## CampChallenge : action_EVENT_MONSTER_BATTLE ")
    return 0
end
 ]]
--风种子被拾取，传日志
function action_EVENT_GADGET_STATE_CHANGE(context,evt)
    ScriptLib.PrintContextLog(context, "## CampChallenge : action_EVENT_GADGET_STATE_CHANGE ")
    if evt.param1 ~= 201 then return 0 end
    if ScriptLib.GetGadgetIdByEntityId(context,evt.source_eid) ~= 70800251 then return 0 end
    ScriptLib.PrintContextLog(context, "## CampChallenge : action_EVENT_GADGET_STATE_CHANGE 风种子被拾取")
    --【【3.1 backlog内】数据埋点 - 蒙德佳酿节（TD）相关运营埋点】
    --https://www.tapd.cn/22963631/prong/stories/view/1122963631001540454
    local _trans =  ScriptLib.GetChallengeTransaction(context, defs.challenge_id)
    ScriptLib.MarkGroupLuaAction(context, "Vintage_Camp_4",_trans,{})
    return 0
end

--挑战失败，传日志
function action_EVENT_CHALLENGE_FAIL(context,evt)
    ScriptLib.PrintContextLog(context, "## CampChallenge : action_EVENT_CHALLENGE_FAIL ")
    --【【3.1 backlog内】数据埋点 - 蒙德佳酿节（TD）相关运营埋点】
    --https://www.tapd.cn/22963631/prong/stories/view/1122963631001540454
    ScriptLib.MarkGroupLuaAction(context, "Vintage_Camp_3",evt.param_str1,{})

    --失败后删掉额外suite
    ScriptLib.RefreshGroup(context,{group_id = base_info.group_id, suite = init_config.suite})
    return 0
end

--挑战成功，关grouplink、传日志
function action_EVENT_CHALLENGE_SUCCESS(context,evt)
    ScriptLib.PrintContextLog(context, "## CampChallenge : action_EVENT_CHALLENGE_SUCCESS ")

    --移除ability region(该操作会导致被移除的region触发leave_region,顺便会恢复visionType)
    ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.REGION, defs.leave_region)
    ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.REGION, defs.enter_region)

    --bundle完成
    ScriptLib.FinishGroupLinkBundle(context, base_info.group_id)

    return 0
end

--挑战进度变化，传日志
function EVENT_VARIABLE_CHANGE_SET_TRIGGER(context,evt)
    ScriptLib.PrintContextLog(context, "## CampChallenge : EVENT_VARIABLE_CHANGE_SET_TRIGGER ")
    --【【3.1 backlog内】数据埋点 - 蒙德佳酿节（TD）相关运营埋点】
    --https://www.tapd.cn/22963631/prong/stories/view/1122963631001540454
    local _trans =  ScriptLib.GetChallengeTransaction(context, defs.challenge_id)
    ScriptLib.MarkGroupLuaAction(context, "Vintage_Camp_2",_trans,{["cur_progress"] = evt.param1,["total_progress"]= defs.trigger_time})
    return 0
end

--主客机进区域设置visiontype；主机进区域开挑战、恢复suite内容、传日志
function action_EVENT_ENTER_REGION(context,evt)
    ScriptLib.PrintContextLog(context, "## CampChallenge : action_EVENT_ENTER_REGION:evt.param1 = "..evt.param1.."uid = "..evt.uid)
    if evt.param1 ~= defs.enter_region then
        ScriptLib.PrintContextLog(context, "## CampChallenge : action_EVENT_ENTER_REGION:".." evt.param1 ~= defs.enter_region")
        return 0
    end

    -- 主客机都设置visionType
	ScriptLib.SetPlayerGroupVisionType(context, {evt.uid}, {0})

    if evt.uid ~= ScriptLib.GetSceneOwnerUid(context) then --剩余操作只对主机执行
        ScriptLib.PrintContextLog(context, "## CampChallenge : action_EVENT_ENTER_REGION:".."evt.uid ~= ScriptLib.GetSceneOwnerUid(context) ")
        return 0
    end

    if ScriptLib.IsChallengeStartedByChallengeIndex(context,base_info.group_id,defs.challenge_id) == true then
        ScriptLib.PrintContextLog(context, "## CampChallenge : action_EVENT_ENTER_REGION:".." ScriptLib.IsChallengeStartedByChallengeIndex(context,base_info.group_id,defs.challenge_id) == true ")
        return 0
    end

    local _cur_count = ScriptLib.GetGroupVariableValue(context,"SET_TRIGGER")
    if _cur_count >= defs.trigger_time then 
        ScriptLib.PrintContextLog(context, "## CampChallenge : action_EVENT_ENTER_REGION:".."_cur_count >= defs.trigger_time")
        ScriptLib.FinishGroupLinkBundle(context, base_info.group_id)--保底再次finish一下
        return 0    --进度已完成，不开挑战
    end

    --开挑战
    ScriptLib.StartChallenge(context, defs.challenge_id, defs.challenge_id, {3, 111, defs.trigger_time, 1, _cur_count})

    --【【3.1 backlog内】数据埋点 - 蒙德佳酿节（TD）相关运营埋点】
    --https://www.tapd.cn/22963631/prong/stories/view/1122963631001540454
    local _trans =  ScriptLib.GetChallengeTransaction(context, defs.challenge_id)
    ScriptLib.MarkGroupLuaAction(context, "Vintage_Camp_1",_trans,{})
    
    --恢复suite内容
    if Phase == nil then 
        ScriptLib.PrintContextLog(context, "## CampChallenge : action_EVENT_ENTER_REGION LD注意：没有配置Phase")
        return 0
    end
    local _p = ScriptLib.GetGroupVariableValue(context,"STAGE")
    if _p ==0 then
        ScriptLib.PrintContextLog(context, "## CampChallenge : action_EVENT_ENTER_REGION LD注意：没有找到Variable:STAGE")
        return 0
    end
    if Phase[_p] == nil then 
        ScriptLib.PrintContextLog(context, "## CampChallenge : action_EVENT_ENTER_REGION LD注意：没有找到STAGE=".._p.."对应的suite配置")
        return 0
    end
    for i = 1 , #Phase[_p] do
        ScriptLib.AddExtraGroupSuite(context, base_info.group_id, Phase[_p][i])
    end
    return 0
end
--主客机出区域恢复visiontype；                                                                                                                                                                          主机出区域挑战失败、group重置
function action_EVENT_LEAVE_REGION(context,evt)
    ScriptLib.PrintContextLog(context, "## CampChallenge : action_EVENT_LEAVE_REGION evt.param1="..evt.param1 .. "|defs.leave_region = "..defs.leave_region)
    if evt.param1 ~= defs.leave_region then return 0 end
    
    --主客机离开恢复visionType
	ScriptLib.SetPlayerGroupVisionType(context, {evt.uid}, {1})

    if evt.uid ~= ScriptLib.GetSceneOwnerUid(context) then
        return 0
    end

    --主机离开关挑战
    if ScriptLib.IsChallengeStartedByChallengeIndex(context,base_info.group_id,defs.challenge_id) == true then 
        ScriptLib.StopChallenge(context, defs.challenge_id, 0)
    end
    return 0
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