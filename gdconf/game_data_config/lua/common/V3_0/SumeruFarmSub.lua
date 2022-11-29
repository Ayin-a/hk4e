--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]
-- goto 1176 296 -1594
--[[======================================
||	filename:       SumeruFarmSub
||	owner:          zijun.ma
||	description:    须弥苗圃玩法(附属梦见花/甜甜花控制)
||	LogName:        TD_SubSumeruFarm
||	Protection:     [Protection]
=======================================]]

-- 数据结构
local FarmPlay = {
    Exhibition = {id = 11601102, key = "Permanent_SumeruNurseryPlay_FarmCount"},
    ExhibitionVar = "ExhibitionVar",
    SuccessQuest = 7307502,
}

local FlowerState = {
    Show = 0,
    Hide = 201,
}

local QuestIndex = {} -- [questid] = index
local FlowerDic = {    
    [1] = { cidList = defs.flowerList01, quest = 73146, index = 1},
    [2] = { cidList = defs.flowerList02, quest = 73147, index = 2},
    [3] = { cidList = defs.flowerList03, quest = 73148, index = 3},
    [4] = { cidList = defs.flowerList04, quest = 73149, index = 4},
    [5] = { cidList = defs.flowerList05, quest = 73150, index = 5},
    [6] = { cidList = defs.flowerList06, quest = 73151, index = 6},
    [7] = { cidList = defs.flowerList07, quest = 73152, index = 7},
    [8] = { cidList = defs.flowerList08, quest = 73153, index = 8},
    [9] = { cidList = defs.flowerList09, quest = 73154, index = 9},
    [10] = { cidList = defs.flowerList10, quest = 73155, index = 10},
    [11] = { cidList = defs.flowerList11, quest = 73156, index = 11},
    [12] = { cidList = defs.flowerList12, quest = 73157, index = 12},
    [13] = { cidList = defs.flowerList13, quest = 73145, index = 13},
}

local SumeruFlower_Trigger = {
    { keyWord = "CheckAllFlower", event = EventType.EVENT_GROUP_LOAD, source = "", trigger_count = 0},
    { keyWord = "CheckHarvest", event = EventType.EVENT_QUEST_FINISH, source = "", trigger_count = 0},
}

function LF_Initialize_Level()
    local startConfigID = 40010001
    for _,v in pairs(SumeruFlower_Trigger) do
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

    LF_InsertTriggers(SumeruFlower_Trigger,{1})
    LF_GenFlowerIndex()


    local var = { config_id= 40010101, name = FarmPlay.ExhibitionVar, value = 0, no_refresh = true }
    variables[var.name] = var

    return 0
end

-- 生成快速索引(Initialize时使用)
function LF_GenFlowerIndex()
    for k, v in pairs(FlowerDic) do
        QuestIndex[v.quest] = k
    end
    return 0
end

--[[=====================================
||	action函数
--======================================]]

-- EVENT_GROUP_LOAD
function action_CheckAllFlower(context,evt)
    ScriptLib.PrintContextLog(context, "## TD_SubSumeruFarm: ## == INITIALIZE 5 == ")
    LF_CheckFlower(context)

    return 0
end

-- EVENT_QUEST_FINISH
function action_CheckHarvest(context,evt)
    if QuestIndex[math.floor(evt.param1/100)] == nil or 1~= evt.param2 then
        ScriptLib.PrintContextLog(context, "## TD_SubSumeruFarm: CropGrow 接收到任务完成 param1 = " .. evt.param1)
        ScriptLib.PrintContextLog(context, "## TD_SubSumeruFarm: CropGrow 接收到任务完成 param2 = " .. evt.param2)
        return 0
    end

    local curFlowerIndex = QuestIndex[math.floor(evt.param1/100)]
    ScriptLib.PrintContextLog(context, "## TD_SubSumeruFarm: CropGrow 在线监听到任务完成。 Index = " .. curFlowerIndex)
    LF_FlowerShow(context,curFlowerIndex)
    return 0
end

--[[=====================================
||	流程函数
--======================================]]
-- 检查幼苗田是否需要切状态，同时核对数据是否正确。
function LF_CheckFlower(context)

    if 3 == ScriptLib.GetHostQuestState(context,FarmPlay.SuccessQuest) then
        -- 特定任务已经完成
        LF_FarmSubComplete(context)
        LF_FarmProtect(context)
        return 0
    end

    -- 查询bin，获取所有已种植list
    local levelData = LF_GetCurLevelData(context)
    local exhibitionData = LF_Exhibition_GetLevelData(context)
    if levelData ~= exhibitionData then

        local exhibitionDataArray =  LF_DecToBin(exhibitionData)
        local levelDataArray = LF_DecToBin(levelData)
        local msg = "## TD_SubSumeruFarm : LF_CheckFlower 数据不一致"
        msg = msg .. " |levelDataArray = " .. LF_ArrayToString(levelDataArray)
        msg = msg .. " |exhibitionDataArray = " .. LF_ArrayToString(exhibitionDataArray)
        ScriptLib.PrintContextLog(context, msg)

        -- 若本地与陈列室数据不一致，将未解锁的花解锁出来
        for k,v in pairs(exhibitionDataArray) do
            if v == 1 and levelDataArray[k] ~= 1 then

                local msg = "## TD_SubSumeruFarm : LF_CheckFlower 正在修改Index"
                msg = msg .. " |index = " .. k
                ScriptLib.PrintContextLog(context, msg)
                LF_FlowerShow(context,k)
            end
        end
    end

    LF_FarmProtect(context)

    return 0
end

-- Sub只听自身Group的指挥
function LF_FlowerShow(context,index)
    -- 对应田切202
    local cidlist = FlowerDic[index].cidList
    ScriptLib.PrintContextLog(context, "## TD_SubSumeruFarm : LF_FlowerShow| cidlist = " .. LF_ArrayToString(cidlist))
    for k, v in pairs(cidlist) do
        ScriptLib.PrintContextLog(context, "## TD_SubSumeruFarm : LF_FlowerShow| cid = " .. v)
        ScriptLib.SetGadgetStateByConfigId(context, v, FlowerState.Show)
    end

    -- 更新本地陈列室数据
    LF_CompleteCurLevel(context,index)

    return 0
end

-- 对本地GVV存档进行修改
function LF_CompleteCurLevel(context,index)
    local levelData = LF_GetCurLevelData(context)
    local changeLevelData = LF_SetTargetLevel(levelData,index,1)
    local msg1 = " |changeLevelDataArray = " .. LF_ArrayToString(LF_DecToBin(changeLevelData))
    local msg2 = " | index = " .. index
    ScriptLib.PrintContextLog(context, "## TD_SubSumeruFarm : LF_CompleteCurFarm"..msg1..msg2)
    LF_SetCurLevelData(context,changeLevelData)
    return 0
end

-- 当特定任务完成后，检查对应GadgetState
function LF_FarmSubComplete(context)
    local levelData = LF_GetCurLevelData(context)
    if 8191 == levelData then
        ScriptLib.PrintContextLog(context, "## TD_SubSumeruFarm LF_CheckMissionOver 关卡已完成")
        return 0
    end

    -- 逐一将所有花设为已完成
    local levelDataArray = LF_DecToBin(levelData)
    for k,v in pairs(levelDataArray) do
        if v == 0 then
            local msg = "## TD_SubSumeruFarm : LF_FarmSubComplete 正在修改Index"
            msg = msg .. " |index = " .. k
            ScriptLib.PrintContextLog(context, msg)
            LF_FlowerShow(context,k)
        end
    end

    return 0
end

-- 苗圃种植保护
function LF_FarmProtect(context)
    -- 遍历所有植物设置状态
    local levelData = LF_GetCurLevelData(context)
    local levelDataArray = LF_DecToBin(levelData)
    for k,v in pairs(levelDataArray) do
        if v == 1 then
            local msg = "## TD_SubSumeruFarm : LF_FarmProtect 保护需要设置的状态"
            msg = msg .. " |index = " .. k
            ScriptLib.PrintContextLog(context, msg)
            local cidlist = FlowerDic[k].cidList
            for k1, v1 in pairs(cidlist) do
                if ScriptLib.CheckIsInGroup(context, 0, v1) == true then
                    ScriptLib.PrintContextLog(context, "## TD_SubSumeruFarm : LF_FarmProtect| cid = " .. v1)
                    ScriptLib.SetGadgetStateByConfigId(context, v1, FlowerState.Show)
                end
            end
        end
    end
end
--[[=====================================
||	永久陈列室工具包
--======================================]]
-- 获取Group上的bin
function LF_GetCurLevelData(context)
    local levelData = ScriptLib.GetGroupVariableValueByGroup(context, FarmPlay.ExhibitionVar,0)
    return levelData
end

-- 写入Group上的bin
function LF_SetCurLevelData(context,levelData)
    ScriptLib.SetGroupVariableValueByGroup(context, FarmPlay.ExhibitionVar,levelData,0)
    return 0
end

-- 修改bin中指定Index数据
function LF_SetTargetLevel(levelDataDec,targetIndex,value)
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

-- 返回当前的陈列室值
function LF_Exhibition_GetLevelData(context)

    local levelDataDec = ScriptLib.GetGroupVariableValueByGroup(context, "FarmExhibition", 133301057)

    local msg = "## TD_SubSumeruFarm : LF_Exhibition_GetLevelData"
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
