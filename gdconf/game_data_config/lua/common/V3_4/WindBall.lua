--[[======================================
||	filename:	WindBall
||	owner: 		luyao.huang
||	description:	风球传递玩法
||	LogName:	WindBall
||	Protection:	
=======================================]]--

--local defs = 
--{
--    gadget_worktop_id = 100001,
--}


------

local local_defs = {
    get_windball_option = 7,
}

local state_defs = 
{
    lock = 0,
    on_worktop = 201,
    taken = 202,
    ready_enshrine = 203,
    unavailable = 204,
    finish = 901,
}

local windball_state_defs = 
{
    on_worktop = 0,
    on_team = 1,
}

local phase_defs = 
{
    lock = 0,
    playing = 1,
    finish = 2,
}

local Tri = {
    [1] = { name = "select_option_windball", config_id = 11000001, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option_windball", trigger_count = 0},
    [2] = { name = "group_load_windball", config_id = 11000002, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load_windball", trigger_count = 0},
    [3] = { name = "gadget_state_change_windball", config_id = 11000003, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change_windball", trigger_count = 0},
    [4] = { name = "enter_region_windball", config_id = 11000004, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region_windball", trigger_count = 0},
    [5] = { name = "leave_region_windball", config_id = 11000005, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region_windball", trigger_count = 0},
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    table.insert(variables,{config_id = 110000001, name = "play_phase", value = 0})
    table.insert(variables,{config_id = 110000002, name = "current_worktop", value = 1})
    table.insert(variables,{config_id = 110000003, name = "windball_state", value = 0})
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

function action_group_load_windball(context,evt)
    ScriptLib.PrintContextLog(context,"## [WindBall]action_group_load_windball：group加载")

    local play_phase = ScriptLib.GetGroupVariableValue(context,"play_phase")

    if play_phase == phase_defs.lock then
        LF_Lock_Play(context)
    end
    if play_phase == phase_defs.playing then
        LF_Unlock_Play(context)
    end
    if play_phase == phase_defs.finish then
        LF_Finish_Play(context)
    end
    LF_Unlock_Play(context)
    return 0
end


function action_gadget_state_change_windball(context,evt)

    local new_state = evt.param1
    local old_state = evt.param3

    if new_state == state_defs.on_worktop then
        ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, evt.param2, {local_defs.get_windball_option})
    else
        ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id, evt.param2, local_defs.get_windball_option)
    end

    --说明是风球被放到台座上了
    if old_state == state_defs.ready_enshrine and new_state == state_defs.on_worktop then
        ScriptLib.PrintContextLog(context,"## [WindBall]action_gadget_state_change_windball：风球放置在台座:"..evt.param2)
        LF_Current_Worktop_Increase(context)
        LF_Set_All_Worktops_State(context)

        --如果是最后一环的风球
        if evt.param2 == windball_worktops[#windball_worktops] then
            LF_Finish_Play(context)
        end
    end

    --说明是风球被取走
    if old_state == state_defs.ready_enshrine and new_state == state_defs.taken then
        ScriptLib.PrintContextLog(context,"## [WindBall]action_gadget_state_change_windball：风球从台座："..evt.param2.."被取走")

        local current_index = LF_Get_Index_From_List(context,windball_worktops,evt.param2)
        if current_index < #windball_worktops then
            ScriptLib.PrintContextLog(context,"## [WindBall]action_gadget_state_change_windball：第"..current_index.."个操作台")
            local next_worktop = windball_worktops[current_index + 1]
            local dir_index = LF_Get_Dir_Index(context,evt.param2,next_worktop)
            ScriptLib.SetEntityServerGlobalValueByConfigId(context,evt.param2,"SGV_Dir_Light_On",dir_index)

        end
    end


    --说明是出界或者到时间，风球被还回去
    if old_state == state_defs.taken and new_state == state_defs.on_worktop then
        ScriptLib.PrintContextLog(context,"## [WindBall]action_gadget_state_change_windball：风球被还回台座："..evt.param2)
        LF_Set_All_Worktops_State(context)
    end

    return 0
end


function action_select_option_windball(context,evt)

    if evt.param2 == local_defs.get_windball_option then
        ScriptLib.PrintContextLog(context,"## [WindBall]action_select_option_windball：玩家选择选项，获取风球")
        local target_worktop = evt.param1
        ScriptLib.SetEntityServerGlobalValueByConfigId(context,target_worktop,"SGV_Message_Release_WindBall",1)
            
        local current_index = LF_Get_Index_From_List(context,windball_worktops,target_worktop)
        local worktop_eid = ScriptLib.GetEntityIdByConfigId(context, windball_worktops[current_index+1])
        local pos = ScriptLib.GetPosByEntityId(context, worktop_eid)
        ScriptLib.CreateGadgetByConfigIdByPos(context,defs.hint_gadget_id, {x=pos.x,y=pos.y,z=pos.z}, {x=0,y=0,z=0})
    end
    return 0
end

function action_enter_region_windball(context,evt)
    if evt.param1 == defs.region_id then
    end
    return 0
end
function action_leave_region_windball(context,evt)
    if evt.param1 == defs.region_id then
        LF_Change_Team_SGV(context,evt.uid,"SGV_Message_Remove_Windball",1)
    end
    return 0
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      玩法流程控制                                ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Unlock_Play(context)
    ScriptLib.PrintContextLog(context,"## [WindBall]LF_Unlock_Play：设置玩法阶段：进行中")
    ScriptLib.SetGroupVariableValue(context,"play_phase",phase_defs.playing)
    LF_Set_All_Worktops_State(context)
end

function LF_Lock_Play(context)
    ScriptLib.PrintContextLog(context,"## [WindBall]LF_Unlock_Play：设置玩法阶段：锁定")
    ScriptLib.SetGroupVariableValue(context,"play_phase",phase_defs.lock)
    for i = 1, #windball_worktops do
        ScriptLib.SetGadgetStateByConfigId(context,windball_worktops[i],state_defs.lock)
    end
end

function LF_Finish_Play(context)
    ScriptLib.PrintContextLog(context,"## [WindBall]LF_Unlock_Play：设置玩法阶段：完成")
    ScriptLib.SetGroupVariableValue(context,"play_phase",phase_defs.finish)
    for i = 1, #windball_worktops do
        ScriptLib.SetGadgetStateByConfigId(context,windball_worktops[i],state_defs.finish)
    end
    local uid = ScriptLib.GetSceneOwnerUid(context)
    LF_Change_Team_SGV(context,uid,"SGV_Message_Remove_Windball",1)
    ScriptLib.CreateGadget(context,{config_id = defs.chest_id})
end




function LF_Set_All_Worktops_State(context)
    local current_worktop = ScriptLib.GetGroupVariableValue(context,"current_worktop")

            
    ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.hint_gadget_id)
    for i = 1, #windball_worktops do
        ScriptLib.SetEntityServerGlobalValueByConfigId(context,windball_worktops[i],"SGV_Dir_Light_On",0)
        if (i < current_worktop) or (i >  current_worktop + 1) then
            ScriptLib.SetGadgetStateByConfigId(context,windball_worktops[i],state_defs.unavailable)
        end
        if i == current_worktop then
            ScriptLib.SetGadgetStateByConfigId(context,windball_worktops[i],state_defs.on_worktop)
        end
        if i ==  current_worktop + 1 then
            ScriptLib.SetGadgetStateByConfigId(context,windball_worktops[i],state_defs.ready_enshrine)
        end
    end
end


function LF_Set_Current_Worktop(context,i)
    ScriptLib.SetGroupVariableValue(context,"current_worktop",i)
end

function LF_Current_Worktop_Increase(context)
    ScriptLib.ChangeGroupVariableValue(context,"current_worktop",1)
end







--[[-----------------------------------------------------------------
||                                                                 ||
||                      CRUD方法                                   ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Get_Index_From_List(context,list,element)
    for i = 1, #list do
        if list[i] == element then
            return i
        end
    end
    return 0
end



--[[-----------------------------------------------------------------
||                                                                 ||
||                      杂项方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

--返回以gadget_1位基准，对准gadget_2时应亮起的角标id
function LF_Get_Dir_Index(context,gadget_1,gadget_2)
    
    local eid_1 = ScriptLib.GetEntityIdByConfigId(context, gadget_1)
    local pos_1 = ScriptLib.GetPosByEntityId(context, eid_1)
    local rot_1 = ScriptLib.GetRotationByEntityId(context, eid_1)
    local eid_2 = ScriptLib.GetEntityIdByConfigId(context, gadget_2)
    local pos_2 = ScriptLib.GetPosByEntityId(context, eid_2)

    local world_angle = math.atan(pos_2.z-pos_1.z, pos_2.x-pos_1.x)
    local local_angle = world_angle - rot_1.y

    local index = math.ceil((local_angle + 45) / 90)
    return index

end

function LF_Change_Team_SGV(context,uid,key,delta)
    local v = ScriptLib.GetTeamServerGlobalValue(context,uid,key)
    ScriptLib.SetTeamServerGlobalValue(context,uid,key,v+delta)
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                     server lua call                             ||
||                                                                 ||
-----------------------------------------------------------------]]--

function SLC_Remove_Team_Windball(context)
    local uid = ScriptLib.GetSceneOwnerUid(context)
    LF_Change_Team_SGV(context,uid,"SGV_Message_Remove_Windball",1)
    return 0
end



------------------------------------------------------------------
Initialize()