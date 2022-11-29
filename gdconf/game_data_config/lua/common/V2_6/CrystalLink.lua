--[[======================================
||	filename:	CrystalLink
||	owner: 		luyao.huang
||	description:	2.6连线buff地城玩法
||	LogName:	CrystalLink
||	Protection:	
=======================================]]--
--miscs

--全局表数据定义
--fever进度升级节点
--local fever_progress_table = {
--    0,50,100,200,300,500
--}
----各等级fever的下降速率
--local fever_attenuation = {
--    -1,-2,-3,-4,-5
--}
--
--怪物潮定义
--local monster_tide = {
--    {2001,2002,2003,2004,2005,2006,2007,2008,2009,2010},
--    {2011,2012,2013,2014,2015,2016,2017,2018,2019,2020},
--    {2021,2022,2023,2024,2025,2026,2027,2028,2029,2030},
--    {2031,2032,2033,2034,2035,2036,2037,2038,2039,2040},
--}
--
----精英怪定义
--local elite = {
--    {2041,2042},
--    {2043,2044},
--    {2045,2046},
--    {2047,2048}
--}
--
--local defs = {
--    play_round = 1,             --战斗轮次，上半场 = 1，下半场 = 2
--    next_play_group = 100000,   --下一个轮次的groupid
--
--    worktop_id = 123,           --启动操作台
--
--    minion_fever = 5,           --杀死小怪获得的热度值
--    minion_interval = 120,      --小怪潮切换间隔
--    elite_interval = 30,        --精英怪刷新间隔
--    elite_fever = 50,           --杀死精英怪获得的热度值
--    min_monster_count = 5,      --在场最小的小怪数
--    max_monster_count = 5,      --在场最大的小怪数
--    environment_suite = 4,      --环境氛围物件所在suite
--}

--内部表数据定义
local local_defs = {
    worktop_option = 30110,                             --操作台选项id                               
    team_global_value = "SGV_FEVER_LEVEL",                  --team上的SGV名称
    --monster_create_min_interval = 5                     --性能优化：刷怪最小间隔
}


local time_axis = {

    --小怪潮替换时间轴，每次触发时替换小怪潮
    minion_tide_axis = {defs.minion_tide_interval},

    --精英怪潮替换时间轴，每次触发时替换精英怪潮
    elite_tide_axis = {defs.elite_tide_interval},

    --精英怪时间轴，每次触发时刷新一组精英怪
    elite_axis = {defs.elite_interval},

    --精英怪预览reminder时间轴
    elite_preview_reminder_axis = {defs.elite_preview_reminder_time},

    --fever衰减间隔时间轴
    attenuation_interval_axis = {defs.attenuation_interval},

    --增加fever触发不超过n次的检测时间窗口
    add_fever_check_window_axis = {defs.add_fever_check_window},
    
    --性能优化：刷怪最小间隔
    monster_create_min_interval_axis = {defs.monster_create_min_interval},

    --扣分时间轴，每秒掉一定的分数
    fever_axis = {1},

}


local Tri = {
    { config_id = 40000000, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    { config_id = 40000001, name = "variable_change", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change", trigger_count = 0},
    { config_id = 40000002, name = "select_option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
    { config_id = 40000003, name = "time_axis_pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
    { config_id = 40000004, name = "gallery_progress_pass",  event = EventType.EVENT_GALLERY_PROGRESS_PASS, source = "", condition = "", action = "action_gallery_progress_pass", trigger_count = 0},
    { config_id = 40000005, name = "monster_tide_die", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "", condition = "", action = "action_monster_tide_die", trigger_count = 0},
    { config_id = 40000006, name = "monster_die_before_leave_scene", event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_monster_die_before_leave_scene", trigger_count = 0},
    { config_id = 40000007, name = "gallery_stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},
    { config_id = 40000008, name = "dungeon_all_avatar_die", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_dungeon_all_avatar_die", trigger_count = 0},
    { config_id = 40000009, name = "dungeon_settle", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_dungeon_settle", trigger_count = 0},
    
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    --保存当前fever值，并传给下半场
    table.insert(variables,{ config_id=50000001,name = "current_fever", value = 0})
    --是否允许开始玩法
    table.insert(variables,{ config_id=50000002,name = "can_start", value = 0})
    --当前玩法group是否激活
    table.insert(variables,{ config_id=50000003,name = "is_active", value = 0})

    table.insert(variables,{ config_id=50000004,name = "current_monster_tide", value = 0})
	table.insert(variables,{ config_id=50000005,name = "current_elite", value = 1})
    table.insert(variables,{ config_id=50000006,name = "fever_ratio", value = 1})



    --以下用于控制怪物潮的启停逻辑

    --记录最近一波刷出的怪物index，如果current_monster_tide超过这个值，说明index已经推进
    table.insert(variables,{ config_id=50000007,name = "last_created_tide_index", value = 0})
    --记录当前怪物潮是否死完了
    table.insert(variables,{ config_id=50000008,name = "current_tide_all_killed", value = 1})

    --是否因波次推进而被暂停
    table.insert(variables,{ config_id=50000009,name = "has_paused_by_index_move_forward", value = 0})
    --是否因小怪死亡而被暂停
    table.insert(variables,{ config_id=50000010,name = "has_paused_by_minion_die", value = 0})


    --记录pause操作的数量，相当于一个栈。pause操作全部弹出后，continue或create操作才能生效
    table.insert(variables,{ config_id=50000011,name = "pause_operation_num", value = 0})
end

------------------------------------------------------------------

--group load，如果是上半场，则开始玩法初始化
function action_group_load(context,evt)

    if (defs.play_round == 1) then
        ScriptLib.PrintContextLog(context,"## [CrystalLink] Group Load： 上半场group加载，玩法初始化")
        LF_Init_Play(context)
    end
    return 0
end

--下半场玩法启动，开始玩法初始化
function action_variable_change(context,evt)
    if (evt.source_name == "can_start" and evt.param1 == 1) then  
        ScriptLib.PrintContextLog(context,"## [CrystalLink] variable change： 下半场group启动，玩法初始化")
        LF_Init_Play(context)
    end
    return 0
end

--按下操作台按键，启动玩法
function action_select_option(context,evt)
    ScriptLib.PrintContextLog(context,"## [CrystalLink] Select Option： 玩家按下选项，启动玩法")
    ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, defs.worktop_id, local_defs.worktop_option)
    ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, defs.worktop_id, GadgetState.GearStop)
    LF_Start_Play(context)
    return 0
end

--时间轴tick事件，根据tick的时间轴不同处理不同逻辑
function action_time_axis_pass(context,evt)

    --小怪时间轴tick，将小怪潮的index指向下一位（修改group variable）
    if (evt.source_name == "MINION_TIDE_AXIS") then
        ScriptLib.PrintContextLog(context,"## [CrystalLink] time axis pass： 小怪潮切换时间轴tick！指向下一波小怪潮索引！")
        local current_monster_tide = LF_Get_Current_Monster_Tide(context)
        LF_Set_Current_Monster_Tide(context,current_monster_tide+1)

        --场上没怪不需要做暂停
        if (not LF_Is_Current_Minion_All_Dead(context)) then
        --怪物潮操作：怪物潮波次推进时，暂停怪物潮
            LF_Try_Pause_Monster_Tide(context)
            ScriptLib.SetGroupVariableValue(context,"has_paused_by_index_move_forward",1)
        end
    end

    --精英波次时间轴tick，将精英怪的index指向下一位
    if (evt.source_name == "ELITE_TIDE_AXIS") then
        ScriptLib.PrintContextLog(context,"## [CrystalLink] time axis pass： 精英怪切换时间轴tick！指向下一波精英怪索引！")
        local current_elite_index = LF_Get_Current_Elite_Index(context)
        LF_Set_Current_Elite_Index(context,current_elite_index+1)
    end

    --精英时间轴tick，刷新下一只精英
    if (evt.source_name == "ELITE_AXIS") then
        ScriptLib.PrintContextLog(context,"## [CrystalLink] time axis pass： 精英怪时间轴tick！刷新下一波精英怪！")
        local current_elite_index = LF_Get_Current_Elite_Index(context)
        LF_Create_Elite_Monster(context,current_elite_index)

        --怪物潮操作：精英怪刷新时，暂停怪物潮
        LF_Try_Pause_Monster_Tide(context)
    end

    --精英预警reminder时间轴tick，刷一条精英怪出现预警
    if (evt.source_name == "ELITE_PREVIEW_REMINDER_AXIS") then
        ScriptLib.PrintContextLog(context,"## [CrystalLink] time axis pass： 精英怪预警时间轴tick！")
        ScriptLib.ShowReminder(context, defs.elite_preview_reminder)
    end

    --fever衰减间隔时间轴tick，打开开关，允许fever衰减
    if (evt.source_name == "ATTENUATION_INTERVAL_AXIS") then
        ScriptLib.SetGroupTempValue(context,"can_attenuate",1,{})
    end
    
    --增加fever检测时间窗口，这个窗口内，玩家增加fever的次数应该少于指定次数
    if (evt.source_name == "ADD_FEVER_CHECK_WINDOW_AXIS") then
        ScriptLib.SetGroupTempValue(context,"add_fever_times",0,{})
    end

    --刷怪最小间隔tick，尝试新建或重启怪物潮
    if (evt.source_name == "MONSTER_CREATE_MIN_INTERVAL_AXIS") then
        ScriptLib.PrintContextLog(context,"## [CrystalLink] time axis pass： 怪物潮间隔tick，可以继续创怪了")
        LF_Try_Continue_Or_Create_Monster_Tide(context)
        ScriptLib.PrintContextLog(context,"## [CrystalLink] time axis pass：重置怪物潮因为怪物死亡的停止状态")
        ScriptLib.SetGroupVariableValue(context,"has_paused_by_minion_die",0)
    end

    --fever条tick，扣分
    if (evt.source_name == "FEVER_AXIS") then
        LF_Update_Fever(context,LF_Get_Fever_Subnum(context))
    end

    return 0
end

--fever升级时，给team挂global value，并激活场景氛围物件
function action_gallery_progress_pass(context,evt)

    ScriptLib.PrintContextLog(context,"## [CrystalLink] gallery progress pass： fever条升级，给角色发gv强化，并激活场景物件")
    local fever_level = evt.param1
    ScriptLib.PrintContextLog(context,"## [CrystalLink] gallery progress pass： 当前fever为"..fever_level)
    LF_Set_Team_Global_Value(context,local_defs.team_global_value,fever_level)
    LF_Activate_Environment_Gadget(context,fever_level)
    return 0
end


--当前的怪物潮刷完的时候，重置当前的怪物潮
--这个方法仅处理同一波次怪物的循环刷新。如果当前怪物潮结束，且波次已经前进，则由monster_die负责刷新的怪物潮
function action_monster_tide_die(context,evt)
    --这里要获取场上当前的index，因为index变化以后，再用evt.param1比对就不对了
    local current_monster_tide = ScriptLib.GetGroupVariableValue(context,"last_created_tide_index")
    local monster_eid = evt.source_eid
    local monster_cid = ScriptLib.GetMonsterConfigId(context, {monster_eid})
    local is_elite = LF_Is_Elite(context,monster_cid)
    if (not is_elite) then
        --当前怪物潮全部死亡（怪物潮无限循环，不存在这种情况了） 或 场上怪物全部死亡且进度已推进
        --if (evt.param1 >= #monster_tide[current_monster_tide]) or (LF_Is_Current_Minion_All_Dead(context) and LF_Monster_Tide_Index_Has_Move_Forward(context)) then
        --   ScriptLib.SetGroupVariableValue(context,"current_tide_all_killed", 1)
        if LF_Is_Current_Minion_All_Dead(context) and LF_Monster_Tide_Index_Has_Move_Forward(context) then
           ScriptLib.SetGroupVariableValue(context,"current_tide_all_killed", 1)
            --如果没有时间轴，怪物潮结束时要重新开一波新的怪物潮
            --这里相当于是手动做出了一个循环怪物潮，和怪物潮启停的逻辑本身没有关系
            if (defs.monster_create_min_interval == 0) then
                if (LF_Is_Pause_Operation_Stack_Empty(context)) then
                    if (LF_Is_Current_Tide_All_Killed(context)) then
                        ScriptLib.PrintContextLog(context,"## [CrystalLink]action_monster_tide_die：当前波次死完，要手动重开一次怪物潮")
                        local current_monster_tide = LF_Get_Current_Monster_Tide(context)
                        LF_Create_Monster_Tide(context,current_monster_tide)
                    end
                end
            end
        end
        if (LF_Is_Current_Minion_All_Dead(context) and LF_Monster_Tide_Index_Has_Move_Forward(context)) then
            ScriptLib.PrintContextLog(context,"## [CrystalLink] monster die：轮次已切换，重开一波怪物潮")
            if ScriptLib.GetGroupVariableValue(context,"has_paused_by_index_move_forward") == 1 then
                LF_Try_Continue_Or_Create_Monster_Tide(context)
                ScriptLib.SetGroupVariableValue(context,"has_paused_by_index_move_forward",0)
            end
        end

        ScriptLib.PrintContextLog(context,"## [CrystalLink] monster die：怪物死亡，重启时间轴")
        local has_paused_by_minion_die = ScriptLib.GetGroupVariableValue(context,"has_paused_by_minion_die")
        if (has_paused_by_minion_die == 0) then 
            if (defs.monster_create_min_interval ~= 0) then
                ScriptLib.PrintContextLog(context,"## [CrystalLink] monster die：之前没有怪物死亡了，pause一次怪物潮")
                ScriptLib.InitTimeAxis(context,"MONSTER_CREATE_MIN_INTERVAL_AXIS",time_axis.monster_create_min_interval_axis,false)
                LF_Try_Pause_Monster_Tide(context)
                ScriptLib.SetGroupVariableValue(context,"has_paused_by_minion_die",1)
            end
        end
    end
    return 0
end

--有怪死亡时，计分，并更新fever条
function action_monster_die_before_leave_scene(context,evt)
    local monster_eid = evt.source_eid
    local monster_cid = evt.param1
    local is_elite = LF_Is_Elite(context,monster_cid)

    if (is_elite) then
        
        if (LF_Is_Current_Elite_All_Dead(context)) then
            ScriptLib.PrintContextLog(context,"## [CrystalLink] monster die：本轮次的精英怪死完了，精英怪重新开始计时")
            --精英死亡时，重新开始计时
            ScriptLib.EndTimeAxis(context,"ELITE_AXIS")
            ScriptLib.InitTimeAxis(context,"ELITE_AXIS",time_axis.elite_axis,false)
            --精英死亡时，重新开始精英怪预警计时
            ScriptLib.EndTimeAxis(context,"ELITE_PREVIEW_REMINDER_AXIS")
            ScriptLib.InitTimeAxis(context,"ELITE_PREVIEW_REMINDER_AXIS",time_axis.elite_preview_reminder_axis,false)
            
            --精英怪死亡时，可能波次已经推进且场上小怪死完，但小怪是在波次推进之前死完的，无法触发这个事件
            if (LF_Is_Current_Minion_All_Dead(context) and LF_Monster_Tide_Index_Has_Move_Forward(context)) then
                ScriptLib.SetGroupVariableValue(context,"current_tide_all_killed", 1)
            end
            --精英怪死亡，create or continue
            LF_Try_Continue_Or_Create_Monster_Tide(context)
        end
    end
    --根据怪物eid计分
    LF_Update_Score(context,monster_eid)
    return 0
end


--gallery倒计时结束，开始清理玩法
function action_gallery_stop(context,evt)
    --如果gallery时间到结算，则执行一次当前轮次玩法结算流程，否则是其他情况强行中断，直接使地城fail
    ScriptLib.PrintContextLog(context,"## [CrystalLink] gallery stop： Gallery终止，原因为："..evt.param3)
    if evt.param3 == 1 then
        LF_Stop_Play(context)
    end
    return 0
end

--团灭，直接结束玩法
function action_dungeon_all_avatar_die(context,evt)

    --触发事件时做一次校验，只在当前激活的group做清理
    local is_active = ScriptLib.GetGroupVariableValue(context,"is_active")
    if (is_active == 1) then
        ScriptLib.CauseDungeonFail(context)
    end
    return 0
end


--副本结算，结束玩法
function action_dungeon_settle(context,evt)

    --触发事件时做一次校验，只在当前激活的group做清理
    local is_active = ScriptLib.GetGroupVariableValue(context,"is_active")
    if (is_active == 1) then
        
        LF_Immediate_Stop_Play(context)
        ScriptLib.CauseDungeonSuccess(context)
    end

    return 0
end

------------------------------------------------------------------
--辅助方法---------------------------------------------------------
------------------------------------------------------------------


--关卡相关方法-----------------------------------------------------

--初始化玩法，加载操作台等物件
function LF_Init_Play(context)
    
    ScriptLib.PrintContextLog(context,"## [CrystalLink] LF Init Play： ----------玩法初始化开始----------")

    --先将当前group置为激活状态
    ScriptLib.SetGroupVariableValue(context,"is_active",1)
    ScriptLib.CreateGadget(context,{config_id = defs.worktop_id})
    ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.worktop_id, {local_defs.worktop_option})
    --加载环境氛围物件
    ScriptLib.AddExtraGroupSuite(context,base_info.group_id,defs.environment_suite)
    --上半场开场，将team上的半场SGV记录为0
    if (defs.play_round == 1) then  
        LF_Set_Team_Global_Value(context,"SGV_CLEAR_LEVEL",0)
    end
    --如果是下半场，需要直接将振晶石切换到上半场的状态
    if (defs.play_round == 2) then  
        local current_fever = ScriptLib.GetGroupVariableValue(context,"current_fever")
        local fever_level = LF_Get_Fever_Level(context,current_fever)
        LF_Activate_Environment_Gadget(context,fever_level)
    end
    ScriptLib.PrintContextLog(context,"## [CrystalLink] LF Init Play： ----------玩法初始化结束----------")
end

--启动玩法方法，初始化各种东西
function LF_Start_Play(context)

    ScriptLib.PrintContextLog(context,"## [CrystalLink] LF Start Play： ----------玩法启动开始----------")


    --先启动gallery并设置热度条
    ScriptLib.StartGallery(context, defs.gallery_id)
    ScriptLib.InitGalleryProgressScore(context, "fever", defs.gallery_id, fever_progress_table, GalleryProgressScoreUIType.GALLERY_PROGRESS_SCORE_UI_TYPE_CRYSTAL_LINK, GalleryProgressScoreType.GALLERY_PROGRESS_SCORE_NO_DEGRADE)

    --如果是下半场，在开场的时候用current_fever刷新一次fever值，把上半场的fever带过来
    if (defs.play_round == 2) then  
        local current_fever = ScriptLib.GetGroupVariableValue(context,"current_fever")
        LF_Update_Fever(context,current_fever)
    end
    --启动各种时间轴
    ScriptLib.InitTimeAxis(context,"FEVER_AXIS",time_axis.fever_axis,true)
    ScriptLib.InitTimeAxis(context,"MINION_TIDE_AXIS",time_axis.minion_tide_axis,true)
    ScriptLib.InitTimeAxis(context,"ELITE_TIDE_AXIS",time_axis.elite_tide_axis,true)
    ScriptLib.InitTimeAxis(context,"ELITE_AXIS",time_axis.elite_axis,false)
    ScriptLib.InitTimeAxis(context,"ELITE_PREVIEW_REMINDER_AXIS",time_axis.elite_preview_reminder_axis,false)
    ScriptLib.InitTimeAxis(context,"ATTENUATION_INTERVAL_AXIS",time_axis.attenuation_interval_axis,false)
    ScriptLib.InitTimeAxis(context,"ADD_FEVER_CHECK_WINDOW_AXIS",time_axis.add_fever_check_window_axis,true)

    --玩法变量初始化
    --设置怪物潮编号（仅用于内部怪物潮自增计数）
    LF_Set_Current_Tide_Num(context,0)
    --设置怪物潮波次
    LF_Set_Current_Monster_Tide(context,1)
    --设置精英怪波次
    LF_Set_Current_Elite_Index(context,1)


    --local current_monster_tide = LF_Get_Current_Monster_Tide(context)
    --LF_Create_Monster_Tide(context,current_monster_tide)
    --开始生成第一波怪物潮
    LF_Try_Continue_Or_Create_Monster_Tide(context)

    --加载空气墙
    ScriptLib.CreateGadget(context,{config_id = defs.airwall})

    ScriptLib.PrintContextLog(context,"## [CrystalLink] LF Start Play： ----------玩法启动结束----------")
end

--终止玩法方法，关掉各种东西
function LF_Stop_Play(context)
    ScriptLib.PrintContextLog(context,"## [CrystalLink] LF Stop Play： ----------当前玩法轮次开始结束----------")
    LF_Play_Clear_All(context)
    --玩法自然结束时，将group设置为未激活状态
    ScriptLib.SetGroupVariableValue(context,"is_active",0)
    if (defs.play_round == 1) then
        --上半场结束，让下半场开始加载
        ScriptLib.PrintContextLog(context,"## [CrystalLink] LF Stop Play： 当前为上半场挑战结束，切换到下半场")
        --将当前热度值转移到下半场
        local current_fever = ScriptLib.GetGalleryProgressScore(context, "fever", defs.gallery_id)
        ScriptLib.SetGroupVariableValueByGroup(context,"current_fever",current_fever,defs.next_play_group)
        ScriptLib.SetGroupVariableValueByGroup(context,"can_start",1,defs.next_play_group)
        
        LF_Set_Team_Global_Value(context,"SGV_CLEAR_LEVEL",1)
        if ScriptLib.CrystalLinkDungeonTeamSetUp(context,2,{init_gallery_progress=current_fever})~=0 then
            ScriptLib.PrintContextLog(context,"## [CrystalLink] LF Stop Play： 切换队伍失败，直接结束地城")
            ScriptLib.CauseDungeonFail(context)
        end
    else
        --下半场结束，地城结算
        ScriptLib.PrintContextLog(context,"## [CrystalLink] LF Stop Play： 当前为下半场挑战结束，地城结算")
        ScriptLib.CauseDungeonSuccess(context)
    end
    ScriptLib.PrintContextLog(context,"## [CrystalLink] LF Stop Play： ----------当前玩法轮次结束----------")
end


--立刻终止玩法，用于玩家地城退出或团灭等情况
function LF_Immediate_Stop_Play(context,is_success)
    ScriptLib.PrintContextLog(context,"## [CrystalLink] LF Stop Play： ----------玩法需要立刻结束----------")
    LF_Play_Clear_All(context)
    ScriptLib.StopGallery(context,defs.gallery_id,false)
    ScriptLib.PrintContextLog(context,"## [CrystalLink] LF Stop Play： ----------玩法结束，地城结算----------")
end


--清理玩法数据方法，将当前开启的物件、怪物、时间轴全部清空
function LF_Play_Clear_All(context)
    ScriptLib.PrintContextLog(context,"## [CrystalLink] LF Clear Play All： ----------开始清理当前玩法数据----------")
    --清理一下操作台和环境物件，防止其他问题
	--ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.airwall)
	ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.worktop_id)
    ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, defs.environment_suite)
    --玩法结束，清理掉当前的怪物潮和精英怪
    local current_monster_tide = LF_Get_Current_Monster_Tide(context)
    ScriptLib.KillMonsterTide(context, base_info.group_id, current_monster_tide)

    --清干净场上残存的怪物
    local alive_monster_list = ScriptLib.GetGroupAliveMonsterList(context,base_info.group_id)
    for i = 1,#alive_monster_list do
        ScriptLib.PrintContextLog(context,"## [CrystalLink] LF Clear Play All： 清理在场monster "..alive_monster_list[i])
        ScriptLib.RemoveEntityByConfigId(context,base_info.group_id,EntityType.MONSTER,alive_monster_list[i])
    end

    --结束各个时间轴
    ScriptLib.EndTimeAxis(context,"FEVER_AXIS")
    ScriptLib.EndTimeAxis(context,"MINION_TIDE_AXIS")
    ScriptLib.EndTimeAxis(context,"ELITE_AXIS")
    ScriptLib.EndTimeAxis(context,"ELITE_TIDE_AXIS")
    ScriptLib.EndTimeAxis(context,"ELITE_PREVIEW_REMINDER_AXIS")
    ScriptLib.EndTimeAxis(context,"ATTENUATION_INTERVAL_AXIS")
    ScriptLib.EndTimeAxis(context,"ADD_FEVER_CHECK_WINDOW_AXIS")
    ScriptLib.EndTimeAxis(context,"MONSTER_CREATE_MIN_INTERVAL_AXIS")
    ScriptLib.PrintContextLog(context,"## [CrystalLink] LF Clear Play All： ----------清理当前玩法数据结束----------")

end

--启动一波指定ID的怪物潮，需要传入该波怪物潮的ID（具体配置在miscs中定义）
function LF_Create_Monster_Tide(context,monster_tide_index)
    ScriptLib.PrintContextLog(context,"## [CrystalLink] Create Monster Tide： ----------开始生成一波怪物潮，怪物潮索引为 = "..monster_tide_index.."----------")
    local monster_config_id_list = monster_tide[monster_tide_index]

    --增加怪物潮的计数，下一次开启时index会+1，防止索引到同一波怪物潮
    local tide_num = LF_Get_Current_Tide_Num(context)    
    LF_Set_Current_Tide_Num(context,tide_num+1)

    local min = monster_tide_count[monster_tide_index].min
    local max = monster_tide_count[monster_tide_index].max
    ScriptLib.AutoMonsterTide(context, tide_num+1, base_info.group_id, monster_config_id_list, 0, min ,max)

    --创建一波怪物潮后，将当前怪物潮的index记下来，方便怪物潮指针前进后的比对
    ScriptLib.SetGroupVariableValue(context,"last_created_tide_index",monster_tide_index)
    --重置记录monstertide的变量
    ScriptLib.SetGroupVariableValue(context,"current_tide_all_killed",0)
    
    ScriptLib.PrintContextLog(context,"## [CrystalLink] Create Monster Tide： ----------怪物潮生成结束----------")
    

end

--召唤指定ID的精英怪组
function LF_Create_Elite_Monster(context,elite_index)
    ScriptLib.PrintContextLog(context,"## [CrystalLink] Create Elite Monster： ----------开始生成精英怪，精英怪索引为 = "..elite_index.."----------")
    
    local elite_list = elite[elite_index]

    math.randomseed(ScriptLib.GetServerTime(context))
    local point_index=math.random(#elite_born_points)
    local points = elite_born_points[point_index]

    for i = 1,#elite_list do
        local born_point = LF_Get_Point(context,points[i])
        ScriptLib.CreateMonsterByConfigIdByPos(context, elite_list[i],born_point.pos,born_point.rot)
    end

    ScriptLib.PrintContextLog(context,"## [CrystalLink] Create Elite Monster： ----------精英怪生成结束----------")
end


--以下为怪物潮的暂停、继续、生成操作。为了保证逻辑之间耦合正确，所有对怪物潮的操作都要走这2个接口
--尝试暂停怪物潮
function LF_Try_Pause_Monster_Tide(context)
    ScriptLib.PrintContextLog(context,"## [CrystalLink]LF_Try_Pause_Monster_Tide：尝试暂停怪物潮")
    LF_Push_Pause_Operation(context)
    ScriptLib.PauseAutoMonsterTide(context, base_info.group_id, LF_Get_Current_Tide_Num(context))
end

--尝试重启或新建当前怪物潮
function LF_Try_Continue_Or_Create_Monster_Tide(context)
    ScriptLib.PrintContextLog(context,"## [CrystalLink]LF_Try_Continue_Or_Create_Monster_Tide：尝试重启或新建怪物潮")
    LF_Pop_Pause_Operation(context)
    if (LF_Is_Pause_Operation_Stack_Empty(context)) then
        if (LF_Is_Current_Tide_All_Killed(context)) then
            ScriptLib.PrintContextLog(context,"## [CrystalLink]LF_Try_Continue_Or_Create_Monster_Tide：当前波次怪物死完，新建怪物潮")
            local current_monster_tide = LF_Get_Current_Monster_Tide(context)
            LF_Create_Monster_Tide(context,current_monster_tide)
        else
            ScriptLib.PrintContextLog(context,"## [CrystalLink]LF_Try_Continue_Or_Create_Monster_Tide：当前波次怪物未死完，重启怪物潮")
            ScriptLib.ContinueAutoMonster(context, base_info.group_id, LF_Get_Current_Tide_Num(context))
        end

    end
end


--尝试pause，向栈内push一个pause操作
function LF_Push_Pause_Operation(context)
    ScriptLib.ChangeGroupVariableValue(context,"pause_operation_num",1)
end

--尝试重启或新建怪物潮，从栈内pop一个pause操作
function LF_Pop_Pause_Operation(context)
    if (not LF_Is_Pause_Operation_Stack_Empty(context)) then
        ScriptLib.ChangeGroupVariableValue(context,"pause_operation_num",-1)
    end
end

--返回Pause操作栈是否为空
function LF_Is_Pause_Operation_Stack_Empty(context)
    local pause_operation_num = ScriptLib.GetGroupVariableValue(context,"pause_operation_num")
    ScriptLib.PrintContextLog(context,"## [CrystalLink]LF_Is_Pause_Operation_Stack_Empty: Pause指令计数为"..pause_operation_num)
    return pause_operation_num == 0
end

--通用类方法-------------------------------------------------------

--切换场上的场景氛围物件状态
function LF_Activate_Environment_Gadget(context,fever_level)
    ScriptLib.PrintContextLog(context,"## [CrystalLink] Activate Environment Gadget： ----------激活场景物件！----------")

    if (ReactionGems == nil) then
        return 0
    end

    if (fever_level < #fever_progress_table-2) then
        for i = 1, fever_level do 
            ScriptLib.SetGroupGadgetStateByConfigId(context,base_info.group_id,ReactionGems[i][1],201)
            ScriptLib.SetGroupGadgetStateByConfigId(context,base_info.group_id,ReactionGems[i][2],201)
        end
    else
        for i = 1, #ReactionGems do
            ScriptLib.SetGroupGadgetStateByConfigId(context,base_info.group_id,ReactionGems[i][1],202)
            ScriptLib.SetGroupGadgetStateByConfigId(context,base_info.group_id,ReactionGems[i][2],202)
        end
    end

    ScriptLib.PrintContextLog(context,"## [CrystalLink] Activate Environment Gadget： ----------激活场景物件结束！----------")
end

--给team挂global value，角色处理各种特殊效果
function LF_Set_Team_Global_Value(context,gv_name,value)
    ScriptLib.PrintContextLog(context,"## [CrystalLink] Set Team GV： ----------开始向team写gv: "..gv_name.." = "..value.."----------")
    local uid = ScriptLib.GetSceneOwnerUid(context)
    ScriptLib.SetTeamServerGlobalValue(context, uid, gv_name, value)
    ScriptLib.PrintContextLog(context,"## [CrystalLink] Set Team GV： ----------设置team gv结束----------")
end


-----CRUD类方法----------------------------------------------------

--更新fever条，fever_delta为fever条改变值
--增补需求：单位m时间内，获取的fever的次数存在上限，超过上限后，无法继续增加fever
--增补需求：超过一定时间未增加fever后，fever开始衰减
function LF_Update_Fever(context,fever_delta)

    --增加fever的情况
    if (fever_delta>0) then
        local add_fever_times = ScriptLib.GetGroupTempValue(context,"add_fever_times",{})
        --如果增加的次数小于上限，则允许增加，并次数+1
        if (add_fever_times<defs.add_fever_upper_bound) then
            ScriptLib.AddGalleryProgressScore(context, "fever", defs.gallery_id, fever_delta)
            ScriptLib.SetGroupTempValue(context,"add_fever_times",add_fever_times+1,{})
            --增加了fever，重置一次衰减时间轴，并修正temp value，不允许fever降低
            ScriptLib.EndTimeAxis(context,"ATTENUATION_INTERVAL_AXIS")
            ScriptLib.InitTimeAxis(context,"ATTENUATION_INTERVAL_AXIS",time_axis.attenuation_interval_axis,false)
            ScriptLib.SetGroupTempValue(context,"can_attenuate",0,{})
        else
        end
    else
    --减少fever的情况
        local can_attenuate = ScriptLib.GetGroupTempValue(context,"can_attenuate",{})
        if (can_attenuate == 1) then
            ScriptLib.AddGalleryProgressScore(context, "fever", defs.gallery_id, fever_delta)
        else
        end
    end
end

--更新积分，需要传入目标monster的entity id
function LF_Update_Score(context,monster_eid)
    local uid_list = ScriptLib.GetSceneUidList(context)
    local monster_id = ScriptLib.GetMonsterIdByEntityId(context,monster_eid)
    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["uid"] = uid_list[1], ["monster_id"] = monster_id})
end


function LF_Get_Fever_Level(context,fever)
    for i = 1, #fever_progress_table-1 do
        local lower_bound = fever_progress_table[i]
        local higher_bound = fever_progress_table[i+1]
        if fever>=lower_bound and fever<higher_bound then
            return i-1
        end
    end
    return -1
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

--设置当前大怪的进度index
function LF_Set_Current_Elite_Index(context,index)
    --做一下校验，如果超出elite范围，则强制限定到elite范围内
    if (index > #elite) then
        index = #elite
    end
    ScriptLib.SetGroupVariableValue(context,"current_elite",index)
end

--获取当前大怪的进度index
function LF_Get_Current_Elite_Index(context)
    local elite_index = ScriptLib.GetGroupVariableValue(context,"current_elite")
    return elite_index
end

--设置当前怪物潮波次的index
function LF_Set_Current_Monster_Tide(context,index)
    --做一下校验，如果超出monster_tide范围，则强制限定到monster_tide范围内
    if (index > #monster_tide) then
        index = #monster_tide
    end
    ScriptLib.SetGroupVariableValue(context,"current_monster_tide",index)
end

--获取当前怪物潮波次的index
function LF_Get_Current_Monster_Tide(context)
    local monster_tide = ScriptLib.GetGroupVariableValue(context,"current_monster_tide")
    return monster_tide
end


--设置当前怪物潮的波次数（注意这不是怪物潮的index，只是用来给怪物潮进行自增计数的变量）。每次创建怪物潮会使波次数+1，方便索引新的怪物潮
function LF_Set_Current_Tide_Num(context,value)
    ScriptLib.SetGroupTempValue(context, "MinionTide", value, {})
end

--获取当前怪物潮的波次数（注意这不是怪物潮的index，只是用来给怪物潮进行自增计数的变量）。每次创建怪物潮会使波次数+1，方便索引新的怪物潮
function LF_Get_Current_Tide_Num(context)
    return ScriptLib.GetGroupTempValue(context, "MinionTide", {})
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
    for i = 1,#gadgets do
        if (gadgets[i].config_id == config_id) then
            return gadgets[i].gadget_id
        end
    end
    return 0
end


--返回一个指定configid的怪物是否是大怪
function LF_Is_Elite(context,monster_cid)
    for i = 1,#elite do
        for j = 1,#elite[i] do
            if monster_cid == elite[i][j] then
                return true
            end
        end
    end
    return false
end

--返回当前场上精英怪是否全死了
function LF_Is_Current_Elite_All_Dead(context)

    local alive_monster_list = ScriptLib.GetGroupAliveMonsterList(context,base_info.group_id)
    for i = 1, #alive_monster_list do
        if (LF_Is_Elite(context,alive_monster_list[i])) then
            return false
        end
    end
    return true
end

--返回当前场上小怪是否全死了
function LF_Is_Current_Minion_All_Dead(context)

    local alive_monster_list = ScriptLib.GetGroupAliveMonsterList(context,base_info.group_id)
    for i = 1, #alive_monster_list do
        if (not LF_Is_Elite(context,alive_monster_list[i])) then
            return false
        end
    end
    return true
end



--返回当前场上是否已经没怪了
function LF_Is_Monster_All_Dead(context)
    return #ScriptLib.GetGroupAliveMonsterList(context,0) == 0
end


function LF_Get_Current_Tide_Max(context)
    local current_tide = LF_Get_Current_Monster_Tide(context)
    return monster_tide_count[current_tide].max
end


--返回怪物潮index是否已经推进
function LF_Monster_Tide_Index_Has_Move_Forward(context)
    local last_created_tide_index = ScriptLib.GetGroupVariableValue(context,"last_created_tide_index")
    local current_tide_index = LF_Get_Current_Monster_Tide(context)
    if (last_created_tide_index == current_tide_index) then
        return false
    end
    return true
end

function LF_Is_Current_Tide_All_Killed(context)
    return ScriptLib.GetGroupVariableValue(context,"current_tide_all_killed") == 1
end

------------------------------------------------------------------
--server lua call-------------------------------------------------

function SLC_Add_Fever(context)
    ScriptLib.PrintContextLog(context,"## [CrystalLink]SLC_Add_Fever：---------SLC: 连线buff触发，fever增加！---------")
    LF_Update_Fever(context,defs.buff_fever)
    ScriptLib.PrintContextLog(context,"## [CrystalLink]SLC_Update buff Icon State：---------SLC: 连线buff触发处理完成---------")
    return 0
end


------------------------------------------------------------------
Initialize()