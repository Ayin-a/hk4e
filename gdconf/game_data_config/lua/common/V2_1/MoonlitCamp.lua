--[[
local defs = {
    --  进入指定Region获得对应AbilityGroup
    -- AG:AbilityGroup
    GroupID = 133003041,
    AGRegionConfigID = 41012,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part1", --AbilityGroupName
    AGKey = "_Activity_ToMoon_Part1_Level", --AbilityGroupValueKey
    --  进入指定Region时开启对应挑战
    ChallengeRegionConfigID = 41012,
    ChallengeID = 111168,
    TriggerTag = 41013,
    TargetTriggerTime = 1,
    --  供奉时对应响应，通知Team修改GlobalValue ScriptLib.SetTeamEntityGlobalFloatValue(context, {uid}, key, value)
    AreaID = 1, --  1璃月 2蒙德 3雪山
    --  挑战成功时，创生宝箱（考虑灵活性，挑战成功时逻辑交给LD处理）
    --  当LD觉得应当结束Bundle时，将OverKey修改为1
    OverKey = "OverKey",
    WatchKey = "save",
    RewardSuit = 7,
}

local Phase ={
        [1] = {3,4},
        [2] = {3,4,5},
        [3] = {7},
}
--]]
---------------------
local tempTrigger = {
    { config_id = 2230001, name = "ENTER_REGION_Challenge", event = EventType.EVENT_ENTER_REGION, source = "1",
      condition = "", action = "action_ENTER_REGION_Challenge", trigger_count = 0},
    { config_id = 2230002, name = "LEAVE_REGION_Challenge", event = EventType.EVENT_LEAVE_REGION, source = "1",
      condition = "", action = "action_LEAVE_REGION_Challenge", trigger_count = 0},
    { config_id = 2230003, name = "LUNA_RITE_SACRIFICE", event = EventType.EVENT_LUNA_RITE_SACRIFICE, source = "",
      condition = "", action = "action_LUNA_RITE_SACRIFICE", trigger_count = 0},
    { config_id = 2230004, name = "VARIABLE_CHANGE_End", event = EventType.EVENT_VARIABLE_CHANGE, source = defs.WatchKey,
      condition = "",  action = "", trigger_count = 0, tag = tostring(defs.TriggerTag) },
    { config_id = 2330005, name = "VARIABLE_CHANGE_BundleEnd", event = EventType.EVENT_VARIABLE_CHANGE, source = defs.OverKey,
      condition = "", action = "action_VARIABLE_CHANGE_BundleEnd", trigger_count = 0},
    { config_id = 2330006, name = "ChallengeEndCheckWin", event = EventType.EVENT_CHALLENGE_SUCCESS, source = tostring(10*defs.ChallengeID), condition = "", action = "action_ChallengeWin" },
    { config_id = 2330007, name = "ChallengeEndCheckLose", event = EventType.EVENT_CHALLENGE_FAIL, source = tostring(10*defs.ChallengeID), condition = "", action = "action_ChallengeLose" },
}

--------初始化----------
function LF_Initialize_Level()
    for k,v in pairs(tempTrigger) do
        table.insert(triggers, v)
        table.insert(suites[1].triggers, v.name)
    end
    -- 给指定region挂AbilityGroup
    regions[defs.AGRegionConfigID].team_ability_group_list = {defs.AGName}
    return 0
end
--------公用函数----------
--  进入Region后触发对应挑战
function action_ENTER_REGION_Challenge(context, evt)

    if evt.param1 ~= defs.ChallengeRegionConfigID or ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
        ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp : 非对应挑战Region触发 ")
        return 0
    end

    -- 新手教程相关
    StartNewbie(context)

    -- 防止连续启挑战
    if -1 == CheckChallenge(context) then return 0 end

    -- 检查WatcherKey是否合法
    local startVariable = ScriptLib.GetGroupVariableValue(context,defs.WatchKey)
    if 0 ~=  CheckWatcherKey(context,startVariable) then
        return 0
    end

    -- ☆开启挑战
    ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp : 准备开启挑战， 挑战内容是 = "..defs.ChallengeRegionConfigID
            .." tag是 "..defs.TriggerTag.." 目标触发次数是 "..defs.TargetTriggerTime.." 继承次数为 "..startVariable)
    ScriptLib.StartChallenge(context, 10*defs.ChallengeID, defs.ChallengeID, {3, defs.TriggerTag, defs.TargetTriggerTime, 1, startVariable})
    ScriptLib.SetGroupTempValue(context, "haveStartChallenge", 1, {})
    RefreshAllSacrificeNum(context)

    -- 根据阶段刷新，为Phase设置保底
    RefreshPhaseSuit(context)

    return 0
end

-- 挑战结束将值还原
function action_ChallengeWin(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp : 挑战成功，关闭Region ")
    ScriptLib.SetGroupTempValue(context, "haveStartChallenge", 2, {})
    ScriptLib.RemoveEntityByConfigId(context, defs.GroupID, EntityType.REGION, defs.ChallengeRegionConfigID)
    return 0
end

function action_ChallengeLose(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp : 挑战失败，关闭并刷新Region ")
    ScriptLib.RemoveEntityByConfigId(context, defs.GroupID, EntityType.REGION, defs.ChallengeRegionConfigID)
    ScriptLib.RefreshGroup(context, { group_id = defs.GroupID, suite = 1 })
    ScriptLib.SetGroupTempValue(context, "haveStartChallenge", 0, {})
    return 0
end

-- 离开指定区域且区域内人员为零时挑战失败
function action_LEAVE_REGION_Challenge(context, evt)
    if evt.param1 == defs.ChallengeRegionConfigID and ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
        ScriptLib.StopChallenge(context, 10*defs.ChallengeID, 0)
    end
    return 0
end

--  逐月节食物供奉改变时
function action_LUNA_RITE_SACRIFICE(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp : 玩家触发了供奉 ")
    RefreshAllSacrificeNum(context)
    return 0
end

--  结束Bundle
function action_VARIABLE_CHANGE_BundleEnd(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp : LD触发了指定数值操作 ")
    ScriptLib.RemoveEntityByConfigId(context, defs.GroupID, EntityType.REGION, defs.ChallengeRegionConfigID)
    ScriptLib.FinishGroupLinkBundle(context, defs.GroupID)
    return 0
end

--------私有函数----------
-- 刷新供奉数量，用于为AbilityGroup提供支持
function RefreshAllSacrificeNum(context)
    local uid_list = ScriptLib.GetSceneUidList(context)
    local sacrificeNum = ScriptLib.GetLunaRiteSacrificeNum(context, defs.AreaID);
    ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp 触发供奉 : UID_List为：".. arrayToString(uid_list).." //AreaID为 " .. defs.AreaID .." //当前供奉数为 " .. sacrificeNum)
    ScriptLib.SetTeamEntityGlobalFloatValue(context,uid_list, defs.AGKey, sacrificeNum)
    ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp 触发供奉: UID_List为："..arrayToString(uid_list).." //其AbilityGroup的Key刷新了 ")
    return 0
end

-- 刷新供奉数量，用于为AbilityGroup提供支持
function RefreshSacrificeNum(context)
    local tempUid = context.uid
    local sacrificeNum = ScriptLib.GetLunaRiteSacrificeNum(context, defs.AreaID);
    ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp ABGroup挂起: 对应UID为：".. tempUid.." //AreaID为 " .. defs.AreaID .." //当前供奉数为 " .. sacrificeNum)
    ScriptLib.SetTeamEntityGlobalFloatValue(context,{ tempUid }, defs.AGKey, sacrificeNum)
    ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp ABGroup挂起: 对应UID为："..tempUid.." //其AbilityGroup的Key刷新了 ")
    return 0
end

function StartNewbie(context)
    local UidList = ScriptLib.GetSceneUidList(context)
    local ownerUid = UidList[1]
    local havePlayed  = ScriptLib.GetExhibitionAccumulableData(context,ownerUid,10501001)

    if 0 == havePlayed then
        ScriptLib.ShowClientTutorial(context,910,{ownerUid})
        ScriptLib.AddExhibitionAccumulableData(context,ownerUid,"MoonlitCamp_HavePlayed",1)
    end

    return 0
end

function CheckChallenge(context)
    local haveStartChallenge = ScriptLib.GetGroupTempValue(context, "haveStartChallenge",{})
    if 1 == haveStartChallenge then
        ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp : 挑战已触发，不再重复触发 ")
        return -1
    end
    if 2 == haveStartChallenge then
        ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp : 挑战已结束，不再触发 ")
        return -1
    end

    return 0
end

function CheckWatcherKey(context,startVariable)
    if startVariable < defs.TargetTriggerTime then
        return 0
    end

    ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp : 挑战应已完成,请检查进入原因 ")
    return -1
end

function RefreshPhaseSuit(context)
    local stage = ScriptLib.GetGroupVariableValue(context, "stage")

    if nil == Phase then
        ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp : Group: " .. defs.GroupID .. "没有对应Phase")
        return 0
    end

    if stage > #Phase then
        ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp : stage超过Phase界限，stage = " .. stage)
        return 0
    end

    local needRefreshSuit = Phase[stage]

    ScriptLib.PrintContextLog(context, "## TD_MoonlitCamp : PhaseStage= " .. stage .. "需要刷新的suit为：" .. arrayToString(needRefreshSuit))

    for k,v in ipairs(needRefreshSuit) do
        ScriptLib.AddExtraGroupSuite(context, defs.GroupID, v)
    end

    return 0
end

---自骏ToolBox：数组转字符串函数---
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

