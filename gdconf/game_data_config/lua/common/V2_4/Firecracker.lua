
local FirecrackerChest_ID = 70800056
local option_id = 68
local watcherCountDownTime_1 = 150 --多少秒内完成
local watcherCountDownTime_2 = 120 --多少秒内完成

local challenge_index_list = {  --埋点用
    [133108233]=2200,
    [133108234]=2200,
    [133108235]=2200,
    [133108246]=2210,
    [133108247]=2210,
    [133108252]=2210,
    [133108236]=2200,
    [133108237]=2200,
    [133108238]=2200,
    [133108239]=2200,
    [133108248]=2210,
    [133108249]=2210,
    [133108250]=2210,
    [133108251]=2210,
    [133108198]=1,
    [133108227]=2040,
    [133108228]=2040,
    [133108232]=2040,
    [133108225]=2040,
    [133108226]=2040,
    [133108229]=2040,
    [133108230]=2040,
    [133108231]=2040,
}

local temp_Variables = {
    { config_id=50000001,name = "Variable_EndGame", value = 0, no_refresh = false },
    { config_id=50000002,name = "Variable_StartWatcherCountDown", value = 0, no_refresh = false },
}

local temp_Tirgger = {
    --正式trigger
	{event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION",trigger_count = 0},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE",trigger_count = 0},
	{event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS",trigger_count = 0},
	{event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS",trigger_count = 0},
}
function action_EVENT_CHALLENGE_SUCCESS(context,evt)
	ScriptLib.PrintContextLog(context,"[action_EVENT_CHALLENGE_SUCCESS]")
    --F4 BOSS group的watcher处理
    local uid_list = ScriptLib.GetSceneUidList(context)
    if ScriptLib.GetContextGroupId(context) == 133108198 then
        ScriptLib.PrintContextLog(context,"[GetContextGroupId]=133108198")
        --完成挑战
        ScriptLib.AddExhibitionAccumulableData(context,uid_list[1],"Activity_SalvageBoss_watcher_1",1)
        --剩余[watcherCountDownTime_1]秒完成挑战
        if ScriptLib.GetGroupTempValue(context,"WatcherTimeOut_1",{}) == 0 then 
            ScriptLib.AddExhibitionAccumulableData(context,uid_list[1],"Activity_SalvageBoss_watcher_2",1)
        end
        --剩余[watcherCountDownTime_2]秒完成挑战
        if ScriptLib.GetGroupTempValue(context,"WatcherTimeOut_2",{}) == 0 then 
            ScriptLib.AddExhibitionAccumulableData(context,uid_list[1],"Activity_SalvageBoss_watcher_3",1)
        end
    end
    return 0
end
function action_EVENT_TIME_AXIS_PASS(context,evt)
	ScriptLib.PrintContextLog(context,"[action_EVENT_TIME_AXIS_PASS]")
    if evt.source_name == "WatcherCountDown_1" then
        ScriptLib.SetGroupTempValue(context,"WatcherTimeOut_1",1,{})
    end
    if evt.source_name == "WatcherCountDown_2" then
        ScriptLib.SetGroupTempValue(context,"WatcherTimeOut_2",1,{})
    end
    return 0 
end
function action_EVENT_VARIABLE_CHANGE(context,evt)
    if evt.source_name == "Variable_EndGame" then 
        local uid_list = ScriptLib.GetSceneUidList(context)
        --挑战结束 关掉所有箱子交互
        for k,v in pairs(gadgets) do
            if v.gadget_id == FirecrackerChest_ID then
                local group_id = ScriptLib.GetContextGroupId(context)
                ScriptLib.DelWorktopOptionByGroupId(context, group_id, v.config_id, option_id)
                ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, "SGV_Show_Mark", 0)
            end
        end
        --挑战结束后不再接收slc
        ScriptLib.SetGroupTempValue(context,"Enable_SLC",0,{})
        --关闭T技能
        ScriptLib.SetTeamEntityGlobalFloatValue(context, {uid_list[1]}, "AVATAR_Firecracker_Play", 0)
    end
    if evt.source_name == "Variable_StartWatcherCountDown" then
        --F4 BOSS group的watcher处理（初始化）
        if ScriptLib.GetContextGroupId(context) == 133108198 then
            ScriptLib.InitTimeAxis(context, "WatcherCountDown_1", {watcherCountDownTime_1}, false)
            ScriptLib.InitTimeAxis(context, "WatcherCountDown_2", {watcherCountDownTime_2}, false)
            ScriptLib.SetGroupTempValue(context,"WatcherTimeOut_1",0,{})
            ScriptLib.SetGroupTempValue(context,"WatcherTimeOut_2",0,{})
        end
        --挑战开始 补满箱子，加option
        local group_id = ScriptLib.GetContextGroupId(context)
        for k,v in pairs(gadgets) do
            if v.gadget_id == FirecrackerChest_ID then
                ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, v.config_id, 0)
                ScriptLib.SetWorktopOptionsByGroupId(context, group_id, v.config_id, {option_id})
                ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, "SGV_Show_Mark", 1)
            end
        end
        --通知manager(任务group除外)
        if group_id ~= 133108196 and group_id ~= 133108197 then 
            SeaLamp_Challenge_Manager_Start(context)
        end
    end
    return 0
end
function action_EVENT_SELECT_OPTION(context,evt)
	ScriptLib.PrintContextLog(context,"[action_EVENT_SELECT_OPTION]")
    --爆竹箱交互后逻辑
    if ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid) ~= FirecrackerChest_ID then return 0 end
    --如果身上已经有T技能，则reminder提示。
    uid = ScriptLib.GetSceneUidList(context)
    local key = ScriptLib.GetTeamAbilityFloatValue(context, context.uid, "AVATAR_Firecracker_Play")
    if key == 1 then
        ScriptLib.AssignPlayerShowTemplateReminder(context, 154, {param_vec={},param_uid_vec={},uid_vec={context.uid}})
        return 0
    end
    --否则加上T技能
    ScriptLib.SetTeamEntityGlobalFloatValue(context, {context.uid}, "AVATAR_Firecracker_Play", 1)
    --等待T技能的slc
    ScriptLib.SetGroupTempValue(context,"Enable_SLC",1,{})
    --使该爆竹箱 爆竹数量减少
    action_Reduce_Firecracker(context,evt.param1)
    local group_id = ScriptLib.GetContextGroupId(context)
    local trans
    if challenge_index_list[group_id] ~=nil then 
        trans = ScriptLib.GetChallengeTransaction(context, challenge_index_list[group_id])
    else
        trans = ""
    end
    ScriptLib.MarkGroupLuaAction(context, "LanternRite_1", trans , {[""] = 0,})
    return 0
end
function action_Reduce_Firecracker(context,config_id)
    local group_id = ScriptLib.GetContextGroupId(context)
    local nowState = ScriptLib.GetGadgetStateByConfigId(context, group_id, config_id)
    --使被交互的这个数量-1
    if nowState == 0 then ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, config_id, 101)
    elseif nowState == 101 then ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, config_id, 102)
    elseif nowState == 102 then ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, config_id, 103)
    elseif nowState == 103 then ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, config_id, 104)
    elseif nowState == 104 then ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, config_id, 105)
    end
    --使所有交互禁用
    for k,v in pairs(gadgets) do
        if v.gadget_id == FirecrackerChest_ID then
            ScriptLib.DelWorktopOptionByGroupId(context, group_id, v.config_id, option_id)
            ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, "SGV_Show_Mark", 0)
        end
    end
    return 0
end
function SLC_Firecracker_Used(context)--使用T技能后
    if ScriptLib.GetGroupTempValue(context,"Enable_SLC",{}) ~=1 then return 0 end--防call到错误group
	ScriptLib.PrintContextLog(context,"[SLC_Firecracker_Used]")
    --SLC等待标记重置
    ScriptLib.SetGroupTempValue(context,"Enable_SLC",0,{})
    local group_id = ScriptLib.GetContextGroupId(context)
    --给能捡的箱子恢复交互选项
    for k,v in pairs(gadgets) do
        if v.gadget_id == FirecrackerChest_ID then
            if ScriptLib.GetGadgetStateByConfigId(context, group_id, v.config_id) ~= 105 then
                ScriptLib.SetWorktopOptionsByGroupId(context, group_id, v.config_id, {option_id})
                ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, "SGV_Show_Mark", 1)
            end
        end
    end
    local trans
    if challenge_index_list[group_id] ~=nil then 
        trans = ScriptLib.GetChallengeTransaction(context, challenge_index_list[group_id])
    else
        trans = ""
    end
    ScriptLib.MarkGroupLuaAction(context, "LanternRite_2", trans , {[""] = 0,})
    return 0 
end
--已作废
function SLC_watcher_hit3(context)
    return 0
end
--已作废
function SLC_AttackLanded_Avatar(context)
    return 0
end
--已作废
function SLC_Buff_Dispel_Monster(context)
    return 0
end

--专项补丁开始：性能优化圈。（仅当LD配置了defs.eyepoint时生效）
function Insert_EyePoint_Trigger()  --专用trigger
    if defs ~= nil then 
        if defs.eyepoint ~= nil then
            table.insert(temp_Tirgger,{event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_SetEyePoint",trigger_count = 0})
            table.insert(temp_Tirgger,{event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_ClearEyePoint",trigger_count = 0})
        end
    end
    return 0
end 
Insert_EyePoint_Trigger()
function action_SetEyePoint(context,evt)
	ScriptLib.PrintContextLog(context,"[action_EVENT_ENTER_REGION]")
    if evt.param1 == defs.eyepoint then
        ScriptLib.SetPlayerEyePoint(context, defs.eyepoint, defs.eyepoint)
    end
    return 0 
end
function action_ClearEyePoint(context,evt)
	ScriptLib.PrintContextLog(context,"[action_EVENT_LEAVE_REGION]")
    if evt.param1 == defs.eyepoint then
        ScriptLib.ClearPlayerEyePoint(context, defs.eyepoint)
    end
    return 0
end
function Initialize()
	--加触发器
	for k,v in pairs(temp_Tirgger) do
        v.name = k..""
        v.config_id = 9000000 + k
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	--加变量
	for k,v in pairs(temp_Variables) do
		table.insert(variables,v)
	end

	return 0
end
Initialize()
