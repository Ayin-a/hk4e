------------------------------
-- 正式代码 --
local TempTrigger = {
    {name = "TIMER_EVENT_Floor_Warn", config_id = 860010, event = EventType.EVENT_TIME_AXIS_PASS,
     source = "Floor_Warn", condition = "", action = "action_Floor_Warn", trigger_count = 0},
    {name = "TIMER_EVENT_Floor_Start", config_id = 860011, event = EventType.EVENT_TIME_AXIS_PASS,
     source = "Floor_Start", condition = "", action = "action_Floor_Start", trigger_count = 0},
    {name = "TIMER_EVENT_Floor_Over", config_id = 860012, event = EventType.EVENT_TIME_AXIS_PASS,
     source = "Floor_Over", condition = "", action = "action_Floor_Over", trigger_count = 0},
    { name = "ENTER_REGION_Fall", config_id = 860020, event = EventType.EVENT_ENTER_REGION,
      source = "", condition = "condition_ENTER_REGION_Fall", action = "action_ENTER_REGION_Fall", trigger_count = 0,forbid_guest = false },
    {name = "group_load", config_id = 860021, event = EventType.EVENT_GROUP_LOAD,
     source = "", condition = "", action = "action_group_load", trigger_count = 0},
    {name = "gallery_stop", config_id = 860022, event = EventType.EVENT_GALLERY_STOP,
     source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},
    { name = "GM_Mode", config_id = 860030, event = EventType.EVENT_VARIABLE_CHANGE,
      source = "GM_Start", condition = "", action = "action_GM_Mode", trigger_count = 0 }
}

local Enum ={
    FallNum = "fall_down_brokenfloor",
}

-- ==============初始化代码声明=============

-- 初始化
function LF_Initialize_Level()
    local suite_sum = #suites
    for i = 1,#PhasePlay do
        local phaseId = i
        suites[phaseId + suite_sum] = { monsters={}, gadgets={}, regions={}, triggers={}, rand_weight=0}
        LF_Initialize_Points(phaseId,suite_sum)
    end

    for j = 1, defs.FlowerNumRange.max, 1 do
        gadgets[21300 + j] = { config_id = 21300 + j, gadget_id = defs.FlowerGadgetID,
                               pos = { x = 0.000, y = 0.000, z = 0.000 },
                               rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
    end

    for i,v in ipairs(TempTrigger) do
        table.insert(triggers, v)
        table.insert(suites[init_config.suite].triggers, v.name)
    end

    local var = { config_id=50000001,name = "GM_Start", value = 0, no_refresh = false }
    variables[var.name] = var
    var = { config_id=50000002,name = "GM_Phase", value = 0, no_refresh = true }
    variables[var.name] = var
    var = { config_id=50000003,name = "Suite_Sum", value = suite_sum, no_refresh = false }
    variables[var.name] = var
    return 0
end

-- 初始化地板位置
function LF_Initialize_Points(phaseId,suite_sum)
    -- body
    local currentPhasePlay = PhasePlay[phaseId]
    for i = 1, currentPhasePlay.FloorArray_Size.x, 1 do
        for j = 1, currentPhasePlay.FloorArray_Size.y, 1 do
            if LF_CheckInitFloor(phaseId,i,j) then
                local point = {
                    x = currentPhasePlay.Pos_Standard.x + defs.Pos_Range.x * (i - 1),
                    y = currentPhasePlay.Pos_Standard.y,
                    z = currentPhasePlay.Pos_Standard.z - defs.Pos_Range.y * (j - 1)
                }
                -- gadgets录入
                local tempConfigId = 100000 * phaseId +1000 * i + j
                local tempGadgetId = defs.FloorGadgetID[currentPhasePlay.InitFloorStyle[i][j]]
                gadgets[tempConfigId] = { config_id = tempConfigId, gadget_id = tempGadgetId,
                                          pos = point, rot = currentPhasePlay.Rot_Standard,
                                          level = 1,state = GadgetState.GearAction1 }
                table.insert(suites[phaseId + suite_sum].gadgets, tempConfigId)
            end
        end
    end
    return 0
end

function LF_CheckInitFloor(phaseId,i,j)
    local currentPhasePlay = PhasePlay[phaseId]
    if currentPhasePlay.HasInitFloorArray == true then
        if currentPhasePlay.InitFloorArray[i][j] == 0 then
                return false
        end
    end
    return true
end

function action_group_load(context)
    if 1 ==  ScriptLib.GetGroupTempValue(context, "FirstLoad", {}) then
        return 0
    end
    ScriptLib.PrintContextLog(context, "## ================ INITIALIZE 1 ==============")
    local currentPhase = ScriptLib.GetFleurFairDungeonSectionId(context)
    local suite_Sum= ScriptLib.GetGroupVariableValue(context, "Suite_Sum")
    ScriptLib.PrintContextLog(context, "## TD_Log:RecordFloorBreakable : currentPhase Index is" .. currentPhase)
    ScriptLib.AddExtraGroupSuite(context, defs.GroupID, currentPhase + suite_Sum)
    ScriptLib.SetGroupTempValue(context, "FirstLoad", 1, {})
    return 0
end

-- 点击按钮后触发，游戏开始流程
function StartGallery(context, prev_context, activeStage)
    local currentPhase = activeStage

    -- 关闭墙壁
    for index,value in ipairs(defs.AirWallGadgetID) do
        ScriptLib.SetGadgetStateByConfigId(context, value, 201)
    end

    -- 游戏开始时确定随机方式
    ScriptLib.ShowReminder(context, 358000009)
    ScriptLib.PrintContextLog(context, "## TD_Log:RecordFloorBreakable : activeStage is" .. currentPhase)
    ScriptLib.SetGroupTempValue(context, "Phase", currentPhase, {})
    LF_Calculate_ArrayVar(context, currentPhase)
    -- 开启地板时间轴
    LF_Start_TimeEvent(context)

    ScriptLib.StartGallery(context,defs.GalleryID)
    return 0
end

-- 游戏开始时调用，确认随机相关
function LF_Calculate_ArrayVar(context, currentPhase)
    local tempArray = {}
    math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
    for i = 1, #PhasePlay[currentPhase].FloorArrays do
        table.insert(tempArray, i)
    end
    for i = 1, #PhasePlay[currentPhase].FloorArrays do
        local randomIndex = math.random(#tempArray)
        ScriptLib.SetGroupTempValue(context, "FloorArrayWave" .. i, tempArray[randomIndex],{})
        table.remove(tempArray, randomIndex)
    end
    ScriptLib.SetGroupTempValue(context, "FloorArrayWaveIndex", 1,{})
    ScriptLib.PrintContextLog(context, "## TD_LOG : Have Calculated Array")
    return 0
end

-- 开启地板TimeAxis
function LF_Start_TimeEvent(context)
    math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
    local randomIndex = math.random(#TimeLines)
    ScriptLib.SetGroupTempValue(context, "timeLinesIndex", randomIndex,{})
    ScriptLib.InitTimeAxis(context, "Floor_Warn", TimeLines[randomIndex].WarnTimeLine, false)
    ScriptLib.InitTimeAxis(context, "Floor_Start", TimeLines[randomIndex].StartTimeLine, false)
    ScriptLib.InitTimeAxis(context, "Floor_Over", TimeLines[randomIndex].OverTimeLine, false)
    ScriptLib.PrintContextLog(context, "## TD_Log:RecordFloorBreakable : Have Send Time Axis, TimeLines Index is" .. randomIndex)
    return 0
end


function action_Floor_Warn(context, evt)
    local floorArrayWaveIndex = ScriptLib.GetGroupTempValue(context, "FloorArrayWaveIndex",{})
    local arrayIndex = ScriptLib.GetGroupTempValue(context, "FloorArrayWave" .. floorArrayWaveIndex,{})
    LF_SetFloorGadgetState(context, arrayIndex, GadgetState.GearStart)
    return 0
end

function action_Floor_Start(context, evt)
    local floorArrayWaveIndex = ScriptLib.GetGroupTempValue(context, "FloorArrayWaveIndex",{})
    local arrayIndex = ScriptLib.GetGroupTempValue(context, "FloorArrayWave" .. floorArrayWaveIndex,{})
    LF_SetFloorGadgetState(context, arrayIndex, GadgetState.GearStop)
    -- 赏花
    if floorArrayWaveIndex > 1 then
        action_Close_Flower(context)
    end
    return 0
end

function action_Floor_Over(context, evt)
    local timeLinesIndex = ScriptLib.GetGroupTempValue(context, "timeLinesIndex", {})
    local floorArrayWaveIndex = ScriptLib.GetGroupTempValue(context, "FloorArrayWaveIndex",{})
    local arrayIndex = ScriptLib.GetGroupTempValue(context, "FloorArrayWave" .. floorArrayWaveIndex,{})
    action_Show_Flower(context)
    LF_SetFloorGadgetState(context, arrayIndex, GadgetState.GearAction1)
    if floorArrayWaveIndex + 1 <= #TimeLines[timeLinesIndex].OverTimeLine then
        ScriptLib.SetGroupTempValue(context, "FloorArrayWaveIndex", floorArrayWaveIndex + 1,{})
    end
    return 0
end

-- 批量设置地板GadgetState
function LF_SetFloorGadgetState(context, arrayIndex, gadgetState)
    local currentPhase = ScriptLib.GetGroupTempValue(context, "Phase", {})
    local currentPlay = PhasePlay[currentPhase]
    local tempArray = currentPlay.FloorArrays[arrayIndex]
    for i = 1, currentPlay.FloorArray_Size.x do
        for j = 1, currentPlay.FloorArray_Size.y do
            if 1 == tempArray[i][j] and LF_CheckInitFloor(currentPhase,i,j) then
                local configId = 100000 * currentPhase +1000 * i + j
                if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, configId, gadgetState) then
                    ScriptLib.PrintContextLog(context, "## TD_ErrorLog : cid -> " .. configId .. " | gadgetState -> " .. gadgetState)
                    return -1
                end
            end
        end
    end
    ScriptLib.PrintContextLog(context, "## TD_Log : Set array" .. arrayIndex .. " to " .. gadgetState)
    return 0
end

-- 显示花花
function action_Show_Flower(context)
    -- 出随机数
    local currentPhase = ScriptLib.GetGroupTempValue(context, "Phase", {})
    local suite_Sum= ScriptLib.GetGroupVariableValue(context, "Suite_Sum")
    local currentGadgets = {}
    for k, v in ipairs(suites[currentPhase + suite_Sum].gadgets) do
        currentGadgets[k] = v
    end
    math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
    local randomNum = math.random(defs.FlowerNumRange.min, defs.FlowerNumRange.max)
    local posInfoList = {}
    for i = 1, randomNum, 1 do
        local randomIndex = math.random(1, #currentGadgets)
        local tempPos = gadgets[currentGadgets[randomIndex]].pos
        local posInfo = { pos = { x = tempPos.x, y = tempPos.y + defs.FlowerHeight, z = tempPos.z },
                          rot = gadgets[currentGadgets[randomIndex]].rot }
        table.insert(posInfoList, posInfo)
        table.remove(currentGadgets, randomIndex)
    end

    -- 根据ConfigIdList寻找在对应位置创生花朵
    for j = 1, #posInfoList, 1 do
        ScriptLib.CreateGadgetByConfigIdByPos(context, 21300 + j, posInfoList[j].pos, posInfoList[j].rot)
    end

    -- 保存随机结果
    ScriptLib.SetGroupTempValue(context, "randomFlowerNum", randomNum, {})
    return 0
end

-- 删除各种花
function action_Close_Flower(context)
    local randomNum = ScriptLib.GetGroupTempValue(context, "randomFlowerNum", {})
    ScriptLib.PrintContextLog(context, "## TD_Log RecordFloorBreakable : randomFlowerNum :" .. randomNum)
    for j = 1, randomNum, 1 do
        if 0 ~= ScriptLib.GetEntityIdByConfigId(context, 21300 + j) then
            ScriptLib.RemoveEntityByConfigId(context, defs.GroupID, EntityType.GADGET, 21300 + j)
        end
    end
    return 0
end

-- 落下时的传送逻辑
function condition_ENTER_REGION_Fall(context, evt)
    -- 判断角色数量不少于1
    if evt.param1 ~= defs.FallRegionConfigID or ScriptLib.GetGroupTempValue(context, "GalleryStop", {}) == 1 then
        return false
    end
    if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
        return false
    end
    return true
end


function SubController( context, SubSocre, Tag)
    -- 取出要减分数的绝对值
    local absSubScore = math.abs(SubSocre)
    local CurScore = ScriptLib.GetFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, context.uid)

    if ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, Tag, context.uid) == 0 then
        ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, Tag, context.uid, 0)
    end

    if CurScore >= absSubScore then
        ScriptLib.AddSceneMultiStagePlayUidValue(context,235800001, 1, Tag, context.uid, SubSocre)
    else
        ScriptLib.AddSceneMultiStagePlayUidValue(context,235800001, 1, Tag, context.uid, -1 * CurScore)
    end
    return 0
end



function action_ENTER_REGION_Fall(context, evt)
    local fallNum = ScriptLib.GetGroupTempValue(context, "fallNum", {})
    local uidList = ScriptLib.GetSceneUidList(context)

    -- 此处用于避开重复Trigger的情况
    if ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID,1,Enum.FallNum,evt.uid) > 0 then
        return 0
    end


    SubController(context, defs.FallScore, "defeated_timelimit_challenge_6003")

    ScriptLib.PrintContextLog(context, "## TD_RecordFloorBreakable : Add Fall Score")
    ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, defs.MainGroupID, 1, evt.uid, defs.FallScore)

    ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID,1,Enum.FallNum,evt.uid, 1)
    -- 失败流程,落水人数>=当前玩家数，失败结算

    fallNum = fallNum + 1
    if fallNum >= #uidList then
        ScriptLib.PrintContextLog(context, "## TD_RecordFloorBreakable : StopGallery")
        ScriptLib.StopGallery(context, defs.GalleryID, false)
    else
        ScriptLib.PrintContextLog(context, "## TD_RecordFloorBreakable : HaveFinishGame")
        ScriptLib.SetGroupTempValue(context, "fallNum", fallNum, {})
        ScriptLib.TransPlayerToPos(context,
                {uid_list = {evt.uid}, pos = defs.RevivePoint.pos,
                 radius = defs.RevivePoint.radius, rot = defs.RevivePoint.rot})
    end

    return 0
end

-- 游廊结束逻辑
function action_gallery_stop( context, evt )
    -- 游廊结束时，判断是否超时
    ScriptLib.SetGroupTempValue(context, "GalleryStop", 1, {})
    -- 未超时则为接满分数
    ActionAddEnergy(context)

    if evt.param2 == 0 then
        -- is Fail , 超时
        ScriptLib.PrintContextLog(context, "## TD_RecordFloorBreakable : TimeOut is True")
        ScriptLib.ExecuteGroupLua(context, defs.MainGroupID, "EndPlayStage", {1,defs.GroupID})
    else
        ScriptLib.PrintContextLog(context, "## TD_RecordFloorBreakable : You Fall")
        -- 其它情况计为提前结束
        ScriptLib.ExecuteGroupLua(context, defs.MainGroupID, "EndPlayStage", {0,defs.GroupID})
    end

    --suit清空
    for i=2,#suites do
        ScriptLib.RemoveExtraGroupSuite(context, defs.GroupID, i)
    end

    return 0
end

function ActionAddEnergy( context )
    local  UidList = ScriptLib.GetSceneUidList(context)
    for i,v in ipairs(UidList) do
        --风之花结算计数
        ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "collect_energy_6003", v, 5 * ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "get_random_flora", v))
        
        if ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID,1,Enum.FallNum,v) == 0 then

            --watcher结算
            ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_fall_down_brokenfloor", v, 0)

            ScriptLib.PrintContextLog(context, "## TD_RecordFloorBreakable : Add TimeOut Score")
            ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, defs.MainGroupID, 1, v, defs.TimeOutScore)
            ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID,1,"complete_timelimit_challenge_6003",v, defs.TimeOutScore)
        else
            --watcher结算
            ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_fall_down_brokenfloor", v, 1)

            ScriptLib.PrintContextLog(context, "## TD_RecordFloorBreakable : Add Fall Challenge Score")
            ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID,1,"defeated_timelimit_challenge_6003",v, defs.FallScore)
        end
    end
    return 0
end

function action_GM_Mode(context, evt)
    -- GROUP SETVAR 235800002 GM_Phase 2
    -- GROUP SETVAR 235800002 GM_Start 1
    -- GROUP GETVAR 235800002 GM_Phase
    if 1 == ScriptLib.GetGroupVariableValue(context, "GM_Start") then
        StartGallery(context, context, ScriptLib.GetGroupVariableValue(context, "GM_Phase"))
    end

    return 0
end

function RemoveFloorSuite(context, prev_context )
    for i=2,#suites do
        ScriptLib.RemoveExtraGroupSuite(context, defs.GroupID, i)
    end
	
	return 0
end

LF_Initialize_Level()


