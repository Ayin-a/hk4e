-- Trigger变量
---[[
local screenGadgetID = { 70310076, 70310077}
local transPos =
{
    [1] = { x = 1.5, y = 0.147, z = -15 },
    [2] = { x = -1.5, y = 0.147, z = -15 },
    [3] = { x = 4.5, y = 0.147, z = -15 },
    [4] = { x = -4.5, y = 0.147, z = -15 },
}
local bossConfigID = 1004
--]]
--------Boss女士-------------
local tempTrigger = {
    { config_id = 2330001, name = "TIME_AXIS_MovieEventSolo", event = EventType.EVENT_TIME_AXIS_PASS, source = "MovieEventSolo",
      condition = "", action = "action_TIME_AXIS_MovieEventSolo", trigger_count = 0},
    { config_id = 2330002, name = "TIME_AXIS_MovieEvent", event = EventType.EVENT_TIME_AXIS_PASS, source = "MovieEvent",
      condition = "", action = "action_TIME_AXIS_MovieEvent", trigger_count = 0},
    { config_id = 2330003, name = "ANY_MONSTER_DIE_ThirdBoss", event = EventType.EVENT_ANY_MONSTER_DIE, source = "",
      condition = "", action = "action_ANY_MONSTER_DIE_ThirdBoss", trigger_count = 0}
}

--------初始化----------
function LF_Initialize_Level()
    for k,v in pairs(tempTrigger) do
        table.insert(triggers, v)
        table.insert(suites[1].triggers, v.name)
    end

    local var = { config_id=50000001,name = "PhaseStep", value = 0, no_refresh = false }   --阶段数据
    variables[var.name] = var
    return 0
end
--------公用函数----------
function PlayCutScene(context)
    ScriptLib.PrintContextLog(context, "-------------- INITIALIZE 1 ------------------")
    --播CS前直接切当前气候为自然气候
    ScriptLib.ModifyClimatePolygonParamTable(context, 1, {climate_type=0,meter_inherit_ratio=0})
    ScriptLib.PrintContextLog(context, "## TD LaSignora Boss1已死亡，气候重置，等待创生Boss切换新气候")

    local uidList=ScriptLib.GetSceneUidList(context)
    if #uidList < 2 then
        ScriptLib.PlayCutScene(context, defs.cutSceneID, 0)
        ScriptLib.InitTimeAxis(context, "MovieEventSolo",{2}, false)
        ScriptLib.PrintContextLog(context, "## TD LaSignora 单机下：开启Cs事件 Send Time Axis")
    else
        if #uidList <=4 then
            for i=1,#uidList do
                ScriptLib.TransPlayerToPos(context, {uid_list ={uidList[i]}, pos = transPos[i], radius = 2, rot = {x=0, y=0, z=0}})
            end
        end
        ScriptLib.InitTimeAxis(context, "MovieEvent",{1}, false)
        ScriptLib.PrintContextLog(context, "## TD LaSignora 联网下：开启Cs事件 Send Time Axis")
    end
    return 0
end

function CallPhaseChange(context,phaseNum)
    ScriptLib.PrintContextLog(context, "## TD LaSignora 战斗脚本通知阶段改变，当前阶段为阶段" .. phaseNum)
    ScriptLib.SetGroupVariableValue(context, "PhaseStep", phaseNum)
end

-- 切换Climate为HotMonster(ModifyClimatePolygonParamTable)
function ChangeClimateToHotMonster(context)
    -- 该功能仅用于女士地城
    ScriptLib.ModifyClimatePolygonParamTable(context, 1, {climate_type=4,meter_inherit_ratio=0})
    ScriptLib.PrintContextLog(context, "## TD LaSignora ：当前气候已切换为HotMonster")
    return 0
end
--------事件函数----------
function action_TIME_AXIS_MovieEventSolo(context)
    local uidList=ScriptLib.GetSceneUidList(context)
    ScriptLib.CreateMonster(context, { config_id = 1004, delay_time = 0.5 })
    for k,v in pairs(gadgets) do
        if IsGadgetScreen(v.config_id) then
            ScriptLib.PrintContextLog(context, "## TD LaSignora ：Config_id == " .. v.config_id)
            ScriptLib.RemoveEntityByConfigId(context, defs.groupID, EntityType.GADGET, v.config_id )
        end
    end
    ScriptLib.TransPlayerToPos(context, {uid_list = {uidList[1]}, pos = transPos[1], radius = 2, rot = {x=0, y=0, z=0},is_skip_ui = true})
    return 0
end

function action_TIME_AXIS_MovieEvent(context)
    -- 创建怪
    ScriptLib.CreateMonster(context, { config_id = 1004, delay_time = 0 })
    -- 移除Gadget
    for k,v in pairs(gadgets) do
        if IsGadgetScreen(v.config_id) then
            ScriptLib.PrintContextLog(context, "## TD LaSignora ：Config_id == " .. v.config_id)
            ScriptLib.RemoveEntityByConfigId(context, defs.groupID, EntityType.GADGET, v.config_id )
        end
    end

    return 0
end

function action_ANY_MONSTER_DIE_ThirdBoss(context,evt)
    if evt.param1 == bossConfigID then
        ScriptLib.ModifyClimatePolygonParamTable(context, 1, {climate_type=0,meter_inherit_ratio=0})
        ScriptLib.PrintContextLog(context, "## TD LaSignora ：战斗结束，天气切换回默认")
    end
    return 0
end
--------私有函数----------
-- 是否为屏风Gadget
function IsGadgetScreen(config_id)
    local gadgetId = gadgets[config_id].gadget_id
    for i = 1, #screenGadgetID, 1 do
        if(screenGadgetID[i] == gadgetId) then
            return true
        end
    end
    return false
end

LF_Initialize_Level()
--- ServerUploadTool Save to [/root/env/data/lua/common/V2_1]  ---

