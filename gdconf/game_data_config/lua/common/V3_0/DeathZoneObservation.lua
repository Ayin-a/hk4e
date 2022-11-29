--[[======================================
||  filename:   DeathZoneObservation
||  owner:      shuyi.chang
||  description:    死域观测站
||  LogName:    ## [DeathZoneObservation]
||  Protection: 
=======================================]]

--[[
local defs_miscs = 
{
    -- 死域观测站透镜的config id
    lensConfigId = 103001,    

    -- 这个透镜对应的隐藏父任务的回退参数
    resetParam = "rewindSmoke"

    -- 兰纳罗的config id
    lnlConfigId = 103004,    
        
    -- 兰纳罗隐藏任务的回退参数
    hiddenlnlParam = "hiddenlnl",

    -- 一个smoke拥有一项
    smokeTable = 
    {
        -- 每项格式如下，通常应该只有两项，即一个透镜对应两个黑烟
        --[smoke_id] = {smoke = smoke_config_id, maxRegion = region_id, group = group_id, observeQuest = quest_id, finishQuest = quest_id, questParam = "任务前进变量"}
        [103002] = {smoke = 103002, group = 133304105, observeQuest = 7305103, finishQuest = 7305104, questParam = "smokeObserved1"},
        [103003] = {smoke = 103003, group = 133304106, observeQuest = 7305105, finishQuest = 7305106, questParam = "smokeObserved2"},
    }
}
--]]

local extraTriggers = 
{
	{ config_id = 50000001, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
    { config_id = 50000002, name = "DEATH_ZONE_OBSERVE", event = EventType.EVENT_DEATH_ZONE_OBSERVE, source = "", condition = "", action = "action_EVENT_DEATH_ZONE_OBSERVE", trigger_count = 0 },
    { config_id = 50000004, name = "SMOKE_QUEST_FINISH", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_SMOKE_QUEST_FINISH", trigger_count = 0 },
    { config_id = 50000005, name = "ENTER_REGION", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION", trigger_count = 0 },
    -- { config_id = 50000006, name = "LEAVE_REGION", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION", trigger_count = 0 },
    -- { config_id = 50000007, name = "GROUP_WILL_UNLOAD", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD", trigger_count = 0 },
    { config_id = 50000008, name = "GADGET_STATE_CHANGE", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE", trigger_count = 0 },

}

local extraVariables = 
{
    -- 已完成几个黑烟玩法group
	{ config_id = 50000101, name = "smokeFinishedNum", value = 0, no_refresh = true },
    -- 已观测到几个兰纳罗
    { config_id = 50000102, name = "aranaraObservedNum", value = 0, no_refresh = true },
    -- 目前有几个黑烟处于状态1（已被观测到）
    { config_id = 50000103, name = "smokeObservedNum", value = 0, no_refresh = true },

}

local smokeGadgetId = 70310219
local lnlGadgetId = 70310440

local smokeCount

local lnlDisappearRmd = 33040007

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
        -- 都放到初始suite 1中
        table.insert(suites[1].triggers,extraTriggers[i].name)

    end

    -- insert variables
    for i = 1, #extraVariables do
        table.insert(variables, extraVariables[i])
    end

    local temp = 0
    for k, v in pairs(defs_miscs.smokeTable) do
        temp = temp + 1
        -- 每个smoke给一个group var记录状态，0未观测，1已观测，2已完成
        local smoke = { config_id = 40000000 + temp, name = "smoke_"..tostring(v.smoke), value = 0, no_refresh = true }
        table.insert(variables, smoke)

        gadgets[k].mark_flag = 1
    end

    smokeCount = LF_GetTableLength(defs_miscs.smokeTable)

    -- set lens mark_flag
    gadgets[defs_miscs.lensConfigId].mark_flag = 1
end

function LF_GetTableLength(t)
    local count = 0
    for _ in pairs(t) do count = count + 1 end
    return count
end


function LF_SetGlobalValueByGroupVar(context)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] LF_SetGlobalValue is called")

    -- SGV不存档所以每次load的时候要手动设回正常值，断线重连同理
    local curSmokeCount = ScriptLib.GetGroupVariableValue(context, "smokeObservedNum")
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs_miscs.lensConfigId, "SGV_Cur_Smoke_Count", curSmokeCount)

    local smokeLeftCount = smokeCount - ScriptLib.GetGroupVariableValue(context, "smokeFinishedNum") 
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs_miscs.lensConfigId, "SGV_Smoke_Count", smokeLeftCount)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] smokeFinishedNum = "..ScriptLib.GetGroupVariableValue(context, "smokeFinishedNum")
        ..", smokeCount = "..smokeCount)

    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] SGV_Smoke_Count is set to "..smokeLeftCount..", SGV_Cur_Smoke_Count is set to "..curSmokeCount)

    -- SGV记录观测到了多少兰那罗,设计上应该只有一个
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs_miscs.lensConfigId, "SGV_Cur_Aranara_Count", 0)
end


-- 设置指定黑烟的状态，并更新目前观测到的黑烟数量
-- function LF_SetSmokeStatus(context, smokeId, status)
--     ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] LF_SetSmokeByStatus is called, smokeId = "..smokeId..", status is set to "..status)

--     local variableName = "smoke_"..smokeId
--     -- 更改前的黑烟状态
--     local statusBefore = ScriptLib.GetGroupVariableValue(context, variableName)

--     ScriptLib.SetGroupVariableValue(context, variableName, status)
--     local variableValue = ScriptLib.GetGroupVariableValue(context, variableName)

--     local gadgetState = 0
--     if status == 0 then
--         -- 还没被观测到，在0
--         gadgetState = 0
--     elseif status == 2 then
--         -- 未观测死域已清除，在202
--         gadgetState = 202
--     elseif status == 1 then
--         -- 已被观测到，不清楚玩家在相对黑烟的什么位置
--         gadgetState = 201

--         -- 黑烟对应的观察任务流转
--         -- todo：如果任务没收到消息，这里要加保底
--         LF_LoadSmokeGroup(context, smokeId)

--         -- todo：远近视距黑烟特效切换放在ability里判断
--     end

--      -- 如果状态改变，需要更新sgv和相关group var
--      if status ~= statusBefore then
--         LF_UpdateObservedSmokeCount(context)
--         LF_SetGlobalValueByGroupVar(context)
--     end
 
--     -- 更新此smoke的gadget state
--     ScriptLib.SetGadgetStateByConfigId(context, smokeId, gadgetState)
--     ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] smoke id = ".. smokeId..", gadget state is set to "..gadgetState..
--         ", group variable "..variableName.." is set to "..variableValue)

-- end

function LF_SetSmokeGroupVar(context, smokeId, var)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] LF_SetSmokeGroupVar is called")

    local variableName = "smoke_"..smokeId
    -- 更改前的黑烟状态
    local statusBefore = ScriptLib.GetGroupVariableValue(context, variableName)

    -- 设置group var的唯一时刻
    ScriptLib.SetGroupVariableValue(context, variableName, var)
    local variableValue = ScriptLib.GetGroupVariableValue(context, variableName)

    -- 如果设置了group var，肯定需要紧接着修改黑烟gadget state
    LF_SetSmokeStatus_New(context, smokeId, variableValue)

    -- 如果状态改变，需要更新sgv和相关group var
    if var ~= statusBefore then
        LF_UpdateObservedSmokeCount(context)
        LF_SetGlobalValueByGroupVar(context)
    end

end

    

function LF_UpdateObservedSmokeCount(context)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] LF_UpdateObservedSmokeCount is called")

    -- 更新目前观测到了的黑烟数量
    local temp1 = 0
    local temp2 = 0
    for k, v in pairs(defs_miscs.smokeTable)do
        if 1 == ScriptLib.GetGroupVariableValue(context, "smoke_"..k) then
            temp1 = temp1 + 1
        elseif 2 == ScriptLib.GetGroupVariableValue(context, "smoke_"..k) then
            temp2 = temp2 + 1
        end
    end
    
    ScriptLib.SetGroupVariableValue(context, "smokeObservedNum", temp1)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] group variable smokeObservedNum is set to "..temp1)
    
    
    ScriptLib.SetGroupVariableValue(context, "smokeFinishedNum", temp2)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] group variable smokeFinishedNum is set to "..temp2)

end

function LF_LoadSmokeGroup(context, smokeId)
    -- 通过任务参数流转任务，让任务动态加载死域group
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] LF_LoadSmokeGroup is called")

    local questParam = defs_miscs.smokeTable[smokeId].questParam
    ScriptLib.AddQuestProgress(context, questParam)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] gadget id = "..smokeId.." adds progress to quest param = "..questParam)
end

function LF_SetCurGroupSmokes(context)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] LF_ResetGroup is called")

    -- 查询自己是否是当前组
    local curGroupId = ScriptLib.GetGroupVariableValueByGroup(context, "curGroupId", 133304143)

    if curGroupId == base_info.group_id then
        -- 自己就是当前组，同组的黑烟需要根据group var设置一下
        LF_SetSmokeByGroupVar(context)
    else
        -- 不是当前组，黑烟都卸载
        LF_KillAllSmokesInGroup(context)
    end
    -- 不管是不是当前组，都要按黑烟的group var设置sgv和兰纳罗
    LF_SetGlobalValueByGroupVar(context)
    LF_ResetLNLByGroupVar(context)
    
end

function LF_ResetLNLByGroupVar(context)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] LF_ResetLNLByGroupVar is called")

    -- 根据group变量设置兰纳罗
    local aranaraObservedNum = ScriptLib.GetGroupVariableValue(context, "aranaraObservedNum")
    local lnlStatus = 0
    if aranaraObservedNum == 1 then
        -- lnl只有一个
        lnlStatus = 2
    else
        lnlStatus = 0
    end
    LF_SetLNLStatus(context, defs_miscs.lnlConfigId, lnlStatus)
end

-- function LF_SetAllSmokesByGroupVar(context)
--     -- 黑烟和对应的动态group
--     for k, v in pairs(defs_miscs.smokeTable) do
--         --检查每个黑烟
--         -- group var存档，通过group var重置smoke gadget state和任务，任务重置动态group
--         local smokeId = v.smoke
--         local status = ScriptLib.GetGroupVariableValue(context, "smoke_"..smokeId)
--         LF_SetSmokeStatus(context, smokeId, status)
--     end
-- end

function LF_KillAllSmokesInGroup(context)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] LF_KillAllSmokesInGroup is called")

    -- kill all smokes
    for k, v in pairs(defs_miscs.smokeTable) do
	    ScriptLib.KillEntityByConfigId(context, { config_id = k })
    end

    -- -- 把这个透镜group里status = 1的smoke重置回0，任务一起回滚
    -- for k, v in pairs(defs_miscs.smokeTable) do
    --     local smokeId = k
    --     local status = ScriptLib.GetGroupVariableValue(context, "smoke_"..smokeId)

    --     -- 如果smokeStatus = 1已被观测到，则重置回0
    --     if status == 1 then

    --         LF_SetSmokeStatus(context, smokeId, 0)
    --     end
    --     -- 如果smokeStatus = 2已被清除或者0没观测，则不重置group var

    --     -- 任务尝试回滚，已清除的黑烟任务已经成功，不会参与回滚
    --     ScriptLib.AddQuestProgress(context, defs_miscs.resetParam)
      
    -- end

end

function LF_SetLNLStatus(context, lnlId, status)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] LF_SetLNLStatus is called")

    local gadgetState = 0
    if status == 0 then
        -- 未观测
        gadgetState = 0
    elseif status == 1 then
        -- 观测中
        gadgetState = 201
    elseif status == 2 then
        -- 已观测
        gadgetState = 202

        -- set sgv
        ScriptLib.SetGroupVariableValue(context, "aranaraObservedNum", 1)
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs_miscs.lensConfigId, "SGV_Cur_Aranara_Count", 1)

        -- 通知任务流转
        ScriptLib.AddQuestProgress(context, defs_miscs.hiddenlnlParam)
    end

    -- set gadget state
    ScriptLib.SetGadgetStateByConfigId(context, lnlId, gadgetState)

end

function LF_ResetObservedSmoke_FromOther(context, prev_context)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] LF_ResetObservedSmoke_FromOther is called")

    LF_KillAllSmokesInGroup(context)

    return 0
end

function LF_SetSmokeByGroupVar(context)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] LF_SetCurGroupActive is called")

    -- 接近了一个透镜，需要创建同组黑烟并设置到对应状态
    for k, v in pairs(defs_miscs.smokeTable) do
        local groupVar = ScriptLib.GetGroupVariableValue(context, "smoke_"..k)

        if groupVar == 0 then
            LF_SetSmokeStatus_New(context, k, 0)
        elseif groupVar == 1 then
            LF_SetSmokeStatus_New(context, k, 1)
        elseif groupVar == 2 then
            LF_SetSmokeStatus_New(context, k, 2)
        end
    end
end

function LF_SetCurSmokeActive(context, smokeId)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] LF_SetCurSmokeActive is called")
    local groupVar = ScriptLib.GetGroupVariableValue(context, "smoke_"..smokeId)
    if groupVar == 1 then
        LF_SetSmokeStatus_New(context, smokeId, 1)
    end
end


-- 设置指定黑烟的表现(或者是创建/销毁)，不更改group var
function LF_SetSmokeStatus_New(context, smokeId, status)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] LF_SetSmokeByStatus is called, smokeId = "..smokeId..", status is set to "..status)

    -- 黑烟只有三种表现：gadget state 0, gadget state 201, 不存在gadget(202) 
    local gadgetState = 0
    if status == 0 then
        -- 仅透镜可观测
        -- 保底创建，gadget state在0
		ScriptLib.CreateGadget(context, { config_id = smokeId })
        gadgetState = 0

    elseif status == 1 then
        -- 大世界可观测
        -- 保底创建，gadget state在201
        ScriptLib.CreateGadget(context, { config_id = smokeId })
        gadgetState = 201

        -- 黑烟对应的观察任务流转
        LF_LoadSmokeGroup(context, smokeId)

    elseif status == 2 then
        -- 不用特意创建，如果黑烟在的话，gadget state在202，物件自行销毁
        ScriptLib.SetGadgetStateByConfigId(context, smokeId, 202)
        gadgetState = 202

    end

    -- 更新此smoke的gadget state
    ScriptLib.SetGadgetStateByConfigId(context, smokeId, gadgetState)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] smoke id = ".. smokeId..", gadget state is set to "..gadgetState)

end

function LF_SetCurLensActive(context)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] LF_SetCurLensGroup is called")

    -- 查看自己是不是当前lens
    local before = ScriptLib.GetGroupVariableValueByGroup(context, "curGroupId", 133304143)

    if before ~= base_info.group_id then
        -- 不是的话把自己设置成当前lens
        ScriptLib.SetGroupVariableValueByGroup(context, "curGroupId", base_info.group_id, 133304143)

        -- 有人设置过这个group var再通知其他透镜group（没设置过说明还没人接近过任何一个透镜）
        if before ~= 0 then
            ScriptLib.ExecuteGroupLua(context, before, "LF_ResetObservedSmoke_FromOther", {})
        end

    end

    local after = ScriptLib.GetGroupVariableValueByGroup(context, "curGroupId", 133304143)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] group 133304143 var curGroupId = "..after)

end

--================================================================
-- Triggers
--================================================================

function action_EVENT_GROUP_LOAD(context, evt)
	ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] group is loaded")

    LF_SetCurGroupSmokes(context)

    return 0
end

-- function action_EVENT_GROUP_WILL_UNLOAD(context, evt)
--     ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] group will unload")

--     -- 不设置group var，只回滚任务
--     ScriptLib.AddQuestProgress(context, defs_miscs.resetParam)
    
--     return 0
-- end

function action_EVENT_ENTER_REGION(context, evt)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] player enters region "..evt.param1)
    
    for k, v in pairs(defs_miscs.smokeTable) do
        if evt.param1 == v.maxRegion then
            -- 玩家进入黑烟区域, 要把这个黑烟加载出来
            LF_SetCurSmokeActive(context, v.smoke)
            
            -- 查看自己是不是当前组，不是的话设置为当前组，并通知上一个当前组删除自己同组的所有黑烟
            LF_SetCurLensActive(context)

        end
    end

    if defs.lensRegion == nil then
        ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] WARNING, doesn't have lensRegion in defs")
        return 0
    end

    if evt.param1 == defs.lensRegion then
        LF_ResetLNLByGroupVar(context)
    end

    return 0
end


-- function action_EVENT_LEAVE_REGION(context, evt)
--     ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] player leaves region "..evt.param1)
--     -- 如果玩家离开了某个黑烟的最大区域
--     for k, v in pairs(defs_miscs.smokeTable) do
--         if evt.param1 == v.maxRegion then
--             -- 如果当前状态是已观测，需要重置回未观测
--             if 1 == ScriptLib.GetGroupVariableValue(context, "smoke_"..k) then
--                 LF_SetSmokeStatus(context, k, 0)
--                 ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] smoke = "..k.." is set from 1 to 0")
--             end
--         end
--     end
--     return 0
-- end

-- 在透镜中观测到了一个黑烟
function action_EVENT_DEATH_ZONE_OBSERVE(context, evt)
	ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] lens config id = "..evt.param1..
        ",  observed gadget config id = ".. evt.param2..", group id = "..evt.param3)
    
        if evt.param2 == defs_miscs.lnlConfigId then
            -- 如果是兰纳罗
            LF_SetLNLStatus(context, defs_miscs.lnlConfigId, 2)

        elseif gadgets[evt.param2].gadget_id == smokeGadgetId then
            -- 如果是黑烟
            -- 尽量不用for loop
            -- 被观测到的黑烟config id
            local smokeId = evt.param2
            
            -- 黑烟状态改变
            LF_SetSmokeGroupVar(context, smokeId, 1)
        end

    return 0
end

-- 完成一个未爆发死域玩法group
-- 一定要主机交互一下任务才能成功，所以任务一定能成功通知到玩家
function action_SMOKE_QUEST_FINISH(context, evt)
	ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] quest id = "..evt.param1..", status = "..evt.param2)

    -- 只检测是不是成功
    if evt.param2 ~= 1 then
        return 0
    end

    -- 某个黑烟对应的玩法group的任务已经完成
    for k, v in pairs(defs_miscs.smokeTable) do
        if v.finishQuest == evt.param1 then            
            -- 黑烟可以永久消失了
            LF_SetSmokeGroupVar(context, k, 2)
        end
    end
    return 0
end


function action_EVENT_GADGET_STATE_CHANGE(context, evt)
    -- 只在状态有所改变的时候判断
    if evt.param3 == evt.param1 then
        return 0
    end

    ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] gadget "..evt.param2.." changes from state "..evt.param3.."to state "..evt.param1)

	-- 检测草神透镜的grassState是否从激化态回到正常态
	if defs_miscs.lensConfigId == evt.param2 and 0 == evt.param1 and 200 == evt.param3 then
        -- 兰纳罗还没被发现，播一个reminder说兰纳罗无了
        -- 这个时机无论如何都可以播，透镜开着自然就不显示了
        if ScriptLib.GetGroupVariableValue(context, "aranaraObservedNum") == 0 then
            ScriptLib.ShowReminder(context, lnlDisappearRmd)
        end
	end

	return 0
end


--================================================================
-- ServerLuaCall
--================================================================

function SLC_Player_Approach_Self(context)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] SLC_Player_Approach_Self is triggered")

    -- 查看自己是不是当前组，不是的话设置为当前组，并通知上一个当前组删除自己同组的所有黑烟
    LF_SetCurLensActive(context)

    -- 根据自己是否是当前透镜（这里一定是）设置同组黑烟、兰纳罗状态，并同步一次sgv
    LF_SetCurGroupSmokes(context)

    return 0
end

function SLC_Lens_Closed_Excited(context)
    ScriptLib.PrintContextLog(context, "## [DeathZoneObservation] SLC_Lens_Closed_Excited is triggered")

    -- 进这个slc说明本次打开界面的时候透镜一定在激化态，现在关上了，可能需要rmd
    -- 只有兰纳罗还没被发现+透镜已经不在激化态了，才出现这个reminder 33040007
    if ScriptLib.GetGroupVariableValue(context, "aranaraObservedNum") == 0 
        and ScriptLib.GetGadgetStateByConfigId(context, 0, defs_miscs.lensConfigId) ~= 200 then
        ScriptLib.ShowReminder(context, lnlDisappearRmd)
    end

    return 0
end


--================================================================
-- Initialize
--================================================================
LF_Initialize_Group(triggers, suites, variables, gadgets, regions)

