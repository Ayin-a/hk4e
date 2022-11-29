-- 当地板全部点亮时，终点区域显示特效(临时K一个终点特效Gadget），提示全体玩家移动到对应区域
-- 全体玩家进入区域时，玩法结束，所有玩家宣布胜利
-- 倒计时结束时，玩法结束。如果地板全部点亮，在区域中的玩家宣布胜利
-- 正式代码 --
local TempTrigger = {
    { name = "GROUP_LOAD_5000", config_id = 5000, event = EventType.EVENT_GROUP_LOAD,
      source = "", condition = "", action = "action_GROUP_LOAD_5000", trigger_count = 0 },
    { name = "TIME_AXIS_PASS_5001", config_id = 5001, event = EventType.EVENT_TIME_AXIS_PASS,
      source = "ShowFloor", condition = "", action = "action_ShowFloor", trigger_count = 0 },
    { name = "TIME_AXIS_PASS_5002", config_id = 5002, event = EventType.EVENT_TIME_AXIS_PASS,
      source = "ShowFloorEnd", condition = "", action = "action_ShowFloorEnd", trigger_count = 0 },
    { name = "TIME_AXIS_PASS_5003", config_id = 5003, event = EventType.EVENT_TIME_AXIS_PASS,
      source = "EndFloor", condition = "", action = "action_EndFloor", trigger_count = 0 },
    { name = "TIME_AXIS_PASS_5004", config_id = 5004, event = EventType.EVENT_TIME_AXIS_PASS,
      source = "GameStart", condition = "", action = "action_GameStart", trigger_count = 0 },
    { name = "ENTER_REGION_Fall", config_id = 5100, event = EventType.EVENT_ENTER_REGION,
      source = "", condition = "condition_ENTER_REGION_Fall", action = "action_ENTER_REGION_Fall", trigger_count = 0, forbid_guest = false },
    { name = "floorStateChange", config_id = 5101, event = EventType.EVENT_GADGET_STATE_CHANGE,
      source = "", condition = "", action = "action_floorStateChange", trigger_count = 0 },
    { name = "ENTER_REGION_Over", config_id = 5102, event = EventType.EVENT_ENTER_REGION,
      source = "", condition = "", action = "action_ENTER_REGION_Over", trigger_count = 0, forbid_guest = false },
    { name = "gallery_stop", config_id = 5200, event = EventType.EVENT_GALLERY_STOP,
      source = "", condition = "", action = "action_gallery_stop", trigger_count = 0 },
    { name = "GM_Mode", config_id = 5300, event = EventType.EVENT_VARIABLE_CHANGE,
      source = "GM_CheckConfigIDGadgetState", condition = "", action = "action_GM_Mode", trigger_count = 0 }
}

local Enum ={
    EnterWrongNum = "wrong_position_memoryfloor",
    TimeEnterRegion = "get_destination_memoryfloor"
}
-- ==============初始化代码声明=============

-- 初始化地板位置
function LF_Initialize_Points()
    -- body
    local points = {}
    for i = 1, defs.FloorArray_Size.x, 1 do
        points[i] = {}
        for j = 1, defs.FloorArray_Size.y, 1 do
            table.insert(points[i], {
                x = defs.Pos_Standard.x + defs.Pos_Range.x * (i - 1),
                y = defs.Pos_Standard.y,
                z = defs.Pos_Standard.z - defs.Pos_Range.y * (j - 1)
            })
            -- gadgets录入
            local floorGadgetID = defs.FloorGadgetID[defs.InitFloorStyle[i][j]]
            gadgets[100000 * i + j] = { config_id = 100000 * i + j, gadget_id = floorGadgetID,
                                        pos = points[i][j], rot = defs.Rot_Standard, level = 1 }
            table.insert(suites[1].gadgets, i * 100000 + j)
        end
    end

    for j = 1, defs.FlowerNumRangeMax, 1 do
        gadgets[21300 + j] = { config_id = 21300 + j, gadget_id = defs.FlowerGadgetID,
                               pos = { x = 0.000, y = 0.000, z = 0.000 },
                               rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
    end

    -- 阻止下落的地板
    gadgets[22300] = { config_id = 22300, gadget_id = 70310042, pos = { x = -224.600, y = 18.304, z = -5.092 },
                       rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }

    return 0
end

function LF_Initialize_Variable()
    local var = { config_id=50000001,name = "CurrentFloorArrayIndex", value = 1, no_refresh = true }
    variables[var.name] = var
    var = { config_id=50000002,name = "CurrentPhasePlayIndex", value = 1, no_refresh = true }
    variables[var.name] = var
    var = { config_id=50000003,name = "CurrentFlowerPathIndex", value = 1, no_refresh = true }
    variables[var.name] = var
    var = { config_id=50000004,name = "ArrayPathStep", value = 1, no_refresh = true }
    variables[var.name] = var
    var = { config_id=50000005,name = "GM_CheckConfigIDGadgetState", value = 0, no_refresh = true }
    variables[var.name] = var

    return 0
end

-- 初始化
function LF_Initialize_Level()
    LF_Initialize_Points()
    for i, v in ipairs(TempTrigger) do
        table.insert(triggers, v)
        table.insert(suites[init_config.suite].triggers, v.name)
    end
    LF_Initialize_Variable()

    return 0
end
-- ==============独立调用逻辑==============


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



function OnEnterWrongFloor(context)
    local wrongNum = ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.EnterWrongNum, context.uid)

    
    SubController(context, defs.FallScore, "fall_down_count_6008")
    -- 扣除单个玩家分数
    ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, defs.MainGroupID, 1, context.uid, defs.FallScore)

    ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : Player" .. context.uid .. "Add FallScore" .. defs.FallScore)

    ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.EnterWrongNum, context.uid, wrongNum + 1)

    ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : Player: " .. context.uid .. "Have Enter " .. wrongNum + 1 .." Wrong Floor")

    return 0
end
-- ==============游戏开始流程==============

-- 点击按钮后触发，游戏开始流程
function StartGallery(context, prev_context, activeStage)
    --亮灯序号初始化
    ScriptLib.SetGroupVariableValue(context, "ArrayPathStep", 1)
    ScriptLib.SetGroupTempValue(context, "RightFloorNum", 0, {})

    local currentPhasePlayIndex = ScriptLib.GetGroupVariableValue(context, "CurrentPhasePlayIndex")
    LF_CallFloorTimer(context, currentPhasePlayIndex)

    ScriptLib.StartGallery(context, defs.GalleryID)

        ScriptLib.SetGroupTempValue(context, "GameStartTime", ScriptLib.GetServerTime(context), {})
    return 0
end

function LF_CallFloorTimer(context, currentPhasePlayIndex)
    local currentPhasePlay = PhasePlay[currentPhasePlayIndex]
    local currentFloorArrayIndex = ScriptLib.GetGroupVariableValue(context, "CurrentFloorArrayIndex")
    local currentArrayPath = currentPhasePlay.ArrayPath[currentFloorArrayIndex]
    local showFloorTimeAxis = {}
    local timeValue = currentPhasePlay.EachFloorShowTime
    for i = 1, #currentArrayPath, 1 do
        showFloorTimeAxis[i] = timeValue
        timeValue = timeValue + currentPhasePlay.EachFloorShowTime
    end

    if currentPhasePlay.ShowMode == 1 then
        ScriptLib.ShowReminder(context, 358000013)
        -- 地板统一结束逻辑
        ScriptLib.InitTimeAxis(context, "ShowFloor", showFloorTimeAxis, false)
        ScriptLib.InitTimeAxis(context, "ShowFloorEnd", { timeValue + currentPhasePlay.LastFloorEndShowTime }, false)
        ScriptLib.InitTimeAxis(context, "GameStart", { timeValue + currentPhasePlay.LastFloorEndShowTime + currentPhasePlay.DelayForStartGame }, false)

        ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : Have Send Time Axis for GameStart")
    end

    if currentPhasePlay.ShowMode == 2 then
        ScriptLib.ShowReminder(context, 358000014)
        local arrayPathHalfLength = math.floor(#currentArrayPath * currentPhasePlay.SnakeRate)
        -- 地板贪食蛇结束逻辑
        local eachFloorEndTime = currentPhasePlay.EachFloorShowTime * arrayPathHalfLength
        local endFloorTimeAxis = {}
        for k, v in ipairs(showFloorTimeAxis) do
            endFloorTimeAxis[k] = v + eachFloorEndTime - 0.2
        end
        ScriptLib.SetGroupTempValue(context, "ArrayPathEndStep", 1, {})
        ScriptLib.InitTimeAxis(context, "ShowFloor", showFloorTimeAxis, false)
        ScriptLib.InitTimeAxis(context, "EndFloor", endFloorTimeAxis, false)
        ScriptLib.InitTimeAxis(context, "GameStart", { endFloorTimeAxis[#endFloorTimeAxis] + currentPhasePlay.DelayForStartGame }, false)

        ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : Have Send Time Axis for GameStart")
    end

    return 0
end

-- 加载时决定好地板，并提前加载全量错误地板
function action_GROUP_LOAD_5000(context, evt)
    if 1 ==  ScriptLib.GetGroupTempValue(context, "FirstLoad", {}) then
        return 0
    end

    ScriptLib.PrintContextLog(context, "## ================ INITIALIZE 12 ==============")
    math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
    local randomPhasePlayIndex = math.random(#PhasePlay)
    local randomFloorArrayIndex = math.random(#PhasePlay[randomPhasePlayIndex].FloorArrays)

    -- QA用测试接口
    local tempPhasePlayIndex = ScriptLib.GetFleurFairMultistagePlayGalleryTempValue(context,defs.MainGroupID,1,"6008_PHASEPLAYINDEX")
    local tempFloorArrayIndex = ScriptLib.GetFleurFairMultistagePlayGalleryTempValue(context,defs.MainGroupID,1,"6008_FLOORARRAYINDEX")
    ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : QASet PhasePlayIndex" .. tempPhasePlayIndex)
    ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : QASet PhasePlayIndex" .. tempFloorArrayIndex)
    if tempPhasePlayIndex > 0 and tempPhasePlayIndex <= #PhasePlay then
        randomPhasePlayIndex = tempPhasePlayIndex
        ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : QACheck randomPhasePlayIndex" .. randomPhasePlayIndex)
        if tempFloorArrayIndex > 0 and tempFloorArrayIndex <= #PhasePlay[randomPhasePlayIndex].FloorArrays then
            randomFloorArrayIndex = tempFloorArrayIndex
            ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : QACheck randomPhasePlayIndex" .. randomFloorArrayIndex)
        else
            randomFloorArrayIndex = math.random(#PhasePlay[randomPhasePlayIndex].FloorArrays)
            ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : QACheck other randomPhasePlayIndex" .. randomFloorArrayIndex)
        end
    end

    ScriptLib.SetGroupVariableValue(context, "CurrentPhasePlayIndex", randomPhasePlayIndex)
    ScriptLib.SetGroupVariableValue(context, "CurrentFloorArrayIndex", randomFloorArrayIndex)
    ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : Choose Current Floor Array Index" .. randomFloorArrayIndex)
    local tempArray = PhasePlay[randomPhasePlayIndex].FloorArrays[randomFloorArrayIndex]
    for i = 1, defs.FloorArray_Size.x do
        for j = 1, defs.FloorArray_Size.y do
            if 0 == tempArray[i][j] then
                if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 100000 * i + j, 201) then
                    ScriptLib.PrintContextLog(context, "## TD_ErrorLog : cid -> " .. 100000 * i + j .. " | gadgetState -> " .. 201)
                    return -1
                end
            end
        end
    end
    Set_Flower(context, randomPhasePlayIndex, randomFloorArrayIndex)

    ScriptLib.SetGroupTempValue(context, "FirstLoad", 1, {})
    return 0
end

-- 加载时设置初始化的位置
function Set_Flower(context,randomPhasePlayIndex, randomFloorArrayIndex)

    math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 5))
    local tempFlowerPath = PhasePlay[randomPhasePlayIndex].FlowerPath[randomFloorArrayIndex]
    local randomPathIndex = math.random(#tempFlowerPath)
    local flowerNum = 0
    for k, v in ipairs(tempFlowerPath[randomPathIndex]) do
        if v >= 1 then
            flowerNum = flowerNum + 1
        end
    end

    ScriptLib.SetGroupVariableValue(context, "CurrentFlowerPathIndex", randomPathIndex)
    ScriptLib.SetGroupTempValue(context, "FlowerNum", flowerNum, {})

    return 0
end

-- 控制地板灯亮部分的时间轴,每次触发会处理序列中的1个地板
function action_ShowFloor(context, evt)
    -- 获取当前序列进度
    local currentPhasePlayIndex = ScriptLib.GetGroupVariableValue(context, "CurrentPhasePlayIndex")
    local currentFloorArrayIndex = ScriptLib.GetGroupVariableValue(context, "CurrentFloorArrayIndex")
    local currentFlowerPathIndex = ScriptLib.GetGroupVariableValue(context, "CurrentFlowerPathIndex")
    local arrayPathStep = ScriptLib.GetGroupVariableValue(context, "ArrayPathStep")

    SetFloorGadgetState(context, currentPhasePlayIndex, currentFloorArrayIndex, arrayPathStep, 901)
    CreateFlowerGadget(context, currentPhasePlayIndex, currentFloorArrayIndex, currentFlowerPathIndex, arrayPathStep)

    -- 更新当前序列进度
    ScriptLib.SetGroupVariableValue(context, "ArrayPathStep", arrayPathStep + 1)

    return 0
end

-- 控制地板关闭部分的TIMEAXIS,每次触发会处理序列中的1个地板
function action_EndFloor(context, evt)
    -- 获取当前序列进度
    local currentPhasePlayIndex = ScriptLib.GetGroupVariableValue(context, "CurrentPhasePlayIndex")
    local currentFloorArrayIndex = ScriptLib.GetGroupVariableValue(context, "CurrentFloorArrayIndex")
    local currentFlowerPathIndex = ScriptLib.GetGroupVariableValue(context, "CurrentFlowerPathIndex")
    local arrayPathEndStep = ScriptLib.GetGroupTempValue(context, "ArrayPathEndStep", {})

    SetFloorGadgetState(context, currentPhasePlayIndex, currentFloorArrayIndex, arrayPathEndStep, 903)
    SetFlowerGadgetState(context, currentPhasePlayIndex, currentFloorArrayIndex, currentFlowerPathIndex, arrayPathEndStep, 202)

    -- 更新当前序列进度
    ScriptLib.SetGroupTempValue(context, "ArrayPathEndStep", arrayPathEndStep + 1, {})

    return 0
end


function SetFloorGadgetState(context, currentPhasePlayIndex, currentFloorArrayIndex, arrayPathStep, gadgetState)
    local targetArrayXY = PhasePlay[currentPhasePlayIndex].ArrayPath[currentFloorArrayIndex][arrayPathStep]
    local targetConfigID = 100000 * targetArrayXY[1] + targetArrayXY[2]
    ScriptLib.SetGadgetStateByConfigId(context, targetConfigID, gadgetState)
end

function CreateFlowerGadget(context, currentPhasePlayIndex, currentFloorArrayIndex, currentFlowerPathIndex, arrayPathStep)
    local targetArrayXY = PhasePlay[currentPhasePlayIndex].ArrayPath[currentFloorArrayIndex][arrayPathStep]
    local targetConfigID = 100000 * targetArrayXY[1] + targetArrayXY[2]
    local targetFlowerStep = PhasePlay[currentPhasePlayIndex].FlowerPath[currentFloorArrayIndex][currentFlowerPathIndex][arrayPathStep]
    if targetFlowerStep >= 1 then
        local flowerConfigID = 21300 + targetFlowerStep
        local pos = gadgets[targetConfigID].pos
        local rot = gadgets[targetConfigID].rot
        ScriptLib.CreateGadgetByConfigIdByPos(context, flowerConfigID, { x = pos.x, y = pos.y + defs.FlowerHeight, z = pos.z}, rot)
    end

    return 0
end

function SetFlowerGadgetState(context, currentPhasePlayIndex, currentFloorArrayIndex, currentFlowerPathIndex, arrayPathStep, gadgetState)
    local targetFlowerStep = PhasePlay[currentPhasePlayIndex].FlowerPath[currentFloorArrayIndex][currentFlowerPathIndex][arrayPathStep]
    if targetFlowerStep >= 1 then
        local flowerConfigID = 21300 + targetFlowerStep
        ScriptLib.SetGadgetStateByConfigId(context, flowerConfigID, gadgetState)
    end

    return 0
end

-- 处理ShowFloorEnd
function action_ShowFloorEnd(context, evt)
    -- 遍历地板
    ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : Start End Show Floor")
    LF_SetFloorArrayGadgetState(context, 903)
    local flowerNum = ScriptLib.GetGroupTempValue(context, "FlowerNum", {})
    for i = 1, flowerNum, 1 do
        local flowerConfigID = 21300 + i
        ScriptLib.SetGadgetStateByConfigId(context, flowerConfigID, 202)
    end

    return 0
end

-- 批量设置地板GadgetState
function LF_SetFloorArrayGadgetState(context, gadgetState)
    local currentPhasePlayIndex = ScriptLib.GetGroupVariableValue(context, "CurrentPhasePlayIndex")
    local currentFloorArrayIndex = ScriptLib.GetGroupVariableValue(context, "CurrentFloorArrayIndex")
    local currentArrayPath = PhasePlay[currentPhasePlayIndex].ArrayPath[currentFloorArrayIndex]

    ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : Set array" .. currentFloorArrayIndex .. " to " .. gadgetState)
    for i = 1, #currentArrayPath do
        local targetArrayXY = currentArrayPath[i]
        local targetConfigID = 100000 * targetArrayXY[1] + targetArrayXY[2]
        if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, targetConfigID, gadgetState) then
            ScriptLib.PrintContextLog(context, "## TD_ErrorLog : cid -> " .. targetConfigID .. " | gadgetState -> " .. gadgetState)
            return -1
        end
    end
    return 0
end

-- 开始游戏,关闭空气墙
function action_GameStart(context, evt)
    -- 遍历地板
    ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : StartGame")
    ScriptLib.ShowReminder(context, 358000010)
    ScriptLib.SetGadgetStateByConfigId(context, defs.AirWallConfigId, 201)

    return 0
end

-- 地板GadgetState校验
function action_floorStateChange(context, evt)
    -- evt.param1 : 物件修改后的state
    -- evt.param2 : 物件在group中的config_id
    -- evt.param3 : 物件修改前的state
    local currentPhasePlayIndex = ScriptLib.GetGroupVariableValue(context, "CurrentPhasePlayIndex")
    local currentFloorArrayIndex = ScriptLib.GetGroupVariableValue(context, "CurrentFloorArrayIndex")
    local targetArrayPath = PhasePlay[currentPhasePlayIndex].ArrayPath[currentFloorArrayIndex]
    if evt.param1 ~= 902 then
        ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : Floor " .. evt.param2 .. "Go To " .. evt.param1)
    end

    if evt.param1 ~= 902 or not checkRightFloorConfigID(targetArrayPath, evt.param2) then
        return 0
    end

    local rightFloorNum = ScriptLib.GetGroupTempValue(context, "RightFloorNum", {})
    rightFloorNum = rightFloorNum + 1
    if rightFloorNum >= #targetArrayPath then
        -- 开启终点开关(suite2配置终点Gadget以及相关Field)
        ScriptLib.AddExtraGroupSuite(context, defs.GroupID, 2)
    end
    ScriptLib.SetGroupTempValue(context, "RightFloorNum", rightFloorNum, {})

    return 0
end

function checkRightFloorConfigID(targetArrayPath, targetConfigID)
    for i = 1, #targetArrayPath, 1 do
        local targetArrayXY = targetArrayPath[i]
        local currentConfigID = 100000 * targetArrayXY[1] + targetArrayXY[2]
        if currentConfigID == targetConfigID then
            return true
        end
    end
    return false
end

-- 落下时的传送逻辑
function condition_ENTER_REGION_Fall(context, evt)
    -- 判断角色数量不少于1
    if evt.param1 ~= defs.FallRegionConfigID then
        return false
    end
    if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
        return false
    end
    return true
end

function action_ENTER_REGION_Fall(context, evt)

    ScriptLib.TransPlayerToPos(context,
            { uid_list = { evt.uid }, pos = defs.RevivePoint.pos,
              radius = defs.RevivePoint.radius, rot = defs.RevivePoint.rot, is_skip_ui = false })

    return 0
end

function action_ENTER_REGION_Over(context, evt)
    if evt.param1 ~= defs.OverRegionConfigID then
        return 0
    end
    if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
        return 0
    end

    -- 第一次到达终点判定
    if ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.TimeEnterRegion, context.uid) == 0 then
        local timeValue = ScriptLib.GetServerTime(context) - ScriptLib.GetGroupTempValue(context, "GameStartTime",{})
        ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID,1,Enum.TimeEnterRegion,context.uid, timeValue)

        -- 处理玩家抵达终点加分
        ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, defs.MainGroupID, 1, evt.uid, defs.OverScore)
        ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : Player" .. evt.uid .. "Add OverScore" .. defs.OverScore)
    end

    -- 处理是否提前结束游戏
    local UidList = ScriptLib.GetSceneUidList(context)
    local entityCount = 0
    for i,v in ipairs(UidList) do
        if ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.TimeEnterRegion, v) > 0 then
            entityCount = entityCount + 1
        end
    end

    -- 判断联机角色数量不少于1
    if entityCount >= #UidList then
        ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : Player" .. evt.uid .. "Is Last Enter")
        -- 召唤一块透明地板阻止全部玩家下坠
        ScriptLib.CreateGadget(context, 22300)
        ScriptLib.StopGallery(context, defs.GalleryID, false)
    else
        ScriptLib.FinishFleurFairGalleryStageByUid(context, defs.MainGroupID, 1, evt.uid, false)
        ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : Player" .. evt.uid .. "Is Waiting")
    end

    return 0
end

-- 游廊结束逻辑
function action_gallery_stop(context, evt)
    -- 游廊结束时，判断是否超时
    -- 未超时则为接满分数

    for i=2,#suites do
        ScriptLib.RemoveExtraGroupSuite(context, defs.GroupID, i)
    end

    ActionAddEnergy(context)

    if evt.param2 == 0 then
        -- 超时
        ScriptLib.ExecuteGroupLua(context, defs.MainGroupID, "EndPlayStage", { 0, defs.GroupID })
    else
        ScriptLib.ExecuteGroupLua(context, defs.MainGroupID, "EndPlayStage", { 1, defs.GroupID })
    end

    return 0
end

function RemoveFloorSuite(context, prev_context )
    for i=2,#suites do
        ScriptLib.RemoveExtraGroupSuite(context, defs.GroupID, i)
    end

     return 0
end



function ActionAddEnergy( context )
    --结算未抵达终点的全部玩家
    local UidList = ScriptLib.GetSceneUidList(context)
    for i,v in ipairs(UidList) do
        ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, "collect_energy_6008", v, 5 * ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, "get_random_flora", v))

        ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, "fall_down_count_6008", v, -5 * ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.EnterWrongNum, v))

        if ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.TimeEnterRegion, v) == 0 then
            -- 未抵达终点
            --强行设置跌落参数
            ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.EnterWrongNum, v, -1)
            ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.TimeEnterRegion, v, 100)

            ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, "memory_get_time_6008", v, 100)

            --watcher结算
            ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_memory_get_time_6008", v, 100)
            ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_wrong_position_memoryfloor", v, -1)

            ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, defs.MainGroupID, 1, v, defs.NoArrivalScore)
            ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : Player" .. v .. "Add NoArrivalScore" .. defs.NoArrivalScore)
            ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, "defeated_timelimit_challenge_6008", v, defs.NoArrivalScore)
        else

            --watcher结算
            ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_memory_get_time_6008", v, ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.TimeEnterRegion, v))
            ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_wrong_position_memoryfloor", v, ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.EnterWrongNum, v))

            ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, "memory_get_time_6008", v, ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.TimeEnterRegion, v))
            --达到终点加能量
            ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, "complete_timelimit_challenge_6008", v, defs.OverScore)
            -- 猜错地板次数
            if ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.EnterWrongNum, v) == 0 then
                ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, defs.MainGroupID, 1, v, defs.PerfectOverScore)
                ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : Player" .. v .. "Add PerfectOverScore" .. defs.PerfectOverScore)
                ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, "perfect_complete_timelimit_challenge_6008", v, defs.PerfectOverScore)
            end
        end
    end

    return 0
end

function action_GM_Mode(context, evt)
    -- GROUP SETVAR 235800002 GM_CheckConfigIDGadgetState “configID”
    local configID = ScriptLib.GetGroupVariableValue(context, "GM_CheckConfigIDGadgetState")
    if 0 ~= configID then
        local currentGadgetState = ScriptLib.GetGadgetStateByConfigId(context,defs.GroupID,configID)
        ScriptLib.PrintContextLog(context, "## TD_RecordFloorMemory : ConfigID " .. configID .. " Gadget State Is " .. currentGadgetState)
    end

    return 0
end

LF_Initialize_Level()