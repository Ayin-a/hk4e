--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]
--[[======================================
||	filename:       DreamStone
||	owner:          zijun.ma
||	description:    根据目前梦境系统的要求进行处理
||	LogName:        TD_DreamStone
||	Protection:     [Protection]
=======================================]]

--[[
需求
1：梦境石可以交互时，能自由切换
2：GroupLoad时，检查梦境石可否交互
3：GroupLoad时，检查是否满足对应梦境条件
--]]

--[[
local DreamStonePlay = {
    LevelTagGroup = 12,
    DreamStoneCid = 306001,
}

-- 在对应LevelTag中操作梦境石发生的切换
local LevelTagState = {
    ["3.0_Dream"] ={
        ChangeTag = 39,
        WeatherStateList = {
            {AreaID = 4037,State =0},
            {AreaID = 4038,State =1},
            {AreaID = 4039,State =0},
            {AreaID = 4040,State =1},
            {AreaID = 4041,State =1},
        },
    },
    ["3.0_Reality"] ={
        ChangeTag = 38,
        WeatherStateList = {
            {AreaID = 4037,State =1},
            {AreaID = 4038,State =0},
            {AreaID = 4039,State =1},
            {AreaID = 4040,State =0},
            {AreaID = 4041,State =0},
        },
    },
}

local KeyQuest = {
    ["Lock"] = {7302518,7302519,7302515,7303201,7303202,7303203},
    ["Unlock"] ={7302525,7302506,7302511,7302514,7303301},
}
--]]

local Tri_DreamStone = {
    -- GadgetStateChange
    { keyWord = "ChangeLevelTag",event = EventType.EVENT_LUA_NOTIFY, source = "AraraDreamStone", trigger_count = 0},
    -- 部分初始化的逻辑见 LF_AutoGenTri
}

function LF_Initialize_DreamStone()
    LF_AutoGenTri()
    local startConfigID = 50050001
    for _,v in pairs(Tri_DreamStone) do
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
    LF_InsertTriggers(Tri_DreamStone,{1})

    return 0
end

function LF_AutoGenTri()
    local keyWord = 100
    local questList = KeyQuest["Lock"]
    for i = 1,#questList do
        keyWord = keyWord + 1
        local keyWordType = tostring(keyWord)
        local sourceQuest = tostring(questList[i])
        local trigger = { keyWord = "CheckLock",keyWordType = keyWordType,event = EventType.EVENT_QUEST_START, source = sourceQuest, trigger_count = 0}
        table.insert(Tri_DreamStone, trigger)
    end

    keyWord = 200
    questList = KeyQuest["Unlock"]
    for i = 1,#questList do
        keyWord = keyWord + 1
        local keyWordType = tostring(keyWord)
        local sourceQuest = tostring(questList[i])
        local trigger = { keyWord = "CheckUnlock",keyWordType = keyWordType,event = EventType.EVENT_QUEST_START, source = sourceQuest, trigger_count = 0}
        table.insert(Tri_DreamStone, trigger)
    end
    return 0
end
--[[=====================================
||	Action
--======================================]]
-- 修改LevelTag
function action_ChangeLevelTag(context,evt)
    -- 检查梦境石状态是否合法,仅做网络延迟时的保护。
    if 201 ~= ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, DreamStonePlay.DreamStoneCid) then
        local msg = "## [TD_DreamStone] 对应梦境石已上锁，无法切状态"
        ScriptLib.PrintContextLog(context, msg)
        return 0
    end

    local tag_name = LF_GetCurLevelTagName(context)
    local changeData = LevelTagState[tag_name]
    if changeData == nil then
        local msg = "## [TD_DreamStone] LF_GetCurLevelTagName"
        msg = msg .."||current_env_state = ".. tag_name
        ScriptLib.PrintContextLog(context, msg)
        return 0
    end
    local changeWeatherStateList = changeData.WeatherStateList

    local msg = "## [TD_DreamStone] action_ChangeLevelTag"
    msg = msg .."||changeToLevelTag = " .. changeData.ChangeTag
    ScriptLib.PrintContextLog(context, msg)

    for i = 1,#changeWeatherStateList do
        local weatherState = changeWeatherStateList[i]
        ScriptLib.SetWeatherAreaState(context, weatherState.AreaID, weatherState.State)
    end

    ScriptLib.ChangeToTargetLevelTag(context, changeData.ChangeTag)

    return 0
end

function action_CheckLock(context,evt)
    local msg = "## [TD_DreamStone] action_CheckLock"
    msg = msg .."||QuestStart = ".. evt.param1
    ScriptLib.PrintContextLog(context, msg)
    ScriptLib.SetGadgetStateByConfigId(context, DreamStonePlay.DreamStoneCid, 0)
    return 0
end

function action_CheckUnlock(context,evt)
    local msg = "## [TD_DreamStone] action_CheckUnlock"
    msg = msg .."||QuestStart = ".. evt.param1
    ScriptLib.PrintContextLog(context, msg)
    ScriptLib.SetGadgetStateByConfigId(context, DreamStonePlay.DreamStoneCid, 201)
    return 0
end

--[[=====================================
||	LocalFunction
--======================================]]
function LF_GetCurLevelTagName(context)
    local cur_TagVec = ScriptLib.GetCurrentLevelTagVec(context, DreamStonePlay.LevelTagGroup)
    if cur_TagVec[1] == nil then
        return "Empty"
    end
    local cur_tag = cur_TagVec[1]
    local tag_name = ScriptLib.GetLevelTagNameById(context,cur_tag)

    local msg = "## [TD_DreamStone] LF_GetCurLevelTagName"
    msg = msg .."||current_env_state = ".. tag_name
    ScriptLib.PrintContextLog(context, msg)

    return tag_name
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

LF_Initialize_DreamStone()