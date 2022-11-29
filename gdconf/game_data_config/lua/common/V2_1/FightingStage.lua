--2.1换人挑战玩法

--miscs

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
--
--local elite_born_points = {
--    3001,3002,3003,3004,3005,3006,3007
--}


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

    noswitch_punishment_axis = {defs.noswitch_punishment_interval}

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
    
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
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
end

------------------------------------------------------------------

--group load后，加载操作台选项
function action_group_load(context,evt)
    ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.worktop_id, {local_defs.worktop_option})

    --开场就直接加载氛围物件，不要等玩家开启挑战
    --加载环境氛围物件
    ScriptLib.AddExtraGroupSuite(context,defs.group_id,defs.environment_suite)
    --启动第一个地城天气
    --local ret = ScriptLib.SetWeatherAreaState(context, DungeonWeather[1],1)
    --ScriptLib.PrintContextLog(context,"FS: The result of starting weather".. DungeonWeather[1].."is "..ret)
    --ret = ScriptLib.EnterWeatherArea(context, DungeonWeather[1])
    --ScriptLib.PrintContextLog(context,"FS: The result of entering weather".. DungeonWeather[1].."is "..ret)
   
    return 0
end

--按下操作台按键，启动玩法
function action_select_option(context,evt)
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
        local current_monster_tide = LF_Get_Current_Monster_Tide(context)
        LF_Set_Current_Monster_Tide(context,current_monster_tide+1)
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
        ScriptLib.SetGroupVariableValue(context,"is_elite_on_ground",1)
        ScriptLib.PauseAutoMonsterTide(context, defs.group_id, LF_Get_Current_Tide_Num(context))
    end

    --fever条tick，扣分
    if (evt.source_name == "FEVER_AXIS") then
        LF_Update_Fever(context,LF_Get_Fever_Subnum(context))
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


--当前的怪物潮刷完的时候，重置当前的怪物潮
function action_monster_tide_die(context,evt)
    local current_monster_tide = LF_Get_Current_Monster_Tide(context)
    --如果当前怪物潮已经被杀完了，且精英怪不在场
    if (evt.param1 >= #monster_tide[current_monster_tide]) then
        --记录一下当前怪物潮结束，精英怪死亡时需要手动打开一次
        ScriptLib.SetGroupVariableValue(context,"is_current_minion_tide_end",1)
        local is_elite_on_ground = ScriptLib.GetGroupVariableValue(context,"is_elite_on_ground")
        ScriptLib.PrintContextLog(context,"FS: Current tide ends, is elite on ground?? "..is_elite_on_ground)
        if (is_elite_on_ground == 0) then
            --精英不在场，才能开一个新的怪物潮
            ScriptLib.PrintContextLog(context,"FS: No elite on ground. Create a new monster tide!")
            ScriptLib.KillMonsterTide(context, defs.group_id, LF_Get_Current_Tide_Num(context))
            LF_Create_Monster_Tide(context,current_monster_tide)
            ScriptLib.SetGroupVariableValue(context,"is_current_minion_tide_end",0)
        end
    end
    return 0
end

--有怪死亡时，计分，并更新fever条
function action_monster_die_before_leave_scene(context,evt)
    local monster_eid = evt.source_eid
    local monster_cid = evt.param1
    local is_elite = LF_Is_Elite(context,monster_cid)
    local fever_ratio = ScriptLib.GetGroupVariableValue(context,"fever_ratio")
    if (not is_elite) then
        LF_Update_Fever(context,defs.minion_fever*fever_ratio)
    else
        LF_Update_Fever(context,defs.elite_fever*fever_ratio)
        
        --精英死亡时，重新开始计时
        ScriptLib.EndTimeAxis(context,"ELITE_AXIS")
        ScriptLib.InitTimeAxis(context,"ELITE_AXIS",time_axis.elite_axis,false)


        ScriptLib.SetGroupVariableValue(context,"is_elite_on_ground",0)
        local is_current_minion_tide_end = ScriptLib.GetGroupVariableValue(context,"is_current_minion_tide_end")

        if (is_current_minion_tide_end == 0) then
        --当前怪物潮没有结束，则恢复怪物潮即可
            ScriptLib.PrintContextLog(context,"FS: elite died. Restart monster tide")
            --性能优化：精英怪死亡时，恢复怪物潮
            ScriptLib.ContinueAutoMonster(context, defs.group_id, LF_Get_Current_Tide_Num(context))
        else
        --当前怪物潮已经结束了，但因为精英在场所以被卡住了。精英死亡时，手动开启新的怪物潮
            ScriptLib.PrintContextLog(context,"FS: elite died， but current tide is dead. Start a new tide!")
            ScriptLib.KillMonsterTide(context, defs.group_id, LF_Get_Current_Tide_Num(context))
            local current_monster_tide = LF_Get_Current_Monster_Tide(context)
            LF_Create_Monster_Tide(context,current_monster_tide)
            ScriptLib.SetGroupVariableValue(context,"is_current_minion_tide_end",0)
        end
    end
    LF_Update_Score(context,monster_eid)
    return 0
end

--玩家换队时触发，启动一个一定时间的时间轴，时间轴tick时修改global value给玩家挂debuff
function action_sumo_switch_team(context,evt)

    --刚刚换队，先清掉team上的换队惩罚global value，并开始计时，如果tick时没有换队，则挂上惩罚标记gv
    LF_Set_Team_Global_Value(context,local_defs.team_noswitch_pubishment,0)
    ScriptLib.EndTimeAxis(context,"NOSWITCH_PUNISHMENT_AXIS")
    ScriptLib.InitTimeAxis(context,"NOSWITCH_PUNISHMENT_AXIS",time_axis.noswitch_punishment_axis,false)

    --换队增加热情值
    LF_Update_Fever(context,defs.switch_team_fever)

    --换队的时候给服务端发送消息，让客户端显示惩罚倒计时UI
    local uid_list = ScriptLib.GetSceneUidList(context)
    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["uid"] = uid_list[1], ["noswitch_time"] = defs.noswitch_punishment_interval})

    --清除当前显示的换队惩罚的reminder
    
    local uid_list = ScriptLib.GetSceneUidList(context)
    local ret = ScriptLib.RevokePlayerShowTemplateReminder(context, local_defs.team_noswitch_pubishment_reminder, {})

    ScriptLib.PrintContextLog(context,"FS: Clear reminder result"..ret)

    --换队的时候修改team的gv，重新刷一下新的avatar身上的加成效果
    --ScriptLib.PrintContextLog(context,"FS: team has changed, team_has_change = 1")
    LF_Set_Team_Global_Value(context,local_defs.team_has_switch,1)
    
    ScriptLib.SetGroupVariableValue(context,"is_noswitch_punishment",0)

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
    --玩法开始的时候给服务端发送消息，让客户端显示惩罚倒计时UI
    local uid_list = ScriptLib.GetSceneUidList(context)
    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["uid"] = uid_list[1], ["noswitch_time"] = defs.noswitch_punishment_interval})
    --加载空气墙
    ScriptLib.CreateGadget(context,{config_id = defs.airwall})
end

--终止玩法方法，关掉各种东西
function LF_Stop_Play(context)
    
    local current_monster_tide = LF_Get_Current_Monster_Tide(context)
    --清理一下空气墙，防止其他问题
	ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, defs.airwall)
    --玩法结束，清理掉当前的怪物潮
    ScriptLib.KillMonsterTide(context, defs.group_id, current_monster_tide)
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
    ScriptLib.PrintContextLog(context,"FS: Creating monster tide ["..monster_tide_index.."]")
    local monster_config_id_list = monster_tide[monster_tide_index]

    --增加怪物潮的计数，下一次开启时index会+1，防止索引到同一波怪物潮
    local tide_num = LF_Get_Current_Tide_Num(context)    
    LF_Set_Current_Tide_Num(context,tide_num+1)

    ScriptLib.AutoMonsterTide(context, tide_num+1, defs.group_id, monster_config_id_list, #monster_config_id_list, defs.min_monster_count,defs.max_monster_count)

end

--在指定的point，召唤一个指定ID的精英怪
function LF_Create_Elite_Monster(context,elite_index)
    local elite_config_id = elite[elite_index]
    local elite_born = LF_Get_Point(context,elite_born_points[elite_index])
    ScriptLib.PrintContextLog(context,"FS: Creating elite ["..elite_index.."] at point "..elite_born.pos.x..","..elite_born.pos.y..","..elite_born.pos.z)
    ScriptLib.CreateMonsterByConfigIdByPos(context, elite_config_id, elite_born.pos, elite_born.rot)
end



--通用类方法-------------------------------------------------------

--切换场上的场景氛围物件状态
function LF_Activate_Environment_Gadget(context,fever_level)
    ScriptLib.PrintContextLog(context,"FS: Activate environment gadgets!")
    --根据当前的fever等级，改变天气
    if (fever_level>local_defs.environment_change_level) then
        --ScriptLib.PrintContextLog(context,"FS: Changing environment weather!")
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
        if monster_cid == elite[i] then
            return true
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