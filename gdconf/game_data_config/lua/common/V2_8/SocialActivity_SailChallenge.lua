--[[======================================
||	filename:	SocialActivity_SailChallenge
||	owner: 		luyao.huang
||	description:	2.8社交活动-开船停车
||	LogName:	SocialActivity_SailChallenge
||	Protection:	
=======================================]]--

------

local local_defs = 
{
    --激流纹章
    coin_id = 70380235,
    boat_id = 45001001,
    --间隔几个stage将之前的stage清空
    clear_stage_interval = 3,

    clear_berth_reminder = 400164
}

local stage_target_reminder =
{
    400159,400160,400161
}

local gadget_config_id_map = {}

local Tri = {
    [1] = { name = "monster_die_before_leave_scene", config_id = 9000001, event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_monster_die_before_leave_scene", trigger_count = 0},
    [2] = { name = "gadget_state_change", config_id = 9000002, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0},
    [3] = { name = "any_gadget_die", config_id = 9000003, event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_any_gadget_die", trigger_count = 0},
    [4] = { name = "enter_region", config_id = 9000004, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0, forbid_guest = false},
    [5] = { name = "player_back_gallery_revive_point", config_id = 9000005, event = EventType.EVENT_PLAYER_BACK_GALLERY_REVIVE_POINT, source = "", condition = "", action = "action_player_back_gallery_revive_point", trigger_count = 0},
    
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
    
    for i = 1, #gadgets do
        gadget_config_id_map[gadgets[i].config_id] = gadgets[i].gadget_id
    end

    for k,v in pairs(stage_berth_windzone) do
        
        table.insert(variables,{config_id = 60000000+k, name = "stage_berth_"..tostring(k).."_active_num", value = 0})
    end

    table.insert(variables,{config_id = 60000100, name = "current_stage_die_monster_num", value = 0})
    table.insert(variables,{config_id = 60000101, name = "coin_num", value = 0})
    table.insert(variables,{config_id = 60000102, name = "reminder_index", value = 0})
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--


--怪物死亡时，如果当前阶段所有怪死亡，进入下一阶段
function action_monster_die_before_leave_scene(context,evt)

    --当前阶段怪物死亡计数
    ScriptLib.ChangeGroupVariableValue(context,"current_stage_die_monster_num",1)
    LF_Gallery_Update(context,"MONSTER_DIE")

    --先看看chain上有没有需要加载的下一位的suite。如果有，直接加载，不考虑进入下一个stage
    local monster_suite_id = LF_Get_Suite_By_Config_Id(evt.param1,false)
    if LF_Try_Create_Next_Chain_Suite(context,monster_suite_id) then
        return 0
    end

    --如果chain上没有要加载的下一个suite，则看是否可以进入下一个stage
    if LF_Is_Monster_In_List_All_Killed(context,LF_Get_Stage_Monsters(context,LF_Get_Current_Stage(context))) then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_SailChallenge] action_any_monster_die: 怪物全部死完")
        if LF_Stage_Has_Tag(context,LF_Get_Current_Stage(context),"Battle") then
            LF_Goto_Next_Stage(context)
        end
    end
    return 0
end

--停船圈状态改变时，如果当前阶段所有停船圈都已经激活，则创生风场
function action_gadget_state_change(context,evt)

    local config_id = evt.param2
    if (evt.param1 == 201) then
        local berth_stage = LF_Get_Stage_By_Config_Id(config_id, true)
        if berth_stage ~= 0 then
            ScriptLib.PrintContextLog(context,"## [SocialActivity_SailChallenge] action_gadget_state_change: 物件状态改变，阶段为"..berth_stage)
            ScriptLib.ChangeGroupVariableValue(context,"stage_berth_"..tostring(berth_stage).."_active_num",1)
            local active_num = ScriptLib.GetGroupVariableValue(context,"stage_berth_"..tostring(berth_stage).."_active_num")
            if stage_berth_windzone[berth_stage]~= nil then
                if (active_num >= stage_berth_windzone[berth_stage].berth_num) then
                    ScriptLib.PrintContextLog(context,"## [SocialActivity_SailChallenge] action_gadget_state_change: 阶段"..berth_stage.."停车圈全部触发，创生风场")
                    for i = 1, #stage_berth_windzone[berth_stage].windzone do
                        ScriptLib.CreateGadget(context,{config_id = stage_berth_windzone[berth_stage].windzone[i]})
                    end
                    for j = 1, #stage_berth_windzone[berth_stage].berth do
                        ScriptLib.PrintContextLog(context,"## [SocialActivity_SailChallenge] action_gadget_state_change: 设置gadgetstate"..stage_berth_windzone[berth_stage].berth[j])
                        ScriptLib.SetGadgetStateByConfigId(context,stage_berth_windzone[berth_stage].berth[j],202)
                    end
                end
            end
        end
    end
    return 0
end


--吃掉金币触发
function action_any_gadget_die(context,evt)

    local cid = evt.param1
    local gid = gadget_config_id_map[cid]
    if (gid == local_defs.coin_id) then
        ScriptLib.ChangeGroupVariableValue(context,"coin_num",1)
        LF_Gallery_Update(context,"COIN")
        LF_Update_Exhibition(context,-2,"Activity_IslandParty_Sail_TeamCoin",1)
    end

    return 0
end

--进入每个区域前的region触发，加载怪物
function action_enter_region(context,evt)

    ScriptLib.PrintContextLog(context,"## [SocialActivity_SailChallenge] action_enter_region: 进入region")
    if evt.param1 == LF_Get_Stage_Region(LF_Get_Current_Stage(context)) then
        if LF_Stage_Has_Tag(context,LF_Get_Current_Stage(context),"Sail") then
            LF_Goto_Next_Stage(context)
        end
    end

    return 0
end


--玩家主动传送到复活点后，给玩家造一艘船
function action_player_back_gallery_revive_point(context,evt)
    LF_Create_Boat(context,evt.param1,LF_Get_Stage_Boat_Point(LF_Get_Current_Stage(context)))
    return 0
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      玩法流程控制                                ||
||                                                                 ||
-----------------------------------------------------------------]]--




function LF_Special_Play_Init(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_SailChallenge] LF_Special_Play_Init: 特殊玩法初始化逻辑")


end


--特殊玩法启动逻辑
function LF_Special_Play_Start(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_SailChallenge] LF_Special_Play_Start: 特殊玩法启动逻辑")
    
    --初始化时，清一下怪物死亡计数
    ScriptLib.SetGroupVariableValue(context,"current_stage_die_monster_num",0)
    ScriptLib.SetGroupVariableValue(context,"coin_num",0)

    --玩法开始时，给各个玩家造船
    local uid_list = ScriptLib.GetGalleryUidList(context,defs.gallery_id)
    if start_boat_points ~= nil then
        for i = 1, #uid_list do
            if start_boat_points[i] ~= nil then
                LF_Create_Boat(context,uid_list[i],start_boat_points[i])
            end
        end
    end

    LF_Gallery_Update(context,"START_PLAY")

end


--特殊阶段转换事件
function LF_Special_State_Change(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_SailChallenge] LF_Special_State_Change: 特殊阶段转换逻辑")
    

    if LF_Stage_Has_Tag(context,LF_Get_Current_Stage(context),"Sail") then
        --转阶段时，清一下上阶段的怪物死亡计数
        ScriptLib.SetGroupVariableValue(context,"current_stage_die_monster_num",0)
        LF_Gallery_Update(context,"CHANGE_TO_SAIL")

        --显示每个航行阶段的目标提示文字
        ScriptLib.ChangeGroupVariableValue(context,"reminder_index",1)
        local reminder_index = ScriptLib.GetGroupVariableValue(context,"reminder_index")
        if stage_target_reminder[reminder_index]~=nil then
            ScriptLib.ShowReminder(context,stage_target_reminder[reminder_index])
        end
    end
    if LF_Stage_Has_Tag(context,LF_Get_Current_Stage(context),"Battle") then
        ScriptLib.ShowReminder(context,local_defs.clear_berth_reminder)
        LF_Gallery_Update(context,"CHANGE_TO_BATTLE")
    end

    
    --根据LD的需求，隔X个stage，清理前面所有stage的内容
    for i = 1, LF_Get_Current_Stage(context)-local_defs.clear_stage_interval do
        LF_Clear_Specific_Stage(context,i)
    end
end



--特殊玩法结算逻辑
function LF_Special_Play_Finish(context,is_success)
    if is_success then
        LF_Update_Exhibition(context,-2,"Activity_IslandParty_Sail_Success",1)
    end
end





--检查是否已经满足当前阶段的转换条件
function LF_Has_Satisfy_Current_Stage_Condition(context)
    return true
end
--[[-----------------------------------------------------------------
||                                                                 ||
||                     CRUD方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Get_Stage_Region(current_stage)
    if stage[current_stage] ~= nil then
        return stage[current_stage].region
    else
        return nil
    end
end

--返回当前阶段复活点旁边的船点
function LF_Get_Stage_Boat_Point(current_stage)
    if stage[current_stage].boat_point ~= nil then
        return stage[current_stage].boat_point
    else
        return nil
    end
end
--[[-----------------------------------------------------------------
||                                                                 ||
||                     杂项功能                                     ||
||                                                                 ||
-----------------------------------------------------------------]]--

--在指定的point位置，给指定的uid造一艘船
function LF_Create_Boat(context,uid,point_id)
    if point_id == nil then
        ScriptLib.PrintGroupWarning(context,"## [SocialActivity_SailChallenge]LF_Create_Boat：取到的造船点为空！")
        return
    end
    local boat_point = {}
    for i = 1, #points do
        if points[i].config_id == point_id then
            boat_point = points[i]
            break
        end
    end
    ScriptLib.PrintContextLog(context,"## [SocialActivity_SailChallenge] LF_Create_Boat: 在点位"..point_id.."建船")
    local ret = ScriptLib.CreateVehicle(context, uid, local_defs.boat_id, {x=boat_point.pos.x,y=boat_point.pos.y,z=boat_point.pos.z},{x=boat_point.rot.x,y=boat_point.rot.y,z=boat_point.rot.z})
    ScriptLib.PrintContextLog(context,"## [SocialActivity_SailChallenge] LF_Create_Boat:建船的结果为 "..ret)
end



--[[-----------------------------------------------------------------
||                                                                 ||
||                     gallery同步                                 ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Gallery_Update(context,command)

    ScriptLib.PrintContextLog(context,"## [SocialActivity_SailChallenge] LF_Gallery_Update: 向gallery同步")
    if command == "START_PLAY" then

        local camp_num = 0
        for i = 1, #stage do
            if stage[i].tag == "Battle" then
                camp_num = camp_num + 1
            end
        end

        local param_table = {["sail_stage"] = 1, ["progress"] = 0, ["max_progress"] = camp_num}
        LF_Print_Table(context,param_table)
        ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, param_table)
    end

    if command == "CHANGE_TO_SAIL" then

        local camp_num = 0
        for i = 1, LF_Get_Current_Stage(context) do
            if stage[i].tag == "Battle" then
                camp_num = camp_num + 1
            end
        end

        local param_table = {["sail_stage"] = 1, ["progress"] = camp_num }
        LF_Print_Table(context,param_table)
        ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, param_table)
    end

    if command == "CHANGE_TO_BATTLE" then
        local monster_num = 0
        for i = 1, #LF_Get_Stage_Monster_Suites(context,LF_Get_Current_Stage(context)) do
            monster_num = monster_num + #suites[LF_Get_Stage_Monster_Suites(context,LF_Get_Current_Stage(context))[i]].monsters
        end
        local param_table =  {["sail_stage"] = 2, ["kill_monster_count"] = 0, ["max_monster_count"] = monster_num}
        LF_Print_Table(context,param_table)
        ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id,param_table)
    end

    if command == "MONSTER_DIE" then
        local current_stage_die_monster_num = ScriptLib.GetGroupVariableValue(context,"current_stage_die_monster_num")
        local param_table = {["kill_monster_count"] = current_stage_die_monster_num}
        LF_Print_Table(context,param_table)
        ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, param_table)
    end

    if command == "COIN" then
        local coin = ScriptLib.GetGroupVariableValue(context,"coin_num")
        local param_table = {["coin"] = coin}
        LF_Print_Table(context,param_table)
        ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, param_table)
    end

end


function LF_Print_Table(context,print_table)
    for k,v in pairs(print_table) do
        ScriptLib.PrintContextLog(context,"## [SocialActivity_SailChallenge] "..k.." : "..v)
    end
end



--[[-----------------------------------------------------------------
||                                                                 ||
||                     server lua call                             ||
||                                                                 ||
-----------------------------------------------------------------]]--

--陈列室SLC
--陈列室：开船停车到指定区域数
function SLC_Exhibition_Enter_Berth(context)
    LF_Update_Exhibition(context,context.uid,"Activity_IslandParty_Sail_ArriveArea",1)
    return 0
end

--陈列室：开船停车拾取金币数个人
function SLC_Exhibition_Pick_Up_Coin(context)
    LF_Update_Exhibition(context,context.uid,"Activity_IslandParty_Sail_PersonalCoin",1)
    return 0
end


------------------------------------------------------------------
Initialize()