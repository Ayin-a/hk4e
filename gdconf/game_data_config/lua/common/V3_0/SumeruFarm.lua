--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]
-- goto 1176 296 -1594
--[[======================================
||	filename:       SumeruFarm
||	owner:          zijun.ma
||	description:    须弥苗圃玩法
||	LogName:        TD_SumeruFarm
||	Protection:     [Protection]
=======================================]]
--[[
当下已知问题：
1：初始田的任务需要提前领取
2：列表需要填对数据
--]]

--[[
goto -217.528 210.144 3658.720
item add 101796 12
quest accept 7301822;
quest finish 7301822;
QUEST CLEAR FATHER 73018;
QUEST CLEAR FATHER 73068;
QUEST CLEAR FATHER 73145;
QUEST CLEAR FATHER 73152;
Group refresh 133301057 1;
Group refresh 133301161 1;
Group refresh 133301162 1;

QUEST ACCEPT 7314502
QUEST Finish 7314502
GROUP SETVAR 133301057 FarmExhibition 8191
GROUP SETVAR 133301057 activecount 13


QUEST ACCEPT 7306805
QUEST ACCEPT 7314501
QUEST Finish 7314501 -- 任务不能同时获取并完成（受Group层级影响，会收不到消息）

QUEST SET_TIMEVAR 73145 1 162311153

QUEST Finish 7315201
QUEST SET_TIMEVAR 73152 1 162311153

level_tag change 38
level_tag change 39
-- QUEST CLEAR FATHER 73157
-- QUEST CLEAR FATHER 73068
-- QUEST Finish 7315701
QUEST State 7315701
-- EXHIBITION REPLACEABLE 11601102
-- GROUP SETVAR 133301057 GM_Reset 1

-- group unload 133301057 1
-- group load 133301057 1

--]]

-- 数据结构
local FarmPlay = {
    FirstFarm = defs.gadget_farm13,
    FirstCropQuest = 7306805,
    SuccessQuest = 7307502,
    FirstCropQuestMSG = "73068_FinishQuest",
    SeedlingMSG = "SeedingCompleted",
    SuccessMSG = "73075_CountFinish",
    SuccessKey = "activecount",
    ExhibitionKey = "FarmExhibition",
    Exhibition = {id = 11601102, key = "Permanent_SumeruNurseryPlay_FarmCount"},
}

local FarmState = {
    Hole = 0,
    Seedling = 201,
    Hide = 202,
    CSShowHole = 203,
}
local FarmIndex = {} -- [cid] = index
local QuestIndex = {} -- [questid] = index
local FarmDic = {    
    [1] = {cid = defs.gadget_farm01, quest = 73146, index = 1},
    [2] = {cid = defs.gadget_farm02, quest = 73147, index = 2},
    [3] = {cid = defs.gadget_farm03, quest = 73148, index = 3},
    [4] = {cid = defs.gadget_farm04, quest = 73149, index = 4},
    [5] = {cid = defs.gadget_farm05, quest = 73150, index = 5},
    [6] = {cid = defs.gadget_farm06, quest = 73151, index = 6},
    [7] = {cid = defs.gadget_farm07, quest = 73152, index = 7},
    [8] = {cid = defs.gadget_farm08, quest = 73153, index = 8},
    [9] = {cid = defs.gadget_farm09, quest = 73154, index = 9},
    [10] = {cid = defs.gadget_farm10, quest = 73155, index = 10},
    [11] = {cid = defs.gadget_farm11, quest = 73156, index = 11},
    [12] = {cid = defs.gadget_farm12, quest = 73157, index = 12},
    [13] = {cid = defs.gadget_farm13, quest = 73145, index = 13},
}

local SumeruFarm_Trigger = {
    { keyWord = "FirstCrop", event = EventType.EVENT_QUEST_START, source = "7306805", trigger_count = 0},
    { keyWord = "PlayerCrop", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", trigger_count = 0},
    { keyWord = "CheckFarm", event = EventType.EVENT_GROUP_LOAD, source = "", trigger_count = 0},
    { keyWord = "CropGrow", event = EventType.EVENT_QUEST_FINISH, source = "", trigger_count = 0},
    { keyWord = "PlayEnd", event = EventType.EVENT_VARIABLE_CHANGE, source = FarmPlay.SuccessKey, trigger_count = 0},
    --{ keyWord = "GMReset", event = EventType.EVENT_VARIABLE_CHANGE, source = "GM_Reset", trigger_count = 0},
    --{ keyWord = "DelayFarmGrow", event = EventType.EVENT_TIME_AXIS_PASS, source = "DelayFarmGrow", trigger_count = 0},
}

function LF_Initialize_Level()
    local startConfigID = 40000001
    for _,v in pairs(SumeruFarm_Trigger) do
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

    LF_InsertTriggers(SumeruFarm_Trigger,{1})
    LF_GenFarmIndex()

    local var = { config_id= 40000100, name = FarmPlay.ExhibitionKey, value = 0, no_refresh = true }
    variables[var.name] = var
    local var = { config_id= 40000101, name = "GM_Reset", value = 0, no_refresh = false }
    variables[var.name] = var
    local var = { config_id= 40000102, name = "QA_Watcher01", value = 0, no_refresh = true }
    variables[var.name] = var

    return 0
end

-- 生成快速索引(Initialize时使用)
function LF_GenFarmIndex()
    for k, v in pairs(FarmDic) do
        FarmIndex[v.cid] = k
        QuestIndex[v.quest] = k
    end
    return 0
end

--[[=====================================
||	action函数
--======================================]]
function action_GMReset(context,evt)
    -- 重置陈列室
    local uid = ScriptLib.GetSceneOwnerUid(context)
    -- ScriptLib.ClearExhibitionReplaceableData(context, uid, FarmPlay.Exhibition.key)
    LF_KnowQuestState(context)
    return 0
end

-- 由任务触发的种植流程
function action_FirstCrop(context,evt)
    -- 初始田201
    local msg = "## TD_SumeruFarm : 将" .. FarmPlay.FirstFarm
    msg = msg .. "的状态切到201"
    ScriptLib.PrintContextLog(context, msg)
    ScriptLib.PrintContextLog(context, "## TD_SumeruFarm : FirstCrop 将Group切至Suite2")
    -- 推送任务消息
    ScriptLib.AddQuestProgress(context, FarmPlay.FirstCropQuestMSG)
    ScriptLib.PrintContextLog(context, "## TD_SumeruFarm: FirstCrop 任务流转。ID：" .. FarmPlay.FirstCropQuestMSG)
    ScriptLib.SetGadgetStateByConfigId(context, FarmPlay.FirstFarm, FarmState.Seedling)

    -- 全部变成可交互
    for i = 1,12 do
        if FarmDic[i] ~= nil then
            -- 不是已种植状态就重设为可种植状态
            if FarmState.Seedling ~= ScriptLib.GetGadgetStateByConfigId(context,0,FarmDic[i].cid) then
                ScriptLib.SetGadgetStateByConfigId(context, FarmDic[i].cid, FarmState.Hole)
            end
        end
    end

    return 0
end

-- EVENT_GADGET_STATE_CHANGE
function action_PlayerCrop(context,evt)
    if evt.param1 ~=  FarmState.Seedling or FarmIndex[evt.param2] == nil then
        return 0
    end

    local curIndex = FarmIndex[evt.param2]
    local questID = LF_CurFarmMSG(curIndex)
    -- 推送对应任务消息
    ScriptLib.AddQuestProgress(context, questID)
    ScriptLib.PrintContextLog(context, "## TD_SumeruFarm: PlayerCrop 任务流转。ID：" .. questID .. "|Index = ".. curIndex)
    return 0
end

-- EVENT_GROUP_LOAD
function action_CheckFarm(context,evt)
    ScriptLib.PrintContextLog(context, "## TD_SumeruFarm: ## == INITIALIZE 5 == ")

    if 1 == LF_GroupDieProgress(context) then
        ScriptLib.PrintContextLog(context, "## TD_SumeruFarm : action_CheckFarm| 这个Group要拜拜了")
        return 0
    end
    LF_CheckSeedling(context)

    return 0
end

-- EVENT_QUEST_FINISH
function action_CropGrow(context,evt)
    if QuestIndex[math.floor(evt.param1/100)] == nil or 1~= evt.param2 then
        ScriptLib.PrintContextLog(context, "## TD_SumeruFarm: CropGrow 接收到任务完成 param1 = " .. evt.param1)
        ScriptLib.PrintContextLog(context, "## TD_SumeruFarm: CropGrow 接收到任务完成 param2 = " .. evt.param2)
        return 0
    end

    local curFarmIndex = QuestIndex[math.floor(evt.param1/100)]
    ScriptLib.PrintContextLog(context, "## TD_SumeruFarm: CropGrow 在线监听到任务完成。 Index = " .. curFarmIndex)
    
    LF_FarmGrow(context,curFarmIndex)

    return 0
end

-- 针对计时任务特性的时间轴保底
function action_DelayFarmGrow(context,evt)
    local uidList=ScriptLib.GetSceneUidList(context)
    if 0 == #uidList then
        --当前没有玩家，无法修改陈列室，开启一个时间轴延后处理
        ScriptLib.InitTimeAxis(context,"DelayFarmGrow",{1},false)
        ScriptLib.PrintContextLog(context, "## TD_SumeruFarm: DelayFarmGrow 未发现玩家,Delay下一秒")
        return 0
    end

    ScriptLib.PrintContextLog(context, "## TD_SumeruFarm: DelayFarmGrow 重新检查一下任务状态")
    LF_CheckSeedling(context)
    return 0
end

function action_PlayEnd(context,evt)
    if 13 > evt.param1 or evt.param1 == evt.param2 then
        return 0
    end

    local levelData = LF_Exhibition_GetLevelData(context)
    if 8191 ~= levelData then
        ScriptLib.PrintContextLog(context, "## TD_SumeruFarm action_PlayEnd 数据异常,levelData应为8191")
        return 0
    end
    -- 推任务进度
    ScriptLib.AddQuestProgress(context, FarmPlay.SuccessMSG)
    ScriptLib.PrintContextLog(context, "## TD_SumeruFarm: PlayEnd 任务流转。ID：" .. FarmPlay.SuccessMSG)
    return 0
end
--[[=====================================
||	流程函数
--======================================]]
-- 查看指定任务，确认Group是否结束自身生命
function LF_GroupDieProgress(context)
    local levelData = LF_Exhibition_GetLevelData(context)

    if 3 == ScriptLib.GetHostQuestState(context,FarmPlay.SuccessQuest) then
        if 8191 ~= levelData then
            ScriptLib.PrintContextLog(context, "## TD_SumeruFarm action_PlayEnd 数据异常,levelData应为8191")
            return 0
        end
        ScriptLib.PrintContextLog(context, "## TD_SumeruFarm : action_CheckFarm| 对应玩法已结束")
        ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 2 })
        return 1
    end

    if 8191 == levelData then
        ScriptLib.AddQuestProgress(context, FarmPlay.SuccessMSG)
        -- QA监听01
        ScriptLib.ChangeGroupVariableValueByGroup(context, "QA_Watcher01", 1, base_info.group_id)
    end

    return 0
end

-- Todo：删
function LF_KnowQuestState(context)
    msg = "## TD_SumeruFarm : LF_KnowQuestState"
    local questStateA = ScriptLib.GetHostQuestState(context,73145)
    msg = msg .. " |73145 = " .. questStateA
    local questStateA01 = ScriptLib.GetHostQuestState(context,7314501)
    msg = msg .. " |7314501 = " .. questStateA01
    local questStateA02 = ScriptLib.GetHostQuestState(context,7314502)
    msg = msg .. " |7314502 = " .. questStateA02
    local questStateB = ScriptLib.GetHostQuestState(context,73068)
    msg = msg .. " |73068 = " .. questStateB
    local questStateB01 = ScriptLib.GetHostQuestState(context,7306805)
    msg = msg .. " |7306805 = " .. questStateB01
    local questStateB02 = ScriptLib.GetHostQuestState(context,7306806)
    msg = msg .. " |7306806 = " .. questStateB02
    ScriptLib.PrintContextLog(context, msg)
    return 0
end

-- 检查幼苗田是否需要切状态，同时核对数据是否正确。
function LF_CheckSeedling(context)
    local successCount = 0
    -- 陈列室复写，不用陈列室不再复写
    -- LF_OverrideExhibition(context)
    -- 查询bin，获取所有已种植list
    local levelDataArray = LF_Exhibition_GetLevelDataArray(context)
    local msg = "| levelDataArray = " .. LF_ArrayToString(levelDataArray)
    ScriptLib.PrintContextLog(context, "## TD_SumeruFarm : LF_CheckSeedling"..msg)
    for k,v in pairs(levelDataArray) do
        local farmIndex = k
        if 0 == v then
            local cid = FarmDic[farmIndex].cid
            local quest = FarmDic[farmIndex].quest
            local state = ScriptLib.GetGadgetStateByConfigId(context, 0, cid)
            if 201 == state then
                -- 所有201Gadget：对应任务若完成，切202。
                local questState = ScriptLib.GetHostQuestState(context,quest*100+2)
                msg = "## TD_SumeruFarm : LF_CheckSeedling quest =" .. quest*100+2
                msg = msg .. "|questState = " .. questState
                msg = msg .. "|farmIndex = " .. farmIndex
                msg = msg .. "|cid = " .. cid
                ScriptLib.PrintContextLog(context, msg)

                -- 补发推送任务消息
                local questID = LF_CurFarmMSG(farmIndex)
                ScriptLib.AddQuestProgress(context, questID)

                if  3 == questState then
                    LF_FarmGrow(context,farmIndex)
                    successCount = successCount + 1
                end
            end
        else
            successCount = successCount + 1
        end
    end
    local curSuccessCount = ScriptLib.GetGroupVariableValue(context, FarmPlay.SuccessKey)

    if successCount ~= curSuccessCount then
        local msg1 = " |successCount = " .. successCount
        local msg2 = " |curSuccessCount = " .. curSuccessCount
        ScriptLib.PrintContextLog(context, "## TD_SumeruFarm action_CheckFarm 数据异常。" .. msg1 .. msg2)
    end
    return 0
end

function LF_OverrideExhibition(context)
    --获取陈列室值复写到Group上
    local uid = ScriptLib.GetSceneOwnerUid(context)
    local oldDataDec = ScriptLib.GetExhibitionReplaceableData(context, uid, FarmPlay.Exhibition.id)
    local oldLevelDataArray = LF_DecToBin(oldDataDec)
    local curLevelDataArray = LF_Exhibition_GetLevelDataArray(context)

    local msg = "## TD_SumeruFarm : LF_OverrideExhibition"
    msg = msg .. " |oldLevelDataArray = " .. LF_ArrayToString(oldLevelDataArray)
    msg = msg .. " |curLevelDataArray = " .. LF_ArrayToString(curLevelDataArray)
    ScriptLib.PrintContextLog(context, msg)

    for k,v in pairs(oldLevelDataArray) do
        if 1 == v and 0 == curLevelDataArray[k] then
            curLevelDataArray[k] = 1
        end
    end
    local newLevelDataDec = LF_BinToDec(curLevelDataArray)
    local msg = "## TD_SumeruFarm : LF_OverrideExhibition"
    msg = msg .. " |oldDataDec = " .. oldDataDec
    msg = msg .. " |newLevelDataDec = " .. newLevelDataDec
    ScriptLib.PrintContextLog(context, msg)

    LF_Exhibition_SetLevelData(context,newLevelDataDec)
    return 0
end
function LF_FarmGrow(context,index)
    -- 对应田切202
    local cid = FarmDic[index].cid
    ScriptLib.SetGadgetStateByConfigId(context, cid, FarmState.Hide)
    ScriptLib.PrintContextLog(context, "## TD_SumeruFarm : LF_FarmGrow| cid = " .. cid)
    -- 计数+1
    ScriptLib.ChangeGroupVariableValue(context, FarmPlay.SuccessKey,1)
    -- 陈列室写数据
    LF_CompleteCurLevel(context,index)
    return 0
end

-- 写入指定农田
function LF_CompleteCurLevel(context,index)
    local levelData = LF_Exhibition_GetLevelData(context)
    local changeLevelData = LF_Exhibition_SetTargetLevel(levelData,index,1)
    local msg1 = " |changeLevelDataArray = " .. LF_ArrayToString(LF_DecToBin(changeLevelData))
    local msg2 = " | index = " .. index
    ScriptLib.PrintContextLog(context, "## TD_SumeruFarm : LF_CompleteCurFarm"..msg1..msg2)
    LF_Exhibition_SetLevelData(context,changeLevelData)
    return 0
end

function LF_CurFarmMSG(index)
    if FarmDic[index] == nil then
        ScriptLib.PrintLog("启用错误的Index.index = " .. index)
        return "ErrorMessage"
    end
    return tostring(FarmDic[index].quest).."_"..FarmPlay.SeedlingMSG
end

--[[=====================================
||	永久陈列室工具包
--======================================]]

-- 写入陈列室值
function LF_Exhibition_SetLevelData(context,levelDataDec)

    local curDataDec = ScriptLib.GetGroupVariableValue(context,FarmPlay.ExhibitionKey)

    local msg = "## TD_SumeruFarm : LF_Exhibition_SetLevelData"
    msg = msg .. " |levelDataDec = " .. levelDataDec
    msg = msg .. " |curDataDec = " .. curDataDec
    ScriptLib.PrintContextLog(context, msg)
    ScriptLib.SetGroupVariableValue(context,FarmPlay.ExhibitionKey,levelDataDec)
    return 0
end

-- 返回当前的陈列室值
function LF_Exhibition_GetLevelData(context)

    local levelDataDec = ScriptLib.GetGroupVariableValue(context,FarmPlay.ExhibitionKey)

    local msg = "## TD_SumeruFarm : LF_Exhibition_GetLevelData"
    msg = msg .. " |levelDataDec = " .. levelDataDec
    ScriptLib.PrintContextLog(context, msg)

    return levelDataDec
end

-- 返回当前的陈列室值导出的数组
function LF_Exhibition_GetLevelDataArray(context)
    local levelDataDec = LF_Exhibition_GetLevelData(context)
    local levelDataArray = LF_DecToBin(levelDataDec)
    return levelDataArray
end

-- 修改bin中指定Index数据
function LF_Exhibition_SetTargetLevel(levelDataDec,targetIndex,value)
    local dataArray = LF_DecToBin(levelDataDec)
    if value ~= 0 and value ~=1 then
        ScriptLib.PrintLog("Error: LF_Exhibition_SetTargetCompelete: value = " .. value)
        value = 0
    end
    -- 指定关卡设为完成
    dataArray[targetIndex] = value
    local changeLevelData = LF_BinToDec(dataArray)


    return changeLevelData
end

-- 通过bin查询对应Index的关卡情况
function LF_Exhibition_CheckTargetComplete(targetIndex,levelDataDec)
    local dataArray = LF_DecToBin(levelDataDec)

    if targetIndex == 0 or nil == dataArray[targetIndex] then
        local msg1 = " |dataArray = " .. LF_ArrayToString(dataArray)
        local msg2 = " | index = " .. targetIndex
        ScriptLib.PrintLog("Error: LF_Exhibition_CheckTargetCompelete" .. msg1 .. msg2)
        return 0
    end

    if dataArray[targetIndex] == 0 then
        return 0
    end

    return 1
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
    local arrayType= type(array)
    if arrayType ~= "table" then
        ScriptLib.PrintLog(error .. "array 非法")
        return 1
    end

    local valueType= type(value)
    if valueType ~= "number" then
        ScriptLib.PrintLog(error .. "value 非法")
        return 1
    end

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

-- 顺序0,1数组转十进制保存
function LF_BinToDec(binArray)
    local decValue = 0
    local bin = table.concat(binArray)
    decValue = tonumber(bin,2)
    return decValue
end

-- 十进制转成0,1数组，位数对应为1~13
function LF_DecToBin(decValue)
    local binArray = {}
    local value = decValue
    local bit = 13 -1 --按需设置对应位数,当前需要13个数据
    for i = bit,0,-1 do
        binArray[#binArray+1] = math.floor(value/2^i)
        value = value % 2^i
    end
    return binArray
end

LF_Initialize_Level()