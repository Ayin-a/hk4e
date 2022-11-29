--2.5换人挑战玩法
--ServerUploadTool Save to [/root/env/data/lua/common/V2_5]
--miscs配置内容
--[[
击杀数量，每击杀一定数量的怪物，换一个刷怪池子，到最后一个池子时无限刷怪
没有精英怪
一关内最多5个池子，难度会逐渐提升，一关定时4分钟，
普通玩家可能只能刷到池子3，能拿到所有奖励，头部玩家能刷到池子5，后面的2个池子就是用于给头部玩家进行
--fever进度升级节点
local fever_progress_table = {
    0,40,120,270,570,800
}
--各等级fever的下降速率
local fever_attenuation = {
    -1,-1,-2,-2,-3
}
--地城对应的天气配置
local DungeonWeather = { 
    10039,10040,10041,10042 
} 

--怪物潮
local monster_tide = {
    [1] = {2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2048,2049,2050,2051},
    [2] = {2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2052,2053,2054,2055},
    [3] = {2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2056,2057,2058,2059},
    [4] = {2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2056,2057,2058,2059},
    [5] = {2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2056,2057,2058,2059},
}


local defs = {
    group_id = 235801002,
    worktop_id = 123,   --操作台对应的操作数
    air_wall = 2005,    --场内空气墙对应的ConfigID
    minion_fever = 5,   --普通怪物死亡增加的热度值
    game_time = 360,    --挑战时间
    min_monster_count = 5, --场上最少怪物数量
    max_monster_count = 5, --场上最多怪物数量
    environment_suite = 4, --环境灯光所在的Suite
    noswitch_punishment_interval = 30, --不换人开始有惩罚的最小时间间隔
    num_killed_per_tide = {20, 20, 20, 20, 0} --每组怪物潮对应需要的杀怪数量
}

--配置一个region,覆盖场内的战斗空间，用来在玩家进入时创建空气墙
]]


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
    --用于记录当前怪物潮中的击杀数量，当击杀数量达到配置数量时，加载下一波怪物潮
    table.insert(variables,{ config_id=50000005,name = "num_current_minion_killed", value = 0})
    --用于记录是否已经创建空气墙，防止玩家卡在空气墙外
    table.insert(variables,{ config_id=50000006,name = "is_air_wall_created", value = 0})
    --用于记录当前怪物潮是否处于切换状态
    table.insert(variables,{ config_id=50000007,name = "is_tide_being_switched", value = 0})
end

------------------------------------------------------------------

--group load后，加载操作台选项
function action_group_load(context,evt)
    ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.worktop_id, {local_defs.worktop_option})

    --开场就直接加载氛围物件，不要等玩家开启挑战
    --加载环境氛围物件
    ScriptLib.AddExtraGroupSuite(context,defs.group_id, defs.environment_suite)
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

--纯数量刷怪，不再走刷怪Tick
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
        ScriptLib.ShowTemplateReminder(context, local_defs.team_noswitch_pubishment_reminder, {0})
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


--当前的怪物潮刷完的时候，重置当前的怪物潮或者刷下一波怪物潮
function action_monster_tide_die(context,evt)
--    ScriptLib.PrintContextLog(context,"FS: Tide Clear"..evt.param1)
--    local is_being_switched = ScriptLib.GetGroupVariableValue(context,"is_tide_being_switched")
--   ScriptLib.PrintContextLog(context,"FS: Tide Switch"..is_being_switched)
    local current_monster_tide = LF_Get_Current_Monster_Tide(context)
    local current_tide_list = monster_tide[current_monster_tide]
--    ScriptLib.PrintContextLog(context,"FS: Tide Max"..(#current_tide_list))
    --不在刷够怪物切换怪物潮的过程中
    --如果当前怪物潮已经被杀完了
    if evt.param1 >= #current_tide_list then
        if defs.num_killed_per_tide[current_monster_tide] == 0 then
            LF_Refresh_Monster_Tide(context,"Current")  
        else 
            LF_Refresh_Monster_Tide(context,"Next")
        end
    end
    return 0
end

--有怪死亡时，计分，并更新fever条,怪物死亡只处理积分
function action_monster_die_before_leave_scene(context,evt)
    local monster_eid = evt.source_eid
    local monster_cid = evt.param1
    local fever_ratio = ScriptLib.GetGroupVariableValue(context,"fever_ratio")
    local monster_fever = monsters[monster_cid].kill_score
    LF_Update_Fever(context,monster_fever*fever_ratio)
    LF_Update_Score(context,monster_eid)
    return 0  
end


function LF_Refresh_Monster_Tide(context, refresh_mode)
    local current_monster_tide_index = LF_Get_Current_Monster_Tide(context)
--  ScriptLib.KillMonsterTide(context, defs.group_id, LF_Get_Current_Tide_Num(context))
--    ScriptLib.SetGroupVariableValue(context,"is_tide_being_switched",1)
    if refresh_mode == "Current" then 
        LF_Set_Current_Monster_Tide(context, current_monster_tide_index)
        LF_Create_Monster_Tide(context,current_monster_tide_index)
        ScriptLib.PrintContextLog(context,"FS: Tide Clear Refresh Current")
    end
    if refresh_mode == "Next" then 
        LF_Set_Current_Monster_Tide(context, current_monster_tide_index + 1)
        LF_Create_Monster_Tide(context,current_monster_tide_index + 1)
        ScriptLib.PrintContextLog(context,"FS: Tide Clear Refresh Next")
    end
--    LF_Set_Current_Tide_Minion_Killed(context,0)
--    ScriptLib.SetGroupVariableValue(context,"is_tide_being_switched",0)
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
	if uid_list and nil~=uid_list[1]then
		ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["uid"] = uid_list[1], ["noswitch_time"] = defs.noswitch_punishment_interval})
	end

    --清除当前显示的换队惩罚的reminder
    
    local uid_list = ScriptLib.GetSceneUidList(context)
    local ret = ScriptLib.RevokePlayerShowTemplateReminder(context, local_defs.team_noswitch_pubishment_reminder, {})
    ScriptLib.RevokePlayerShowTemplateReminder(context, local_defs.punish_inAdvance_reminder, {})

    ScriptLib.PrintContextLog(context,"FS: Clear reminder result"..ret)

    --换队的时候修改team的gv，重新刷一下新的avatar身上的加成效果
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
    LF_Set_Current_Tide_Num(context,0)
    LF_Set_Current_Monster_Tide(context,1)
    LF_Create_Monster_Tide(context,1)
    --启动玩法时给第一队挂一下gv，防止一开始就受到惩罚；并开启时间轴开始计时
    LF_Set_Team_Global_Value(context,local_defs.team_noswitch_pubishment,0)
    ScriptLib.InitTimeAxis(context,"NOSWITCH_PUNISHMENT_AXIS",time_axis.noswitch_punishment_axis,false)
	ScriptLib.InitTimeAxis(context,"NOSWITCH_PUNISHMENT_INADVANCE_AXIS",time_axis.noswitch_punishment_inAdvance_axis,false)
	--玩法开始的时候给服务端发送消息，让客户端显示惩罚倒计时UI
    local uid_list = ScriptLib.GetSceneUidList(context)
	if uid_list and nil~=uid_list[1]then
		ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["uid"] = uid_list[1], ["noswitch_time"] = defs.noswitch_punishment_interval})
	end
end

--终止玩法方法，关掉各种东西
function LF_Stop_Play(context)
    
    local current_monster_tide = LF_Get_Current_Monster_Tide(context)
    --清理一下空气墙，防止其他问题
	ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, defs.air_wall)
    --玩法结束，清理掉当前的怪物潮
    ScriptLib.KillMonsterTide(context, defs.group_id, current_monster_tide)
    ScriptLib.StopGallery(context, defs.gallery_id,true)
    ScriptLib.EndTimeAxis(context,"FEVER_AXIS")
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
    local current_monster_tide = LF_Get_Current_Monster_Tide(context)
    ScriptLib.AutoMonsterTide(context, tide_num+1, defs.group_id, monster_config_id_list, #monster_config_id_list, tide_suite_config[current_monster_tide].min, tide_suite_config[current_monster_tide].max)
end

--刷新指定


--通用类方法-------------------------------------------------------

--切换场上的场景氛围物件状态
function LF_Activate_Environment_Gadget(context,fever_level)
    ScriptLib.PrintContextLog(context,"FS: Activate environment gadgets! Fever Level_"..fever_level)
    --根据当前的fever等级，改变天气
    if (fever_level>local_defs.environment_change_level) then
        ScriptLib.PrintContextLog(context,"FS: Changing environment weather!")
        local ret = ScriptLib.SetWeatherAreaState(context, DungeonWeather[fever_level],1)
        ScriptLib.PrintContextLog(context,"FS: The result of starting weather ".. DungeonWeather[fever_level].."is "..ret)
        local ret = ScriptLib.EnterWeatherArea(context, DungeonWeather[fever_level])
        ScriptLib.PrintContextLog(context,"FS: The result of changing weather".. DungeonWeather[fever_level].."is "..ret)
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
--    ScriptLib.PrintContextLog(context,"FS: Update Fever!")
    ScriptLib.AddGalleryProgressScore(context, "fever", defs.gallery_id, fever_delta)
end

--更新积分，需要传入目标monster的entity id
function LF_Update_Score(context,monster_eid)
--    ScriptLib.PrintContextLog(context,"FS: Update Score!")
    local uid_list = ScriptLib.GetSceneUidList(context)
    local monster_id = ScriptLib.GetMonsterIdByEntityId(context,monster_eid)
	if uid_list and nil~=uid_list[1]then
		ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["uid"] = uid_list[1], ["monster_id"] = monster_id})
	end
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

--设置当前怪物潮波次的index
function LF_Set_Current_Monster_Tide(context,index)
    ScriptLib.SetGroupVariableValue(context,"current_monster_tide",index)
end

--获取当前怪物潮波次的index
function LF_Get_Current_Monster_Tide(context)
    local monster_tide = ScriptLib.GetGroupVariableValue(context,"current_monster_tide")
    return monster_tide
end

--2.5新增
--获取当前怪物潮的击杀数量
function LF_Get_Current_Tide_Minion_Killed(context)
    local num_minion_killed = ScriptLib.GetGroupVariableValue(context,"num_current_minion_killed")
    return num_minion_killed 
end

--增加当前怪物潮的击杀数量
function LF_Add_Current_Tide_Minion_Killed(context, num)
    ScriptLib.ChangeGroupVariableValue(context,"num_current_minion_killed",num)
end

--设置当前怪物潮的击杀数量
function LF_Set_Current_Tide_Minion_Killed(context, num)
    ScriptLib.SetGroupVariableValue(context,"num_current_minion_killed", num)
end

--根据gadget的config_id查询gadget_id
function LF_Get_Gadget_Id_By_Config_Id(context, config_id)
    return gadgets[config_id].gadget_id
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
