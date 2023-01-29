--[[======================================
||	filename:	ScarletKingFan
||	owner: 		luyao.huang
||	description:	赤王风扇玩法
||	LogName:	ScarletKingFan
||	Protection:	
=======================================]]--








------
local local_defs = 
{
    
}


local options = 
{
    switch_open = 5000,
    switch_close = 5001,
    move_fan = 436,
}


local fan_state = 
{
    lock = 0,
    move = 101,
    dir1 = 201,
    dir2 = 202,
    dir3 = 203,
    dir4 = 204
}

local shutter_state = 
{
    close = 0,
    open = 201,
}

local shutter_switch_state = 
{
    close = 0,
    open = 201,
}






local Tri = {
    [1] = { name = "group_load", config_id = 8000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    [2] = { name = "gadget_state_change", config_id = 8000002, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0},
    [3] = { name = "select_option", config_id = 8000003, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
    [4] = { name = "platform_arrival", config_id = 8000004, event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_platform_arrival", trigger_count = 0},
    
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    --记录风扇的位置
    for i = 1, #fans do
        table.insert(variables,{config_id = 110000000+i, name = "fan_pos_"..fans[i], value = 1})
        --用来暂存风扇移动前的状态，移动后恢复到这个状态
        table.insert(variables,{config_id = 120000000+i, name = "fan_pre_move_state_"..fans[i], value = 201})
    end
end

------------------------------------------------------------------

function action_group_load(context,evt)
    ScriptLib.PrintContextLog(context,"## [ScarletKingFan]action_group_load：group加载")
    for i = 1, #fans do
        if FanToPointArray[fans[i]] ~= nil then
            ScriptLib.PrintContextLog(context,"## [ScarletKingFan]action_group_load：给风扇上选项")
            LF_Set_Fan_Option(context,fans[i],true)
            ScriptLib.SetGroupVariableValue(context,"fan_pos_"..fans[i],1)
            ScriptLib.SetGroupVariableValue(context,"fan_pre_move_state_"..fans[i],201)
        end
    end
    for i = 1, #shutter_switches do
        LF_Set_Shutter_Switch_Option(context,shutter_switches[i])
    end
    return 0
end



--风扇转向、百叶墙壁开关开关、百叶墙壁开关
function action_gadget_state_change(context,evt)
    if LF_Is_In_Table(context,evt.param2,fans) then
        ScriptLib.PrintContextLog(context,"## [ScarletKingFan]action_gadget_state_change：风扇状态变化")
        local state = evt.param1
        local fan = evt.param2
        if evt.param3 == fan_state.lock then
            LF_Set_Fan_Option(context,fan,true)
        end
        if state == fan_state.dir1 or state == fan_state.dir2 or state == fan_state.dir3 or state == fan_state.dir4 then
            ScriptLib.PrintContextLog(context,"## [ScarletKingFan]action_gadget_state_change：风扇转向，更新沙堆状态")
            LF_Update_Sandpile_State(context, fan)
        end

        
    end
    if LF_Is_In_Table(context,evt.param2,shutter_switches) then
        ScriptLib.PrintContextLog(context,"## [ScarletKingFan]action_gadget_state_change：百叶窗开关状态变化")
        LF_Set_Shutter_Switch_Option(context,evt.param2)
    end
    return 0
end


function action_select_option(context,evt)
    if LF_Is_In_Table(context,evt.param1,shutter_switches) then
        if evt.param2 == options.switch_close then
            ScriptLib.PrintContextLog(context,"## [ScarletKingFan]action_select_option：按下百叶窗"..evt.param1.."的关闭开关")
            --按下开关，改开关的状态
            ScriptLib.SetGadgetStateByConfigId(context,evt.param1, shutter_switch_state.close)
            --按下开关，改开关连接的百叶墙壁的状态
            ScriptLib.SetGadgetStateByConfigId(context,SwitchToShutter[evt.param1],shutter_state.close)
        end
        if evt.param2 == options.switch_open then
            ScriptLib.PrintContextLog(context,"## [ScarletKingFan]action_select_option：按下百叶窗"..evt.param1.."的打开开关")
            --按下开关，改开关的状态
            ScriptLib.SetGadgetStateByConfigId(context,evt.param1, shutter_switch_state.open)
            --按下开关，改开关连接的百叶墙壁的状态
            ScriptLib.SetGadgetStateByConfigId(context,SwitchToShutter[evt.param1],shutter_state.open)
        end
    end

    if LF_Is_In_Table(context,evt.param1,fans) then
        if evt.param2 == options.move_fan then
            local fan = evt.param1
            local current_pos = ScriptLib.GetGroupVariableValue(context,"fan_pos_"..fan)
            local pos = 3 - current_pos
            
            local pre_move_state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,fan)
            ScriptLib.SetGroupVariableValue(context,"fan_pre_move_state_"..fan,pre_move_state)

            ScriptLib.SetGadgetStateByConfigId(context,fan, fan_state.move)
            ScriptLib.PrintContextLog(context,"## [ScarletKingFan]action_select_option：移动风扇"..fan.."到点位"..pos)
            if current_pos == 1 then
                ScriptLib.SetPlatformPointArray(context,fan,FanToPointArray[fan], {1,2}, { route_type = 0,turn_mode=false, record_mode = 1 })
            else
                ScriptLib.SetPlatformPointArray(context,fan,FanToPointArray[fan], {2,1}, { route_type = 0,turn_mode=false, record_mode = 1 })
            end
            ScriptLib.StartPlatform(context,fan)

            --移动时，关闭选项
            LF_Set_Fan_Option(context,fan,false)
        end
    end

    return 0
end



function action_platform_arrival(context,evt)
    ScriptLib.PrintContextLog(context,"## [ScarletKingFan]action_platform_arrival：风扇到达路点")
    local fan = evt.param1
    local point_id = evt.param3

    local pos = ScriptLib.GetGroupVariableValue(context,"fan_pos_"..fan)
    --和LD约定所有风扇只有两个端点，因此pos只会为1或者2
    local target_pos = 3 - pos
    if point_id == target_pos then

        --运动到端点时，根据运动前的状态恢复gadgetState
        local pre_move_state = ScriptLib.GetGroupVariableValue(context,"fan_pre_move_state_"..fan)
        if pre_move_state ~= fan_state.dir1 and pre_move_state ~= fan_state.dir2 and pre_move_state ~= fan_state.dir3 and pre_move_state ~= fan_state.dir4 then
            pre_move_state = fan_state.dir1
        end
        ScriptLib.SetGadgetStateByConfigId(context,fan, pre_move_state)

        --ScriptLib.StopPlatform(context,fan)
        ScriptLib.SetWorktopOptionsByGroupId(context,base_info.group_id,fan,{options.move_fan})
        ScriptLib.SetGroupVariableValue(context,"fan_pos_"..fan,target_pos)
        LF_Update_Sandpile_State(context, fan)
    end
    return 0
end
--[[-----------------------------------------------------------------
||                                                                 ||
||                      玩法流程                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Update_Sandpile_State(context, fan)
    ScriptLib.PrintContextLog(context,"## [ScarletKingFan]LF_Update_Sandpile_State：更新"..fan.."相关的沙堆状态")
    for k,v in pairs(FanToSandpile) do
        if v.fan == fan then
            local pos = ScriptLib.GetGroupVariableValue(context,"fan_pos_"..fan)
            ScriptLib.PrintContextLog(context,"## [ScarletKingFan]LF_Update_Sandpile_State：当前风扇位置为"..pos)
            local dir_state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,fan)
            ScriptLib.PrintContextLog(context,"## [ScarletKingFan]LF_Update_Sandpile_State：当前风扇方向状态为"..dir_state)
            local fan_shutter_state
            if v.shutter ~= nil then
                fan_shutter_state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,v.shutter)
                ScriptLib.PrintContextLog(context,"## [ScarletKingFan]LF_Update_Sandpile_State：当前风扇路径上的百叶窗状态为"..fan_shutter_state)
            else
                fan_shutter_state = shutter_state.open
            end
            if pos == v.pos and dir_state == v.dir_state and fan_shutter_state == shutter_state.open then
                ScriptLib.PrintContextLog(context,"## [ScarletKingFan]LF_Update_Sandpile_State：沙堆"..k.."目前符合吹风机的状态，销毁沙堆")
                ScriptLib.SetGadgetStateByConfigId(context,k, 201)
                --ScriptLib.KillEntityByConfigId(context, {config_id = k})
            end
        end
    end
end


function LF_Set_Fan_Option(context,fan,enable)

    local flag = false
    if FanToPointArray ~= nil then
        for k,v in pairs(FanToPointArray) do
            if k == fan then
                flag = true
            end
        end
    end

    if flag then
        local state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,fan)
        if state == 0 or state == 101 then
            ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id,fan,options.move_fan)
        else
            if enable then
                ScriptLib.SetWorktopOptionsByGroupId(context,base_info.group_id,fan,{options.move_fan})
            else
                ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id,fan,options.move_fan)
            end
        end
    end
end


function LF_Set_Shutter_Switch_Option(context,switch)
    local state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,switch)
    if state == 0 then
        ScriptLib.SetWorktopOptionsByGroupId(context,base_info.group_id,switch,{options.switch_open})
        ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id,switch,options.switch_close)
    elseif state == 201 then
        ScriptLib.SetWorktopOptionsByGroupId(context,base_info.group_id,switch,{options.switch_close})
        ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id,switch,options.switch_open)
    end
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      CRUD方法                                   ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Is_In_Table(context,v,t)
    for i = 1, #t do
        if t[i] == v then
            return true
        end
    end
    return false
end

function LF_Get_Index_In_Table(context,v,t)
    for i = 1, #t do
        if t[i] == v then
            return i
        end
    end
    return 0
end



------------------------------------------------------------------
Initialize()
