--[[======================================
||  filename:       Activity_MonsterCamp
||  owner:          chao.cui
||  description:    3.0大活动-营地挑战
||  LogName:        TD
||  Protection:     ???
=======================================]]

--- 刷怪模式：0为波次刷怪。1为怪物潮刷怪。
--- defs.levelType = 0, 
--- defs.challenge_id = 2010045,
--- 怪物总数
--- defs.target_count = 6,
--- 触发开启挑战的region_id
--- defs.small_region_id = 60007,
--- 触发暂停挑战的region_id
--- defs.big_region_id = 60008,


-- 波次模式配置-对应的suite
-- local monsterSuites = {2, 3, 4}

-- 怪物潮模式配置 - 对应的monsterConfigId
-- local tideMonsters = {1001, 1002, 1003}

-- 打印日志
function PrintLog(context, content)
    local log = "## [Activity_MonsterCamp] TD: "..content
    ScriptLib.PrintContextLog(context, log)
end

local extraTriggers = 
{
    { config_id = 40000001, name = "tri_group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
    { config_id = 40000002, name = "tri_group_will_unload", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD", trigger_count = 0 },

    { config_id = 40000003, name = "tri_monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE", trigger_count = 0 },
   
    { config_id = 40000004, name = "tri_enter_region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION", action = "action_EVENT_ENTER_REGION", trigger_count = 0 },
    { config_id = 40000005, name = "tri_leave_region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION", action = "action_EVENT_LEAVE_REGION", trigger_count = 0 },

    { config_id = 40000006, name = "tri_challenge_success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS", trigger_count = 0 },
    { config_id = 40000007, name = "tri_challenge_fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL", trigger_count = 0 },
    { config_id = 40000008, name = "tri_challenge_pause", event = EventType.EVENT_CHALLENGE_PAUSE, source = "", condition = "", action = "action_EVENT_CHALLENGE_PAUSE", trigger_count = 0 },

    -- 进度计数Trigger
    { config_id = 40000009, name = "tri_var_change", event = EventType.EVENT_VARIABLE_CHANGE, source = "monster_killed", condition = "condition_monster_killed", action = "", trigger_count = 0, tag = "666" },
    -- 怪物入战
    { config_id = 40000010, name = "tri_monster_battle", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE", trigger_count = 0 },

    -- GM
    --{ config_id = 40000101, name = "tri_reset_level", event = EventType.EVENT_VARIABLE_CHANGE, source = "RESET_LEVEL", condition = "", action = "action_EVENT_VARIABLE_CHANGE", trigger_count = 0 },

}

------ conditions & actions ------
-- GM指令
-- function action_EVENT_VARIABLE_CHANGE(context, evt)
--     if evt.source_name == "RESET_LEVEL" then
--         LF_Reset_Level(context)
--     end
--     return 0
-- end

function action_EVENT_GROUP_LOAD(context, evt)
    if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 2 then
        ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.REGION, defs.small_region_id)
        -- 挑战完成则跳过
        return -1
    end
    -- enterRegion启动challenge早于load触发
    if not ScriptLib.IsChallengeStartedByChallengeIndex(context, base_info.group_id, 99) then
        ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
    end
    -- 第一次加载时的怪物初始化
    if ScriptLib.GetGroupVariableValue(context, "initialized") == 0 then 
        if defs.levelType == 0 then 
            -- 波次刷怪初始化
            local wave = ScriptLib.GetGroupVariableValue(context, "current_wave")
            LF_StartMonsterWave(context, wave)
        else
            -- 怪物潮刷怪初始化
            for i = 1, 4 do
                LF_Try_Create_Monster(context)
            end
        end
        ScriptLib.SetGroupVariableValue(context, "initialized", 1)
    end

    return 0
end

function action_EVENT_GROUP_WILL_UNLOAD(context, evt)

    if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 1 then 
        ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
        if 0 == ScriptLib.PauseChallenge(context, 99) then
            PrintLog(context, "暂停挑战成功")
        else
            PrintLog(context, "暂停挑战失败")
        end
    end

    return 0
end

function condition_monster_killed(context, evt)
    PrintLog(context, "var_change : monster_killed "..evt.param2.." -> "..evt.param1)
    if evt.param1 > evt.param2 then
        return true
    end
    return false
end

function action_EVENT_CHALLENGE_SUCCESS(context, evt)
    ScriptLib.SetGroupVariableValue(context, "challenge_state", 2)
    ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.REGION, defs.small_region_id)
    return 0
end

function action_EVENT_CHALLENGE_FAIL(context, evt)
    ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
    PrintLog(context, "挑战失败")
    return 0
end

function action_EVENT_CHALLENGE_PAUSE(context, evt)
    ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
    return 0
end

function action_EVENT_ANY_MONSTER_DIE(context, evt)

    PrintLog(context, "怪物死亡")
    -- 更新挑战进度
    ScriptLib.ChangeGroupVariableValue(context, "monster_killed", 1)
    local cur_progress = ScriptLib.GetGroupVariableValue(context, "monster_killed")
    if cur_progress == #monsters and ScriptLib.GetGroupVariableValue(context, "challenge_state") == 0 then
        LF_Try_Start_Challenge(context)
    end
    ScriptLib.MarkGroupLuaAction(context, "GravenInnocence_Camp_2", "", {current_progress=cur_progress, total_progress=#monsters})
    if defs.levelType == 0 then 
        -- 波次模式。怪清空刷下一波怪
        if ScriptLib.GetGroupMonsterCountByGroupId(context, base_info.group_id) == 0 then
            local wave = ScriptLib.GetGroupVariableValue(context, "current_wave") + 1
            ScriptLib.SetGroupVariableValue(context, "current_wave", wave)
            LF_StartMonsterWave(context, wave)
        end
    else
        -- 怪物潮模式。死一只补一只
        LF_Try_Create_Monster(context)
    end
    return 0
end

-- 怪物入战
function action_EVENT_MONSTER_BATTLE(context, evt)
    --LF_Try_Start_Challenge(context)
    return 0
end

function condition_EVENT_ENTER_REGION(context, evt)
    if evt.param1 ~= defs.small_region_id then return false end
    if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 2 then return false end
    return true
end

-- 进入挑战区域
function action_EVENT_ENTER_REGION(context, evt)
    PrintLog(context, "进入挑战区域")
    if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,191,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
        PrintLog(context, "弹教程失败")
    end
    LF_Try_Start_Challenge(context)
    return 0
end

function condition_EVENT_LEAVE_REGION(context, evt)
    --if evt.param1 ~= defs.big_region_id then return false end
    if evt.param1 ~= defs.small_region_id then return false end
    return true
end

function action_EVENT_LEAVE_REGION(context, evt)
    PrintLog(context, "离开挑战区域")
    if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 1 then 
        if 0 == ScriptLib.PauseChallenge(context, 99) then
            PrintLog(context, "暂停挑战成功")
        end
    end
    return 0
end

--------- 关卡Functions --------
function LF_Try_Start_Challenge(context)
    if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 0 then 

        local init_count = ScriptLib.GetGroupVariableValue(context, "monster_killed")
        
        -- 挑战进度保护
        local left_count = 0
        local is_done = 0
        if init_count < defs.target_count then 
            -- 安全
        else 
            left_count = init_count - defs.target_count + 1
            init_count = defs.target_count - 1
            is_done = 1
        end

        --参数1： event_type所在枚举序号； 参数2： trigger_tag；参数3： 次数；参数4：Bool，次数达成是否计为成功；参数5：初始次数值
        if 0 ~= ScriptLib.StartChallenge(context, 99, defs.challenge_id, {3, 666, defs.target_count, 1, init_count}) then 
            PrintLog(context, "开启挑战失败")
        else
            -- 成功开启挑战1
            ScriptLib.MarkGroupLuaAction(context, "GravenInnocence_Camp_1", "", {})
            ScriptLib.SetGroupVariableValue(context, "challenge_state", 1)
            -- 重走tagTrigger保证challenge正常流转
            if is_done == 1 then
                ScriptLib.ChangeGroupVariableValue(context, "monster_killed", -1)
                ScriptLib.ChangeGroupVariableValue(context, "monster_killed", 1)
            end
            --[[if left_count > 0 then
                -- 挑战进度还原 
                for i = 1, left_count do
                    ScriptLib.ChangeGroupVariableValue(context, "monster_killed", 1)
                end
            end--]]
        end
    end
end

function LF_StartMonsterWave(context, wave)
    PrintLog(context, "start wave: "..wave)
    if wave > #monsterSuites then 
        PrintLog(context, "所有波次已完成")
    else
        --ScriptLib.MarkGroupLuaAction(context, "GravenInnocence_Camp_2", "", {current_progress=wave, total_progress=#monsterSuites})
        local suite = monsterSuites[wave]
        ScriptLib.AddExtraGroupSuite(context, base_info.group_id, suite)
    end
    return 0
end

function LF_Try_Create_Monster(context)
    local index = ScriptLib.GetGroupVariableValue(context, "monster_index")
    if index < defs.target_count then 

        local configId = tideMonsters[index+1]

        if 0 == ScriptLib.CreateMonster(context, { config_id = configId, delay_time = 0}) then 
            PrintLog(context, "添加怪物成功")
            ScriptLib.SetGroupVariableValue(context, "monster_index", index + 1)
        else 
            PrintLog(context, "添加怪物失败")
        end
    end
end

-- 测试用
-- function LF_Reset_Level(context)
--     PrintLog(context, "重置关卡")
--     ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
--     ScriptLib.SetGroupVariableValue(context, "current_wave", 1)
--     ScriptLib.SetGroupVariableValue(context, "monster_killed", 0)
--     ScriptLib.SetGroupVariableValue(context, "monster_index", 0)
-- end

function LF_Init_Vars()
    -- 波次进度
    table.insert(variables, {config_id = 50000001, name = "current_wave", value = 1, no_refresh = true})
    -- 挑战状态
    table.insert(variables, {config_id = 50000002, name = "challenge_state", value = 0, no_refresh = true})
    -- 刷怪进度
    table.insert(variables, {config_id = 50000003, name = "monster_killed", value = 0, no_refresh =true})
    
    -- 怪物潮进度
    table.insert(variables, {config_id = 50000005, name = "monster_index", value = 0, no_refresh =true})
    -- Group状态
    table.insert(variables, {config_id = 50000006, name = "initialized", value = 0, no_refresh =true})

    -- GM
    -- table.insert(variables, {config_id = 50000101, name = "RESET_LEVEL", value = 0, no_refresh = true})
end

function LF_Initialize_Level()

    -- triggers
    for i, _suite in ipairs(suites) do
        for _, _trigger in pairs(extraTriggers) do
            table.insert(_suite.triggers, _trigger.name)
        end
    end

    for _, _trigger in pairs(extraTriggers) do
        table.insert(triggers, _trigger)
    end

    LF_Init_Vars()

    return 0
end

LF_Initialize_Level()
