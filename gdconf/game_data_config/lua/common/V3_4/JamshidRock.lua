--[[======================================
||	filename:	JamshidRock
||	owner: 		luyao.huang
||	description:	3.3赤王基石玩法
||	LogName:	JamshidRock
||	Protection:	
=======================================]]--

------
local local_defs = {
    changing_cd = 1
}

local rock_gadget_id = 
{
    70290635,
    70290636,
    70290637
}


local state_solution_defs = 
{
    [0] = 1,
    [201] = 2,
    [202] = 3,
    [203] = 4
}

local solution_state_defs = 
{
    [1] = 0,
    [2] = 201,
    [3] = 202,
    [4] = 203
}


local Tri = {
    [1] = { name = "gadget_state_change", config_id = 10000001, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0},
    [2] = { name = "time_axis_pass", config_id = 10000002, event = EventType.EVENT_TIME_AXIS_PASS, source = "changing_cd", condition = "", action = "action_time_axis_pass", trigger_count = 0},
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    for i = 1, #JamshidRocks do
        local rock = JamshidRocks[i]
        gadgets[rock].server_global_value_config = { ["SGV_Correct_Answer"] = CorrectAnswer[i] }
    end

    table.insert(variables,{ config_id = 100010001,  name = "is_success", value = 0})
    table.insert(variables,{ config_id = 100010002,  name = "is_changing", value = 0})

end



--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--
function action_gadget_state_change(context,evt)
    local flag = false
    for i = 1, #JamshidRocks do
        if evt.param2 == JamshidRocks[i] then
            flag = true
        end
    end
    if flag then
        ScriptLib.PrintContextLog(context,"## [JamshidRock] action_gadget_state_change: 赤王基石"..evt.param2.."状态变化")
        local is_success = true
        for i = 1, #JamshidRocks do
            local state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,JamshidRocks[i])
            if state_solution_defs[state] ~= nil then
                ScriptLib.PrintContextLog(context,"## [JamshidRock] action_gadget_state_change: 正确解为"..CorrectAnswer[i])
                ScriptLib.PrintContextLog(context,"## [JamshidRock] action_gadget_state_change: 当前解为"..state_solution_defs[state])
                if state_solution_defs[state] ~= CorrectAnswer[i] then
                    is_success = false
                end
            end
        end
        if is_success then
            ScriptLib.PrintContextLog(context,"## [JamshidRock] action_gadget_state_change: 玩法成功")
            ScriptLib.SetGroupVariableValue(context,"is_success",1)
        else
            ScriptLib.SetGroupVariableValue(context,"is_success",0)
        end
    end
    return 0
end

function action_time_axis_pass(context,evt)
    ScriptLib.PrintContextLog(context,"## [JamshidRock] action_time_axis_pass: 基石cd时间轴tick，允许继续变化")
    ScriptLib.SetGroupVariableValue(context,"is_changing",0)
    
    for i = 1, #JamshidRocks do
        ScriptLib.SetEntityServerGlobalValueByConfigId(context,JamshidRocks[i],"SGV_Show_Hit_Effect",0)
    end
    return 0
end




--[[-----------------------------------------------------------------
||                                                                 ||
||                      server lua call                            ||
||                                                                 ||
-----------------------------------------------------------------]]--
function SLC_Rock_Being_Hit(context)
    for i = 1, #JamshidRocks do
        if context.source_entity_id == ScriptLib.GetEntityIdByConfigId(context, JamshidRocks[i]) then
            local rock = JamshidRocks[i]
            ScriptLib.PrintContextLog(context,"## [JamshidRock] SLC_Rock_Being_Hit: 赤王基石"..JamshidRocks[i].."受击")
            local is_changeing = ScriptLib.GetGroupVariableValue(context,"is_changing")
            if is_changeing == 0 then
                ScriptLib.PrintContextLog(context,"## [JamshidRock] SLC_Rock_Being_Hit: 当前没有基石处于变化状态")
                ScriptLib.SetGroupVariableValue(context,"is_changing",1)
                ScriptLib.InitTimeAxis(context,"changing_cd",{local_defs.changing_cd},false)
                ScriptLib.PrintContextLog(context,"## [JamshidRock] SLC_Rock_Being_Hit: 开启基石cd时间轴")

                local state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,rock)
                local current_answer = state_solution_defs[state]
                ScriptLib.PrintContextLog(context,"## [JamshidRock] SLC_Rock_Being_Hit: 当前答案为"..current_answer)
                local next_answer = ((current_answer)%4)+1
                ScriptLib.PrintContextLog(context,"## [JamshidRock] SLC_Rock_Being_Hit: 下一个答案为"..next_answer)
                local next_state = solution_state_defs[next_answer]
                ScriptLib.SetGadgetStateByConfigId(context,rock,next_state)
                ScriptLib.PrintContextLog(context,"## [JamshidRock] SLC_Rock_Being_Hit: 基石切状态"..next_state)

                ScriptLib.SetEntityServerGlobalValueByConfigId(context,rock,"SGV_Show_Hit_Effect",1)

            end
            return 0
        end
    end
    return 0
end


Initialize()