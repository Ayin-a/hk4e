--ServerUploadTool Save to [/root/env/data/lua/common/V2_7]
--======================================================================================================================
--||   Filename      ||    Activity_LumenCharge
--||   RelVersion    ||    V2_7
--||   Owner         ||    chao-jin
--||   Description   ||    
--||   LogName       ||    ##[Activity_LumenCharge]
--||   Protection    ||    
--======================================================================================================================
--[[Defs & Miscs
local defs = {
    challenge_time = 300,
    pursina = 581032,
    pursina_tip = 581105,
    muds_lv1 = {581066,581067,581068,581069,581070,581071},
    muds_lv2 = {581014,581016},
    score_lv1 = 3,
    score_lv2 = 6,
    fail_region = 581197,
}

local extra_info = {
    start_operator = 581002,
    lantern = 581011,
}

local mud_list = {
--普通黑泥
[581016] = { mud_id = 581009, cover_list= {}, respawn_time = 8, mutex_id = 0, score = 6, cover_content = {} },
[581014] = { mud_id = 581008, cover_list= {}, respawn_time = 8, mutex_id = 0, score = 6, cover_content = {} },

--黑泥核心1
[581066] = { mud_id = 581082, cover_list= {581094}, respawn_time = 4, mutex_id = 581067, score = 3,
    cover_content = { 
        [1] = {581025}, 
        [2] = {581033}, 
        [3] = {581051}, 
        [4] = {581079},
        [5] = {581123},}
},
--黑泥核心2
[581068]  = { mud_id = 581081, cover_list= {581095,581096}, respawn_time = 4, mutex_id = 581071, score = 3,
    cover_content = { 
    [1] = {581020,581026}, 
    [2] = {581049,581044}, 
    [3] = {581054,581055}, 
    [4] = {581108,581080},
    [5] = {581127,581124},}
},
--黑泥核心3
[581069] = { mud_id = 581083, cover_list= {581093}, respawn_time = 4, mutex_id = 581070, score = 3,
    cover_content = { 
        [1] = {581022}, 
        [2] = {581045}, 
        [3] = {581099}, 
        [4] = {581098},
        [5] = {581125},}
}, 
--黑泥核心4
[581067] = {mud_id = 581084, cover_list = {581091, 581092}, respawn_time = 6, mutex_id = 581066, score = 3,
    cover_content = { 
        [1] = {581031,581036},
        [2] = {581053,581046},
        [3] = {581056,581100},
        [4] = {581101,581113},
        [5] = {581126,581128},}, 
},
--黑泥核心5
[581070] = {mud_id = 581085, cover_list = {581087, 581088}, respawn_time = 6, mutex_id = 581069, score = 3,
    cover_content = { 
        [1] = {581029,581039},
        [2] = {581047,581048},
        [3] = {581102,581103},
        [4] = {581115,581116},
        [5] = {581129,581130},}, 
},
--黑泥核心6
[581071] = {mud_id = 581086, cover_list = {581017,581019,581089, 581090}, respawn_time = 6, mutex_id = 581068, score = 3,
    cover_content = { 
        [1] = {581040,581041,581042,581043},
        [2] = {581052,581058,581059,581050},
        [3] = {581104,581106,581057,581076},
        [4] = {581078,581119,581118,581117},
        [5] = {581122,581131,581132,581139},}, 
},
}  
--====================================================================================================================]]
--======================================================================================================================

local LumenCharge_Triggers = {
    { config_id = 9100401, name = "group_load",  event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    { config_id = 9100402, name = "add_charge_progress", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_add_charge_progress", action = "", trigger_count = 0, tag = "1001" },
    { config_id = 9100403, name = "variable_change", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change", trigger_count = 0,},
    { config_id = 9100404, name = "select_option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0,},
    { config_id = 9100405, name = "challenge_success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0,},
    { config_id = 9100406, name = "challenge_fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0,},
    { config_id = 9100407, name = "any_gadget_die",  event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_any_gadget_die", trigger_count = 0},
    { config_id = 9100408, name = "leave_fail_region",  event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_fail_region", trigger_count = 0},
    { config_id = 9100409, name = "time_axis_pass",  event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
}
--Events
--Group加载时处理内容
function action_group_load(context, evt) 
    ScriptLib.PrintContextLog(context,"##[LumenCharge]:加载Group")
    ScriptLib.ActivateGroupLinkBundle(context, base_info.group_id)
    LF_ResetAllValues(context)
    ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, extra_info.start_operator, {7})
    return 0
end

--处理进度计数,当能量增加时增加进度
function condition_add_charge_progress(context, evt)
    if evt.source_name ==  "energy" and evt.param1 ~= 0 then
        return true
    end
    return false
end

--处理能量进度变化时的进度显示
function action_variable_change(context, evt) 
    if evt.source_name == "energy" then 
        --充能进度10%刷怪
        if evt.param1 == 10 then 
            ScriptLib.PrintContextLog(context,"##[LumenCharge]:刷新第1波怪")
            ScriptLib.ChangeGroupVariableValue(context, "stage", 1)
            ScriptLib.ShowReminder(context, 4000144)
            ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 5)
            ScriptLib.CreateGadget(context, {config_id = defs.enemy_gadget})
        --  ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, 9)
        end
        --充能进度35%刷怪
        if evt.param1 == 35 then 
            ScriptLib.PrintContextLog(context,"##[LumenCharge]:刷新第2波怪")
            ScriptLib.ChangeGroupVariableValue(context, "stage", 1)
            ScriptLib.ShowReminder(context, 4000144)
            ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 6)
        --  ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, 11)
        end
        --充能进度60%刷怪
        if evt.param1 == 60 then 
            ScriptLib.PrintContextLog(context,"##[LumenCharge]:刷新第3波怪")
            ScriptLib.ChangeGroupVariableValue(context, "stage", 1)
            ScriptLib.ShowReminder(context, 4000144)
            ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 7)
        --  ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, 13)
        end
        --充能进度85%刷怪
        if evt.param1 == 85 then 
            ScriptLib.PrintContextLog(context,"##[LumenCharge]:刷新第4波怪")
            ScriptLib.ChangeGroupVariableValue(context, "stage", 1)
            ScriptLib.ShowReminder(context, 4000144)
            ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 17)
        --  ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, 15)
            --移除BGM物件
            if 0 ~= ScriptLib.GetEntityIdByConfigId(context, defs.enemy_gadget) then
                ScriptLib.PrintContextLog(context,"##[LumenCharge]:移除BGM物件")
                ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.enemy_gadget)
            end
        end
    end
    return 0
end


--玩家与操作台交互
function action_select_option(context, evt) 
    if extra_info.start_operator ~= evt.param1 then 
        return 0
    end

    LF_ResetAllValues(context)

    ScriptLib.PrintContextLog(context,"##[LumenCharge]:开启挑战")
    ScriptLib.CreateFatherChallenge(context, 1, 2009007, defs.challenge_time, {success = 10, fail = 5})
    ScriptLib.AttachChildChallenge(context, 1,  2009009, 2009009, { defs.challenge_time, 3, 1002, 100},{},{success = 1,fail = 1})
    ScriptLib.AttachChildChallenge(context, 1,  2009010, 2009010, { defs.challenge_time, 3, 1003, 100},{},{success = 1,fail = 1})
    ScriptLib.AttachChildChallenge(context, 1,  2009008, 2009008, { defs.challenge_time, 3, 1001, 100},{},{success = 10,fail = 5})
    ScriptLib.StartFatherChallenge(context,1)
    
    --启动reminder，开灯
    ScriptLib.ShowReminder(context, 4000143)
    ScriptLib.SetGadgetStateByConfigId(context, extra_info.lantern, GadgetState.GearStart)
    
    --刷新黑泥对应Group
    ScriptLib.AddExtraGroupSuite(context, 166001581, 2)
    ScriptLib.AddExtraGroupSuite(context, 166001581, 3)
    ScriptLib.AddExtraGroupSuite(context, 166001581, 4)

    --处理光钉，启动，嘲讽
    LF_StartPursina(context)
    LF_SetPursinaMidSpeed(context)
    --开启充能进度时间轴
    ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, extra_info.start_operator, 7)
    ScriptLib.InitTimeAxis(context, "energyBasic", {2}, true)
    return 0
end

--玩家距离过远挑战失败
function action_leave_fail_region(context, evt) 
    if evt.param1 == defs.fail_region then 
        ScriptLib.PrintContextLog(context,"##[LumenCharge]:玩家脱离战斗区域，手动结束挑战")
        ScriptLib.StopChallenge(context, 1, 0)
    end
    return 0
end

--处理时间轴
function action_time_axis_pass(context, evt) 
    --充能的时间轴
    if evt.source_name == "energyBasic" then 
        --增加进度
        ScriptLib.ChangeGroupVariableValue(context, "energy", 1)
    end 
    --黑泥重生的时间轴
    local core_id = tonumber(evt.source_name) 
    if core_id ~= nil then 
        if mud_list[core_id] ~= nil then
            --普通黑泥，没有互斥，直接创生核心和黑泥
            if mud_list[core_id].mutex_id == 0 then 
                ScriptLib.PrintContextLog(context,"##[LumenCharge]:[普通黑泥]时间轴触发")
                LF_CreateMudSet(context, core_id)
            else
            --核心黑泥
            --互斥黑泥不存在
                if 0 == ScriptLib.GetEntityIdByConfigId(context, mud_list[core_id].mutex_id) then
                    LF_CreateMudSet(context, core_id)
                    ScriptLib.EndTimeAxis(context, tostring(core_id))
                    ScriptLib.PrintContextLog(context,"##[LumenCharge]:[核心黑泥]复活完成,关闭自身时间轴")
                else 
            --互斥黑泥存在
                    ScriptLib.PrintContextLog(context,"##[LumenCharge]:[核心黑泥]互斥黑泥存在，此次不刷新"..(mud_list[core_id].mutex_id ))
                    return 0
                end
            end
        end
    end
    return 0
end


--处理黑泥死亡，加进度，计入统计
function action_any_gadget_die(context,evt)
    if not ScriptLib.IsChallengeStartedByChallengeId(context, 2009007) then
        ScriptLib.PrintContextLog(context,"##[LumenCharge]:挑战未開啟，不處理") 
        return 0
    end
    local core_id = evt.param1
    --确定死亡的是黑泥核心
    if mud_list[core_id] ~= nil then 
        ScriptLib.PrintContextLog(context,"##[LumenCharge]:增加清除黑泥的总计数") 
        ScriptLib.ChangeGroupTempValue(context, "MUD_REMOVED", 1, {})
        if 1 ~= ScriptLib.GetGroupTempValue(context, "PURSINA_WORKING", {}) then 
            ScriptLib.PrintContextLog(context,"##[LumenCharge]:光钉损坏中，清除黑泥不增加进度") 
        else
            ScriptLib.PrintContextLog(context,"##[LumenCharge]:清除黑泥，增加进度")
            for i=1,mud_list[core_id].score do
                ScriptLib.ChangeGroupVariableValue(context, "energy", 1)
            end
        end
        --移除黑泥对应的组件
        LF_RemoveMudSet(context,core_id)
        if mud_list[core_id].mutex_id == 0 then
            ScriptLib.PrintContextLog(context,"##[LumenCharge]:创建普通黑泥复生时间轴") 
            ScriptLib.InitTimeAxis(context, tostring(core_id), {mud_list[core_id].respawn_time}, false)
        else
            ScriptLib.PrintContextLog(context,"##[LumenCharge]:创建核心黑泥复生时间轴") 
            ScriptLib.InitTimeAxis(context, tostring(core_id), {mud_list[core_id].respawn_time}, true)
        end
    end 
    return 0
end


--处理挑战成功
function action_challenge_success(context, evt) 
    if evt.param1 ~= 2009007 then 
        return 0
    end
    ScriptLib.PrintContextLog(context,"##[LumenCharge]:总挑战成功")
    --处理运营数据
    local transaction = evt.param_str1
    local used_time = defs.challenge_time - evt.param2
    local remove_mud  = ScriptLib.GetGroupTempValue(context, "MUD_REMOVED", {})
    local lumen_level = ScriptLib.GetTeamServerGlobalValue(context, context.owner_uid, "SGV_Light_Stone_Level")
    ScriptLib.PrintContextLog(context,"##[LumenCharge]:埋点数据, 挑战成功,流水号"..transaction.."耗时"..used_time.."清除黑泥总数"..remove_mud.."流明石等级"..lumen_level)
    ScriptLib.MarkGroupLuaAction(context, "Luminous_challenge_2", transaction, {["challenge_id"] = 2009007,["end_reason"] = 1,["use_time"]= used_time ,["remove_mud"]= remove_mud,["luminous_level"] = lumen_level})

    --Group流转
    LF_ClearGroup(context)
    --跳转到EndSuite
    ScriptLib.GoToGroupSuite(context, base_info.group_id, 16)
    ScriptLib.TryFinishLuminanceStoneChallengeStage(context, base_info.group_id)

    ScriptLib.FinishGroupLinkBundle(context, base_info.group_id)
    return 0
end


--处理挑战失败
function action_challenge_fail(context, evt) 
    if evt.param1 ~= 2009007 then 
        return 0
    end
    ScriptLib.PrintContextLog(context,"##[LumenCharge]:总挑战失败")
    --处理运营数据
    local transaction = evt.param_str1
    local used_time = defs.challenge_time - evt.param2
    local remove_mud  = ScriptLib.GetGroupTempValue(context, "MUD_REMOVED", {})
    local lumen_level = ScriptLib.GetTeamServerGlobalValue(context, context.owner_uid, "SGV_Light_Stone_Level")
    if evt.param2 <= 0 then
        ScriptLib.PrintContextLog(context,"##[LumenCharge]:埋点数据,时间用尽,流水号"..transaction.."耗时"..used_time.."清除黑泥总数"..remove_mud.."流明石等级"..lumen_level)
        ScriptLib.MarkGroupLuaAction(context, "Luminous_challenge_2", transaction, {["challenge_id"] = 2009007,["end_reason"] = 2,["use_time"]= used_time ,["remove_mud"]= remove_mud, ["luminous_level"] = lumen_level})
    else
        if ScriptLib.IsPlayerAllAvatarDie(context, context.owner_uid) then
            ScriptLib.PrintContextLog(context,"##[LumenCharge]:埋点数据,团灭,流水号"..transaction.."耗时"..used_time.."清除黑泥总数"..remove_mud.."流明石等级"..lumen_level)
            ScriptLib.MarkGroupLuaAction(context, "Luminous_challenge_2", transaction, {["challenge_id"] = 2009007,["end_reason"] = 0,["use_time"]= used_time ,["remove_mud"]= remove_mud, ["luminous_level"] = lumen_level})
        else
            ScriptLib.PrintContextLog(context,"##[LumenCharge]:挑战失败,未团灭")
        end
    end
    --重置部分内容
    LF_ClearGroup(context)
    ScriptLib.CreateGadget(context, {config_id = defs.pursina_tip})
    ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, extra_info.start_operator, {7})

    return 0
end
--======================================================================================================================
--LevelFunctions

--Group结束重置内容
function LF_ClearGroup(context, evt)
    ScriptLib.PrintContextLog(context,"##[LumenCharge]:移除Group额外内容")
    LF_StopPursina(context)
    LF_SetPursinaNormal(context)
    --保底，移除BGM物件
    if 0 ~= ScriptLib.GetEntityIdByConfigId(context, defs.enemy_gadget) then
        ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.enemy_gadget)
    end
    --移除额外Suite
    for i=1,17 do
        ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, i+1)
    end

    --停掉时间轴
    ScriptLib.EndTimeAxis(context, "energyBasic")
    for core_id,infos in pairs(mud_list) do
        ScriptLib.EndTimeAxis(context, tostring(core_id))
    end
end

--初始化所有变量
function LF_ResetAllValues(context)
    ScriptLib.SetGroupTempValue(context, "MUD_REMOVED", 0, {})
    ScriptLib.SetGroupVariableValue(context, "energy", 0)
    ScriptLib.SetGroupVariableValue(context, "stage", 1)
end

--无特效和无冲击波状态
function LF_SetPursinaNormal(context)
    ScriptLib.PrintContextLog(context,"##[LumenCharge]:光钉移除破损状态效果")
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 0)
    ScriptLib.SetGroupTempValue(context, "PURSINA_WORKING", 1, {})
end
--故障状态
function LF_SetPursinaBroken(context)
    ScriptLib.PrintContextLog(context,"##[LumenCharge]:光钉破损")
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 1)
    ScriptLib.SetGroupTempValue(context, "PURSINA_WORKING", 0, {})
end
--中速正常运转
function LF_SetPursinaMidSpeed(context)
    ScriptLib.PrintContextLog(context,"##[LumenCharge]:正常充能")
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 2)
    ScriptLib.SetGroupTempValue(context, "PURSINA_WORKING", 1, {})
end
--高速运转，这里第二天玩法里用不到
function LF_SetPursinaHighSpeed(context)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 3)
    ScriptLib.SetGroupTempValue(context, "PURSINA_WORKING", 1, {})
end
--启动光钉，打开嘲讽
function LF_StartPursina(context, evt) 
    ScriptLib.PrintContextLog(context,"##[LumenCharge]:启动光钉")
    ScriptLib.SetGadgetStateByConfigId(context, defs.pursina, 202)
    ScriptLib.SetGroupTempValue(context, "PURSINA_WORKING", 1, {})
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_TAUNT", 1)
    --启动时移除指示物
    ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.pursina_tip)
end
--停止光钉，关闭嘲讽
function LF_StopPursina(context, evt)
    ScriptLib.PrintContextLog(context,"##[LumenCharge]:关闭光钉") 
    ScriptLib.SetGadgetStateByConfigId(context, defs.pursina, 203)
    ScriptLib.SetGroupTempValue(context, "PURSINA_WORKING", 0, {})
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_TAUNT", 0)
end


--创建黑泥套组
function LF_CreateMudSet(context, core_id)
    if mud_list[core_id] ~= nil then 
        local covers = mud_list[core_id].cover_list
        local content = mud_list[core_id].cover_content
        ScriptLib.PrintContextLog(context,"##[LumenCharge]:创建黑泥，黑泥白盒") 
        ScriptLib.CreateGadget(context, {config_id = core_id})
        ScriptLib.CreateGadget(context, {config_id = mud_list[core_id].mud_id})
        if #covers ~= 0 then
            ScriptLib.PrintContextLog(context,"##[LumenCharge]:创建黑泥包裹物")
            for k,cover_id in pairs(covers) do
                ScriptLib.CreateGadget(context, {config_id = cover_id})
            end
        end
        if #content ~= 0 then 
        --  local cur_stage = ScriptLib.GetGroupVariableValue(context, "stage")
            ScriptLib.PrintContextLog(context,"##[LumenCharge]:遍历移除包裹内容物")
        -- 这里遍历了所有stage的包裹物，全部尝试进行一次移除
            for stage_index=1,5 do
                for k,content_id in pairs(content[stage_index]) do
                    if 0 ~= ScriptLib.GetEntityIdByConfigId(context, content_id) then
                        ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, content_id)
                    end
                end
            end
        end
    else
        ScriptLib.PrintContextLog(context,"##[LumenCharge]:[WARINING] 使用了错误的黑泥核心ID，注意检查") 
    end
end

--移除黑泥套组
function LF_RemoveMudSet(context, core_id)
    if mud_list[core_id] ~= nil then 
        local covers = mud_list[core_id].cover_list
        local content= mud_list[core_id].cover_content
        ScriptLib.PrintContextLog(context,"##[LumenCharge]:移除黑泥白盒") 
        if 0 ~= ScriptLib.GetEntityIdByConfigId(context, mud_list[core_id].mud_id) then
            ScriptLib.KillEntityByConfigId(context, { group_id = base_info.group_id, config_id = mud_list[core_id].mud_id, entity_type = EntityType.GADGET })
--          ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, mud_list[core_id].mud_id)
        end
    
        ScriptLib.PrintContextLog(context,"##[LumenCharge]:移除黑泥包裹物")
        for k,cover_id in pairs(covers) do
            if 0 ~= ScriptLib.GetEntityIdByConfigId(context, cover_id) then
                ScriptLib.KillEntityByConfigId(context, { group_id = base_info.group_id, config_id = cover_id, entity_type = EntityType.GADGET })
            --    ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, cover_id)
            end               
        end

        local cur_stage = ScriptLib.GetGroupVariableValue(context, "stage")
        if content[cur_stage] ~= nil then
            ScriptLib.PrintContextLog(context,"##[LumenCharge]:创建包裹内容物")
            for k,content_id in pairs(content[cur_stage]) do
                ScriptLib.CreateGadget(context, {config_id = content_id})
            end
        end
    else
        ScriptLib.PrintContextLog(context,"##[LumenCharge]:[WARINING] 使用了错误的黑泥核心ID，注意检查") 
    end
end

--移除黑泥套组，创建内容物

--======================================================================================================================
--ServerLuaCalls
function SLC_PausePursina(context)
    LF_SetPursinaBroken(context)
    ScriptLib.EndTimeAxis(context, "energyBasic")
    return 0
end

function SLC_ResumePursina(context)
    if not ScriptLib.IsChallengeStartedByChallengeId(context, 2009007) then
        ScriptLib.PrintContextLog(context,"##[LumenCharge]:挑战已结束，不再恢复时间轴") 
        return 0
    end
    LF_SetPursinaMidSpeed(context)
    ScriptLib.InitTimeAxis(context, "energyBasic", {2}, true)
    return 0
end

--=====================================================================================================================
--初始化GroupTrigger
function LumenCharge_Initialize()
    for config_id,infos in pairs(monsters) do
        if infos.affix ~= nil then
            table.insert(infos.affix, 4160)
        else
            infos["affix"] = {4160}
        end
    end
    for k,v in pairs(LumenCharge_Triggers) do
        table.insert(triggers, v)
        table.insert(suites[1].triggers, v.name)
    end
end

LumenCharge_Initialize()