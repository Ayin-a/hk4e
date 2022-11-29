--[[======================================
||	filename:	HypostasisChallenge
||	owner: 		zhangchi.chen
||	description:	3.2无相挑战活动
||	LogName:	HypostasisChallenge
||	Protection:	
=======================================]]--

local local_defs = {
    worktop_option = 175,

}

local Tri = {
    
    [1] = { name = "group_load", config_id = 40000000, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    [2] = { name = "select_option", config_id = 40000001, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
    [3] = { name = "dungeon_all_avatar_die", config_id = 40000002, event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_dungeon_all_avatar_die", action = "action_dungeon_all_avatar_die", trigger_count = 0},
    [4] = { name = "dungeon_any_monster_die", config_id = 40000003, event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_any_monster_die", trigger_count = 0},
    [5] = { name = "leave_region", config_id = 40000004, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", trigger_count = 0},
    [6] = { name = "tri_dungeon_settle", config_id = 40000005, event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_dungeon_settle", trigger_count = 0},
    [8] = { name = "time_axis_pass", config_id = 40000007, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
    [11] = { name = "variable_change", config_id = 40000010, event = EventType.EVENT_VARIABLE_CHANGE, source = "GALLERY_STATE", condition = "", action = "action_variable_change", trigger_count = 0 },
}

local Reminder_Map = {
    [1] = 470410101,
    [2] = 470410102,
    [3] = 470410103,
    [4] = 470410104,
    [5] = 470410105,
    [6] = 470410106,
    [7] = 470410107,
    [8] = 470410108,
    [9] = 470410109,
    [10] = 470410110,
    [11] = 470410111,
    [12] = 470410112,
    [13] = 470410113,
    [14] = 470410114
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
    table.insert(variables,{ config_id=50000001,name = "seed_self_destroy", value = 0, no_refresh = true})
    --table.insert(variables,{ config_id=50000002,name = "slime_self_destroy", value = 0, no_refresh = true})
end

------------------------------------------------------------------


--group load后，根据当前玩法状态，恢复物件表现
function action_group_load(context,evt)
    ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] action_group_load：group加载，恢复玩法状态")
    LF_Init_Play(context)
    return 0
end

--判断是否所有玩家都死了
function condition_dungeon_all_avatar_die(context,evt)
    local uid_list = ScriptLib.GetSceneUidList(context)

    local ret = 0
    
    for i,v in ipairs(uid_list) do
        local is_all_dead = ScriptLib.IsPlayerAllAvatarDie(context, v)
        if true ~= is_all_dead then
            ret = -1
            break
        end
    end
    
    if ret ~= 0 then
        return false
    end
    
    return true
end

--主动退出地城
function action_dungeon_settle(context,evt)
    if ScriptLib.IsGalleryStart(context, defs.gallery_id) then
        if 0 ~= ScriptLib.StopGalleryByReason(context,defs.gallery_id,4) then 
            ScriptLib.PrintContextLog(context,"Stop Gallery失败")
        else
            ScriptLib.PrintContextLog(context,"Stop Gallery成功")
            LF_Unload_Group(context)
        end
    end
        --LF_Stop_Play(context, false)
    return 0
end

function action_dungeon_all_avatar_die(context,evt)
    ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] action_dungeon_all_avatar_die: 所有玩家的所有角色都死掉")
    LF_Stop_Play(context,false)

    return 0
end

function action_any_monster_die(context,evt)
    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["kill_monster_cnt"] = 1})
    
    return 0
end


--玩家与选项交互，开启挑战
function action_select_option(context,evt)
    ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] action_select_option: 玩家与选项交互")
    LF_Set_InitGadgets(context,false)
    return 0
end

function action_variable_change(context,evt)
    ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] 设置参数")
    ScriptLib.PrintContextLog(context,tostring(evt.param1))
    if evt.param1 == 1 then
        LF_Start_Play(context)
    elseif evt.param1 == 2 then
        LF_Stop_Play(context, true)
    elseif evt.param1 == 3 then
        LF_Stop_Play(context, false)
    end
    return 0
end


function  action_leave_region(context,evt)--标记
    ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] leave region")
    if (ScriptLib.IsGalleryStart(context, defs.gallery_id) and #ScriptLib.GetSceneUidList(context)==1 and evt.param1==defs.battle_region_id)then
        ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] 准备传送")
        ScriptLib.StopGalleryByReason(context,defs.gallery_id,2)
        LF_Unload_Group(context)
    end
    return 0
end


function action_time_axis_pass(context,evt)
    if evt.source_name == "teleport" then

        --加载其他组
        ScriptLib.ExecuteGroupLua(context, defs.next_group_id, "LF_Set_InitedByOtherGroup", {})
        for k,v in pairs(suites) do
            ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, k)
        end
	end

    return 0
end

------------------------------------------------------------------
------------------------流程相关----------------------------------
--初始化玩法
--加载操作台并上选项
function LF_Init_Play(context)
    --操作台激活
    if defs.is_first_group == true then 
        LF_Set_InitGadgets(context,true)
    end

    return 0
end

--开启玩法
function LF_Start_Play(context)
    --先尝试启动gallery，如果未成功，则直接返回
    if (ScriptLib.SetPlayerStartGallery(context, defs.gallery_id, ScriptLib.GetSceneUidList(context)) ~= 0) then
        return 0
    end
    
    ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] 开启gallery")
    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["total_kill_cnt"] = defs.monster_num})

    return 0
end

function LF_Stop_Play(context, is_success)
    if (is_success) then
        --成功通关
        ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] 成功通关小关")
        ScriptLib.StopGalleryByReason(context,defs.gallery_id,3)
        if defs.next_group_id ~=nil then 
            ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] 传送开始，加入新一轮的suite")
            if ScriptLib.GetSceneUidList(context)[1] then
                ScriptLib.TransPlayerToPos(context, {uid_list ={ScriptLib.GetSceneUidList(context)[1]}, pos = {x=LF_GetPointPos(context, defs.trans_p1).x-1,y=LF_GetPointPos(context, defs.trans_p1).y,z=LF_GetPointPos(context, defs.trans_p1).z}, radius = 0, rot = LF_GetPointRot(context, defs.trans_p1)})
            end
            if ScriptLib.GetSceneUidList(context)[2] then
                ScriptLib.TransPlayerToPos(context, {uid_list ={ScriptLib.GetSceneUidList(context)[2]}, pos = {x=LF_GetPointPos(context, defs.trans_p2).x-1,y=LF_GetPointPos(context, defs.trans_p2).y,z=LF_GetPointPos(context, defs.trans_p2).z}, radius = 0, rot = LF_GetPointRot(context, defs.trans_p2)})
            end
            if ScriptLib.GetSceneUidList(context)[3] then
                ScriptLib.TransPlayerToPos(context, {uid_list ={ScriptLib.GetSceneUidList(context)[3]}, pos = {x=LF_GetPointPos(context, defs.trans_p3).x-1,y=LF_GetPointPos(context, defs.trans_p3).y,z=LF_GetPointPos(context, defs.trans_p3).z}, radius = 0, rot = LF_GetPointRot(context, defs.trans_p3)})
            end
            if ScriptLib.GetSceneUidList(context)[4] then
                ScriptLib.TransPlayerToPos(context, {uid_list ={ScriptLib.GetSceneUidList(context)[4]}, pos = {x=LF_GetPointPos(context, defs.trans_p4).x-1,y=LF_GetPointPos(context, defs.trans_p4).y,z=LF_GetPointPos(context, defs.trans_p4).z}, radius = 0, rot = LF_GetPointRot(context, defs.trans_p4)})
            end
            ScriptLib.InitTimeAxis(context, "teleport", {1}, false)
        else
            ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] 成功通关大关")
            ScriptLib.CauseDungeonSuccess(context)
        end

    else
        --玩家死亡
        ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] 失败")
        ScriptLib.CauseDungeonFail(context)
    end

    return 0
end




------------------------group操作相关----------------------------------
--t键使用次数更新
function SLC_UpdateTRemainUseTime(context,remain_time,reminder_id)
    ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] T键使用次数更新")
    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["t_remain_use_time"] = remain_time})
    ScriptLib.PrintContextLog(context,tostring(reminder_id))
    ScriptLib.ShowReminderByUid(context,ScriptLib.GetSceneUidList(context), Reminder_Map[reminder_id])
    return 0
end

--狂暴状态更新
function SLC_UpdateViolentLevel(context,violent_level)
    ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] Boss狂暴等级更新")
    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["violent_level"] = violent_level})
    return 0
end

--清理计数
function SLC_ClearSGV(context)
    --清理火种子计数
    ScriptLib.SetGroupVariableValue(context, "seed_self_destroy", 0)
    --ScriptLib.SetGroupVariableValue(context, "slime_self_destroy", 0)
    local uid = ScriptLib.GetSceneUidList(context)
    if uid[1]~=nil then
        ScriptLib.SetTeamServerGlobalValue(context, uid[1], "SGV_Team_HypostasisChallenge_Fire", 0)
    end
    --ScriptLib.SetTeamServerGlobalValue(context, uid[1], "SGV_Team_HypostasisChallenge_Water", 0)
    return 0
end

--更新火挑战t键技能参数
function SLC_Fire_SeedDestroy(context)
    ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] 火种死亡")
    
    if ScriptLib.GetGroupVariableValue(context, "seed_self_destroy")==0 then
        local uid = ScriptLib.GetSceneUidList(context)
        if uid[1]~=nil then
            local value=ScriptLib.GetTeamServerGlobalValue(context,uid[1],"SGV_Team_HypostasisChallenge_Fire")
            if value<=2 then 
                ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] 火种非自杀")
                ScriptLib.SetTeamServerGlobalValue(context, uid[1], "SGV_Team_HypostasisChallenge_Fire", value+1)
            end
        end
    else 
        ScriptLib.SetGroupVariableValue(context, "seed_self_destroy", ScriptLib.GetGroupVariableValue(context, "seed_self_destroy")-1)
    end
    --[[local uidprint = ScriptLib.GetSceneUidList(context)
    if uidprint[1]~=nil then
        ScriptLib.PrintContextLog(context,tostring(ScriptLib.GetTeamServerGlobalValue(context,uidprint[1],"SGV_Team_HypostasisChallenge_Fire")))
    end]]
    return 0
end

function SLC_Fire_SeedKillSelf(context)
    ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] 火种自杀")
    ScriptLib.SetGroupVariableValue(context, "seed_self_destroy", ScriptLib.GetGroupVariableValue(context, "seed_self_destroy")+1)
    return 0
end

--[[更新水挑战t键技能参数
function SLC_Water_SlimeDestroy(context)
    ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] 水史莱姆死亡")
    
    if ScriptLib.GetGroupVariableValue(context, "slime_self_destroy")==0 then
        local uid = ScriptLib.GetSceneUidList(context)
        local value=ScriptLib.GetTeamServerGlobalValue(context,uid[1],"SGV_Team_HypostasisChallenge_Water")
        ScriptLib.SetTeamServerGlobalValue(context, uid[1], "SGV_Team_HypostasisChallenge_Water", value+1)
    else
        ScriptLib.SetGroupVariableValue(context, "slime_self_destroy", ScriptLib.GetGroupVariableValue(context, "slime_self_destroy")-1)
    end

    return 0
end

function SLC_Water_SlimeKillSelf(context)
    ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] 水史莱姆自杀")
    ScriptLib.SetGroupVariableValue(context, "slime_self_destroy", ScriptLib.GetGroupVariableValue(context, "slime_self_destroy")+1)
    return 0
end]]

--更新草挑战t键技能参数
function SLC_Grass_AreaChange(context,seed_number)
    ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] 草场地变化")
    ScriptLib.PrintContextLog(context,tostring(seed_number))
    
    local uid = ScriptLib.GetSceneUidList(context)
    if uid[1]~=nil then
        ScriptLib.SetTeamServerGlobalValue(context, uid[1], "SGV_Team_HypostasisChallenge_Grass", seed_number)
        ScriptLib.PrintContextLog(context,tostring(ScriptLib.GetTeamServerGlobalValue(context,uid[1],"SGV_Team_HypostasisChallenge_Grass")))
    end 
    return 0
end

function LF_Set_InitedByOtherGroup(context, prev_context) 
    ScriptLib.AddExtraGroupSuite(context,base_info.group_id,2)
    LF_Set_InitGadgets(context, true)
    return 0

end

function LF_Unload_Group(context)
    SLC_ClearSGV(context)
    for k,v in pairs(suites) do
        ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, k)
    end
    ScriptLib.SetGroupVariableValue(context, "GALLERY_STATE", 0)
    if defs.is_first_group == true then 
        ScriptLib.RefreshGroup(context,{group_id=base_info.group_id})
        ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] 第一关")
    else
        ScriptLib.RefreshGroup(context,{group_id=base_info.group_id})
        ScriptLib.AddExtraGroupSuite(context,base_info.group_id,2)
        ScriptLib.PrintContextLog(context,"## [HypostasisChallenge] 后面的关卡")
    end
    return 0
end


function LF_Set_InitGadgets(context, is_active)
    ScriptLib.PrintContextLog(context, "## [HypostasisChallenge] 更新gadget信息")
    if (is_active) then
        ScriptLib.PrintContextLog(context, "## [HypostasisChallenge] show gadget")
        if defs.cleaner_id~=nil then
            ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, defs.cleaner_id, 201)
        end
        ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.worktop_id, {local_defs.worktop_option})
    else
        ScriptLib.PrintContextLog(context, "## [HypostasisChallenge] hide gadget")
        ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, defs.worktop_id, 175)
        ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, defs.worktop_id, 202)
        ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, defs.recovergadget_id )
    end
    
    ScriptLib.PrintContextLog(context, "## [HypostasisChallenge] 更新gadget信息完毕")
    return 0
end

function LF_GetPointPos(context,point_id)
    for k,v in pairs(points) do
        if v.config_id == point_id then 
            ScriptLib.PrintContextLog(context,tostring(v.pos))
            return v.pos
        end
	end

    return 0
end

function LF_GetPointRot(context,point_id)

    for k,v in pairs(points) do
        if v.config_id == point_id then 
            return v.rot
        end
	end

    return 0
end


------------------------------------------------------------------
Initialize()