--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---
--[[======================================
||	filename:	StarShooter
||	owner: 		weiwei.sun
||	description:	2.8莫娜梦境地城 弹幕控制
||	LogName:	CloudNet
||	Protection:	
=======================================]]--

--[[defs = {
    queue = {
       [1] = { config_id = 4012, bullet_type = 2, duration = 0, shoot_time = 25, shoot_interval = 1, point_array = 3, point_id = {1,2},turn_mode = true,route_type = 1},
    },
    hit_max = 1,

}]]

local extraTriggers={
    { config_id = 8000001, name = "TimeAxis_Pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_TimeAxis_Pass", trigger_count = 0 },
    { config_id = 8000002, name = "Variable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "star_shooter", condition = "", action = "action_Variable_Change", trigger_count = 0 },
    { config_id = 8000003, name = "PlayerHit_Variable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "player_hit", condition = "", action = "", tag = "777",trigger_count = 0},
    { config_id = 8000004, name = "Group_Will_Unload", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_Group_Will_Unload", trigger_count = 0 },
    { config_id = 8000005, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
    { config_id = 8000006, name = "Challenge_Fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_Challenge_Fail", trigger_count = 0 },
    { config_id = 8000007, name = "Challenge_Success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_Challenge_Success", trigger_count = 0 },
}
function LF_Initialize_Group(triggers, suites)
    for i=1,#extraTriggers do
        table.insert(triggers, extraTriggers[i])
        
        table.insert(suites[1].triggers,extraTriggers[i].name)
         
    end
    --启动 关闭，外部控制
    table.insert(variables, { config_id = 50000001, name = "star_shooter", value = 0})
    --挑战计数项
    table.insert(variables, { config_id = 50000002, name = "player_hit", value = 0})
end

function action_Group_Load(context, evt)
     ScriptLib.SetGroupTempValue(context, "action_index", 0, {})
    return 0
end

function action_Group_Will_Unload(context, evt)
    ScriptLib.SetGroupVariableValue(context, "star_shooter", 0)
    return 0
end

function action_Variable_Change(context, evt)
     --在关闭状态下，被通知开启
    if 1 == evt.param1 and 0 == evt.param2 then 
        ScriptLib.SetGroupTempValue(context, "action_index", 0, {})
        LF_SequenceAction(context)
    end
    return 0
end

function action_TimeAxis_Pass(context, evt)
    LF_SequenceAction(context)
    return 0
end
function LF_SequenceAction(context)

    ScriptLib.ChangeGroupTempValue(context, "action_index", 1, {})
    local cur_index = ScriptLib.GetGroupTempValue(context, "action_index", {})
    if #defs.queue < cur_index then
        ScriptLib.SetGroupVariableValue(context, "star_shooter", 0)
        return 0
    end

    local step = defs.queue[cur_index]
    ScriptLib.PrintContextLog(context, "## [StartShooter] Sequence actions Set. Step_index@"..cur_index.." cfg_id@"..step.config_id)

    --处理SGV
    if nil ~= step.shoot_interval and nil ~= step.shoot_time then
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, step.config_id, "SGV_Shoot_Interval", step.shoot_interval)
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, step.config_id, "SGV_Shoot_Time", step.shoot_time)
    end

    --处理GadgetState         
    if nil ~= step.bullet_type then 
        ScriptLib.PrintContextLog(context, "## [StartShooter] LF_SequenceAction: Try Set GadgetState. ConfigId@"..step.config_id.." bullet_type@"..step.bullet_type)
        --1-单个(201)
        if 1 == step.bullet_type then
            ScriptLib.SetGadgetStateByConfigId(context, step.config_id, 201)
        --2-五个散射(203)
        elseif 2 == step.bullet_type then 
            ScriptLib.SetGadgetStateByConfigId(context, step.config_id, 203)
        --3-五个一排(204)
        elseif 3 == step.bullet_type then 
            ScriptLib.SetGadgetStateByConfigId(context, step.config_id, 204)
        end
    end

    --处理移动
    if  0 ~= step.point_array then
        ScriptLib.SetPlatformPointArray(context, step.config_id, step.point_array, step.point_id, {route_type = step.route_type, turn_mode = step.turn_mode, record_mode = 0})
    end

    --这一步是否是一个瞬时动作
    if 0 ~= step.duration then
        ScriptLib.InitTimeAxis(context, "duration"..cur_index, { math.floor(step.duration) }, false)
        ScriptLib.PrintContextLog(context, "## [StartShooter] Actions has duration. duration@".. math.floor(step.duration))
    --不用等的话直接走下一步
    else
        LF_SequenceAction(context)
    end

    return 0
end

function action_Challenge_Fail(context, evt)
    local cur_index = ScriptLib.GetGroupTempValue(context, "action_index", {})
    ScriptLib.EndTimeAxis(context, "duration"..cur_index)  
    ScriptLib.SetGroupVariableValue(context, "player_hit", 0) 
    return 0
end

function action_Challenge_Success(context, evt)
    if 1 == ScriptLib.GetGroupVariableValue(context, "star_shooter") then
        ScriptLib.SetGroupVariableValue(context, "star_shooter", 0)
        ScriptLib.SetGroupVariableValue(context, "player_hit", 0)
    end
    return 0
end

function SLC_StarShooter_PlayerHit(context)
   
    ScriptLib.ChangeGroupVariableValue(context,"player_hit", 1)  
    return 0
end

function SLC_StarShooter_TryStartChallenge(context)

    if ScriptLib.GetHostQuestState(context,4007410)==2 then
    
        ScriptLib.AddExtraGroupSuite(context, 220136004, 3)

        ScriptLib.CreateFatherChallenge(context, 260, 262, 61, {success = 1, fail = 1, fail_on_wipe = true})
        ScriptLib.StartFatherChallenge(context, 260)
        ScriptLib.AttachChildChallenge(context, 260, 262, 260,{3, 777, 30, 0, 0},{},{success=1, fail=1})
        ScriptLib.AttachChildChallenge(context, 260, 261, 261,{60, 0},{},{success=1, fail=1})
    
        ScriptLib.SetGroupVariableValue(context, "star_shooter", 1)
    
    end
    return 0
end

LF_Initialize_Group(triggers, suites)