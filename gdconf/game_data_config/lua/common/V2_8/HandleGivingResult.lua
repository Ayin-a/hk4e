--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---
--[[======================================
||  filename:   HandleGivingResult
||  owner:      weiwei.sun
||  description:    物件交付接口返回值是列表。提供一个将列表第一位ID设为GroupVariable的功能，供关卡编辑器使用
||  LogName:    ## [HandleGivingResult]
||  Protection: 
=======================================]]

--[[
未交付不可交互 - 没特定State
未交付（可交互） - 0
交付不可取回（不可交互） - 101
交付可取回 - 102
]]

local cfg = {
    can_return = 1,--是否可取回
}
local giving_Triggers = {
    { config_id = 8800001, name = "Gadget_Giving_Finished", event = EventType.EVENT_GADGET_GIVING_FINISHED, source = "", condition = "", action = "action_Gadget_Giving_Finished", trigger_count = 0 },
    { config_id = 8800002, name = "Gadget_Giving_TakeBack", event = EventType.EVENT_GADGET_GIVING_TAKEBACK, source = "", condition = "", action = "action_Gadget_Giving_TakeBack", trigger_count = 0 },
}


function LF_Initialize_GadgetGiving(triggers, suites)
    for i=1,#giving_Triggers do
        table.insert(triggers, giving_Triggers[i])
        table.insert(suites[init_config.suite].triggers,giving_Triggers[i].name)
    end
    table.insert(variables,{ config_id = 50000001, name = "given_item", value = 0})
end

--监听Gadget交付完成事件
--evt.param1: 交付Gadget的config_id
--evt.param2: 使用的giving_id
function action_Gadget_Giving_Finished(context, evt)
    
    ScriptLib.PrintContextLog(context, "## [HandleGivingResult] Gadget_Giving_Finished. gadget@"..evt.param1.." giving_id@"..evt.param2)

    if cfg.can_return == 1 then
        ScriptLib.SetGadgetStateByConfigId(context, evt.param1, 102)
    else
        ScriptLib.SetGadgetStateByConfigId(context, evt.param1, 101)
    end
    
    local item_list = ScriptLib.GetGivingItemList(context, evt.param2)
    if nil ~= item_list and 0 ~= #item_list then
        ScriptLib.SetGroupVariableValue(context, "given_item", item_list[1])
    else
        ScriptLib.PrintContextLog(context, "## [HandleGivingResult] Get item_list by givingID failed!")
    end

    --星空投影灯逻辑
    if nil ~= defs.control then 
        LF_HandleStarProjector(context, 1)
    end
    --埋点
    ScriptLib.MarkGroupLuaAction(context, "StarProjectorGiving", "", {["group_id"] = base_info.group_id, ["config_id"] = evt.param1, ["mat_id"] = item_list[1], ["op_type"] = 1})
    return 0
end

function action_Gadget_Giving_TakeBack(context, evt)
    ScriptLib.PrintContextLog(context, "## [HandleGivingResult] Gadget_Giving_TakeBack. gadget@"..evt.param1.." giving_id@"..evt.param2)

    ScriptLib.SetGroupVariableValue(context, "given_item", 0)

    ScriptLib.ActiveGadgetItemGiving(context, evt.param2, base_info.group_id, evt.param1)
    ScriptLib.SetGadgetStateByConfigId(context, evt.param1, 0)


    --星空投影灯逻辑
    if nil ~= defs.control then 
        LF_HandleStarProjector(context, 0)
    end
    --埋点
    ScriptLib.MarkGroupLuaAction(context, "StarProjectorGiving", "", {["group_id"] = base_info.group_id, ["config_id"] = evt.param1, ["mat_id"] = 0, ["op_type"] = 2})

    return 0
end
--当星空投影仪ability准备好时，SLC请求设置亮点
function SLC_HandleGivingResult_Init(context)
     --星空投影灯逻辑
    if nil ~= defs.control then 
        if 102 == ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, defs.control.giving_gadget) then
            LF_HandleStarProjector(context, 1)
            ScriptLib.PrintContextLog(context, "## [HandleGivingResult] SLC_HandleGivingResult_Init. giving_gadget@"..defs.control.giving_gadget.." is_on: 1")
        else
            LF_HandleStarProjector(context, 0)
            ScriptLib.PrintContextLog(context, "## [HandleGivingResult] SLC_HandleGivingResult_Init. giving_gadget@"..defs.control.giving_gadget.." is_on: 0")
        end
    end
    return 0
end

function LF_HandleStarProjector(context, is_on)
    local match = defs.control
    ScriptLib.ExecuteGroupLua(context, match.group_id, "EX_SetStarProjectorSGV", { match.config_id, match.light_index, is_on})
    return 0
end

--[[
--贴在投影以所在Group
function EX_SetStarProjectorSGV(context, prev_context, config_id, light_index, is_on)

    ScriptLib.PrintContextLog(context, "## [StarProjector] EX_SetStarProjectorSGV called. light_index@"..light_index.. " is_on@".. is_on)

    ScriptLib.SetEntityServerGlobalValueByConfigId(context, config_id, "SGV_StarProjector_LightOn_"..light_index, is_on)

    return 0
end
]]
LF_Initialize_GadgetGiving(triggers, suites)