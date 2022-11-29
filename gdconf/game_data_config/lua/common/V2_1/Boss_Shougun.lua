-- Trigger变量
--[[
local defs = {
    BossConfigID = 1002,
    EnvConfigID = 1001,
    GroupID = 220117001,
}
--]]

--------Boss女士-------------
local tempTrigger = {
    --[[
    { config_id = 2330001, name = "EVENT_QUEST_START", event = EventType.EVENT_QUEST_START, source = "202010",
      condition = "", action = "action_NoticeMonsterEnterPhaseSecond", trigger_count = 0},
    --]]
    { config_id = 2330002, name = "VARIABLE_CHANGE_DebugTest", event = EventType.EVENT_VARIABLE_CHANGE, source = "DebugPhase",
      condition = "", action = "action_DebugTest", trigger_count = 0},
    { config_id = 2330003, name = "TIME_AXIS_MovieEvent1", event = EventType.EVENT_TIME_AXIS_PASS, source = "PhaseAxis1",
      condition = "", action = "action_TIME_AXIS_MovieEvent1", trigger_count = 0},
    { config_id = 2330004, name = "TIME_AXIS_MovieEvent2", event = EventType.EVENT_TIME_AXIS_PASS, source = "PhaseAxis2",
      condition = "", action = "action_TIME_AXIS_MovieEvent2", trigger_count = 0}
}

--------初始化----------
function LF_Initialize_Level()
    for k,v in pairs(tempTrigger) do
        table.insert(triggers, v)
        table.insert(suites[1].triggers, v.name)
    end

    local var = { config_id=50000001,name = "PhaseStep", value = 1, no_refresh = false }   --阶段计数器
    variables[var.name] = var
    var = { config_id=50000002,name = "DebugPhase", value = 1, no_refresh = false }   -- Debug用阶段计数器
    variables[var.name] = var
    return 0
end
--------公用函数----------
-- 通知关卡播CS
function SLC_PlayCutScene(context)
    ScriptLib.PrintContextLog(context, "-------------- INITIALIZE 1 ------------------")
    ScriptLib.AddQuestProgress(context, "202010")
    ScriptLib.PrintContextLog(context, "## TD Shougun  通知任务202010进度增加")
    action_NoticeMonsterEnterPhaseSecond(context)
    return 0
end

-- 关卡通知怪物 (EVENT_CUTSCENE_END//_MONSTER_SHOUGUN_STAGE_) GROUP GET_TRIGGER 220117001 EVENT_QUEST_START
function action_NoticeMonsterEnterPhaseSecond(context)
    ScriptLib.PrintContextLog(context, "## TD Shougun CutScene已播完，开始进入二阶段")
    -- 传送
    ScriptLib.InitTimeAxis(context, "PhaseAxis1",{1}, false)
    return 0
end

-- 切阶段二环境
function action_TIME_AXIS_MovieEvent1(context,evt)
    ScriptLib.PrintContextLog(context, "## TD Shougun CutScene已播完，延迟1秒转阶段")
    --将环境GadgetState切至201
    ScriptLib.SetGadgetStateByConfigId(context, defs.EnvConfigID, 201)
    --关卡通知怪物 _MONSTER_SHOUGUN_TACHI_
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.BossConfigID, "SGV_MONSTER_SHOUGUN_CHANGETOTACHI", 2)
    --阶段计数为2
    -- GROUP GETVAR 220117001 PhaseStep
    ScriptLib.SetGroupVariableValue(context, "PhaseStep", 2)
    return 0
end

-- 怪物通知关卡进入阶段三
function SLC_EnterPhaseThird(context)
    ScriptLib.PrintContextLog(context, "## TD Shougun 开始进入三阶段")
    --将环境GadgetState切至202
    ScriptLib.SetGadgetStateByConfigId(context, defs.EnvConfigID, 202)

    ScriptLib.InitTimeAxis(context, "PhaseAxis2",{1}, false)
    return 0
end

-- 切阶段三环境
function action_TIME_AXIS_MovieEvent2(context,evt)
    ScriptLib.PrintContextLog(context, "## TD Shougun 延迟1秒,切环境")

    --阶段计数为3
    ScriptLib.SetGroupVariableValue(context, "PhaseStep", 3)
    return 0
end


--------事件函数----------

--------私有函数----------

function action_TIME_AXIS_MovieEvent(context,evt)
    -- 传送
    ScriptLib.TransPlayerToPos(context,  {uid_list =ScriptLib.GetSceneUidList(context), pos = { x = 502.498, y = 100.542, z = 498.351}, radius = 2, rot = {x=0, y=220, z=0}})
    return 0
end

function action_DebugTest(context,evt)
    -- Dungeon 1122
    -- GROUP SETVAR 220117001 DebugPhase 1
    if 1 == evt.param1 then
        SLC_PlayCutScene(context)
        return 0
    end
    if 2 == evt.param1 then
        SLC_EnterPhaseThird(context)
        return 0
    end
    return 0
end

LF_Initialize_Level()
--- ServerUploadTool Save to [/root/env/data/lua/common/V2_1]  ---

