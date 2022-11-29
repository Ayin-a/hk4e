-- Trigger变量
--[[
local defs = {
    PotConfigIDA =148004,
    PotConfigIDB =148005,
    PotConfigIDC =148006,
    targetColdTime = 10,
    targetHeatTime = 10,
    BeHitByFireTemp = 10,
    BeHitByIceWaterTemp = -10
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
      condition = "", action = "action_StartPotTaunt", trigger_count = 0}
}

--------初始化----------
function LF_Initialize_Level()
    for k,v in pairs(tempTrigger) do
        table.insert(triggers, v)
        table.insert(suites[1].triggers, v.name)
    end
    return 0
end
--------公用函数----------
function action_VARIABLE_CHANGE_A(context, evt)
    --将值同步给对应锅子,仅在201状态处理
    Pot_Pipeline(context,defs.PotConfigIDA,evt.param1)
    return 0
end

function action_VARIABLE_CHANGE_B(context, evt)
    --将值同步给对应锅子,仅在201状态处理
    Pot_Pipeline(context,defs.PotConfigIDB,evt.param1)
    return 0
end

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
function StartPotTaunt(context,configId,startTaunt)
    ScriptLib.PrintContextLog(context, "## TD ImmortalPot : configId = "..configId .. " startTaunt = " .. startTaunt)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, configId, "SGV_Is_Taunting", startTaunt)
    return 0
end
--------私有函数----------
function Pot_Pipeline(context,config_id,value)
    -- 即时更新SGV_Thermometer_Value
    ScriptLib.PrintContextLog(context, "## TD ImmortalPot : configId = ".. config_id .. " SGV_Thermometer_Value= " .. value)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, config_id, "SGV_Thermometer_Value", value)

    -- 确认是否进入炸锅倒计时
    Pot_OverColdPipeline(context,config_id)
    Pot_OverHeatPipeline(context,config_id)
    return 0
end

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

--根据ConfigID,获取对应锅关键词
function GetPotName(context,config_id)
    if config_id == defs.PotConfigIDA then
        return "A"
    end
    if config_id == defs.PotConfigIDB then
        return "B"
    end
    if config_id == defs.PotConfigIDC then
        return "C"
    end
    ScriptLib.PrintContextLog(context, "## TD ImmortalPot : Error! Config_id = ".. config_id)
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
    ScriptLib.PrintContextLog(context, "## TD ImmortalPot : Error! KeyName = ".. keyName)
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

LF_Initialize_Level()
--- ServerUploadTool Save to [/root/env/data/lua/common/V2_1]  ---
--ScriptLib.SetGroupVariableValue(context,"ovenATemp",85)
--Pot_Pipeline(context,148004,85)
