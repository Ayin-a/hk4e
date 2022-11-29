--2.4昼夜机关（白盒）

--defs
--local Worktops = {
--  500000,
--  500001,
--}


----------------------------------
local option = 502
local Tri = {
    [1] = { name = "select_option_worktop", config_id = 9000001, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option_worktop", trigger_count = 0},
    [2] = { name = "group_load_worktop", config_id = 9000002, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load_worktop", trigger_count = 0},
    [3] = { name = "gadget_state_change_worktop", config_id = 9000003, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change_worktop", trigger_count = 0},
   
}

function Initialize()
    for k,v in pairs(Tri) do
        table.insert(triggers, v)
    end
    if (init_config.io_type ~= 1) then
        for i = 1, #suites do 
            for k,v in pairs(Tri) do
	        	table.insert(suites[i].triggers, v.name)
	        end
        end
    else
        for i = 1, #suite_disk do 
            for k,v in pairs(Tri) do
	        	table.insert(suite_disk[i].triggers, v.name)
	        end
        end
    end

    
end

------------------------------------------------------------------
--group load后，加载操作台选项
function action_group_load_worktop(context,evt)

    ScriptLib.PrintContextLog(context,"EnvStateWorktop: Group加载，修正昼夜操作台选项")
    
    local is_daynight_finish = ScriptLib.GetGroupVariableValue(context, "is_daynight_finish")
    if (is_daynight_finish == 1) then
        ScriptLib.PrintContextLog(context,"EnvState: 该group处于完成状态，不再受到昼夜管理")
        return 0
    end 

    for i = 1, #Worktops do
        LF_Set_DayNight_Worktop_Option(context,Worktops[i])
    end
    

    return 0
end

--按下昼夜切换机关时，处理这个昼夜机关的状态切换和删除选项
function action_select_option_worktop(context,evt)
    if (evt.param2 == option) then
        ScriptLib.PrintContextLog(context,"EnvStateWorktop: 玩家按下选项，删除当前选项，并切换操作台gadgetState")

        local worktop = evt.param1
        local entity_id = ScriptLib.GetEntityIdByConfigId(context,worktop)
        local gadget_id = ScriptLib.GetGadgetIdByEntityId(context, entity_id)
        --如果是白天操作台，按下按键后转到212
        if (gadget_id == 70360311) then
            ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, 212)
            ScriptLib.DelWorktopOptionByGroupId(context,0,evt.param1,option)
        --如果是夜晚操作台，按下按键后转到312
        elseif (gadget_id == 70360312) then
            ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, 312)
            ScriptLib.DelWorktopOptionByGroupId(context,0,evt.param1,option)
        end
    end 

    return 0
end

--当昼夜切换机关状态切换时，判断当前状态上下选项
function action_gadget_state_change_worktop(context,evt)
    local worktop = evt.param2
    local is_daynight_worktop = false
    for i = 1,#Worktops do
        if worktop == Worktops[i] then
            is_daynight_worktop = true
        end
    end
    if (is_daynight_worktop) then
        ScriptLib.PrintContextLog(context,"EnvStateWorktop: 昼夜操作台 "..worktop.."状态变化，判断选项上下")
        LF_Set_DayNight_Worktop_Option(context,worktop)
    end

    return 0
end





-----------------------------------------------------------------
--输入一个操作台的config_id，根据当前昼夜以及操作台当前状态，判断此时上或下选项
function LF_Set_DayNight_Worktop_Option(context,worktop)
    ScriptLib.PrintContextLog(context,"EnvStateWorktop: 昼夜操作台 "..worktop.."状态变化，开始设置选项")
    --判断操作台gadget id，如果不对提前返回
    local entity_id = ScriptLib.GetEntityIdByConfigId(context,worktop)
    local gadget_id = ScriptLib.GetGadgetIdByEntityId(context, entity_id)
    if (gadget_id ~= 70360311 and gadget_id ~= 70360312) then
        ScriptLib.PrintContextLog(context,"EnvStateWorktop: 目标gadget id = "..gadget_id.."不是昼夜操作台，提前返回")
        return 0
    end
    local current_env_state_id = LF_Get_Current_Day_Night(context)
    local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
    if (current_env_state == "2_4_Day") then
        ScriptLib.PrintContextLog(context,"EnvStateWorktop: 当前是白天")
        --如果是白天操作台，且状态为202，则上选项，否则下选项
        if (gadget_id == 70360311) then
            ScriptLib.PrintContextLog(context,"EnvStateWorktop: 昼夜操作台（白天）处理选项")
            local gadget_state = ScriptLib.GetGadgetStateByConfigId(context,0,worktop)
            ScriptLib.PrintContextLog(context,"EnvStateWorktop: 昼夜操作台（白天）当前状态为"..gadget_state)
            if (gadget_state == 202) then
                ScriptLib.SetWorktopOptionsByGroupId(context, 0, worktop, {option}) 
            else
                ScriptLib.DelWorktopOptionByGroupId(context,0,worktop,option)
            end
        end
        --如果是夜晚操作台，且状态为302，则上选项，否则下选项
        if (gadget_id == 70360312) then
            ScriptLib.PrintContextLog(context,"EnvStateWorktop: 昼夜操作台（夜晚）处理选项")
            local gadget_state = ScriptLib.GetGadgetStateByConfigId(context,0,worktop)
            ScriptLib.PrintContextLog(context,"EnvStateWorktop: 昼夜操作台（夜晚）当前状态为"..gadget_state)
            if (gadget_state == 302) then
                ScriptLib.SetWorktopOptionsByGroupId(context, 0, worktop, {option}) 
            else
                ScriptLib.DelWorktopOptionByGroupId(context,0,worktop,option)
            end
        end
    elseif (current_env_state == "2_4_Night") then
        ScriptLib.PrintContextLog(context,"EnvStateWorktop: 当前是夜晚")
        --如果是夜晚操作台，且状态为302，则上选项，否则下选项
        if (gadget_id == 70360312) then
            ScriptLib.PrintContextLog(context,"EnvStateWorktop: 昼夜操作台（夜晚）处理选项")
            local gadget_state = ScriptLib.GetGadgetStateByConfigId(context,0,worktop)
            ScriptLib.PrintContextLog(context,"EnvStateWorktop: 昼夜操作台（夜晚）当前状态为"..gadget_state)
            if (gadget_state == 302) then
                ScriptLib.SetWorktopOptionsByGroupId(context, 0, worktop, {option})   
            else
                ScriptLib.DelWorktopOptionByGroupId(context,0,worktop,option)
            end
        end
        --如果是白天操作台，且状态为202，则上选项，否则下选项
        if (gadget_id == 70360311) then
            ScriptLib.PrintContextLog(context,"EnvStateWorktop: 昼夜操作台（夜晚）处理选项")
            local gadget_state = ScriptLib.GetGadgetStateByConfigId(context,0,worktop)
            ScriptLib.PrintContextLog(context,"EnvStateWorktop: 昼夜操作台（夜晚）当前状态为"..gadget_state)
            if (gadget_state == 202) then
                ScriptLib.SetWorktopOptionsByGroupId(context, 0, worktop, {option})   
            else
                ScriptLib.DelWorktopOptionByGroupId(context,0,worktop,option)
            end
        end
    end


end




function LF_Get_Current_Day_Night(context)
    local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]

    return current_env_state_id
end


------------------------------------------------------------------
Initialize()