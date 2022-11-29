-- Trigger变量
--[[
local defs = {
    ButtonLeftConfig = 51001,
    ButtonRightConfig = 51002,
    StoveConfig = 51003,
    PotConfigIDA =51004,
    PotConfigIDB =51005,
    PotConfigIDC =51006,
    targetColdTime = 14,
    targetHeatTime = 14,
    BeHitByFireTemp = 5,
    BeHitByIceWaterTemp = -5,
    SecondTempChange = { 7, -3}, -- 每秒对应上升或下降的温度变化
    StartTemp = {50,35,56},      -- ABC三壶的初始温度
    PlatFormRoute ={             -- 定义各个Route的功能，只需对应Log修改数据即可
        [300100395] = {curPos = 2,reachPos = 2,tempDirs = {2,1,2},log = "从中间移动到中间，在中间徘徊"},
        [300100396] = {curPos = 1,reachPos = 2,tempDirs = {2,1,2},log = "从左边移动到中间"},
        [300100397] = {curPos = 2,reachPos = 3,tempDirs = {2,2,1},log = "从中间移动到右边"},
        [300100398] = {curPos = 3,reachPos = 2,tempDirs = {2,1,2},log = "从右边移动到中间"},
        [300100399] = {curPos = 2,reachPos = 1,tempDirs = {1,2,2},log = "从中间移动到左边"}
    }
}

local challengeParam = {
    90, -- Time
    72, -- 72//EVENT_TIME_AXIS_PASS
    666,-- TAG
    1   -- 触发次数
}
--]]
---------------------
local tempTrigger = {
    --监听GadgetState变化
    --监听值变化
    { config_id = 2330001, name = "EVENT_VARIABLE_CHANGE_A", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp",
      condition = "", action = "action_VARIABLE_CHANGE_A", trigger_count = 0},
    { config_id = 2330002, name = "EVENT_VARIABLE_CHANGE_B", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp",
      condition = "", action = "action_VARIABLE_CHANGE_B", trigger_count = 0},
    { config_id = 2330003, name = "EVENT_VARIABLE_CHANGE_C", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp",
      condition = "", action = "action_VARIABLE_CHANGE_C", trigger_count = 0},
    { config_id = 2330004, name = "TIME_AXIS_PotOverColdA", event = EventType.EVENT_TIME_AXIS_PASS, source = "PotOverColdA",
      condition = "", action = "action_PotOverState", trigger_count = 0},
    { config_id = 2330005, name = "TIME_AXIS_PotOverColdB", event = EventType.EVENT_TIME_AXIS_PASS, source = "PotOverColdB",
      condition = "", action = "action_PotOverState", trigger_count = 0},
    { config_id = 2330006, name = "TIME_AXIS_PotOverColdC", event = EventType.EVENT_TIME_AXIS_PASS, source = "PotOverColdC",
      condition = "", action = "action_PotOverState", trigger_count = 0},
    { config_id = 2330007, name = "TIME_AXIS_PotOverHeatA", event = EventType.EVENT_TIME_AXIS_PASS, source = "PotOverHeatA",
      condition = "", action = "action_PotOverState", trigger_count = 0},
    { config_id = 2330008, name = "TIME_AXIS_PotOverHeatB", event = EventType.EVENT_TIME_AXIS_PASS, source = "PotOverHeatB",
      condition = "", action = "action_PotOverState", trigger_count = 0},
    { config_id = 2330009, name = "TIME_AXIS_PotOverHeatC", event = EventType.EVENT_TIME_AXIS_PASS, source = "PotOverHeatC",
      condition = "", action = "action_PotOverState", trigger_count = 0},
    { config_id = 2330010, name = "EVENT_VARIABLE_CHANGE_StartPotTaunt", event = EventType.EVENT_TIME_AXIS_PASS, source = "StartPotTaunt",
      condition = "", action = "action_StartPotTaunt", trigger_count = 0},
    { config_id = 2330011, name = "EVENT_VARIABLE_CHANGE_ChallengeStart", event = EventType.EVENT_VARIABLE_CHANGE, source = "startOrNot",
      condition = "", action = "action_CHALLENGESTART", trigger_count = 0},
    { config_id = 2330012, name = "TIME_AXIS_TempControl", event = EventType.EVENT_TIME_AXIS_PASS, source = "TempControl",
      condition = "", action = "action_TEMPCONTROL", trigger_count = 0},
    { config_id = 2330013, name = "PLATFORM_REACH_POINT_STOVE", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "",
      condition = "", action = "action_PLATFORM_REACH_POINT_STOVE", trigger_count = 0},
    { config_id = 2330014, name = "BUTTON_STATE_CHANGE", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "",
      condition = "", action = "action_BUTTON_STATE_CHANGE", trigger_count = 0},
    { config_id = 2330015, name = "POT_STATE_CHANGE", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "",
      condition = "", action = "action_POT_STATE_CHANGE", trigger_count = 0},
    { config_id = 2330016, name = "TIME_AXIS_ChallengeTimer", event = EventType.EVENT_TIME_AXIS_PASS, source = "ChallengeTimer",
      condition = "", action = "", trigger_count = 0,tag = tostring(challengeParam[3])},
    { config_id = 2330017, name = "EVENT_CHALLENGE_SUCCESS_LevelChange", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888",
      condition = "", action = "action_CHALLENGE_SUCCESS_LevelChange", trigger_count = 0},
    { config_id = 2330018, name = "EVENT_CHALLENGE_FAIL_LevelChange", event = EventType.EVENT_CHALLENGE_FAIL, source = "888",
      condition = "", action = "action_CHALLENGE_FAIL_LevelChange", trigger_count = 0},
}

--------初始化----------
function LF_Initialize_Level()
    for k,v in pairs(tempTrigger) do
        table.insert(triggers, v)
        table.insert(suites[1].triggers, v.name)
    end

    gadgets[defs.PotConfigIDA].server_global_value_config["SGV_Thermometer_Value"] = defs.StartTemp[1]
    gadgets[defs.PotConfigIDB].server_global_value_config["SGV_Thermometer_Value"] = defs.StartTemp[2]
    gadgets[defs.PotConfigIDC].server_global_value_config["SGV_Thermometer_Value"] = defs.StartTemp[3]

    return 0
end

--------公用函数----------
-- 当startOrNot被设置为1时，挑战开始启动
function action_CHALLENGESTART(context,evt)
    if 1 ~= evt.param1 then
        ScriptLib.PrintContextLog(context, "## TD ImmortalPot : startOrNot被设置为" .. evt.param1 .."，无视之。" )
        return 0
    end
    --GadgetState初始化
    ScriptLib.SetGadgetStateByConfigId(context,defs.StoveConfig, 201)
    ScriptLib.SetGadgetStateByConfigId(context,defs.PotConfigIDA, 201)
    ScriptLib.SetGadgetStateByConfigId(context,defs.PotConfigIDB, 201)
    ScriptLib.SetGadgetStateByConfigId(context,defs.PotConfigIDC, 201)
    -- 因为初始位置一定在中间
    ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", 2)
    ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 1)
    ScriptLib.SetGroupVariableValue(context, "ovenCTempDirection", 2)
    --开启挑战
    local challengeTime = challengeParam[1]
    ScriptLib.StartChallenge(context, 888, 245, challengeParam)

    -- 每秒统计温度计时器
    ScriptLib.InitTimeAxis(context, "TempControl", {1}, true)
    -- 挑战胜利计时器
    ScriptLib.InitTimeAxis(context, "ChallengeTimer", {challengeTime-0.5}, false)

    -- 挑战后控制第一波移动
    StoveMoveByButtonState(context)
    return 0
end

-- 挑战开始后启动的时间轴，每秒结算温度变化
function action_TEMPCONTROL(context,evt)
    -- 计算温度变化
    CalculateOvenTemp(context,"ovenA")
    CalculateOvenTemp(context,"ovenB")
    CalculateOvenTemp(context,"ovenC")

    return 0
end

-- 检测炉子抵达的地点，用来处理是否要将其运往下一站
function action_PLATFORM_REACH_POINT_STOVE(context, evt)
    if 1 ~= evt.param3 then
        return 0
    end


    if defs.StoveConfig ~= evt.param1 then
        ScriptLib.PrintContextLog(context, "## TD ImmortalPot : 检测到无关的移动，其ConfigID为" .. evt.param1 )
        return 0
    end

    local routeID = evt.param2
    local tempDirs = defs.PlatFormRoute[routeID].tempDirs
    local reachPos = defs.PlatFormRoute[routeID].reachPos
    local fireDirection = ScriptLib.GetGroupVariableValue(context, "fireDirection")

    ScriptLib.PrintContextLog(context, "## TD ImmortalPot : 炉子移动到" .. reachPos .. "。fireDirection为".. fireDirection..",当前各炉子温度方向为" .. arrayToString(tempDirs))

    ScriptLib.SetGroupVariableValue(context, "curPos", reachPos)

    -- 尝试移动炉子
    local moveState = StoveMove(context,reachPos,fireDirection)
    -- 炉子无法移动 或者 玩家已经离开按钮时 需要重新计算温度变化
    if -1 == moveState or 0 == fireDirection then
        -- 到底指定地点温度变化
        ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", tempDirs[1])
        ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", tempDirs[2])
        ScriptLib.SetGroupVariableValue(context, "ovenCTempDirection", tempDirs[3])
    end

    return 0
end

-- 按钮的状态变化，检测后用来控制炉子位移
function action_BUTTON_STATE_CHANGE(context, evt)
    if evt.param2 ~= defs.ButtonLeftConfig and evt.param2 ~= defs.ButtonRightConfig then
        return 0
    end

    local startOrNot = ScriptLib.GetGroupVariableValue(context, "startOrNot")
    if startOrNot == 0 then
        ScriptLib.PrintContextLog(context, "## TD ImmortalPot : 挑战没开的场合，无法移动炉子")
        return 0
    end

    StoveMoveByButtonState(context)

    return 0
end

-- 锅子状态侦测，一旦某个锅子爆炸了，立刻重置挑战并处理挑战存档
function action_POT_STATE_CHANGE(context,evt)
    -- Gadget是锅子且爆了，开始处理逻辑
    local potName = GetPotName(context,evt.param2)
    if 0 ~= potName and (202 == evt.param1 or 203 == evt.param1) then
        ScriptLib.PrintContextLog(context, "## TD ImmortalPot : 锅子" .. potName .. "炸了，关卡开始设置状态")
        -- 切挑战失败
        ScriptLib.StopChallenge(context, 888, 0)
    end
    return 0
end

-- 计时器结束时，关闭锅子全部状态
function action_CHALLENGE_SUCCESS_LevelChange(context,evt)
    ScriptLib.PrintContextLog(context, "## TD ImmortalPot : 挑战胜利，设置关卡状态")
    local potList = {defs.PotConfigIDA,defs.PotConfigIDB,defs.PotConfigIDC}
    for i = 1,#potList do
        local targetPot = potList[i]
        -- 全部锅子进入状态 0
        ScriptLib.SetGadgetStateByConfigId(context,targetPot, 901)
        -- 关闭全锅子的嘲讽
        StartPotTaunt(context,targetPot,0)
    end
    RecoverLevel(context)
    return 0
end

function action_CHALLENGE_FAIL_LevelChange(context,evt)
    ScriptLib.PrintContextLog(context, "## TD ImmortalPot : 挑战失败，重置关卡状态")
    local potList = {defs.PotConfigIDA,defs.PotConfigIDB,defs.PotConfigIDC}

    -- 切其它锅子进入State0
    for i = 1,#potList do
        local targetPot = potList[i]
        -- 只要锅子不是处于202或203
        local targetPotState = ScriptLib.GetGadgetStateByConfigId(context, 0, targetPot)
        if 202 ~= targetPotState and 203 ~= targetPotState then
            ScriptLib.SetGadgetStateByConfigId(context,targetPot, 0)
        end
        -- 关闭关卡计时器
        ScriptLib.EndTimeAxis(context, "ChallengeTimer")

        -- 关闭全锅子的嘲讽
        StartPotTaunt(context,targetPot,0)
    end

    RecoverLevel(context)
    return 0
end

-- 关卡回复逻辑
function RecoverLevel(context)
    -- 关闭炉子火焰
    ScriptLib.SetGadgetStateByConfigId(context,defs.StoveConfig, 0)
    -- 方向停止
    ScriptLib.SetGroupVariableValue(context, "fireDirection", 0)

    -- 设置温度变化为0
    ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", 0)
    ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 0)
    ScriptLib.SetGroupVariableValue(context, "ovenCTempDirection", 0)
    -- 停止温度运作
    ScriptLib.SetGroupVariableValue(context, "startOrNot", 0)
    -- 关闭计时器
    ScriptLib.EndTimeAxis(context, "TempControl")
    -- 温度初始化
    ScriptLib.SetGroupVariableValue(context, "ovenATemp", defs.StartTemp[1])
    ScriptLib.SetGroupVariableValue(context, "ovenBTemp", defs.StartTemp[2])
    ScriptLib.SetGroupVariableValue(context, "ovenCTemp", defs.StartTemp[3])

    -- 让炉子回到中间
    local curPos = ScriptLib.GetGroupVariableValue(context, "curPos")
    local fireDirection = 2 - curPos
    ScriptLib.StopPlatform(context, defs.StoveConfig)
    StoveMove(context,curPos,fireDirection)
    ScriptLib.SetGroupVariableValue(context, "curPos", 2)

end

-- 侦测温度值变化
function action_VARIABLE_CHANGE_A(context, evt)
    --将值同步给对应锅子,仅在201状态处理
    Pot_Pipeline(context,defs.PotConfigIDA,evt.param1)
    return 0
end

-- 侦测温度值变化
function action_VARIABLE_CHANGE_B(context, evt)
    --将值同步给对应锅子,仅在201状态处理
    Pot_Pipeline(context,defs.PotConfigIDB,evt.param1)
    return 0
end

-- 侦测温度值变化
function action_VARIABLE_CHANGE_C(context, evt)
    --将值同步给对应锅子,仅在201状态处理
    Pot_Pipeline(context,defs.PotConfigIDC,evt.param1)
    return 0
end

-- 过冷过热双检查
function action_PotOverState(context, evt)
    local state = GetKeyWord(evt.source_name) -- 返回值为 “Cold" or "Heat"
    local characterState = GetCharacterKeyWord(state)[1] -- 返回值为 冷 or 热
    local overStateValue = GetCharacterKeyWord(state)[2] -- 返回值为 203 or 202
    local targetConfigID = GetTargetConfigID(context,evt.source_name)

    if (targetConfigID == 0) then
        ScriptLib.PrintContextLog(context, "## TD ImmortalPot : source_name = ".. evt.source_name .. "非法")
        return 0
    end

    local targetPotName = GetPotName(context,targetConfigID)
    local tickTimeKey = "Over".. state .."Time"..targetPotName
    local timeAxisKey = "PotOver" ..state.. targetPotName
    local targetTime = defs.targetColdTime
    local currentTime = ScriptLib.GetGroupTempValue(context, tickTimeKey, {}) + 1 --增加1秒计时

    if 201 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, targetConfigID) then
        -- 如果锅子已经切进其它状态，关闭当前TimeAxis
        ScriptLib.PrintContextLog(context, "## TD ImmortalPot 锅炉"..targetPotName .. " 强制结束时间轴")
        ScriptLib.SetGroupTempValue(context, timeAxisKey, 0, {})
        ScriptLib.EndTimeAxis(context, timeAxisKey)
        return 0
    end

    -- 已超时
    if currentTime >= targetTime then

        ScriptLib.PrintContextLog(context, "## TD ImmortalPot 过".. characterState .."超时,关闭锅炉" .. targetPotName)
        -- 锅子切冷炸
        ScriptLib.SetGadgetStateByConfigId(context, targetConfigID, overStateValue)
        -- 时间轴结束/计时清空
        ScriptLib.SetGroupTempValue(context, timeAxisKey, 0, {})
        ScriptLib.EndTimeAxis(context, timeAxisKey)
        return 0
    else
        local IsOverState = false
        if state == "Cold" then
            IsOverState = IsOverCold(context,targetConfigID)
        end
        if state == "Heat" then
            IsOverState = IsOverHeat(context,targetConfigID)
        end
        if false == IsOverState then
            -- 已炸锅
            ScriptLib.PrintContextLog(context, "## TD ImmortalPot 锅炉".. targetPotName .. " 结束过".. characterState) --描述切换
            -- 时间轴结束/计时清空
            ScriptLib.SetGroupTempValue(context, timeAxisKey, 0, {})
            ScriptLib.EndTimeAxis(context, timeAxisKey)
            return 0
        else
            -- 锅子异常中
            ScriptLib.PrintContextLog(context, "## TD ImmortalPot 锅炉".. targetPotName .. " 持续过".. characterState .."，已经过" .. currentTime .."秒") --描述切换
            -- 计时累加
            ScriptLib.SetGroupTempValue(context, tickTimeKey, currentTime, {})
            return 0
        end
    end
    return 0
end

-- 侦测LD调用
function action_StartPotTaunt(context, evt)
    local actionName = evt.source_name
    ScriptLib.PrintContextLog(context, "## TD ImmortalPot : 嘲讽开启判定 actionName = "..actionName .. " tempValue = " .. evt.param1 - evt.param2)
    if 1 == evt.param1 - evt.param2 then
        local functionParam1 = ScriptLib.GetGroupTempValue(context,actionName .. "Param1",{})
        local functionParam2 = ScriptLib.GetGroupTempValue(context,actionName .. "Param2",{})
        StartPotTaunt(context,functionParam1,functionParam2)
    end
    return 0
end

-- serverLuaCall 锅子挨火打
function BeHitByFire(context, evt)
    ScriptLib.PrintContextLog(context, "## Immortal 锅子挨火打| source -> "..context.source_entity_id.." | target -> "..context.target_entity_id)
    local configId = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
    local targetPotName = GetPotName(context,configId)
    local tempKey = "oven".. targetPotName .. "Temp"
    local tempValue = ScriptLib.GetGroupVariableValue(context, tempKey)
    ScriptLib.SetGroupVariableValue(context,tempKey,tempValue+defs.BeHitByFireTemp)
    ScriptLib.PrintContextLog(context, "## Immortal 锅子挨火打| Change "..tempKey.." from" .. tempValue ..
            " to ".. tempValue+defs.BeHitByFireTemp)
    return 0
end

-- serverLuaCall 锅子挨冰水打
function BeHitByIceWater(context, evt)
    ScriptLib.PrintContextLog(context, "## Immortal 锅子挨冰水打| source -> "..context.source_entity_id.." | target -> "..context.target_entity_id)
    local configId = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
    local targetPotName = GetPotName(context,configId)
    local tempKey = "oven".. targetPotName .. "Temp"
    local tempValue = ScriptLib.GetGroupVariableValue(context, tempKey)
    ScriptLib.SetGroupVariableValue(context,tempKey,tempValue+defs.BeHitByIceWaterTemp)
    ScriptLib.PrintContextLog(context, "## Immortal 锅子挨冰水打| Change "..tempKey.." from" .. tempValue ..
            " to ".. tempValue+defs.BeHitByIceWaterTemp)
    return 0
end

------------设置仙人锅开启嘲讽---------
-- 控制锅子是否开启嘲讽
function StartPotTaunt(context,configId,startTaunt)
    ScriptLib.PrintContextLog(context, "## TD ImmortalPot : configId = "..configId .. " startTaunt = " .. startTaunt)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, configId, "SGV_Is_Taunting", startTaunt)
    return 0
end
--------私有函数----------
-- 温度管理管线
function Pot_Pipeline(context,config_id,value)
    -- 即时更新SGV_Thermometer_Value
    ScriptLib.PrintContextLog(context, "## TD ImmortalPot : configId = ".. config_id .. " SGV_Thermometer_Value= " .. value)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, config_id, "SGV_Thermometer_Value", value)

    -- 确认是否进入炸锅倒计时
    Pot_OverColdPipeline(context,config_id)
    Pot_OverHeatPipeline(context,config_id)
    return 0
end

-- 过冷检测管线
function Pot_OverColdPipeline(context,config_id)
    local targetPotName = GetPotName(context,config_id)
    local tempKey = "PotOverCold".. targetPotName
    local tickTimeKey = "OverColdTime"..targetPotName
    if IsOverCold(context,config_id) and 1 ~= ScriptLib.GetGroupTempValue(context, tempKey, {}) then
        -- 过冷状态且没有开启独立时间轴时
        local coldTimeAxis = {}
        local timeValue = 1
        local targetColdTime = math.ceil(defs.targetColdTime/timeValue)
        -- 解析时间轴数组
        for i = 1, targetColdTime, 1 do
            coldTimeAxis[i] = timeValue
            timeValue = timeValue + 1
        end
        -- tempKey依赖时间轴结束自己关闭
        ScriptLib.SetGroupTempValue(context, tickTimeKey, 0, {})
        ScriptLib.SetGroupTempValue(context, tempKey, 1, {})
        -- 开启一个每秒Tick的时间轴
        ScriptLib.InitTimeAxis(context, tempKey, coldTimeAxis, false)
        ScriptLib.ShowReminder(context, 400066)
        ScriptLib.PrintContextLog(context, "## TD ImmortalPot 开启OverCold观测 Send Time Axis")
    end
    return 0
end

-- 过热检测管线
function Pot_OverHeatPipeline(context,config_id)
    local targetPotName = GetPotName(context,config_id)
    local tempKey = "PotOverHeat".. targetPotName
    local tickTimeKey = "OverHeatTime"..targetPotName
    if IsOverHeat(context,config_id) and 1 ~= ScriptLib.GetGroupTempValue(context, tempKey, {}) then
        -- 过冷状态且没有开启独立时间轴时
        local heatTimeAxis = {}
        local timeValue = 1
        local targetColdTime = math.ceil(defs.targetHeatTime/timeValue)
        -- 解析时间轴数组
        for i = 1, targetColdTime, 1 do
            heatTimeAxis[i] = timeValue
            timeValue = timeValue + 1
        end
        -- tempKey依赖时间轴结束自己关闭
        ScriptLib.SetGroupTempValue(context, tickTimeKey, 0, {})
        ScriptLib.SetGroupTempValue(context, tempKey, 1, {})
        -- 开启一个每秒Tick的时间轴
        ScriptLib.InitTimeAxis(context, tempKey, heatTimeAxis, false)
        ScriptLib.ShowReminder(context, 400066)
        ScriptLib.PrintContextLog(context, "## TD ImmortalPot 开启OverHeat观测 Send Time Axis")
    end
    return 0
end

-- 返回当前ConfigID是否过冷
function IsOverCold(context,config_id)
    if config_id == nil then
        return true
    end
    local safeFrom = gadgets[config_id].server_global_value_config["SGV_Thermometer_SafeFrom"] * 100
    local targetPotName = GetPotName(context,config_id)
    local tempKey = "oven".. targetPotName .. "Temp"
    local tempValue = ScriptLib.GetGroupVariableValue(context, tempKey)
    return tempValue<=safeFrom
end

-- 返回当前ConfigID是否过热
function IsOverHeat(context,config_id)
    if config_id == nil then
        return true
    end
    local safeTo = gadgets[config_id].server_global_value_config["SGV_Thermometer_SafeTo"] * 100
    local targetPotName = GetPotName(context,config_id)
    local tempKey = "oven".. targetPotName .. "Temp"
    local tempValue = ScriptLib.GetGroupVariableValue(context, tempKey)
    return tempValue>=safeTo
end

-- 根据锅炉当前为加热或降温设置锅子温度
function CalculateOvenTemp(context,potName)
    local tempDir = ScriptLib.GetGroupVariableValue(context, potName.."TempDirection")
    local temp = ScriptLib.GetGroupVariableValue(context, potName.."Temp")

    if tempDir > 2 or tempDir < 1 then
        ScriptLib.PrintContextLog(context, "## TD ImmortalPot : 锅子".. potName .."方向不合法，值为" .. tempDir)
    end

    temp = temp + defs.SecondTempChange[tempDir]
    temp = math.max(math.min(temp,100),0)

    ScriptLib.SetGroupVariableValue(context, potName.."Temp", temp)

    return 0
end

--根据ConfigID或Pos信息,获取对应锅关键词
function GetPotName(context,keyName)
    if keyName == defs.PotConfigIDA or keyName == 1 then
        return "A"
    end
    if keyName == defs.PotConfigIDB or keyName == 2 then
        return "B"
    end
    if keyName == defs.PotConfigIDC or keyName == 3 then
        return "C"
    end
    ScriptLib.PrintContextLog(context, "## TD ImmortalPot : GetPotName Error! KeyName = ".. keyName)
    return 0
end

--根据时间轴关键词,获取对应锅ConfigID
function GetTargetConfigID(context,keyName)
    if keyName == "PotOverHeatA" or keyName == "PotOverColdA" then
        return defs.PotConfigIDA
    end
    if keyName == "PotOverHeatB" or keyName == "PotOverColdB" then
        return defs.PotConfigIDB
    end
    if keyName == "PotOverHeatC" or keyName == "PotOverColdC" then
        return defs.PotConfigIDC
    end
    ScriptLib.PrintContextLog(context, "## TD ImmortalPot :  GetTargetConfigID Error! KeyName = ".. keyName)
    return 0
end

-- 根据当前踏板状态控制锅炉移动
function StoveMoveByButtonState(context)
    local leftState = ScriptLib.GetGadgetStateByConfigId(context, 0, defs.ButtonLeftConfig)
    local rightState = ScriptLib.GetGadgetStateByConfigId(context, 0, defs.ButtonRightConfig)
    local curPos = ScriptLib.GetGroupVariableValue(context, "curPos")
    ScriptLib.PrintContextLog(context, "## TD ImmortalPot : LeftState：" .. leftState .. "RightState" .. rightState)
    local fireDirection = 0
    if 201 == leftState and 0 == rightState then
        fireDirection = -1
        ScriptLib.SetGroupVariableValue(context, "fireDirection", fireDirection)
        StoveMove(context,curPos,fireDirection)
        return 0
    end
    if 0 == leftState and 201 == rightState then
        fireDirection = 1
        ScriptLib.SetGroupVariableValue(context, "fireDirection", fireDirection)
        StoveMove(context,curPos,fireDirection)
        return 0
    end
    if 201 == leftState and 201 == rightState then
        ScriptLib.PrintContextLog(context, "## TD ImmortalPot : 左右按钮已全部开启，暂时维持之前方向")
        ScriptLib.SetGroupVariableValue(context, "fireDirection", 0)
        return 0
    end
    if 0 == leftState and 0 == rightState then
        ScriptLib.SetGroupVariableValue(context, "fireDirection", 0)
        return 0
    end
    return 0
end

-- 管理炉子移动的方法
function StoveMove(context,curPos,fireDirection)
    local targetPos = curPos + fireDirection
    local routeID = GetRouteID(curPos,targetPos)

    if 0 == routeID then
        ScriptLib.PrintContextLog(context, "## TD ImmortalPot : StoveMove 不成功，参数为 curPos =" .. curPos .. ",fireDirection =" .. fireDirection )
        return -1
    end

    ScriptLib.PrintContextLog(context, "## TD ImmortalPot : 炉子开始移动，" .. defs.PlatFormRoute[routeID].log)
    ScriptLib.SetPlatformRouteId(context, defs.StoveConfig, routeID)
    ScriptLib.StartPlatform(context, defs.StoveConfig)

    local potName = GetPotName(context,curPos)
    local targetPotTempDirection = "oven"..potName.."TempDirection"
    ScriptLib.SetGroupVariableValue(context, targetPotTempDirection, 2)
    ScriptLib.PrintContextLog(context, "## TD ImmortalPot : 因为炉子移开，设置锅子" .. potName .. '进入降温状态')

    return 0
end

--根据时间轴关键词,获取冷还是热
function GetKeyWord(keyName)
    if keyName == "PotOverColdA" or keyName == "PotOverColdB" or keyName == "PotOverColdC" then
        return "Cold"
    end
    if keyName == "PotOverHeatA" or keyName == "PotOverHeatB" or keyName == "PotOverHeatC" then
        return "Heat"
    end
    return 0
end

--根据冷还是热，返回相关汉字 以及 GadgetState
function GetCharacterKeyWord(keyName)
    if keyName == "Cold" then
        return {"冷",203}
    end
    if keyName == "Heat"then
        return {"热",202}
    end
    return { "无",0 }
end

-- 计算对应的RouteID
function GetRouteID(curPos,targetPos)
    for k,v in pairs(defs.PlatFormRoute) do
        if curPos == v.curPos and targetPos == v.reachPos then
            return k
        end
    end
    return 0
end

-- 简单拆分一个数组
function arrayToString(array)
    local s = "{"
    for k,v in pairs(array) do
        if k < #array then
            s = s .. v ..","
        else
            s = s .. v
        end
    end
    s = s .."}"
    return s
end

LF_Initialize_Level()
--- ServerUploadTool Save to [/root/env/data/lua/common/V2_1]  ---
