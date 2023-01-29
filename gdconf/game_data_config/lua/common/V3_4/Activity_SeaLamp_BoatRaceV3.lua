--ServerUploadTool Save to [/root/env/data/lua/common/V3_4]
--======================================================================================================================
--||   Filename      ||    Activity_SeaLamp_BoatRaceV3
--||   Owner         ||    zijun.ma
--||   Description   ||    收纳浪船挑战船体相关
--||   LogName       ||    TD_BoatRaceV3
--||   Protection    ||    
--======================================================================================================================
--=====================================
-- 测试包
--======================================
--测试指令
--[[
group SETVAR 133212587 BoatTest 1
--]]
--=====================================
-- 常量
--======================================
local PlayCfg= {
    ReviveCounter = 10,
    ReviveTimeAxis = {}, -- 根据ReviveCounter自动生成
    AirdropDelay = {2},
    SafePos = {x = -3840.878, y = 200.000, z = -1998.566}
}

-- 空投车的行进路线
local AirdropPointList = {
    [1] = {pointArray = 321200054, pointCid = 587006, list = {1,2,3,4}},
    [2] = {pointArray = 321200054, pointCid = 587007, list = {1,2,3,4}},
    [3] = {pointArray = 321200054, pointCid = 587008, list = {1,2,3,4}},
    [4] = {pointArray = 321200054, pointCid = 587009, list = {1,2,3,4}},
}

-- 空投的清单
local AirdropItemList = {
    [1] = {1,1,1,2},
    [2] = {2,1,1,1},
}

local SGVProp = {
    HP = "SGV_BoatV3_HP",
    HPMax = "SGV_BoatV3_HPMax",
    Coin = "SGV_BoatV3_Coin",
    Ghost = "SGV_BoatV3_Ghost", -- 是否处于幽灵模式
    Progress = "SGV_BoatV3_Progress", -- 复活进度值
    SkillIdx = "SGV_BoatV3_SkillIndex", -- 对应获得技能序号。0为没有技能
}

local TempProp = {
    NextPoint = "NextPoint",
    DropCoinIdx = "DropCoinIdx",
    DropBombIdx = "DropBombIdx",
    AirdropIdx = "AirdropIdx", -- 游戏中的空投船计数
    AirdropPointListDec = "AirdropPointListDec", -- 记录已经使用过的行进路线
}

-- 需要同时处理多个的Index
local TempIndexProp = {
    AirdropPointListIdx = "AirdropPointListIdx", -- 当前对应的行进路线(关联AirdropPointList)
    AirdropItemListIdx = "AirdropItemListIdx", --当前对应的空投清单(关联AirdropItemList)
    AirdropItemIdx = "AirdropItemIdx", --对应AirdropItemList，获取投放硬币还是炸弹
}

local ExhibitionProp ={
    CollectCoinNum = "Activity_BoatRaceV3_CollectCoinNum",
    HighestCoinNum = "Activity_BoatRaceV3_HighestCoinNum",
    HighestLiveTime = "Activity_BoatRaceV3_HighestLiveTime",
    DeathNum = "Activity_BoatRaceV3_DeathNum",
    CollectItemNum = "Activity_BoatRaceV3_CollectItemNum",
    UseSkillTimes = "Activity_BoatRaceV3_UseSkillTimes",
    DestroyGadgetTimes = "Activity_BoatRaceV3_DestroyGadgetTimes",
    DropCoinNum = "Activity_BoatRaceV3_DropCoinNum",
    SeaLampNum = "Activity_BoatRaceV3_SeaLampNum",
    CorrectRiddleNum = "Activity_BoatRaceV3_CorrectRiddleNum",
    BigCoinNum = "Activity_BoatRaceV3_BigCoinNum",
}

local PlayerData = {
    [1] = { DeathCoin = 53040101},
    [2] = { DeathCoin = 53040102},
    [3] = { DeathCoin = 53040103},
    [4] = { DeathCoin = 53040104},
}

local LevelDataName = {
    DropCoin = "DropCoin",
    DropBomb = "DropBomb",
    AirDrop = "AirDrop",
}

-- 关卡临时创建CidList
local LevelData = {
    [LevelDataName.DropCoin] = {gadgetid = 70290784,startCid = 53040201, num = 40, tempProp = TempProp.DropCoinIdx, cidList = {}}, -- {53040201，53040202}
    [LevelDataName.DropBomb] = {gadgetid = 70290785,startCid = 53040301, num = 10, tempProp = TempProp.DropBombIdx, cidList = {}},
    [LevelDataName.AirDrop] = {gadgetid = 70290783,startCid = 53040401, num = 4, tempProp = TempProp.AirdropIdx, cidList = {}},
}

local Tri_BoatRaceV3 = {
    { keyWord = "BoatRevive", keyWordType = "1", event = EventType.EVENT_TIME_AXIS_PASS, source = "Revive1", trigger_count = 0},
    { keyWord = "BoatRevive", keyWordType = "2", event = EventType.EVENT_TIME_AXIS_PASS, source = "Revive2", trigger_count = 0},
    { keyWord = "BoatRevive", keyWordType = "3", event = EventType.EVENT_TIME_AXIS_PASS, source = "Revive3", trigger_count = 0},
    { keyWord = "BoatRevive", keyWordType = "4", event = EventType.EVENT_TIME_AXIS_PASS, source = "Revive4", trigger_count = 0},
    { keyWord = "BoatTest", event = EventType.EVENT_VARIABLE_CHANGE, source = "BoatTest", trigger_count = 0},
    { keyWord = "GroupLoad", event = EventType.EVENT_GROUP_LOAD, source = "", trigger_count = 0},
    { keyWord = "AirdropMove", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", trigger_count = 0},
}


function LF_Initialize_BoatRaceV3()
    LF_AutoGenTri()
    LF_GenTrigger(Tri_BoatRaceV3,53040001,{1})
    LF_InitReviveTimeAxis()
    -- LevelData中Gadget数据占坑
    LF_GenGadget(LevelDataName.AirDrop)
    LF_GenGadget(LevelDataName.DropCoin)
    LF_GenGadget(LevelDataName.DropBomb)

    local var = { config_id= 53049001, name = "BoatTest", value = 0, no_refresh = false }  --Boss战的步骤计数器
    variables[var.name] = var

    return 0
end

function LF_GenTrigger(triTable,startCid,insertSuiteList)
    local startConfigID = startCid
    for _,v in pairs(triTable) do
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
    LF_InsertTriggers(Tri_BoatRaceV3,insertSuiteList)

    return 0
end

function LF_InitReviveTimeAxis()
    for i =1,PlayCfg.ReviveCounter do
        table.insert(PlayCfg.ReviveTimeAxis,i)
    end
    return 0
end

function LF_GenGadget(levelDataName)
    local levelData = LevelData[levelDataName]
    local startCid = levelData.startCid
    for i = 1,levelData.num do
        gadgets[startCid] = { config_id = startCid, gadget_id = levelData.gadgetid,
                              pos = PlayCfg.SafePos,rot = { x = 0.000, y = 0.000, z = 0.000 },
                              is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER,
                              level = 1 , area_id = 13}
        table.insert(levelData.cidList,startCid)
        startCid = startCid + 1
    end
    return 0
end

function LF_AutoGenTri()
    local keyWord = 0
    for i = 1,4 do
        keyWord = keyWord + 1
        local keyWordType = tostring(keyWord)
        local sourceName = "AirdropStartMove" .. keyWordType
        local trigger = {keyWord = "AirdropStartMove",keyWordType=keyWordType,event=EventType.EVENT_TIME_AXIS_PASS,source = sourceName, trigger_count = 0}
        table.insert(Tri_BoatRaceV3, trigger)
    end
    return 0
end
--=====================================
--Action
--======================================
-- GroupLoad测试
function action_GroupLoad(context,evt)
    ScriptLib.PrintContextLog(context, "## TD_BoatRaceV3 GroupLoad|加载成功校验")
    ScriptLib.SetGroupTempValue(context, TempProp.DropCoinIdx, 0, {})
    ScriptLib.SetGroupTempValue(context, TempProp.DropBombIdx, 0, {})
    ScriptLib.SetGroupTempValue(context, TempProp.AirdropIdx, 0, {})
    ScriptLib.SetGroupTempValue(context, TempProp.AirdropPointListDec, 0, {})
    return 0
end

-- BoatTest测试
function action_BoatTest(context,evt)
    LF_Airdrop_Appear(context)
    return 0
end

-- 时间轴控制幽灵计数器
function action_BoatRevive(context,evt)
    local playerIndex = LF_GetIndexByKeyName(evt.source_name)
    local uid = LF_GetPlayerUidByIndex(context,playerIndex)

    if 0 == uid then
        return 0
    end

    local curProgress = ScriptLib.GetTeamServerGlobalValue(context, uid, SGVProp.Progress)
    curProgress = curProgress - 1
    ScriptLib.SetTeamServerGlobalValue(context, uid, SGVProp.Progress, curProgress)
    if curProgress == 0 then
        ScriptLib.SetTeamServerGlobalValue(context, uid, SGVProp.Ghost, 0)
    end

    return 0
end

-- 空投船管理
function action_AirdropMove(context,evt)
    -- 是不是空投船
    local moveCid = evt.param1

    if gadgets[moveCid] == nil then
        return 0
    end

    if 70290783 ~= gadgets[moveCid].gadget_id then
        return 0
    end

    -- 空投船逻辑
    local index = LF_LevelData_GetIndexByCid(LevelDataName.AirDrop,moveCid)
    local pointListIndex = LF_GetTempIndexProp(context,TempIndexProp.AirdropPointListIdx,index)
    local pointList = AirdropPointList[pointListIndex]
    if pointList == nil then
        return 0
    end

    local curPointList = pointList.list
    if curPointList == nil then
        return 0
    end
    -- 是否是最后一个点
    if evt.param3 == curPointList[#curPointList] then
        -- 处理消失
        LF_Airdrop_Disappear(context,index)
    else
        -- 处理掉落情报
        LF_Airdrop_Throw(context,index)
    end
    return 0
end

-- 船体开始运动
function action_AirdropStartMove(context,evt)
    local index = LF_GetIndexByString(evt.source_name,"AirdropStartMove")
    local cid = LF_LevelData_GetCidByIndex(LevelDataName.AirDrop,index)
    local pointListIdx = LF_GetTempIndexProp(context,TempIndexProp.AirdropPointListIdx,index)
    local pointList = AirdropPointList[pointListIdx]

    local msg = "## TD_BoatRaceV3 action_AirdropStartMove"
    msg = msg .. "|index=" .. tostring(index)
    msg = msg .. "|cid=" .. tostring(cid)
    msg = msg .. "|pointListIdx=" .. tostring(pointListIdx)
    ScriptLib.PrintContextLog(context, msg)

    if pointList == nil then
        return 0
    end

    -- 船体开始沿固定轨迹移动
    ScriptLib.SetPlatformPointArray(context, cid, pointList.pointArray, pointList.list, { route_type = 0 })
    return 0
end

--=====================================
--LocalFunction
--======================================
-- 船体出现
function LF_Airdrop_Appear(context)
    -- 走不重复随机
    local selectAirdropPointListIndex = LF_Airdrop_SelectAirdropPointList(context)

    local selectAirdropPointList = AirdropPointList[selectAirdropPointListIndex]

    local msg = "## TD_BoatRaceV3 LF_Airdrop_Appear"
    msg = msg .. "|selectAirdropPointListIndex=" .. tostring(selectAirdropPointListIndex)
    ScriptLib.PrintContextLog(context, msg)

    if selectAirdropPointList == nil then
        return 0
    end

    local selectPointCid = selectAirdropPointList.pointCid
    if selectPointCid == nil then
        return 0
    end

    local selectPointInfo = points[selectPointCid]
    if selectPointInfo == nil then
        return 0
    end

    local selectPointPos = selectPointInfo.pos
    -- 创建船体（会返回一个Index)
    local airdropIndex = LF_LevelData_CreateLevelDataGadget(context,LevelDataName.AirDrop,selectPointPos,{x=0,y=0,z=0})

    if airdropIndex > 0 then
        -- 启动空投船对应的时间轴（延时开始移动)
        ScriptLib.InitTimeAxis(context, "AirdropStartMove".. tostring(airdropIndex), PlayCfg.AirdropDelay, false)
        -- 存储对应空投船的点阵Index
        LF_SetTempIndexProp(context,TempIndexProp.AirdropPointListIdx,airdropIndex,selectAirdropPointListIndex)
        -- 确认对应空投船的空投清单 AirdropItemListIndex
        local selectAirdropItemListIdx = LF_Random(context,#AirdropItemList)
        LF_SetTempIndexProp(context,TempIndexProp.AirdropItemListIdx,airdropIndex,selectAirdropItemListIdx)
        -- 初始化ItemIdx
        LF_SetTempIndexProp(context,TempIndexProp.AirdropItemIdx,airdropIndex,1)
    end
    return 0
end

-- 随机选择一个未使用的空投车行进路线并标记
function LF_Airdrop_SelectAirdropPointList(context)
    local pointListDec = ScriptLib.GetGroupTempValue(context, TempProp.AirdropPointListDec, {})
    local binArray = LF_DecToBin(pointListDec,#AirdropPointList)
    local selectIndex = LF_SelectRandomIdxFromDec(context,pointListDec,#AirdropPointList)

    if selectIndex > 0 then
        local newPointListDec = LF_ChangeIndexValueFromDec(pointListDec,#AirdropPointList,selectIndex,1)

        local msg = "## TD_BoatRaceV3 LF_Airdrop_SelectAirdropPointList"
        msg = msg .. "|pointListDec=" .. tostring(pointListDec)
        msg = msg .. "|newPointListDec=" .. tostring(newPointListDec)
        msg = msg .. "|binArray=" .. LF_ArrayToString(binArray)
        msg = msg .. "|selectIndex=" .. tostring(selectIndex)
        ScriptLib.PrintContextLog(context, msg)

        ScriptLib.SetGroupTempValue(context,TempProp.AirdropPointListDec, newPointListDec, {})
        return selectIndex
    end

    return 0
end


-- 船体消失
function LF_Airdrop_Disappear(context,index)
    local cid  = LF_LevelData_GetCidByIndex(LevelDataName.AirDrop,index)
    -- 设置船体消失
    ScriptLib.SetGadgetStateByConfigId(context,cid,201)
    return 0
end

-- 空投抛物的LocalFunction
function LF_Airdrop_Throw(context,index)
    -- 从船体点位创建一个投掷物
    local cid = LF_LevelData_GetCidByIndex(LevelDataName.AirDrop,index)
    local entityId = ScriptLib.GetEntityIdByConfigId(context, cid)
    local curPos = ScriptLib.GetPosByEntityId(context, entityId)
    
    local curAirdropItemListIdx = LF_GetTempIndexProp(context,TempIndexProp.AirdropItemListIdx,index)
    local curAirdropItemIdx = LF_GetTempIndexProp(context,TempIndexProp.AirdropItemIdx,index)
    local curItemList = AirdropItemList[curAirdropItemListIdx]
    local curItem = curItemList[curAirdropItemIdx]

    --日志查阅
    local msg = "## TD_BoatRaceV3 LF_Airdrop_Throw"
    msg = msg .. "|entityId=" .. entityId
    msg = msg .. "|curPos=" .. LF_ArrayToString({ curPos.x,curPos.y,curPos.z })
    msg = msg .. "|index=" .. tostring(index)
    msg = msg .. "|curAirdropItemListIdx=" .. tostring(curAirdropItemListIdx)
    msg = msg .. "|curAirdropItemIdx=" .. tostring(curAirdropItemIdx)
    msg = msg .. "|curItemList=" ..  LF_ArrayToString(curItemList)
    msg = msg .. "|curItem=" ..  tostring(curItem)
    ScriptLib.PrintContextLog(context, msg)

    if curItemList == nil then
        ScriptLib.PrintContextLog(context, "## TD_BoatRaceV3 LF_Airdrop_Throw|数据不合法")
        return 0
    end

    if 1 == curItem then
        -- 出金币
        LF_LevelData_CreateLevelDataGadget(context,LevelDataName.DropCoin,curPos,{ x=90, y=0, z=0 })
        -- 记录进度
        LF_SetTempIndexProp(context,TempIndexProp.AirdropItemIdx,index,curAirdropItemIdx+1)
        return 0
    end
    if 2 == curItem then
        -- 出炸药桶
        LF_LevelData_CreateLevelDataGadget(context,LevelDataName.DropBomb,curPos,{ x=90, y=0, z=0 })
        -- 记录进度
        LF_SetTempIndexProp(context,TempIndexProp.AirdropItemIdx,index,curAirdropItemIdx+1)
        return 0
    end

    return 0
end

-- 尝试创建一个LevelData对应的物件
function LF_LevelData_CreateLevelDataGadget(context,levelDataName,pos,rot)
    -- （例如： LevelData[LevelDataName.DropCoin]
    local levelDataProp = LevelData[levelDataName]
    -- 获取当前最大Index(例如：取DropCoinIdx)
    local index = ScriptLib.GetGroupTempValue(context, levelDataProp.tempProp, {})
    -- 最大Index + 1 (例如：取DropCoinIdx += 1)
    index = index + 1
    if index > levelDataProp.num then
        -- 如果达到上限，则不予创建
        ScriptLib.PrintContextLog(context, "## TD_BoatRaceV3 LF_LevelData_CreateLevelDataGadget|创建数量达到上限，不予创建")
        return 0
    end

    -- 获取对应Cid
    local createCid = levelDataProp.startCid + index - 1
    -- 创建对应Gadget
    ScriptLib.CreateGadgetByConfigIdByPos(context,createCid,{x=pos.x,y=pos.y,z=pos.z},rot)
    -- 更新tempPropIndex(形如DropCoinIdx=> +=1)
    ScriptLib.SetGroupTempValue(context, levelDataProp.tempProp, index, {})
    return index
end

-- 根据Index获取对应Cid
function LF_LevelData_GetCidByIndex(levelDataName,index)
    local levelDataProp = LevelData[levelDataName]
    if levelDataProp ~= nil then
        if index <= levelDataProp.num then
            return levelDataProp.cidList[index]
        end
    end
    return 0
end

-- 根据ConfigID获取对应Index
function LF_LevelData_GetIndexByCid(levelDataName,cid)
    local levelDataProp = LevelData[levelDataName]
    if levelDataProp ~= nil then
        local index = cid - levelDataProp.startCid + 1
        if index <= levelDataProp.num then
            return index
        end
    end
    return 0
end

-- 根据字符串解析Index
function LF_GetIndexByString(str,propName)
    local indexString = string.gsub(str,propName,"")
    local index = tonumber(indexString)
    if index == nil then
        return 0
    end
    return index
end

-- 获取形如"xx01"的tempValue
function LF_GetTempIndexProp(context,propName,index)
    local propValue = ScriptLib.GetGroupTempValue(context, propName..tostring(index), {})
    return propValue
end

-- 设置形如"xx01"的tempValue
function LF_SetTempIndexProp(context,propName,index,value)
    ScriptLib.SetGroupTempValue(context, propName..tostring(index),value, {})
    return 0
end
--=====================================
--SLC
--=====================================
-- 获取金币
function SLC_PlayerGetCoin(context,param1)
    local uid = context.uid
    local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })

    LF_SLCDebug(context,"SLC_PlayerGetCoin")

    if 0 == config_id then
        -- 未发现金币
        return 0
    end
    if 201 == ScriptLib.GetGadgetStateByConfigId(context, 0, config_id) then
        -- 金币状态已扭转
        return 0
    end

    local msg = "## TD_BoatRaceV3 SLC_PlayerGetCoin"
    msg = msg .. "|config_id=" .. config_id
    msg = msg .. "|param1=" .. param1
    ScriptLib.PrintContextLog(context, msg)

    -- 获取金币对应数量
    LF_GetCoinNumByGV(context,uid,param1,config_id)


    return 0
end

-- 击杀时触发
function SLC_PlayerDestroyItem(context)
    LF_SLCDebug(context,"SLC_PlayerDestoryItem")

    local uid = context.uid
    local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
    if 0 == config_id then
        return 0
    end

    ScriptLib.AddTeamServerGlobalValue(context, uid, SGVProp.Coin, 1)

    return 0
end

-- 对应玩家获取道具
function SLC_PlayerGetItem(context)
    LF_SLCDebug(context,"SLC_PlayerGetItem")

    local uid = context.uid
    local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
    if 0 == config_id then
        return 0
    end
    if 201 == ScriptLib.GetGadgetStateByConfigId(context, 0, config_id) then
        -- 道具状态已扭转
        return 0
    end

    -- 改变对应道具球状态
    ScriptLib.SetGadgetStateByConfigId(context, config_id, 201)
    LF_GetItemBall(context,uid)

    return 0
end

-- 对应玩家使用道具
function SLC_PlayerUseItem(context)
    LF_SLCDebug(context,"SLC_PlayerUseItem")

    local uid = context.uid
    ScriptLib.SetTeamServerGlobalValue(context, uid, SGVProp.SkillIdx, 0)
    return 0
end

-- 对应玩家掉落金币的逻辑
function SLC_PlayerDamage(context)
    LF_SLCDebug(context,"SLC_PlayerDropCoin")

    local uid = context.uid
    -- 获取对应玩家的HP
    local hp = ScriptLib.GetTeamServerGlobalValue(context, uid, SGVProp.HP)
    hp = math.max(0,hp-1)
    ScriptLib.SetTeamServerGlobalValue(context, uid, SGVProp.HP, hp)

    if hp == 0 then
        LF_EnterGhost(context,evt)
    end

    return 0
end
--[[=====================================
||	本地函数
--======================================]]
-- 初始化玩家序号(作为联机时唯一标记)
function LF_InitPlayerIndex(context)
    local uid_list = ScriptLib.GetSceneUidList(context)
    for key,uid in pairs(uid_list) do
        LF_SetPlayerProp(context,"Player",uid,key)
        ScriptLib.SetGroupTempValue(context, "UidIndex" .. key,uid, {})
    end
    return 0
end

function LF_GetPlayerUidByIndex(context,Index)
    if index < 1 and index > 4 then
        return 0
    end
    local uid = ScriptLib.GetGroupTempValue(context, UidIndex..Index, {})
    return uid
end

function LF_GetIndexByKeyName(keyName)
    if keyName == "Revive1" then
        return 1
    end
    if keyName == "Revive2" then
        return 2
    end
    if keyName == "Revive3" then
        return 3
    end
    if keyName == "Revive4" then
        return 4
    end
    return 0
end

-- 写入对应玩家的Prop
function LF_SetPlayerProp(context,uidProp,uid,value)
    ScriptLib.SetGroupTempValue(context, uidProp..uid,value, {})
    return 0
end

-- 读取对应玩家的Prop
function LF_GetPlayerProp(context,uidProp,uid)
    local index = ScriptLib.GetGroupTempValue(context, uidProp..uid, {})
    return index
end

-- 金币效果结算
function LF_GetCoinNumByGV(context,uid,globalValue,cid)

    local msg = "## TD_BoatRaceV3 LF_GetCoinNumByGV"
    msg = msg .. "|uid=" .. uid
    msg = msg .. "|globalValue=" .. globalValue
    msg = msg .. "|cid=" .. cid
    ScriptLib.PrintContextLog(context, msg)
    if globalValue == 1.0 then
        -- 普通金币
        ScriptLib.AddTeamServerGlobalValue(context, uid, SGVProp.Coin, 1)
        -- 改变对应金币状态
        ScriptLib.SetGadgetStateByConfigId(context, cid, 201)
        return 1
    end
    if globalValue == 2.0 then
        -- 大金币
        ScriptLib.AddTeamServerGlobalValue(context, uid, SGVProp.Coin, 10)
        -- 改变对应金币状态
        ScriptLib.SetGadgetStateByConfigId(context, cid, 201)
        return 10
    end
    if globalValue == 3.0 then
        -- 亡语金币
        local coinOwnerIndex = gadgets[cid].uidIndex
        local coinOwnerUid = LF_GetPlayerUidByIndex(context,coinOwnerIndex)
        local coinNum = LF_GetPlayerProp(context,"DropCoin",coinOwnerUid)
        if coinNum > 0 then
            ScriptLib.AddTeamServerGlobalValue(context, uid, SGVProp.Coin, coinNum)
            -- 改变对应金币状态
            ScriptLib.SetGadgetStateByConfigId(context, cid, 201)
        end
        return 0
    end
end

-- 道具球效果结算
function LF_GetItemBall(context,uid)
    -- 此处疑似可能要迭代，不是纯随机
    local randomSkillIndex = LF_Random(context,3)
    ScriptLib.PrintContextLog(context, "##TD_BoatRaceV3 | LF_GetItemBall 获取技能道具，当前技能为 ".. randomSkillIndex)
    ScriptLib.SetTeamServerGlobalValue(context, uid, SGVProp.SkillIdx, randomSkillIndex)
    return 0
end

-- 生命结算流程
function LF_EnterGhost(context,uid)
    local avatarEntity=ScriptLib.GetAvatarEntityIdByUid(context,uid)
    local avatarPos = ScriptLib.GetPosByEntityId(context, avatarEntity)
    local uidIndex = LF_GetPlayerProp(context,"Player",uid)
    if nil == PlayerData[uidIndex] then
        ScriptLib.PrintContextLog(context,  "##TD_BoatRaceV3 | SLC_PlayerDropCoin" .. "|uidIndex=" .. uidIndex)
        return 0
    end

    -- 计算掉落金币数量，并在角色原位置创生金币
    local coinCid = PlayerData[uidIndex].DeathCoin
    local coinNum = ScriptLib.GetTeamAbilityFloatValue(context, uid, SGVProp.Coin)
    local dropCoinNum = math.floor(coinNum/2) -- 掉落一半金币
    if dropCoinNum > 0 then
        ScriptLib.SetTeamServerGlobalValue(context, uid, SGVProp.Coin, coinNum-dropCoinNum)
        LF_SetPlayerProp(context,SGVProp.Coin, uid, dropCoinNum)
        -- todo：此处要确保对应金币已移除
        ScriptLib.CreateGadgetByConfigIdByPos(context, coinCid,avatarPos,{ x=0, y=0, z=0 })
    end

    -- 对应角色进入幽灵模式并开始倒计时
    ScriptLib.SetTeamServerGlobalValue(context, uid, SGVProp.Ghost, 1)
    -- 开启该角色的计时器
    ScriptLib.InitTimeAxis(context, "Revive0".. tostring(uidIndex), PlayCfg.ReviveTimeAxis, false)
    ScriptLib.SetTeamServerGlobalValue(context, uid, SGVProp.Progress, PlayCfg.ReviveCounter)

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

-- 该功能用于从特定二进制数据中获取Index
function LF_SelectRandomIdxFromDec(context,decValue, len)
    local dataArray = LF_DecToBin(decValue, len)
    local selectIndexList = {}
    local canSelectNum = 0
    for i = 1,len do
        if dataArray[i] == 0 then
            table.insert(selectIndexList,i)
            canSelectNum = canSelectNum + 1
        end
    end

    if canSelectNum == 0 then
        return 0
    end

    math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
    local selectListIdx = LF_Random(context,canSelectNum)
    local selectIndex = selectIndexList[selectListIdx]

    local msg = "## TD_BoatRaceV3 LF_SelectRandomIdxFromDec"
    msg = msg .. "|dataArray=" .. LF_ArrayToString(dataArray)
    msg = msg .. "|selectIndexList=" .. LF_ArrayToString(selectIndexList)
    msg = msg .. "|canSelectNum=" .. tostring(canSelectNum)
    msg = msg .. "|selectListIdx=" .. tostring(selectListIdx)
    msg = msg .. "|selectIndex=" .. tostring(selectIndex)
    ScriptLib.PrintContextLog(context, msg)

    return selectIndex
end

-- 对指定dec修改其特定Index的value,value必须在0,1之间
function LF_ChangeIndexValueFromDec(decValue,len,targetIndex,value)
    local dataArray = LF_DecToBin(decValue,len)
    if value ~= 0 and value ~=1 then
        value = 0
    end
    -- 指定关卡设为完成
    dataArray[targetIndex] = value
    local changeLevelDec = LF_BinToDec(dataArray)


    return changeLevelDec
end

-- 顺序0,1数组转十进制保存
function LF_BinToDec(binArray)
    local decValue = 0
    local bin = table.concat(binArray)
    decValue = tonumber(bin,2)
    return decValue
end

-- 十进制转成0,1数组
function LF_DecToBin(decValue, len)
    local binArray = {}
    local value = decValue
    local bit = len -1
    for i = bit,0,-1 do
        binArray[#binArray+1] = math.floor(value/2^i)
        value = value % 2^i
    end
    return binArray
end

function LF_Random(context,num)
    math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
    local randomIndex = math.random(1,num)
    return randomIndex
end

-- SLC的通用Debug手段
function LF_SLCDebug(context,functionName)
    local msg = "##TD_BoatRaceV3|" .. functionName
    msg = msg .. "|uid=" .. context.uid
    msg = msg .. "|source=" .. context.source_entity_id
    msg = msg .. "|sourceCid=" .. ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
    msg = msg .. "|target=" .. context.target_entity_id
    msg = msg .. "|targetCid=" .. ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
    ScriptLib.PrintContextLog(context, msg)
    return 0
end

--[[=====================================
||	初始化
--======================================]]
LF_Initialize_BoatRaceV3()