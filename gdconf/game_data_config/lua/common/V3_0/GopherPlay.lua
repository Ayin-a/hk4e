--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]
-- goto 1176 296 -1594
--[[======================================
||	filename:       GopherPlay
||	owner:          zijun.ma
||	description:    地鼠玩法
||	LogName:        TD_GopherPlay
||	Protection:     [Protection]
=======================================]]

-- local defs = 
-- {
--     regionId = 12345,
--     targetScore = 3,
--     maxTime = 90,
--     startId = 0,
-- }

local GopherPlay = {
    RegionCid = defs.regionId,
    ChallengeIndex = 83,
    OptionId = 175,
    LargeMushroomId = 70310220,
    ConfigList =
    {
        defs.gadget_mushroom01,defs.gadget_mushroom02,defs.gadget_mushroom03,
        defs.gadget_mushroom04,defs.gadget_mushroom05,defs.gadget_mushroom06
    },
    ZeroArray = {0,0,0,0,0,0},
}

-- local GopherArray = {
--     [1] =
--     {-- time里面有两个值，一个是指延时多久出现，一个是指延时多久消失。譬如{1,5}是指第1秒后出现，第5秒后消失。
--         [1] = { array = { 0, 0, 0, 1, 2, 1}, time = {1,5}},
--         [2] = { array = { 1, 2, 1, 0, 0, 0}, time = {1,5}},
--         [3] = { array = { 0, 1, 0, 2, 1, 0}, time = {1,5}},
--         [4] = { array = { 0, 2, 1, 2, 0, 0}, time = {1,5}},
--     },
--     [2] =
--     {
--         [1] = { array = { 0, 0, 0, 1, 2, 1}, time = {1,5}},
--         [2] = { array = { 1, 2, 1, 0, 0, 0}, time = {1,5}},
--         [3] = { array = { 0, 1, 0, 2, 1, 0}, time = {1,5}},
--         [4] = { array = { 0, 2, 1, 2, 0, 0}, time = {1,5}},
--     },
-- }

local GopherState = {
    [0] = 0,
    [1] = 901,
    [2] = 902,
}

-- 流程规划
-- 严格根据Size初始化地鼠列表
-- LF_StartChallenge()
-- 按照选取的资料组开始挑战
-- LF_TimeAxisManager()
-- LF_SummonGopher()
-- LF_GopherDisappear()
-- LF_GopherBeHit()
-- LF_ChallengeJudge()


local GopherPlay_Trigger = {
    { keyWord = "TimeAxisManager", event = EventType.EVENT_TIME_AXIS_PASS, source = "", trigger_count = 0},
    -- Group是DynamicGroup，所以初始化倒不是问题
    --{ keyWord = "ChallengeInit", event = EventType.EVENT_GROUP_LOAD, source = "GopherPlay", trigger_count = 0},
    { keyWord = "ChallengeSuccess", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", trigger_count = 0},
    { keyWord = "ChallengeFail", event = EventType.EVENT_CHALLENGE_FAIL, source = "", trigger_count = 0},
    { keyWord = "SelectOption", event = EventType.EVENT_SELECT_OPTION, source = "", trigger_count = 0},
    { keyWord = "GroupLoad", event = EventType.EVENT_GROUP_LOAD, source = "", trigger_count = 0},
    -- { keyWord = "GadgetStateChange", event = EventType.EVENT_GADGET_STATE_CHANGE, condition = "condition_GadgetStateChange", source = "", trigger_count = 0},
    { keyWord = "VariableChange", event = EventType.EVENT_VARIABLE_CHANGE, source = "score", trigger_count = 0, tag = "99"},
    { keyWord = "TempVariableChange", event = EventType.EVENT_VARIABLE_CHANGE, source = "scoreTemp", trigger_count = 0},

}

local GopherPlay_Variables = {
    -- 记录是否已成功
    { config_id = 50000001, name = "succeed", value = 0, no_refresh = true },
    -- -- 记录这一轮击杀了多少个大蘑菇
    -- { config_id = 50000002, name = "scoreTemp", value = 0, no_refresh = false },

}

function LF_Initialize_Level()
    local startConfigID = 40000001
    for _,v in pairs(GopherPlay_Trigger) do
        v.config_id = startConfigID
        if v.keyWordType == nil then
            v.name = "tri_" .. v.keyWord
        else
            v.name = "tri_" .. v.keyWord .. v.keyWordType
        end
        v.action = "action_" .. v.keyWord
        if v.condition == nil then
            v.condition = ""
        end
        startConfigID = startConfigID + 1
        table.insert(triggers, v)
    end

    LF_InsertTriggers(GopherPlay_Trigger,RequireSuite)

    -- add variables
    for _,v in pairs(GopherPlay_Variables) do
        table.insert(variables, v)
    end

    return 0
end

--[[=====================================
||	action函数
--======================================]]
function action_TimeAxisManager(context,evt)
    local timeProcess = evt.param1
    ScriptLib.PrintContextLog(context, "## TD_GopherPlay: time axis "..evt.source_name..", stage "..timeProcess.. " is finished")

    if timeProcess%2 == 0 then
        -- 偶数时,走消失逻辑
        LF_GopherDisappear(context)
    else
        -- 奇数时,走出现逻辑
        LF_SummonGopher(context)
    end
    return 0
end

function action_ChallengeSuccess(context,evt)
    ScriptLib.PrintContextLog(context, "## TD_GopherPlay: challenge index = "..evt.param1.." succeeds")

    ScriptLib.SetGroupVariableValue(context, "succeed", 1)

    LF_StopChallenge(context, true)
    return 0
end

function action_ChallengeFail(context,evt)
    ScriptLib.PrintContextLog(context, "## TD_GopherPlay: challenge index = "..evt.param1.." fails")

    LF_StopChallenge(context, false)
    return 0
end

function action_SelectOption(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_GopherPlay: worktop "..evt.param1..", option = "..evt.param2)

    -- 和操作台交互，开启挑战
    LF_StartChallenge(context)
    return 0
end

function action_GroupLoad(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_GopherPlay: group is loaded")

    local succeed = ScriptLib.GetGroupVariableValue(context, "succeed")
    if succeed == 0 then
        succeed = false
    else
        succeed = true
    end
    LF_StopChallenge(context, succeed)

    return 0
end

function action_VariableChange(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_GopherPlay: group var "..evt.source_name.." changes from "..evt.param2.." to "..evt.param1)

    return 0
end

function action_TempVariableChange(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_GopherPlay: group var "..evt.source_name.." changes from "..evt.param2.." to "..evt.param1)

    local largeMushroomCount = ScriptLib.GetGroupTempValue(context, "LargeMushroomCount", {})
    -- 击杀了这一轮所有大蘑菇，而且不能是最后成功的那一下
    if evt.param1 >= largeMushroomCount and ScriptLib.GetGroupTempValue(context, "score", {}) < defs.targetScore then
        LF_GopherDisappear(context)
    end
  
    return 0
end


-- function condition_GadgetStateChange(context, evt)
--     -- 只有当是大蘑菇并且进入202的时候才能触发这个trigger
--     local config_id = evt.param2
--     local gadget_id = ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid)
--     local gadgetState = ScriptLib.GetGadgetStateByConfigId(context, 0, config_id)
--     ScriptLib.PrintContextLog(context, "## TD_GopherPlay configId = ".. config_id .. ", gadgetId = "..gadget_id..", gadgetState change from "..evt.param2.." to "..gadgetState)
    
--     if 202 == gadgetState and  gadget_id == GopherPlay.LargeMushroomId then
--         return true
--     end

--     return false
-- end

-- function action_GadgetStateChange(context, evt)
--     SLC_AddScore(context, evt)
--     return 0
-- end

--[[=====================================
||	流程函数
--======================================]]
function LF_StartChallenge(context)

    -- 删除操作台选项，操作台进202
    ScriptLib.DelWorktopOptionByGroupId(context, 0, defs.startId, GopherPlay.OptionId)
    ScriptLib.SetGadgetStateByConfigId(context, defs.startId, 202)

    -- 运行后，开启挑战
    math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
    local randomIndex = math.random(#GopherArray)
    ScriptLib.PrintContextLog(context, "## TD_GopherPlay : 使用Index=".. randomIndex .."的矩阵作为当前的挑战矩阵")

    ScriptLib.StartChallenge(context, GopherPlay.ChallengeIndex, GopherPlay.ChallengeIndex, {defs.maxTime, 3, 99, defs.targetScore})
	ScriptLib.AddExtraGroupSuite(context, 0, 2)


    -- 初始化地鼠index
    ScriptLib.SetGroupTempValue(context, "CurIndex", randomIndex, {})
    ScriptLib.SetGroupTempValue(context, "CurArrayIndex", 1, {})
    -- ScriptLib.SetGroupTempValue(context, "Score", 0, {})
    local timeAxis = GopherArray[randomIndex][1].time
    ScriptLib.InitTimeAxis(context, "GopherPlay_1", timeAxis, false)
    return 0
end

function LF_StopChallenge(context, success)
    -- 关闭时间轴
    local curArrayIndex = ScriptLib.GetGroupTempValue(context, "CurArrayIndex", {})
    ScriptLib.EndTimeAxis(context, "GopherPlay_"..curArrayIndex)
    ScriptLib.EndTimeAxis(context, "GopherPlay_"..curArrayIndex + 1)


    -- 设置所有蘑菇钻地
    LF_SetArrayGadgetState(context,GopherPlay.ZeroArray)
    
    if success == true then
        -- 成功，删除操作台选项，操作台进202
        ScriptLib.DelWorktopOptionByGroupId(context, 0, defs.startId, GopherPlay.OptionId)
        ScriptLib.SetGadgetStateByConfigId(context, defs.startId, 202)
    else
        -- 失败，重置回suite 1	
        ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 1 })
        ScriptLib.SetWorktopOptionsByGroupId(context, 0, defs.startId, {GopherPlay.OptionId})

    end
    return 0
end

function LF_SummonGopher(context)
    -- 召唤地鼠
    local currentIndex = ScriptLib.GetGroupTempValue(context, "CurIndex", {})
    currentIndex = Fix(currentIndex,GopherArray,"LF_SummonGopher:currentIndex")

    local curArrayIndex = ScriptLib.GetGroupTempValue(context, "CurArrayIndex", {})
    curArrayIndex = Fix(curArrayIndex,GopherArray[currentIndex],"LF_SummonGopher:curArrayIndex")

    local tempArray = GopherArray[currentIndex][curArrayIndex].array

    LF_SetArrayGadgetState(context,tempArray)
    ScriptLib.PrintContextLog(context, "## TD_GopherPlay : 已成功设置第"..currentIndex.."种，第"..curArrayIndex.."轮的地鼠出场")

    -- 记录这一轮有多少大蘑菇,并把tempScore清零
    local largeMushroomCount = LF_CalLargeMushroom(context, tempArray)
    ScriptLib.SetGroupTempValue(context, "LargeMushroomCount", largeMushroomCount, {})
    ScriptLib.SetGroupTempValue(context, "scoreTemp", 0, {})
    ScriptLib.PrintContextLog(context, "## TD_GopherPlay: largeMushroomCount = "..largeMushroomCount..", group var scoreTemp is reset to 0")

    ScriptLib.SetGroupTempValue(context, "last", 0, {})

    return 0
end

function LF_CalLargeMushroom(context, array)
    local temp = 0
    for i = 1, #array do
        if array[i] == 2 then
            temp = temp + 1
        end
    end
    return temp
end
    

function LF_GopherDisappear(context)
    -- 地鼠消失
    local currentIndex = ScriptLib.GetGroupTempValue(context, "CurIndex", {})
    local currentArrayIndex = ScriptLib.GetGroupTempValue(context, "CurArrayIndex", {})
    local arrayLens = #GopherArray[currentIndex]
    -- 设置所有蘑菇钻地
    LF_SetArrayGadgetState(context,GopherPlay.ZeroArray)
    ScriptLib.PrintContextLog(context, "## TD_GopherPlay : 已成功设置第"..currentIndex.."轮的地鼠消失" )

    local temp = currentArrayIndex + 1
    if temp > arrayLens then
        temp = 1
    end
    ScriptLib.SetGroupTempValue(context, "CurArrayIndex", temp, {})
    local nextIdx = ScriptLib.GetGroupTempValue(context, "CurArrayIndex", {})
    ScriptLib.PrintContextLog(context, "## TD_GopherPlay : current index = "..currentIndex..", next array index = "..nextIdx)

    -- 开启下一个时间轴
    local timeAxis = GopherArray[currentIndex][nextIdx].time
    if #timeAxis ~= 2 then
        ScriptLib.PrintContextLog(context, "## TD_GopherPlay: next time axis not allowed")
        return 0
    end
    ScriptLib.PrintContextLog(context, "## TD_GopherPlay: time axis = "..timeAxis[1]..", "..timeAxis[2])

    ScriptLib.EndTimeAxis(context, "GopherPlay_"..currentArrayIndex)
    ScriptLib.InitTimeAxis(context, "GopherPlay_"..nextIdx, timeAxis, false)
    return 0
end

-- 根据给定的Array分别对GopherPlay.ConfigList进行设置
function LF_SetArrayGadgetState(context,array)
    for i = 1,#GopherPlay.ConfigList do
        local configId = GopherPlay.ConfigList[i]
        local index = Fix(i,array,"LF_SetArrayGadgetState:index")
        local curState = array[index]
        if curState < 0  or curState > 2 then
            curState = 0
        end
        local gadgetState = GopherState[curState]
        ScriptLib.PrintContextLog(context, "## TD_GopherPlay : cid -> " .. configId .. " | gadgetState -> " .. gadgetState)
        ScriptLib.SetGadgetStateByConfigId(context, configId, gadgetState)
    end

    return 0
end

function SLC_AddScore(context,evt)

    local configId = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
    if configId == 0 then
        ScriptLib.PrintContextLog(context, "## TD_GopherPlay : SLC_AddScore is called, configId = "..configId..", wrong config id and return immediately")
        return 0
    end

    local before = ScriptLib.GetGroupTempValue(context, "last", {})
    ScriptLib.SetGroupTempValue(context, "last", configId, {})
    local last = ScriptLib.GetGroupTempValue(context, "last", {})
    
    if before == last then
        -- 防止短时间内被打两次
        ScriptLib.PrintContextLog(context, "## TD_GopherPlay : SLC_AddScore is called, configId = "..configId..", before = "..before..
            ", last = "..last..", mushroom is hit twice, ignore second time")
        return 0
    end

    local temp1 = ScriptLib.GetGroupTempValue(context, "score", {})
    local temp2 = ScriptLib.GetGroupTempValue(context, "scoreTemp", {})

    ScriptLib.SetGroupTempValue(context, "score", temp1 + 1, {})
    ScriptLib.SetGroupTempValue(context, "scoreTemp", temp2 + 1, {})

    local temp = ScriptLib.GetGroupTempValue(context, "score", {})
    ScriptLib.PrintContextLog(context, "## TD_GopherPlay : 成功击碎一枚大箱子，分数+1,当前分数为".. temp)

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
                for k,v in pairs(TempTrigger) do
                    if (TempRequireSuite[i]<=#suites) then
                        table.insert(suites[TempRequireSuite[i]].triggers, v.name)
                    end
                end
            end
        else
            --flow group注入。trigger注入白名单定义的suite list
            for i = 1, #TempRequireSuite do
                for k,v in pairs(TempTrigger) do
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
                for k,v in pairs(TempTrigger) do
                    table.insert(suites[i].triggers, v.name)
                end
            end
        else
            for i = 1, #suite_disk do
                for k,v in pairs(TempTrigger) do
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

LF_Initialize_Level()
