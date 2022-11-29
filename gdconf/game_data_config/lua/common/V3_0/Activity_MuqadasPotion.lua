--[[======================================
||	filename:       Activity_MuqadasPotion
||	owner:          chao.cui
||	description:    3.0活动-时停挑战
||	LogName:        TD
||	Protection:     ???
=======================================]]


--[[

    local defs = 
    {
        operator_id = 574048, --操作台的configid
        option_id = 175, --操作台的option id
        reminder_id = 400139, -- 每波刷怪，弹出reminder提示
        gallery_id = 25001,
    }

    local monster_list = 
    {
        -- 第1波怪
        [1] = 
        {
            -- 精英怪configID, 精英怪全部死亡就刷下一波
            elite_monster = {574001,574002},
            -- 附属小怪configID，每个id小怪死了之后，重新刷出来
            tide_mons = {574003, 574004, 574005, 574006, 574007},
            -- 附属小怪的刷怪间隔
            tide_mon_delay = 2,
            -- 下一波怪
            next = 2,
            -- 刷下一波怪延迟
            next_delay = 2,

            elite_monster_energy = 10,
            elite_monster_score = 10,
            tide_mons_energy = 10,
            tide_mons_score = 10,
        },

        -- 第2波怪
        [2] =
        {
            -- 精英怪configID, 精英怪全部死亡就刷下一波
            elite_monster = {574011,574012},
            -- 附属小怪configID，每个id小怪死了之后，重新刷出来
            tide_mons = {574013, 574014, 574015, 574016, 574017},
            -- 附属小怪的刷怪间隔
            tide_mon_delay = 2,
            -- 下一波的ID
            next = 3,
            -- 刷下一波怪延迟
            next_delay = 2,

            elite_monster_energy = 10,
            elite_monster_score = 10,
            tide_mons_energy = 10,
            tide_mons_score = 10,
        },
    }
    
--]]




-- 打印日志
function PrintLog(context, content)
	local log = "## [Activity_MuqadasPotion] TD: "..content
	ScriptLib.PrintContextLog(context, log)
end

local extraTriggers = 
{
    { name = "tri_group_load", config_id = 40000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
    { name = "tri_select_option", config_id = 40000002, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
    { name = "tri_monster_die_before_leave_scene", config_id = 40000003, event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_monster_die_before_leave_scene", trigger_count = 0},
    { name = "tri_gallery_stop", config_id = 40000004, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},
    { name = "tri_dungeon_all_avatar_die", config_id = 40000005, event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_dungeon_all_avatar_die", trigger_count = 0},
    { name = "tri_dungeon_settle", config_id = 40000006, event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_dungeon_settle", trigger_count = 0},
    { name = "tri_timer_event", config_id = 40000007, event = EventType.EVENT_TIMER_EVENT, source = "", condition = "", action = "action_timer_event", trigger_count = 0},
}

function SLC_Self_Increase(context)
    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, { ["add_energy"] = 8 })
    return 0
end

------ conditions & actions ------
-- 团灭
function action_dungeon_all_avatar_die(context,evt)
    if 0 ~= ScriptLib.StopGallery(context, defs.gallery_id, true) then 
        PrintLog(context, "Stop Gallery失败")
    end
    --LF_Stop_Play(context, false)
    return 0
end

-- 副本结算
function action_dungeon_settle(context,evt)
    if 0 ~= ScriptLib.StopGallery(context, defs.gallery_id, true) then 
        PrintLog(context, "Stop Gallery失败")
    end
    --LF_Stop_Play(context, false)
    return 0
end

function action_gallery_stop(context, evt)
    LF_Stop_Play(context, false)
    return 0
end

--group load后，加载操作台选项
function action_group_load(context,evt)
    PrintLog(context, "GroupLoad: 0608-1700")
    ScriptLib.SetGadgetStateByConfigId(context, defs.operator_id, 0)
    if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.operator_id, {defs.option_id}) then
        PrintLog(context, "设置操作选项失败")
    end
    return 0
end

--按下操作台按键，启动玩法
function action_select_option(context,evt)
    ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, defs.operator_id, defs.option_id)
    ScriptLib.SetGadgetStateByConfigId(context, defs.operator_id, 202)
    LF_Start_Play(context)
    return 0
end

function action_monster_die_before_leave_scene(context, evt)
    
    local current_wave = ScriptLib.GetGroupVariableValue(context, "current_wave")
    local elites_tbl = monster_list[current_wave].elite_monster

    -- 判断死的是否是精英怪
    local monster_cid = evt.param1
    local is_elite = 0
    for _, _configID in pairs(elites_tbl) do
        if _configID == monster_cid then
            is_elite = 1
            break
        end
    end

    LF_Update_Score(context, is_elite, current_wave)

    if is_elite == 1 then
        -- SITUATION:精英怪死亡
        local left_elites = ScriptLib.GetGroupVariableValue(context, "left_elites")
        left_elites = left_elites - 1
        ScriptLib.SetGroupVariableValue(context, "left_elites", left_elites)
        
        if left_elites <= 0 then 
            -- 关闭现有小怪复活的timer
            LF_Cancel_Monster_Timers(context, current_wave)
        end

    else 
        -- SITUATION:普通小怪死亡
        local left_elites = ScriptLib.GetGroupVariableValue(context, "left_elites")
        if left_elites > 0 then 
            -- X秒后复活
            local delay_time = monster_list[current_wave].tide_mon_delay
            ScriptLib.CreateGroupTimerEvent(context, base_info.group_id, tostring(monster_cid), delay_time)
        end
    end

    -- 如果场上无怪了
    if ScriptLib.GetGroupMonsterCount(context) == 0 then 
        -- 刷下一波怪
        local delay_time = monster_list[current_wave].next_delay
        ScriptLib.CreateGroupTimerEvent(context, base_info.group_id, "NEXTWAVE", delay_time)
    end

    return 0  
end

-- 计时器
function action_timer_event(context, evt)
    local timer_name = evt.source_name
    if timer_name == "NEXTWAVE" then 
        PrintLog(context, "计时器-刷下一波怪物")
        ScriptLib.ShowReminder(context, defs.reminder_id)

        local current_wave = ScriptLib.GetGroupVariableValue(context, "current_wave")
        local next_wave = monster_list[current_wave].next
        LF_Create_Monster_Wave(context, next_wave)
    else 
        PrintLog(context, "计时器-小怪复活"..timer_name)
        local monster_cid = tonumber(timer_name)
        ScriptLib.CreateMonster(context, { config_id = monster_cid, delay_time = 0 })  
    end
    return 0
end

--------- 关卡Functions --------

function LF_Update_Score(context, is_elite, wave)

    local wave_info = monster_list[wave]

    local score = 0
    local energy = 0

    if wave_info ~= nil then 
        if is_elite == 1 then 
            PrintLog(context, "精英怪死亡")
            score = wave_info.elite_monster_score or 0
            energy = wave_info.elite_monster_energy or 0
        else 
            PrintLog(context, "普通怪死亡")
            score = wave_info.tide_mons_score or 0
            energy = wave_info.tide_mons_energy or 0
        end
    end

    PrintLog(context, "怪物分数:"..score.."。怪物能量:"..energy)

    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, { ["add_score"] = score, ["add_energy"] = energy })
end

function LF_Create_Monster_Wave(context, wave)

    PrintLog(context, "怪物波次:"..wave)

    --ScriptLib.ShowReminder(context, defs.reminder_id)

    ScriptLib.SetGroupVariableValue(context, "current_wave", wave)

    -- 精英怪
    local elites = monster_list[wave].elite_monster
    for _, _configID in pairs(elites) do
        ScriptLib.CreateMonster(context, { config_id = _configID, delay_time = 0 })  
    end

    local left_elites = #elites or 0
    ScriptLib.SetGroupVariableValue(context, "left_elites", left_elites)
    PrintLog(context, "该波次精英怪数量:"..left_elites)
    --ScriptLib.SetGroupVariableValue(context, "wave_pause", 0)

    -- 普通怪
    local monsters = monster_list[wave].tide_mons
    for _, _configID in pairs(monsters) do
        ScriptLib.CreateMonster(context, { config_id = _configID, delay_time = 0 })  
    end
end

function LF_Cancel_Monster_Timers(context, wave)
    local monsters = monster_list[wave].tide_mons
    for _, _cid in pairs(monsters) do
        if 0 ~= ScriptLib.CancelGroupTimerEvent(context, base_info.group_id, tostring(_cid)) then 
            PrintLog(context, "找不到Timer:".._cid)
        else 
            PrintLog(context, "取消TIMER成功:".._cid)
        end
    end
end

function LF_Initialize_Level()

    for k, v in pairs(extraTriggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    table.insert(variables, { config_id = 50000001, name = "current_wave", value = 1})
    table.insert(variables, { config_id = 50000002, name = "left_elites", value = 99})
    table.insert(variables, { config_id = 50000003, name = "level_stopped", value = 0})

end

function LF_Start_Play(context)

    ScriptLib.SetGroupVariableValue(context, "level_stopped", 0)

    ScriptLib.StartGallery(context, defs.gallery_id)
    if defs.energy_gadget ~= nil then
        ScriptLib.KillEntityByConfigId(context, {config_id = defs.energy_gadget})
    end
    -- 刷怪
    local next_wave = 1
    LF_Create_Monster_Wave(context, next_wave)

end

--终止玩法
function LF_Stop_Play(context, success)
    
    if ScriptLib.GetGroupVariableValue(context, "level_stopped") == 1 then 
        return 0
    end
    ScriptLib.SetGroupVariableValue(context, "level_stopped", 1)

    -- if 0 ~= ScriptLib.StopGallery(context, defs.gallery_id, true) then 
    --     PrintLog(context, "Stop Gallery失败")
    -- end
    
    -- 关卡重置
    ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 1 })
    ScriptLib.SetGadgetStateByConfigId(context, defs.operator_id, 202)

    -- success比fail多了avatar复活逻辑。本次活动应该只会用到fail
    if success == true then 
        ScriptLib.CauseDungeonSuccess(context)
    else 
        ScriptLib.CauseDungeonFail(context)
    end
end

LF_Initialize_Level()
