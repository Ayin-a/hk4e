--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]
--[[======================================
||	filename:       VarunaWorkOption
||	owner:          zijun.ma
||	description:    根据GadgetState切换对应WorkOption
||	LogName:        TD_VarunaWorkOption
||	Protection:     [Protection]
=======================================]]

--[[

--]]

--def描述状态

--[[
local optionPlay ={
    gadgetCid = 257001, --只确认该物件的GadgetState
    optionCid = 257002, --只修改此物件的操作台
}
--]]

local gadgetStateTable =
{
    [201] = {optionList = {776,777}},   --晴天
    [202] = {optionList = {775,777}},   --阴天
    [203] = {optionList = {775,776}},   --切换
}
local weatherStateTable = {
    [0] = {state = 202}, --雨
    [1] = {state = 201}, --晴
    [2] = {state = 203}, --切换
}

local gearTable = {
    [775] = {weatherState = 1}, --晴
    [776] = {weatherState = 0}, --雨
    [777] = {weatherState = 2}, --切换
}

local Tri_VarunaWorkOption = {
    -- GroupLoad
    { keyWord = "CheckState",event = EventType.EVENT_GROUP_LOAD, source = "", trigger_count = 0},
    -- GadgetStateChange
    { keyWord = "PressButton",event = EventType.EVENT_SELECT_OPTION, source = "", trigger_count = 0},
    -- GadgetStateChange
    { keyWord = "ChangeState",event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", trigger_count = 0},
    -- 中枢开启
    { keyWord = "DeviceActive",event = EventType.EVENT_LUA_NOTIFY, source = "VarunaDevice", trigger_count = 0},
}

function LF_Initialize_VarunaWorkOption()
    local startConfigID = 50040001
    for _,v in pairs(Tri_VarunaWorkOption) do
        v.config_id = startConfigID
        if v.keyWordType == nil then
            v.name = "tri_" .. v.keyWord
        else
            v.name = "tri_" .. v.keyWord .. v.keyWordType
        end
        v.action = "action_" .. v.keyWord
        v.condition = ""
        startConfigID = startConfigID + 1
        table.insert(triggers, v)
    end
    LF_InsertTriggers(Tri_VarunaWorkOption,{2})

    return 0
end
--[[=====================================
||	Action
--======================================]]
function action_CheckState(context,evt)
    -- 检查状态
    local finalWeatherState = ScriptLib.GetGroupVariableValueByGroup(context, "finalWeatherState", 133303126)
    local state = ScriptLib.GetGadgetStateByConfigId(context, 0, optionPlay.gadgetCid)
    ScriptLib.PrintContextLog(context, "## [TD_VarunaWorkOption] action_CheckState || finalWeatherState = "..finalWeatherState..", ||state = "..state)
    if state > 0 and nil ~= weatherStateTable[finalWeatherState] then
        local targetState = weatherStateTable[finalWeatherState].state
        if targetState ~= state then
            -- 如果状态不一致就切换，因为状态修改会切换状态
            ScriptLib.SetGadgetStateByConfigId(context, optionPlay.gadgetCid, targetState)
        else
            -- 如果状态一致，就仅设置操作台
            LF_SetOptionByState(context,state)
        end
    end
    return 0
end

function action_PressButton(context,evt)
    local gearid = evt.param2
    local gearData = gearTable[gearid]

    ScriptLib.PrintContextLog(context, "## [TD_VarunaWorkOption] action_PressButton || gearCid = "..gearid)
    if gearData ~= nil then
        local weatherState = gearData.weatherState
        local oldState = ScriptLib.GetGadgetStateByConfigId(context, 0, optionPlay.gadgetCid)
        LF_ClearOptionByState(context,oldState)
        ScriptLib.SetGroupVariableValueByGroup(context, "finalWeatherState", weatherState, 133303126)
        ScriptLib.PrintContextLog(context, "## [TD_VarunaWorkOption] 修改finalWeatherState 为" .. weatherState)
    end

    return 0
end
function action_ChangeState(context,evt)
    -- 检查状态
    local cid = evt.param2
    if optionPlay.gadgetCid ~= cid then
        return 0
    end

    local newState = evt.param1
    LF_SetOptionByState(context,newState)

    return 0
end

function action_DeviceActive(context,evt)
    -- 获取对应天气
    local finalWeatherState = ScriptLib.GetGroupVariableValueByGroup(context, "finalWeatherState", 133303126)

    if nil == weatherStateTable[finalWeatherState] then
        ScriptLib.PrintContextLog(context, "## [TD_VarunaWorkOption] 不合法的finalWeatherState，值为" .. finalWeatherState)
        return 0
    end

    -- 根据finalWeatherState设置中枢的状态
    local gadgetState = weatherStateTable[finalWeatherState].state
    ScriptLib.SetGadgetStateByConfigId(context, optionPlay.gadgetCid, gadgetState)
    ScriptLib.PrintContextLog(context, "## [TD_VarunaWorkOption] gadget = "..optionPlay.gadgetCid..", state is set to "..gadgetState)

    return 0
end

--[[=====================================
||	LocalFunction
--======================================]]
function LF_SetOptionByState(context,state)
    local stateData = gadgetStateTable[state]
    if nil ~= stateData then
        local gearList = stateData.optionList
        ScriptLib.PrintContextLog(context, "## TD_VarunaWorkOption 对应需要添加的 gearList = " .. LF_ArrayToString(gearList))
        ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, optionPlay.optionCid, gearList)
    end
    return 0
end

function LF_ClearOptionByState(context,state)
    local stateData = gadgetStateTable[state]
    if nil ~= stateData then
        local gearList = stateData.optionList
        ScriptLib.PrintContextLog(context, "## TD_VarunaWorkOption 对应需要删除的 gearList = " .. LF_ArrayToString(gearList))
        for i = 1,#gearList do
            ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, optionPlay.optionCid, gearList[i])
        end
    end
    return 0
end

function LF_ChangeDeviceState(context, prev_context, finalWeatherState)
    ScriptLib.PrintContextLog(context, "## [TD_VarunaWorkOption] LF_ChangeDeviceState is called. finalWeatherState =" .. finalWeatherState)

    local state = ScriptLib.GetGadgetStateByConfigId(context, 0, optionPlay.gadgetCid)
    if 0 == state then
        ScriptLib.PrintContextLog(context, "## [TD_VarunaWorkOption] 当前中枢未解锁")
        return 0
    end

    if nil ~= weatherStateTable[finalWeatherState] then
        local gadgetState = weatherStateTable[finalWeatherState].state
        ScriptLib.SetGadgetStateByConfigId(context, optionPlay.gadgetCid, gadgetState)
        ScriptLib.PrintContextLog(context, "## [TD_VarunaWorkOption] gadget = "..optionPlay.gadgetCid..", state is set to "..gadgetState)
    end

    return 0
end
--[[=====================================
||	常用工具包
--======================================]]
-- 标准的InsertTriggers方法
function LF_InsertTriggers(TempTrigger,TempRequireSuite)
    local hasRequireSuitList = not (TempRequireSuite == nil or #TempRequireSuite <=0)
    if hasRequireSuitList then
        if (init_config.io_type ~= 1) then
            --常规group注入。trigger注入白名单定义的suite list
            for i = 1, #TempRequireSuite do
                for _,v in pairs(TempTrigger) do
                    if (TempRequireSuite[i]<=#suites) then
                        table.insert(suites[TempRequireSuite[i]].triggers, v.name)
                    end
                end
            end
        else
            --flow group注入。trigger注入白名单定义的suite list
            for i = 1, #TempRequireSuite do
                for _,v in pairs(TempTrigger) do
                    if (TempRequireSuite[i]<=#suite_disk) then
                        table.insert(suite_disk[TempRequireSuite[i]].triggers, v.name)
                    end
                end
            end
        end
    else
        --不存在白名单设置，走常规的trigger注入流程
        if (init_config.io_type ~= 1) then
            for i = 1, #suites do
                for _,v in pairs(TempTrigger) do
                    table.insert(suites[i].triggers, v.name)
                end
            end
        else
            for i = 1, #suite_disk do
                for _,v in pairs(TempTrigger) do
                    table.insert(suite_disk[i].triggers, v.name)
                end
            end
        end
    end
end
-- 简单拆分一个数组
function LF_ArrayToString(array)
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
-- 根据数组的长度修饰num
function Fix(value,array,error)
    if value < 1 then
        ScriptLib.PrintLog(error .. "value = " .. value)
        return 1
    end
    if value > #array then
        ScriptLib.PrintLog(error .. "value = " .. value)
        return #array
    end

    return value
end
-- 判断特定值是否在Table中
function LF_IsInTable(value, table)
    for k,v in ipairs(table) do
        if v == value then
            return true;
        end
    end
    return false;
end
-- 返回特定值在Table中的第一个位置
function LF_GetIndexInTable(value, table)
    for k,v in ipairs(table) do
        if v == value then
            return k;
        end
    end
    return 0;
end

LF_Initialize_VarunaWorkOption()