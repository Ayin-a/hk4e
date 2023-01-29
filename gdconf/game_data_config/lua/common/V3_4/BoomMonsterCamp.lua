--[[

-- DEFS_MISCS

local defs = {
    duration = 30,
    kill_sum = 1,
    GroupID = 111102025,
    gadget_controller_id = 25004,
    ChallengeID = 1,
    MonstersuitID = 2,
}


--]]
local defs = {
    duration = 30,
    kill_sum = 1,
    GroupID = 111102025,
    gadget_controller_id = 25004,
    ChallengeID = 71,
    FireworkRegion = 25002,
    ChallengeStartRegion = 25003,
    MonsterNum = 4,                 --Group中所有怪物的数量，用来控制挑战计数
    FireworkID = 25005,
}

local Phase ={
    [1] = {2},
    [2] = {3},
    [3] = {4},
    [4] = {5},
}

---------------------
local tempTrigger_BoomMonsterCamp = {

    { config_id = 2230000, name = "RISE_CHALLENGE", event = EventType.EVENT_ENTER_REGION, source = "1",
    condition = "", action = "action_RISE_CHALLENGE", trigger_count = 0},
    { config_id = 2230001, name = "ANY_MONSTER_DIE_25015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_25015", trigger_count = 0, tag = "25015"},
    { config_id = 2330002, name = "ChallengeEndCheckWin", event = EventType.EVENT_CHALLENGE_SUCCESS, source = tostring(10*defs.ChallengeID), condition = "", action = "action_ChallengeWin" },
    { config_id = 2330003, name = "ChallengeEndCheckLose", event = EventType.EVENT_CHALLENGE_FAIL, source = tostring(10*defs.ChallengeID), condition = "", action = "action_ChallengeLose" },
    { config_id = 2230004, name = "LEAVE_REGION_Challenge", event = EventType.EVENT_LEAVE_REGION, source = "1",
      condition = "", action = "action_LEAVE_REGION_Challenge", trigger_count = 0},
    { config_id = 2330005, name = "VARIABLE_CHANGE_BundleEnd", event = EventType.EVENT_VARIABLE_CHANGE, source = "StartNextGroup",
      condition = "", action = "action_VARIABLE_CHANGE_BundleEnd", trigger_count = 0},
    
}

--------初始化----------
function LF_Initialize_BoomMonsterCamp()
    for k,v in pairs(tempTrigger_BoomMonsterCamp) do
        table.insert(triggers, v)
        table.insert(suites[1].triggers, v.name)
    end
end

LF_Initialize_BoomMonsterCamp()

--------公用函数----------
--  Gadget发送事件后触发对应挑战
function action_RISE_CHALLENGE(context, evt)
  
    if evt.param1 ~= defs.ChallengeStartRegion or ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
        ScriptLib.PrintContextLog(context,evt.param1, "## TD_BoomMonsterCamp : 非对应挑战Region触发 ")
        return 0
    end

    -- 防止连续启挑战
    if -1 == LF_CheckChallenge(context) then return 0 end

    -- 检查Group中怪物是否已经全死
    local MDNum = ScriptLib.GetGroupVariableValue(context,"MonsterDieNum")
    if 0 ~=  LF_CheckMonsterNum(context,MDNum) then
        return 0
    end

    ScriptLib.PrintContextLog(context, "## TD_BoomMonsterCamp : 准备开启挑战")
    
    --ScriptLib.PrintContextLog(context,  "## MDNum" .. MDNum .. "")
    ScriptLib.StartChallenge(context, 10*defs.ChallengeID, defs.ChallengeID, {1, 25015, 4, 1, MDNum})

    ScriptLib.PrintContextLog(context, "## TD_BoomMonsterCamp : 挑战已经开启，设置变量，防止重复进出")
    ScriptLib.SetGroupTempValue(context, "haveStartChallenge", 1, {})

    ScriptLib.PrintContextLog(context, "## TD_BoomMonsterCamp : 开始添加怪物")
    -- yc 这里的变量是不存档的，也是不会让挑战重复开启，是满足了挑战“没有完成”，需要重复开启的情况
    LF_RefreshPhaseSuit(context)

    ScriptLib.PrintContextLog(context, "## test : 3333")
    return 0
end

--[[
-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_25015(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111102025) ~= 0 then
		return false
	end
	
	return true
end
--]]

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25015(context, evt)

    ScriptLib.ChangeGroupVariableValue(context, "MonsterDieNum", 1)
    if ScriptLib.GetGroupMonsterCountByGroupId(context, 111102025) ~= 0 then
		return 0
	end
	
    ScriptLib.PrintContextLog(context, "## TD_BoomMonsterCamp : 怪物死亡，stage变更")
    ScriptLib.ChangeGroupVariableValue(context, "stage", 1)
    LF_RefreshPhaseSuit(context)
	
	return 0
end


function action_ChallengeWin(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_BoomMonsterCamp : 挑战成功，关闭Region ")
    ScriptLib.SetGroupTempValue(context, "haveStartChallenge", 2, {})
    ScriptLib.AddExtraGroupSuite(context, defs.GroupID, 5)
    ScriptLib.RemoveEntityByConfigId(context, defs.GroupID, EntityType.REGION, defs.ChallengeStartRegion)
    return 0
end

function action_ChallengeLose(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_BoomMonsterCamp : 挑战失败，关闭并刷新Region ")
    --ScriptLib.RemoveEntityByConfigId(context, defs.GroupID, EntityType.MONSTER, 25001)
    --失败了只刷新挑战启动区域，不刷新烟花
    ScriptLib.RefreshGroup(context, { group_id = defs.GroupID, suite = 1 })
    --杀掉进入时的烟花，这里要多加个参数，让LD来告诉烟花的configid
    ScriptLib.KillEntityByConfigId(context, {group_id=111102025, config_id=defs.FireworkID})
    ScriptLib.SetGroupTempValue(context, "haveStartChallenge", 0, {})
    return 0
end

function LF_CheckChallenge(context)
    local haveStartChallenge = ScriptLib.GetGroupTempValue(context, "haveStartChallenge",{})
    if 1 == haveStartChallenge then
        ScriptLib.PrintContextLog(context, "## TD_BoomMonsterCamp : 挑战已触发，不再重复触发 ")
        return -1
    end
    if 2 == haveStartChallenge then
        ScriptLib.PrintContextLog(context, "## TD_BoomMonsterCamp : 挑战已结束，不再触发 ")
        return -1
    end

    return 0
end

function LF_CheckMonsterNum(context,MDNum)
    if MDNum < defs.MonsterNum then
        return 0
    end

    ScriptLib.PrintContextLog(context, "## TD_BoomMonsterCamp : 挑战应已完成,请检查进入原因 ")
    return -1
end


-- 离开指定区域且区域内人员为零时挑战失败
function action_LEAVE_REGION_Challenge(context, evt)
    if evt.param1 == defs.ChallengeStartRegion and ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
        ScriptLib.StopChallenge(context, 10*defs.ChallengeID, 0)
    end
    return 0
end

--记录当前刷新的怪物的波次，方便下次挑战
function LF_RefreshPhaseSuit(context)

    local stage = ScriptLib.GetGroupVariableValue(context, "stage")

    if nil == Phase then
        ScriptLib.PrintContextLog(context, "## TD_BoomMonsterCamp : Group: " .. defs.GroupID .. "没有对应Phase")
        return 0
    end

    if stage > #Phase then
        ScriptLib.PrintContextLog(context, "## TD_BoomMonsterCamp : stage超过Phase界限，stage = " .. stage)
        return 0
    end


    local needRefreshSuit = Phase[stage]

    ScriptLib.PrintContextLog(context, "## TD_BoomMonsterCamp : PhaseStage= " .. stage .. "需要刷新的suit为：" .. LF_arrayToString(needRefreshSuit))

    for k,v in ipairs(needRefreshSuit) do
        ScriptLib.AddExtraGroupSuite(context, defs.GroupID, v)
    end

    ScriptLib.PrintContextLog(context, "## 添加怪物成功")

    return 0
end

--  结束Bundle
function action_VARIABLE_CHANGE_BundleEnd(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_BoomMonsterCamp : 开启了宝箱，FinishGroupLink ")
    ScriptLib.RemoveEntityByConfigId(context, defs.GroupID, EntityType.REGION, defs.ChallengeStartRegion)
    ScriptLib.FinishGroupLinkBundle(context, defs.GroupID)
    return 0
end


function LF_arrayToString(array)
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