--[[======================================
||  filename:   ContinuousTrampoline
||  owner:      shuyi.chang
||  description:    连续弹跳蘑菇
||  LogName:    ## [ContinuousTrampoline]
||  Protection: 
=======================================]]

-- local defs = 
-- {
--     maxRegion = 34004,
--     maxJumpTimes = 5,
--     mushroomList = {
--         [1] = {34001, 34002,}, 
--         [2] = {34003}, 
--         [3] = {34004, 34005, 34006,},
--         [4] = {34007,},
--         [5] = {34008,},
--         [6] = {34019,},
--         [7] = {34010,},
--     },
-- }

local challengeId = 84


local extraTriggers = 
{	
	{ config_id = 5000001, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_GROUP_LOAD", trigger_count = 0},
	{ config_id = 5000002, name = "ENTER_REGION", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_ENTER_REGION", forbid_guest = true, trigger_count = 0},
    { config_id = 5000003, name = "AVATAR_JUMP", event = EventType.EVENT_VARIABLE_CHANGE, source = "jumpTimes", condition = "", action = "action_AVATAR_JUMP", trigger_count = 0, tag = "99"},
    { config_id = 5000004, name = "CHALLENGE_FAIL", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_CHALLENGE_FAIL", trigger_count = 0 },
	{ config_id = 5000005, name = "CHALLENGE_SUCCESS", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_CHALLENGE_SUCCESS", trigger_count = 0 },
    { config_id = 5000006, name = "LEAVE_REGION", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_LEAVE_REGION", trigger_count = 0},
    { config_id = 5000007, name = "GROUP_WILL_UNLOAD", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_GROUP_WILL_UNLOAD", trigger_count = 0},

}

local extraVariables = 
{
    -- 记录玩家连续跳跃次数
    { config_id = 5000101, name = "jumpTimes", value = 0, no_refresh = false },
    -- 记录最后一个跳过的蘑菇的index
    { config_id = 5000102, name = "mushroomIdx", value = 1, no_refresh = true },
      -- 记录最后一个跳过的蘑菇的index
    { config_id = 5000103, name = "succeed", value = 0, no_refresh = true },
    { config_id = 5000104, name = "onMushroom", value = 0, no_refresh = false },
}

local mushroomRegion = {}

local abilityGroup = "ActivityAbility_ContinuousTrampoline"
--================================================================
-- Local Functions
--================================================================
function LF_Initialize_Group(triggers, suites, variables, gadgets, regions)

    -- insert triggers
    for i = 1, #extraTriggers do
        table.insert(triggers, extraTriggers[i])
    end

    -- add triggers to suite
    for i = 1, #extraTriggers do
        table.insert(suites[1].triggers,extraTriggers[i].name)

    end

    -- insert variables
    for i = 1, #extraVariables do
        table.insert(variables, extraVariables[i])
    end

	-- add ability group
	-- regions[defs.maxRegion].team_ability_group_list = {abilityGroup}

    -- local regionBaseId = 4000000
    -- -- 每个蘑菇都加一个region
    -- for i = 1, #defs.mushroomList do
    --     for j = 1, #defs.mushroomList[i] do
    --         local idTemp = regionBaseId + i * 10 + j
    --         local posTemp = {x = gadgets[defs.mushroomList[i][j]].pos.x, y = gadgets[defs.mushroomList[i][j]].pos.y + 2.5, z = gadgets[defs.mushroomList[i][j]].pos.z}
    --         local regionTemp = { config_id = idTemp, 
    --             shape = RegionShape.CYLINDER, radius = 1.5, pos = { x = posTemp.x, y = posTemp.y, z = posTemp.z }, height = 3.000 }
    --         regions[idTemp] = regionTemp
    --         mushroomRegion[i] = idTemp

    --         -- add region to suites
    --         table.insert(suites[1].regions, idTemp)
    --     end
       
    -- end
end

function LF_CreateMushrooms(context, index)
    ScriptLib.PrintContextLog(context, "## [ContinuousTrampoline] LF_CreateMushrooms is called, index = "..index)

    for i = 1, #defs.mushroomList[index] do
        ScriptLib.CreateGadget(context, { config_id = defs.mushroomList[index][i] })
    end
end

function LF_KillMushrooms(context, index)
    ScriptLib.PrintContextLog(context, "## [ContinuousTrampoline] LF_KillMushrooms is called, index = "..index)

    for i = 1, #defs.mushroomList[index] do
        ScriptLib.KillEntityByConfigId(context, { group_id = base_info.group_id, config_id = defs.mushroomList[index][i] })
    end

end

function LF_RestartChallenge(context)
    ScriptLib.PrintContextLog(context, "## [ContinuousTrampoline] LF_RestartChallenge is called")

    ScriptLib.StopChallenge(context, challengeId, 0)
    ScriptLib.StartChallenge(context, challengeId, challengeId, {3, 99, defs.maxJumpTimes})
end


--================================================================
-- Trigger functions
--================================================================
function action_GROUP_LOAD(context, evt)
    ScriptLib.PrintContextLog(context, "## [ContinuousTrampoline] group is loaded")

    if ScriptLib.GetGroupVariableValue(context, "succeed") == 0 then
        local currentMushroomIdx = ScriptLib.GetGroupVariableValue(context, "mushroomIdx")
        LF_CreateMushrooms(context, currentMushroomIdx)
    end
    
    return 0

end

function action_GROUP_WILL_UNLOAD(context, evt)
    ScriptLib.PrintContextLog(context, "## [ContinuousTrampoline] group will unload")

    -- 挑战底层问题？group unload时强制挑战失败
    ScriptLib.StopChallenge(context, challengeId, 0)
    
    return 0

end

function action_ENTER_REGION(context, evt)
    ScriptLib.PrintContextLog(context, "## [ContinuousTrampoline] enter region = "..evt.param1)

    if evt.param1 == defs.maxRegion and ScriptLib.GetGroupVariableValue(context, "succeed") == 0 then
        -- 开启挑战
        ScriptLib.StartChallenge(context, challengeId, challengeId, {3, 99, defs.maxJumpTimes})
    -- else
    --     for i = 1, #mushroomRegion do
    --         if evt.param1 == mushroomRegion[i] then
    --             -- 进入了一个蘑菇区域
    --             ScriptLib.SetGroupVariableValue(context, "onMushroom", 1)
    --             break
    --         end
    --     end

    end
    return 0

end

function action_LEAVE_REGION(context, evt)
    ScriptLib.PrintContextLog(context, "## [ContinuousTrampoline] leave region = "..evt.param1)

    local uid_list = ScriptLib.GetSceneUidList(context)

    if evt.param1 == defs.maxRegion then
        ScriptLib.StopChallenge(context, challengeId, 0)

    -- else
    --     for i = 1, #mushroomRegion do
    --         if evt.param1 == mushroomRegion[i] then
    --             -- 离开了一个蘑菇区域
    --             ScriptLib.SetGroupVariableValue(context, "onMushroom", 0)

    --             local isJumping = ScriptLib.GetTeamServerGlobalValue(context, uid_list[1], "_ABILITY_Activity_Trampoline_Jump")
    --             if isJumping == false then
    --                 LF_RestartChallenge(context)

    --             end
    --             break
    --         end
    --     end

    end

    return 0
end

function action_CHALLENGE_FAIL(context, evt)
    ScriptLib.PrintContextLog(context, "## [ContinuousTrampoline] challenge "..evt.param1.." fails")

    ScriptLib.SetGroupVariableValue(context, "jumpTimes", 0)

    return 0

end

function action_CHALLENGE_SUCCESS(context, evt)
    ScriptLib.PrintContextLog(context, "## [ContinuousTrampoline] challenge "..evt.param1.." succeeds")

    ScriptLib.SetGroupVariableValue(context, "succeed", 1)

    return 0

end

function action_AVATAR_JUMP(context, evt)
    ScriptLib.PrintContextLog(context, "## [ContinuousTrampoline] "..evt.source_name.." changes from "..evt.param2.." to ".. evt.param1)

    return 0

end


--================================================================
-- SLC functions
--================================================================
function SLC_Jump_Succeed_Once(context, evt)    
    ScriptLib.PrintContextLog(context, "## [ContinuousTrampoline] SLC_Jump_Succeed_Once is called")

    -- 为了处理断网情况，需要给ability层一个callback，把gv值设回0，ability层只有在对应gv值为0的情况下才允许发slc
    ScriptLib.SetTeamEntityGlobalFloatValue(context, {context.owner_uid}, "_ABILITY_Activity_Trampoline_JumpTimes", 0)

    -- 跳跃成功一次
    ScriptLib.ChangeGroupVariableValue(context, "jumpTimes", 1)
    ScriptLib.ChangeGroupVariableValue(context, "mushroomIdx", 1)

    local curJumpTimes = ScriptLib.GetGroupVariableValue(context, "jumpTimes")
    local currentMushroomIdx = ScriptLib.GetGroupVariableValue(context, "mushroomIdx");
    local lastOne = false

    if currentMushroomIdx > #defs.mushroomList then
        ScriptLib.SetGroupVariableValue(context, "mushroomIdx", 1)
        currentMushroomIdx = ScriptLib.GetGroupVariableValue(context, "mushroomIdx");
        lastOne = true
    end
    -- 检查挑战是否成功
    if curJumpTimes < defs.maxJumpTimes and currentMushroomIdx > 0 then
        LF_CreateMushrooms(context, currentMushroomIdx)
    end

    if lastOne then
        LF_KillMushrooms(context, #defs.mushroomList)
    elseif currentMushroomIdx > 1 then
        -- 这里主要是保一下，要干掉的蘑菇组index一定大于0
        LF_KillMushrooms(context, currentMushroomIdx - 1)
    end

    return 0
end

function SLC_Fall_Onto_Ground(context, evt)
    -- 玩家进入落到地上的动画状态（超级跳前会短暂进入FallOnGround和FallOnGroundLit，在ability层过滤掉了这种情况）
    local uid_list = ScriptLib.GetSceneUidList(context)
    ScriptLib.PrintContextLog(context, "## [ContinuousTrampoline] SLC_Fall_Onto_Ground is called")

    -- 判断是不是落在了蘑菇上的region，落在上面了不算失败
    -- local onMushroom = ScriptLib.GetGroupVariableValue(context, "onMushroom")
    -- if onMushroom == 1 then
    --     return 0
    -- end

    -- 检查跳了几次
    local jumpTimes = ScriptLib.GetGroupVariableValue(context, "jumpTimes")
    if jumpTimes <  defs.maxJumpTimes and jumpTimes > 0 then
        LF_RestartChallenge(context)
    end
    
    return 0
end

--================================================================
-- Initialize
--================================================================
LF_Initialize_Group(triggers, suites, variables, gadgets, regions)
