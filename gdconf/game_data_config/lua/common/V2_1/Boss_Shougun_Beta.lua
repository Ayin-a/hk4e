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
    { config_id = 2330002, name = "VARIABLE_CHANGE_DebugTest", event = EventType.EVENT_VARIABLE_CHANGE, source = "DebugPhase",
      condition = "", action = "action_DebugTest", trigger_count = 0},
    { config_id = 2330003, name = "TIME_AXIS_MovieEvent1", event = EventType.EVENT_TIME_AXIS_PASS, source = "PhaseAxis1",
      condition = "", action = "action_TIME_AXIS_MovieEvent1", trigger_count = 0},
    { config_id = 2330004, name = "TIME_AXIS_MovieEvent2", event = EventType.EVENT_TIME_AXIS_PASS, source = "PhaseAxis2",
      condition = "", action = "action_TIME_AXIS_MovieEvent2", trigger_count = 0},
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
    ScriptLib.PrintContextLog(context, "Beta用测试流程")

    --1秒后通知怪物变化动
    ScriptLib.InitTimeAxis(context, "PhaseAxis1",{1}, false)
    return 0
end

-- 切阶段二环境
function action_TIME_AXIS_MovieEvent1(context,evt)
    ScriptLib.PrintContextLog(context, "## TD Shougun CutScene已播完，开始进入二阶段")
    -- 通知将军切换状态
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.BossConfigID, "SGV_MONSTER_SHOUGUN_CHANGETOTACHI", 2)
    --阶段计数为2
    -- GROUP GETVAR 220117001 PhaseStep
    ScriptLib.SetGroupVariableValue(context, "PhaseStep", 2)

    return 0
end

-- 怪物通知关卡进入阶段三
function SLC_EnterPhaseThird(context)
    ScriptLib.PrintContextLog(context, "## TD Shougun 开始进入三阶段")
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

