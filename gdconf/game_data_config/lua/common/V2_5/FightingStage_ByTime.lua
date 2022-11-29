--ServerUploadTool Save to [/root/env/data/lua/common/V2_5]
----fever进度升级节点
--local fever_progress_table = {
--    0,50,100,200,300,500
--}
----各等级fever的下降速率
--local fever_attenuation = {
--    -1,-2,-3,-4,-5
--}
--
--local monster_tide = {
--    [1] = {2001,2002,2003,2004,2005,2006,2007},
--    [2] = {2008,2009,2010,2011,2012,2013,2014}
--}
--
--local elite = {
--    2015,2016,2017,2018,2019,2020,2021
--}
--local elite = {
--    [1] = {2001},
--    [2] = {2011,2012},
--    [3] = {2038,2039},
--    [4] = {2040}
--}
--
--local elite_born_points = {
--    3001,3002,3003,3004,3005,3006,3007
--}

--defs.punish_inAdvance_reminder_time = 3
------
--local defs = {
--    group_id = 235801002,
--    worktop_id = 123,
--    minion_fever = 5,
--    game_time = 360,
--    minion_interval = 120,
--    elite_interval = 30,
--    elite_fever = 50,
--    min_monster_count = 5,
--    max_monster_count = 5,
--    environment_suite = 4,
--}

local local_defs = {
    worktop_option = 30110,
    progress_key = 1,
    team_global_value = "FEVER_LEVEL",
    team_noswitch_pubishment = "NOSWITCH_PUNISHMENT",
    team_has_switch = "HAS_SWITCHED_TEAM",
    burn_effect_level = 2,
    environment_change_level = 1,
    base_upgrade_reminder = 358010102,
    team_noswitch_pubishment_reminder = 144,
	punish_inAdvance_reminder = 201
}


local time_axis = {

    --小怪潮替换时间轴，每次触发时替换小怪潮
    minion_tide_axis = {defs.minion_tide_interval},

    --精英怪潮替换时间轴，每次触发时替换精英怪潮
    elite_tide_axis = {defs.elite_tide_interval},

    --精英怪时间轴，每次触发时刷新一只精英怪
    elite_axis = {defs.elite_interval},


    --扣分时间轴，每秒掉一定的分数
    fever_axis = {1},

    noswitch_punishment_axis = {defs.noswitch_punishment_interval},
    noswitch_punishment_inAdvance_axis = {defs.noswitch_punishment_interval-(defs.punish_inAdvance_reminder_time or 3)}

}


local Tri = {
    [1] = { name = "group_load", config_id = 8000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    [2] = { name = "select_option", config_id = 8000002, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
    [3] = { name = "time_axis_pass", config_id = 8000003, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
    [4] = { name = "gallery_progress_pass", config_id = 8000004, event = EventType.EVENT_GALLERY_PROGRESS_PASS, source = "", condition = "", action = "action_gallery_progress_pass", trigger_count = 0},
    [5] = { name = "monster_tide_die", config_id = 8000005, event = EventType.EVENT_MONSTER_TIDE_DIE, source = "", condition = "", action = "action_monster_tide_die", trigger_count = 0},
    [6] = { name = "monster_die_before_leave_scene", config_id = 8000006, event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_monster_die_before_leave_scene", trigger_count = 0},
    [7] = { name = "gallery_stop", config_id = 8000007, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},
    [8] = { name = "sumo_switch_team", config_id = 8000008, event = EventType.EVENT_SUMO_SWITCH_TEAM_EVENT, source = "", condition = "", action = "action_sumo_switch_team", trigger_count = 0},
    [9] = { name = "dungeon_all_avatar_die", config_id = 8000009, event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_dungeon_all_avatar_die", trigger_count = 0},
    [10] = { name = "dungeon_settle", config_id = 8000010, event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_dungeon_settle", trigger_count = 0},
    [11] = { name = "enter_start_region", config_id = 8000011, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_start_region", trigger_count = 0},
--  [12] = { name = "monster_create", config_id = 8000012, event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_monster_create", trigger_count = 0},
    [13] = { name = "monster_tide_over", config_id = 8000013, event = EventType.EVENT_MONSTER_TIDE_OVER, source = "", condition = "", action = "action_monster_tide_over", trigger_count = 0},

}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
    for config_id,infos in pairs(monsters) do
        table.insert(infos.affix, 9009)
    end

    table.insert(variables,{ config_id=50000001,name = "current_monster_tide", value = 0})
	table.insert(variables,{ config_id=50000002,name = "current_elite", value = 1})
    table.insert(variables,{ config_id=50000003,name = "fever_ratio", value = 1})
    --用于记录当前是否开启不换队惩罚，用于客户端断线重连时恢复状态
    table.insert(variables,{ config_id=50000004,name = "is_noswitch_punishment", value = 0})
    --用于记录当前精英是否在场，精英在场时，怪物潮不做刷新
    table.insert(variables,{ config_id=50000005,name = "is_elite_on_ground", value = 0})
    --用于记录当前怪物潮是否结束，当精英死亡时判断当前怪物潮是否处于结束状态，如果是，则直接加载下一波怪物潮
    table.insert(variables,{ config_id=50000006,name = "is_current_minion_tide_end", value = 0})
    --用于记录是否已经创建空气墙，防止玩家卡在空气墙外
    table.insert(variables,{ config_id=50000007,name = "is_air_wall_created", value = 0})
    --用于记录场上的怪物总数，当需要切怪物潮时，需要先判断场上已经没有怪物了
    table.insert(variables,{ config_id=50000008,name = "monster_count", value = 0})
    --用于标记需要监听场上怪物死亡直到怪物数量为0
    table.insert(variables,{ config_id=50000009,name = "last_end_tide", value = 0})
    table.insert(variables,{ config_id=50000010,name = "refresh_end_tide", value = 0})
end

------------------------------------------------------------------

--group load后，加载操作台选项
function action_group_load(context,evt)
    ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.worktop_id, {local_defs.worktop_option})

    --开场就直接加载氛围物件，不要等玩家开启挑战
    --加载环境氛围物件
    ScriptLib.AddExtraGroupSuite(context,defs.group_id,defs.environment_suite)  
    return 0
end

--按下操作台按键，启动玩法
function action_select_option(context,evt)
    --如果空气墙没有提前创建，那么不会处理开始事件
    if 1~= ScriptLib.GetGroupVariableValue(context,"is_air_wall_created") then 
        return -1
    end
    ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.worktop_id, local_defs.worktop_option)
    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.worktop_id, GadgetState.GearStop)
    LF_Start_Play(context)
    return 0
end

--时间轴tick事件，根据tick的时间轴不同处理不同逻辑
function action_time_axis_pass(context,evt)


    --小怪时间轴tick，将小怪潮的index指向下一位（修改group variable）
    if (evt.source_name == "MINION_TIDE_AXIS") then
        ScriptLib.PrintContextLog(context,"FS: MINION_TIDE_AXIS tick!")
        LF_Refresh_Currtent_Monster_Tide(context)
    end

    --精英波次时间轴tick，将精英怪的index指向下一位
    if (evt.source_name == "ELITE_TIDE_AXIS") then
        ScriptLib.PrintContextLog(context,"FS: ELITE_TIDE_AXIS tick!")
        local current_elite_index = LF_Get_Current_Elite_Index(context)
        LF_Set_Current_Elite_Index(context,current_elite_index+1)

    end

    --精英时间轴tick，刷新下一只精英
    if (evt.source_name == "ELITE_AXIS") then
        ScriptLib.PrintContextLog(context,"FS: ELITE_AXIS tick!")
        local current_elite_index = LF_Get_Current_Elite_Index(context)
        LF_Create_Elite_Monster(context,current_elite_index)

        --性能优化：刷出精英怪时，暂停怪物潮
        ScriptLib.PrintContextLog(context,"FS: elite created. Stop monster tide ["..LF_Get_Current_Tide_Num(context).."]")
        ScriptLib.PauseAutoMonsterTide(context, defs.group_id, LF_Get_Current_Tide_Num(context))
    end

    --fever条tick，扣分
    if (evt.source_name == "FEVER_AXIS") then
        LF_Update_Fever(context,LF_Get_Fever_Subnum(context))
    end

	--提前显示一下需要换队
	if (evt.source_name == "NOSWITCH_PUNISHMENT_INADVANCE_AXIS") then
		ScriptLib.ShowTemplateReminder(context, local_defs.punish_inAdvance_reminder, {defs.punish_inAdvance_reminder_time or 3})
	end

    --不换队tick，如果长时间不换队则将设置惩罚gv
    if (evt.source_name == "NOSWITCH_PUNISHMENT_AXIS") then
        --ScriptLib.PrintContextLog(context,"FS: Showing reminder "..local_defs.team_noswitch_pubishment_reminder)
        ScriptLib.ShowTemplateReminder(context, local_defs.team_noswitch_pubishment_reminder, {0})
        --ScriptLib.ShowReminder(context, local_defs.team_noswitch_pubishment_reminder)
        
        ScriptLib.SetGroupVariableValue(context,"is_noswitch_punishment",1)
        LF_Set_Team_Global_Value(context,local_defs.team_noswitch_pubishment,1)
    end


    return 0
end

--fever升级时，给team挂global value，并激活场景氛围物件
function action_gallery_progress_pass(context,evt)
    local fever_level = evt.param1
    ScriptLib.PrintContextLog(context,"FS: Fever uprade to level "..fever_level)
    ScriptLib.ShowReminder(context, local_defs.base_upgrade_reminder+fever_level)
    LF_Set_Team_Global_Value(context,local_defs.team_global_value,fever_level)
    LF_Activate_Environment_Gadget(context,fever_level)
    return 0
end

function action_gallery_stop(context,evt)
    LF_Stop_Play(context)
    return 0
end


--当前的怪物潮刷完的时候，重置当前的怪物潮,这里只处理怪物潮的怪物
function action_monster_tide_die(context,evt)
    local current_monster_tide = LF_Get_Current_Monster_Tide(context)
    local tide_index = tonumber(evt.source_name)
    local refresh_end_tide = ScriptLib.GetGroupVariableValue(context,"refresh_end_tide")

    if tide_index == refresh_end_tide then 
        local elite_num = ScriptLib.GetGroupVariableValue(context,"is_elite_on_ground")
        local monster_count = ScriptLib.GetGroupMonsterCount(context)
        ScriptLib.PrintContextLog(context,"FS:[TIDE_DIE] 死亡的怪物来源于刷新时手动结束的怪物潮，剩余总怪物数量"..monster_count.."精英怪"..elite_num)
        if monster_count == elite_num and elite_num ~= 0 then 
            ScriptLib.PrintContextLog(context,"FS:[TIDE_DIE] 场上仅剩精英怪，标记需要在精英怪死亡时创建新的怪物潮")
            ScriptLib.SetGroupVariableValue(context,"is_current_minion_tide_end",1)
        end

        if monster_count == 0 then 
            ScriptLib.PrintContextLog(context,"FS:[TIDE_DIE] 场上没有怪物了，直接创建")
            LF_Create_Monster_Tide(context,current_monster_tide)
            ScriptLib.SetGroupVariableValue(context,"is_current_minion_tide_end",0)
        end
        return 0
    end
    --如果当前怪物潮已经被杀完了，且精英怪不在场
    if (evt.param1 >= #monster_tide[current_monster_tide]) then
        --标记非手动结束的怪物潮里的怪已经刷完了
        ScriptLib.SetGroupVariableValue(context,"is_current_minion_tide_end",1)
        local is_elite_on_ground = ScriptLib.GetGroupVariableValue(context,"is_elite_on_ground")
        ScriptLib.PrintContextLog(context,"FS:[TIDE_DIE] 怪物潮"..tide_index.."所有怪物清空")
        if (is_elite_on_ground == 0) then
            --精英不在场，才能开一个新的怪物潮
            ScriptLib.PrintContextLog(context,"FS: [TIDE_DIE] 场上没有精英怪，获取当前对应波次，创建怪物潮")
            LF_Create_Monster_Tide(context,current_monster_tide)
            ScriptLib.SetGroupVariableValue(context,"is_current_minion_tide_end",0)
        end
    end
    return 0
end

--记录当前结束的MonsterTideIndex
function action_monster_tide_over(context, evt)
    local end_index = tonumber(evt.source_name)
    if end_index ~= nil then
        ScriptLib.SetGroupVariableValue(context,"last_end_tide", end_index)
        ScriptLib.PrintContextLog(context,"FS:[DEBUG][TIDE_OVER] 当前怪物潮结束，波次"..end_index)
    end
    return 0
end

--有怪死亡时，计分，并更新fever条，这里只处理怪物计分和精英怪阻塞
function action_monster_die_before_leave_scene(context,evt)
    local monster_eid = evt.source_eid
    local monster_cid = evt.param1
    local is_elite = LF_Is_Elite(context,monster_cid)
    local fever_ratio = ScriptLib.GetGroupVariableValue(context,"fever_ratio")
    local monster_fever = monsters[monster_cid].kill_score
    LF_Update_Fever(context,monster_fever*fever_ratio)
    LF_Update_Score(context,monster_eid)
    --死的是精英怪，看看之前有没有阻塞
    if is_elite then
        --精英死亡时，检测该组刷新的精英怪数量，如果全部死亡就重新开始计时
        local elite_num = ScriptLib.GetGroupVariableValue(context,"is_elite_on_ground")
        if elite_num > 1 then
            --场上还有别的精英怪
            ScriptLib.SetGroupVariableValue(context,"is_elite_on_ground",elite_num-1)
        else
            ScriptLib.SetGroupVariableValue(context,"is_elite_on_ground",0)
            ScriptLib.EndTimeAxis(context,"ELITE_AXIS")
            ScriptLib.InitTimeAxis(context,"ELITE_AXIS",time_axis.elite_axis,false)
            if ScriptLib.GetGroupVariableValue(context,"is_current_minion_tide_end") == 0 then
                if not LF_Is_Current_Index_End(context) then 
                    ScriptLib.PrintContextLog(context,"FS:[DEBUG][MonDie] 精英怪死亡，当前怪物潮没有触发OVER，继续刷新,波次"..LF_Get_Current_Tide_Num(context))
                    ScriptLib.ContinueAutoMonster(context, defs.group_id, LF_Get_Current_Tide_Num(context))
                else
                    if 0 == ScriptLib.GetGroupMonsterCount(context) then 
                        ScriptLib.PrintContextLog(context,"FS:[DEBUG] [MonDie]精英怪死亡，当前怪物潮已经触发OVER且场上没有Monster，重新创建怪物潮")
                        local current_monster_tide = LF_Get_Current_Monster_Tide(context)
                        LF_Create_Monster_Tide(context,current_monster_tide)
                        ScriptLib.SetGroupVariableValue(context,"is_current_minion_tide_end",0)
                     end
                end
             else
                --当前怪物潮已经结束了，因为场上有精英怪被卡住了。精英死亡时，手动开启新的怪物潮
                if 0 == ScriptLib.GetGroupMonsterCount(context) then 
                    ScriptLib.PrintContextLog(context,"FS:[DEBUG][MonDie] 精英怪死亡且场上没有怪物，波次"..LF_Get_Current_Tide_Num(context))
                    local current_monster_tide = LF_Get_Current_Monster_Tide(context)
                    LF_Create_Monster_Tide(context,current_monster_tide)
                    ScriptLib.SetGroupVariableValue(context,"is_current_minion_tide_end",0)
                end
            end
        end
    end
    
    return 0
end

--玩家换队时触发，启动一个一定时间的时间轴，时间轴tick时修改global value给玩家挂debuff
function action_sumo_switch_team(context,evt)

    --刚刚换队，先清掉team上的换队惩罚global value，并开始计时，如果tick时没有换队，则挂上惩罚标记gv
    LF_Set_Team_Global_Value(context,local_defs.team_noswitch_pubishment,0)
    ScriptLib.EndTimeAxis(context,"NOSWITCH_PUNISHMENT_AXIS")
    ScriptLib.InitTimeAxis(context,"NOSWITCH_PUNISHMENT_AXIS",time_axis.noswitch_punishment_axis,false)

	--清理换队提示
    ScriptLib.EndTimeAxis(context,"NOSWITCH_PUNISHMENT_INADVANCE_AXIS")
    ScriptLib.InitTimeAxis(context,"NOSWITCH_PUNISHMENT_INADVANCE_AXIS",time_axis.noswitch_punishment_inAdvance_axis,false)

    --换队增加热情值
    LF_Update_Fever(context,defs.switch_team_fever)

    --换队的时候给服务端发送消息，让客户端显示惩罚倒计时UI
    local uid_list = ScriptLib.GetSceneUidList(context)
    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["uid"] = uid_list[1], ["noswitch_time"] = defs.noswitch_punishment_interval})

    --清除当前显示的换队惩罚的reminder
    
    local uid_list = ScriptLib.GetSceneUidList(context)
    local ret = ScriptLib.RevokePlayerShowTemplateReminder(context, local_defs.team_noswitch_pubishment_reminder, {})
    ScriptLib.RevokePlayerShowTemplateReminder(context, local_defs.punish_inAdvance_reminder, {})

    ScriptLib.PrintContextLog(context,"FS: Clear reminder result"..ret)

    --换队的时候修改team的gv，重新刷一下新的avatar身上的加成效果
    --ScriptLib.PrintContextLog(context,"FS: team has changed, team_has_change = 1")
    LF_Set_Team_Global_Value(context,local_defs.team_has_switch,1)
    
    ScriptLib.SetGroupVariableValue(context,"is_noswitch_punishment",0)

    return 0
end


--玩家进入区域直接创建空气墙，防止卡延迟出圈
function action_enter_start_region(context,evt)
    --加载空气墙
    ScriptLib.CreateGadget(context,{config_id = defs.air_wall})
    ScriptLib.SetGroupVariableValue(context,"is_air_wall_created",1)
    return 0
end

--团灭触发，直接结束玩法
function action_dungeon_all_avatar_die(context,evt)

    LF_Stop_Play(context)

    return 0
end

function action_dungeon_settle(context,evt)

    LF_Stop_Play(context)

    return 0
end

------------------------------------------------------------------
--辅助方法---------------------------------------------------------
------------------------------------------------------------------


--关卡相关方法-----------------------------------------------------

--启动玩法方法，初始化各种东西
function LF_Start_Play(context)

    ScriptLib.StartGallery(context, defs.gallery_id)
    ScriptLib.InitGalleryProgressScore(context, "fever", defs.gallery_id, fever_progress_table, GalleryProgressScoreUIType.GALLERY_PROGRESS_SCORE_UI_TYPE_SUMO_STAGE, GalleryProgressScoreType.GALLERY_PROGRESS_SCORE_NO_DEGRADE)

    ScriptLib.InitTimeAxis(context,"FEVER_AXIS",time_axis.fever_axis,true)
    ScriptLib.InitTimeAxis(context,"MINION_TIDE_AXIS",time_axis.minion_tide_axis,true)
    ScriptLib.InitTimeAxis(context,"ELITE_TIDE_AXIS",time_axis.elite_tide_axis,true)
    ScriptLib.InitTimeAxis(context,"ELITE_AXIS",time_axis.elite_axis,false)
    LF_Set_Current_Tide_Num(context,0)
    LF_Set_Current_Monster_Tide(context,1)
    LF_Set_Current_Elite_Index(context,1)
    LF_Create_Monster_Tide(context,1)
    --启动玩法时给第一队挂一下gv，防止一开始就受到惩罚；并开启时间轴开始计时
    LF_Set_Team_Global_Value(context,local_defs.team_noswitch_pubishment,0)
    ScriptLib.InitTimeAxis(context,"NOSWITCH_PUNISHMENT_AXIS",time_axis.noswitch_punishment_axis,false)
    ScriptLib.InitTimeAxis(context,"NOSWITCH_PUNISHMENT_INADVANCE_AXIS",time_axis.noswitch_punishment_inAdvance_axis,false)
    --玩法开始的时候给服务端发送消息，让客户端显示惩罚倒计时UI
    local uid_list = ScriptLib.GetSceneUidList(context)
    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["uid"] = uid_list[1], ["noswitch_time"] = defs.noswitch_punishment_interval})
    --加载空气墙
    ScriptLib.CreateGadget(context,{config_id = defs.air_wall})
end

--终止玩法方法，关掉各种东西
function LF_Stop_Play(context)
    
    local current_monster_tide = LF_Get_Current_Monster_Tide(context)
    --清理一下空气墙，防止其他问题
	ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, defs.air_wall)
    --玩法结束，清理掉当前的怪物潮
    if not LF_Is_Current_Index_End(context) then
        ScriptLib.KillMonsterTide(context, defs.group_id, current_monster_tide)
    end
    ScriptLib.StopGallery(context, defs.gallery_id,true)
    ScriptLib.EndTimeAxis(context,"FEVER_AXIS")
    ScriptLib.EndTimeAxis(context,"MINION_TIDE_AXIS")
    ScriptLib.EndTimeAxis(context,"ELITE_AXIS")
    ScriptLib.EndTimeAxis(context,"ELITE_TIDE_AXIS")
    --关闭一下地城，以正确触发重新挑战
    ScriptLib.CauseDungeonFail(context)
end


--启动一波指定ID的怪物潮，需要传入该波怪物潮的ID（具体配置在miscs中定义）
function LF_Create_Monster_Tide(context,monster_tide_index)
    local monster_config_id_list = monster_tide[monster_tide_index]
    --增加怪物潮的计数，下一次开启时index会+1，防止索引到同一波怪物潮
    local tide_num = LF_Get_Current_Tide_Num(context)    
    LF_Set_Current_Tide_Num(context,tide_num+1)
    ScriptLib.PrintContextLog(context,"FS: [DEBUG][CREATE] 创建怪物潮，怪物波次 ["..monster_tide_index.."]".."怪物潮INDEX"..(tide_num+1))
    local current_monster_tide = LF_Get_Current_Monster_Tide(context)
    ScriptLib.AutoMonsterTide(context, tide_num+1, defs.group_id, monster_config_id_list, #monster_config_id_list, tide_suite_config[current_monster_tide].min, tide_suite_config[current_monster_tide].max)
end

--停止目前的怪物潮，下次刷新新配置的怪物潮
function LF_Refresh_Currtent_Monster_Tide(context)
    ScriptLib.PrintContextLog(context,"FS:[DEBUG] [REFRESH]时间轴刷新怪物潮，标记当前怪物潮结束")
    local current_monster_tide = LF_Get_Current_Monster_Tide(context)
    --标记当前怪物潮结束,如果怪物潮没有结束则手动结束
    local tide_index = LF_Get_Current_Tide_Num(context)
    ScriptLib.SetGroupVariableValue(context,"refresh_end_tide",tide_index)
    if not LF_Is_Current_Index_End(context) then
        ScriptLib.PrintContextLog(context,"FS:[DEBUG] [REFRESH]手动结束当前怪物潮")
        ScriptLib.EndMonsterTide(context, defs.group_id, tide_index, 1)
    end
--  ScriptLib.SetGroupVariableValue(context,"is_current_minion_tide_end",1)
    LF_Set_Current_Monster_Tide(context,current_monster_tide+1)
    --如果场上没有怪就直接创建
    if 0 == ScriptLib.GetGroupMonsterCount(context) then 
        LF_Create_Monster_Tide(context,current_monster_tide+1)
        ScriptLib.SetGroupVariableValue(context,"is_current_minion_tide_end",0)
        ScriptLib.PrintContextLog(context,"FS:[DEBUG] [REFRESH]更新怪物潮，刷新怪物，并且标记这一波怪没有结束")
    end
end

--在随机的位置，刷新指定序列的精英怪
function LF_Create_Elite_Monster(context,elite_index)
    local elite_list = elite[elite_index]
    ScriptLib.PrintContextLog(context,"FS: Creating elite nums_"..#elite_list)
    --生成一个点的序列表,每次随机的时候把结果踢出
    local point_index = {}
    local choices = {}
    for i=1,#elite_born_points do
        table.insert(point_index,i)
    end
    for i=1,#elite_list do
        local randomNum = math.random(1,#point_index)
        table.insert(choices, point_index[randomNum])
        table.remove(point_index, randomNum)
    end
    for i=1,#elite_list do
        for k,v in pairs(points) do
            if elite_born_points[choices[i]] == v.config_id then
                ScriptLib.PrintContextLog(context,"FS: Creating elite ["..elite_list[i].."] at point "..v.pos.x..","..v.pos.y..","..v.pos.z)
                ScriptLib.CreateMonsterByConfigIdByPos(context, elite_list[i], v.pos, v.rot)
            end
        end
        
    end
    ScriptLib.SetGroupVariableValue(context,"is_elite_on_ground",#elite_list)
end

--从1~max间随机nums个
function LF_Random_Choice(max, nums)
    local choices = {}
    local list = {}

    for i=1,nums do
        local randomNum = math.random(1,#list)
        table.insert(choices, list[randomNum])
        table.remove(list, randomNum)
    end
    return choices
end

function LF_Is_Current_Index_End(context)
    if LF_Get_Current_Tide_Num(context) > ScriptLib.GetGroupVariableValue(context,"last_end_tide") then
        ScriptLib.PrintContextLog(context,"FS:[DEBUG] [JUDGE]判断当前怪物潮没有结束")
        return false
    end
    ScriptLib.PrintContextLog(context,"FS:[DEBUG] [JUDGE] 判断当前怪物潮已经结束")
    return true
end
--通用类方法-------------------------------------------------------

--切换场上的场景氛围物件状态
function LF_Activate_Environment_Gadget(context,fever_level)
    ScriptLib.PrintContextLog(context,"FS: Activate environment gadgets!")
    --根据当前的fever等级，改变天气
    if (fever_level>local_defs.environment_change_level) then
        ScriptLib.PrintContextLog(context,"FS: Changing environment weather!")
        local ret = ScriptLib.SetWeatherAreaState(context, DungeonWeather[fever_level],1)
        --ScriptLib.PrintContextLog(context,"FS: The result of starting weather ".. DungeonWeather[fever_level].."is "..ret)
        local ret = ScriptLib.EnterWeatherArea(context, DungeonWeather[fever_level])
        --ScriptLib.PrintContextLog(context,"FS: The result of changing weather".. DungeonWeather[fever_level].."is "..ret)
    end

    --切换场上所有的物件的状态
    for i = 1, #suites[defs.environment_suite].gadgets do
        local config_id = suites[defs.environment_suite].gadgets[i]
        local gadget_id = LF_Get_Gadget_Id_By_Config_Id(context,config_id)
        --大小火盆
        if (gadget_id == 70350306 or gadget_id == 70350307) then 
            if (fever_level<local_defs.burn_effect_level) then
                --点燃小火
                --ScriptLib.PrintContextLog(context,"FS: Burn little fire!")
                local ret = ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, config_id, 101)
            end
            if (fever_level<#fever_progress_table-2 and fever_level>=local_defs.burn_effect_level) then
                --喷大火，5秒后转回小火
                --ScriptLib.PrintContextLog(context,"FS: Burn middle fire!")
                local ret = ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, config_id, 201)
            end
            if (fever_level >= #fever_progress_table-2) then 
                 --持续喷大火
                --ScriptLib.PrintContextLog(context,"FS: Burn super fire!")
                ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, config_id, 202)
            end
        end
        --挂灯
        if (gadget_id == 70350308) then 
            if (fever_level>=local_defs.burn_effect_level) then
                --点燃小火
                ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, config_id, 201)
            end
        end
         --场景氛围
         if (gadget_id == 70350309) then 
            --转到对应的gadgetState：default-0、phase1-201、phase2-202、phase3-203、phase4-204
            ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, config_id, 200+fever_level)
        end
    end
end

--给team挂global value，角色处理各种特殊效果
function LF_Set_Team_Global_Value(context,gv_name,value)
    --ScriptLib.PrintContextLog(context,"FS: Sending global values to team!")
    local uid_list = ScriptLib.GetSceneUidList(context)
    ScriptLib.SetTeamEntityGlobalFloatValue(context, uid_list, gv_name, value)
end



-----CRUD类方法----------------------------------------------------

--更新fever条，fever_delta为fever条改变值
function LF_Update_Fever(context,fever_delta)
    ScriptLib.AddGalleryProgressScore(context, "fever", defs.gallery_id, fever_delta)
end

--更新积分，需要传入目标monster的entity id
function LF_Update_Score(context,monster_eid)
    local uid_list = ScriptLib.GetSceneUidList(context)
    local monster_id = ScriptLib.GetMonsterIdByEntityId(context,monster_eid)
    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["uid"] = uid_list[1], ["monster_id"] = monster_id})
end


--返回当前等级下的积分衰减速率
function LF_Get_Fever_Subnum(context)
    local fever = ScriptLib.GetGalleryProgressScore(context, "fever", defs.gallery_id)
    for i = 1, #fever_progress_table-1 do
        local lower_bound = fever_progress_table[i]
        local higher_bound = fever_progress_table[i+1]
        if fever>=lower_bound and fever<higher_bound then
            return fever_attenuation[i]
        end
    end
    return -1
end

--增加场上的怪物总数
function LF_Add_MonsterCount(context, num)
--   local monster_count = ScriptLib.GetGroupVariableValue(context,"monster_count")
--   ScriptLib.SetGroupVariableValue(context,"monster_count", monster_count+num)
    ScriptLib.ChangeGroupVariableValue(context,"monster_count",num)
end

function LF_Get_MonsterCount(context)
    local monster_count = ScriptLib.GetGroupVariableValue(context,"monster_count")
    return monster_count
end

--设置当前怪物潮的波次数（注意不等于怪物潮的index）。每次创建怪物潮会使波次数+1，方便索引新的怪物潮
function LF_Set_Current_Tide_Num(context,value)
    ScriptLib.SetGroupTempValue(context, "MinionTide", value, {})
end

--获取当前怪物潮的波次数（注意不等于怪物潮的index）。每次创建怪物潮会使波次数+1，方便索引新的怪物潮
function LF_Get_Current_Tide_Num(context)
    return ScriptLib.GetGroupTempValue(context, "MinionTide", {})
end


--设置当前大怪的进度index
function LF_Set_Current_Elite_Index(context,index)
    ScriptLib.SetGroupVariableValue(context,"current_elite",index)
end

--获取当前大怪的进度index
function LF_Get_Current_Elite_Index(context)
    local elite_index = ScriptLib.GetGroupVariableValue(context,"current_elite")
    return elite_index
end

--设置当前怪物潮波次的index
function LF_Set_Current_Monster_Tide(context,index)
    ScriptLib.SetGroupVariableValue(context,"current_monster_tide",index)
end

--获取当前怪物潮波次的index
function LF_Get_Current_Monster_Tide(context)
    local monster_tide = ScriptLib.GetGroupVariableValue(context,"current_monster_tide")
    return monster_tide
end

--根据config id 返回一个点位
function LF_Get_Point(context,point_cid)
    for i = 1,#points do
        if (points[i].config_id == point_cid) then
            return points[i]
        end
    end
    return -1
end

--根据gadget的config_id查询gadget_id
function LF_Get_Gadget_Id_By_Config_Id(context, config_id)
    return gadgets[config_id].gadget_id
end


--返回一个指定configid的怪物是否是大怪
function LF_Is_Elite(context,monster_cid)
    for i=1,#elite do
        for k,cfg_id in pairs(elite[i]) do
            if monster_cid == cfg_id then
                return true
            end
        end
    end
    return false
end
------------------------------------------------------------------
--server lua call-------------------------------------------------

function SLC_Update_Fever_Ratio(context,new_fever_ratio)
    
    ScriptLib.PrintContextLog(context,"FS: SERVER_LUA_CALL: Changing fever ratio to: "..new_fever_ratio)
    ScriptLib.SetGroupVariableValue(context,"fever_ratio",new_fever_ratio)

    return 0 
end

--向客户端下发当前的惩罚状态和fever值，用于客户端重连时请求
function SLC_Refresh_Team_State(context)
    
    ScriptLib.PrintContextLog(context,"FS: SERVER_LUA_CALL: Request for refresh punishment state: ")
    local is_noswitch_punishment = ScriptLib.GetGroupVariableValue(context,"is_noswitch_punishment")
    LF_Set_Team_Global_Value(context,"NOSWITCH_PUNISHMENT",is_noswitch_punishment)
    
    local fever = ScriptLib.GetGalleryProgressScore(context, "fever", defs.gallery_id)
    LF_Set_Team_Global_Value(context,"fever",fever)
    return 0 
end

------------------------------------------------------------------
Initialize()
