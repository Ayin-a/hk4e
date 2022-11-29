--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---
--[[======================================
||  filename:   TimeReverser
||  owner:      weiwei.sun
||  description:    2.8莫娜梦境 时间回溯
||  LogName:    TimeReverser
||  Protection: 
=======================================]]--
--[[
local defs = {
    reverse_time = 10,--回溯倒计时，整数秒
}
]]
local extraTriggers={
    { config_id = 8000001, name = "TimeAxis_Pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "reverse", condition = "", action = "action_TimeAxis_Pass", trigger_count = 0 },
    { config_id = 8000002, name = "Gadget_State_Change", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_Gadget_State_Change", trigger_count = 0 },
    { config_id = 8000003, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
    { config_id = 8000004, name = "Revert_VariableChange", event = EventType.EVENT_VARIABLE_CHANGE, source = "revert", condition = "", action = "action_Revert_VariableChange", trigger_count = 0 },
    { config_id = 8000005, name = "Device_Gadget_State_Change", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_Device_Gadget_State_Change", trigger_count = 0 },
}
function LF_Initialize_Group(triggers, suites)
    for i=1,#extraTriggers do
        table.insert(triggers, extraTriggers[i])
        table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
    end
    --外部手动触发回溯
    table.insert(variables,{ config_id = 50000001, name = "revert", value = 0, no_refresh = true })
    --是否正处于待回溯状态
    table.insert(variables,{ config_id = 50000002, name = "is_reverting", value = 0, no_refresh = true })
end

function action_Group_Load(context, evt)
    if 1 == ScriptLib.GetGroupVariableValue(context, "is_reverting") then        
        for k, v in pairs(gadgets) do
            if nil ~= v.mark_flag then 
                ScriptLib.SetGadgetStateByConfigId(context, v.config_id, 0)
            end
        end
    end 
    ScriptLib.SetGroupVariableValue(context, "revert", 0)
    ScriptLib.SetGroupVariableValue(context, "is_reverting", 0)
    return 0
end

function action_Device_Gadget_State_Change(context, evt)
    local gadget_id = ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid)
    if 70310390 ~= gadget_id then
        return  0
    end
    if 0 ~= evt.param1 then 
        return 0
    end
    ScriptLib.SetGroupVariableValue(context, "is_reverting", 0)
    return 0
end

function action_Gadget_State_Change(context, evt)
    if nil == gadgets[evt.param2] then 
        ScriptLib.PrintContextLog(context, "## [TimeReverser] Gadget_State_Change get unknown param2.")
        return 0
    end
    if nil == gadgets[evt.param2].mark_flag then 
        return 0
    end
    if 201 ~= evt.param1 then 
        return 0
    end
    --检查是否处于待回溯状态，若不处于，则尝试init回溯时间轴
    if 1 ~= ScriptLib.GetGroupVariableValue(context, "is_reverting") then        
        LF_TryInitReverseTimeAxis(context)
    end
    return 0
end

function action_TimeAxis_Pass(context, evt) 
    for k, v in pairs(gadgets) do
        if nil ~= v.mark_flag then 
            ScriptLib.SetGadgetStateByConfigId(context, v.config_id, 0)
        end
        --其中回溯机关 做回溯表现
        if 70310390 == v.gadget_id then
            ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {v.config_id}, "GV_TimeReverse", 1)
        end
    end
    ScriptLib.SetGroupVariableValue(context, "is_reverting", 0)
    return 0
end

function action_Revert_VariableChange(context, evt)
    if 1 == evt.param1 and 0 == evt.param2 then
        ScriptLib.PrintContextLog(context, "## [TimeReverser] Revert_VariableChange.")
        ScriptLib.SetGroupVariableValue(context, "revert", 0)
        --检查是否处于待回溯状态，若不处于，则尝试init回溯时间轴
        if 1 ~= ScriptLib.GetGroupVariableValue(context, "is_reverting") then
           LF_TryInitReverseTimeAxis(context)
        end       
    end
    return 0
end
function LF_TryInitReverseTimeAxis(context)
    local state = -1
    --根据GadgetState判断是否要准备回溯
    for k, v in pairs(gadgets) do
        if 70310390 == v.gadget_id then
            state = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, v.config_id)
            ScriptLib.PrintContextLog(context, "## [TimeReverser] LF_TryInitReverseTimeAxis. Operator gadget state@"..state)
            break
        end
    end
    --如果state为0 时间回溯不生效
    if 0 == state then
        ScriptLib.SetGroupVariableValue(context, "is_reverting", 0)
        return 0
    else
        ScriptLib.InitTimeAxis(context, "reverse", {defs.reverse_time}, false)
        ScriptLib.SetGroupVariableValue(context, "is_reverting", 1)
        ScriptLib.PrintContextLog(context, "## [TimeReverser] LF_TryInitReverseTimeAxis. InitTimeAxis.")
        return 0
    end 
    return 0 
end
LF_Initialize_Group(triggers, suites)
