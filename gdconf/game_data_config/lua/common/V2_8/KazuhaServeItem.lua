--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---
--[[======================================
||  filename:   KazuhaServeItem
||  owner:      weiwei.sun
||  description:    1.拾取了多个供奉物在身上去交付时，需要判断先拾取的哪一个然后删除对应gadget，re-quire统一处理.
                    2.GadgetState需求：切Suite，即Gadget的Remove和Add：希望供奉物保留切之前的State，0或201
                    重进地城，即GroupLoad：希望供奉物为201
                    3.供奉物还有一个锁态GadgetState 101，希望能根据一个”是否解锁“的变量恢复
||  LogName:    ## [KazuhaServeItem]
||  Protection: 
=======================================]]


local ServeItem_Triggers = {
    { config_id = 8300001, name = "ServeItem_Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_ServeItem_Group_Load", trigger_count = 0 },
    { config_id = 8300002, name = "Device_Gadget_State_Change", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_Device_Gadget_State_Change", trigger_count = 0 },
    { config_id = 8300003, name = "Item_Gadget_Create", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_Item_Gadget_Create", trigger_count = 0 },
    { config_id = 8300004, name = "Item_Gadget_State_Change", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_Item_Gadget_State_Change", trigger_count = 0 },
   -- { config_id = 8300005, name = "Group_Will_Unload", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_Group_Will_UnLoad", trigger_count = 0 },
  }


function LF_Initialize_ServeItem(triggers, suites)
    for i=1,#ServeItem_Triggers do
        table.insert(triggers, ServeItem_Triggers[i])
        table.insert(suites[init_config.suite].triggers,ServeItem_Triggers[i].name)    
    end
    --为了实现且Suite时GadgetState保留，必须以变量暂存一下GadgetState
    table.insert(variables,{ config_id = 53000004, name = "state_1", value = 201, no_refresh = true})
    table.insert(variables,{ config_id = 53000005, name = "state_2", value = 201, no_refresh = true})
    table.insert(variables,{ config_id = 53000006, name = "state_3", value = 201, no_refresh = true})
end

function action_ServeItem_Group_Load(context,evt)
    --重置拾取计数
    ScriptLib.SetGroupTempValue(context, "pick_num", 1, {})
    ScriptLib.SetGroupTempValue(context, "picked_1", 0, {})
    ScriptLib.SetGroupTempValue(context, "picked_2", 0, {})
    ScriptLib.SetGroupTempValue(context, "picked_3", 0, {})
    --GroupLoad时，Gadget不是101就应该是201，没有0
    for k, v in pairs(defs.serve_items) do
        -- isLock_x 变量优先
        if 1 == ScriptLib.GetGroupVariableValue(context, "isLock_"..k) then
            ScriptLib.SetGroupVariableValue(context, "state_"..k, 101)
            ScriptLib.SetGadgetStateByConfigId(context, v, 101)
            ScriptLib.PrintContextLog(context, "## [KazuhaServeItem]: Handle gadget state on Group Load. configID@".. v.. " state@101")
        else
            ScriptLib.SetGroupVariableValue(context, "state_"..k, 201)
            ScriptLib.SetGadgetStateByConfigId(context, v, 201)
            ScriptLib.PrintContextLog(context, "## [KazuhaServeItem]: Handle gadget state on Group Load. configID@".. v.. " state@201")
        end
    end
    ScriptLib.SetGroupTempValue(context, "group_loaded", 1, {})
    return 0
end

--处理切Suite时，当供奉物创建，根据自己对应的Variable恢复GadgetState
function action_Item_Gadget_Create(context, evt)

    --判断是供奉物
    if 70290374 ~= evt.param2 and 70310363 ~= evt.param2 then
        return 0
    end
    --判断这次Create是属于切Suite导致的
    if 1 == ScriptLib.GetGroupTempValue(context, "group_loaded", {}) then
        LF_ResetServeItem(context, evt.param1)
    end
    return 0
end
--记录供奉物状态切换
function action_Item_Gadget_State_Change(context, evt)
    local index = LF_ServeItem_GetIndexInTable(context, evt.param2, defs.serve_items)
    if 0 == index then
        return 0
    end   
    ScriptLib.SetGroupVariableValue(context, "state_"..index, evt.param1)
    ScriptLib.PrintContextLog(context, "## [KazuhaServeItem]: Update gadget state record. configID@".. evt.param2.. " state@".. evt.param1)
    return 0
end

function LF_ResetServeItem(context, config_id)
    local index = LF_ServeItem_GetIndexInTable(context, config_id, defs.serve_items)
    if 0 == index then
        return 0
    end
    -- isLock_x 变量优先
    if 1 == ScriptLib.GetGroupVariableValue(context, "isLock_"..index) then
        ScriptLib.SetGroupVariableValue(context, "state_"..index, 101)
        ScriptLib.SetGadgetStateByConfigId(context, config_id, 101)
        ScriptLib.PrintContextLog(context, "## [KazuhaServeItem]: Handle gadget state on create. configID@".. config_id.. " state@101")
    --无 isLock_ 配置或0  以state_x变量设GadgetSate   
    else
        local state = ScriptLib.GetGroupVariableValue(context, "state_"..index)
        ScriptLib.SetGadgetStateByConfigId(context, config_id, state)
        ScriptLib.PrintContextLog(context, "## [KazuhaServeItem]: Handle gadget state on create. configID@".. config_id.. " state@".. state)
    end
    
    return 0
end

function SLC_ServeItem_Picked(context)
    --判断是供奉物
    local gadget_id = ScriptLib.GetGadgetIdByEntityId(context, context.source_entity_id)
    if 70290374 ~= gadget_id and 70310363 ~= gadget_id then
        return 0
    end

    local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
    --根据是第几次拾取，记录供奉物configID
    local num =  ScriptLib.GetGroupTempValue(context, "pick_num", {})
    if 1 == num then
        ScriptLib.SetGroupTempValue(context, "picked_1", config_id, {})
        ScriptLib.SetGadgetStateByConfigId(context, config_id, 0)
        ScriptLib.ChangeGroupTempValue(context, "pick_num", 1, {})
    elseif 2 == num then
        ScriptLib.SetGroupTempValue(context, "picked_2", config_id, {})
        ScriptLib.SetGadgetStateByConfigId(context, config_id, 0)
        ScriptLib.ChangeGroupTempValue(context, "pick_num", 1, {})
    elseif 3 == num then
        ScriptLib.SetGroupTempValue(context, "picked_3", config_id, {})
        ScriptLib.SetGadgetStateByConfigId(context, config_id, 0)
        ScriptLib.ChangeGroupTempValue(context, "pick_num", 1, {})
    else
        ScriptLib.PrintContextLog(context, "## [KazuhaServeItem] Picking item while all item picked!")
    end

    return 0
end

function action_Device_Gadget_State_Change(context, evt)
    --特殊Group走EX_Device_Gadget_State_Change
    if 220142013 == base_info.group_id or 220142012 == base_info.group_id then
        return 0
    end
    --判断切201
    if 201 ~= evt.param1 then
        return 0
    end
     --判断是供奉台
    local gadget_id = ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid)
    if 70290373 ~= gadget_id and 70290375 ~= gadget_id then
        return 0
    end

    --移除最早拾取的供奉物
    local picked_1 = ScriptLib.GetGroupTempValue(context, "picked_1", {})
    local picked_2 = ScriptLib.GetGroupTempValue(context, "picked_2", {})
    local picked_3 = ScriptLib.GetGroupTempValue(context, "picked_3", {})

    ScriptLib.PrintContextLog(context, "## [KazuhaServeItem] Device_Gadget_State_Change. picked_1@"..picked_1 .." picked_2@"..picked_2.." picked_3@"..picked_3)

    if 0 < picked_1 then
       ScriptLib.KillEntityByConfigId(context, { config_id = picked_1 })
       ScriptLib.SetGroupTempValue(context, "picked_1", 0, {})
    elseif 0 < picked_2 then
       ScriptLib.KillEntityByConfigId(context, { config_id = picked_2 })
        ScriptLib.SetGroupTempValue(context, "picked_2", 0, {})
    elseif 0 < picked_3 then
       ScriptLib.KillEntityByConfigId(context, { config_id = picked_3 })
        ScriptLib.SetGroupTempValue(context, "picked_3", 0, {})
    else
        ScriptLib.PrintContextLog(context, "## [KazuhaServeItem] Serving item while no item picked!")
    end

    return 0
end

function EX_Device_Gadget_State_Change(context, prev_context, param1)
    --判断切201
    if 201 ~= param1 then
        return 0
    end
     --判断是供奉台
    --[[local gadget_id = ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid)
    if 70290373 ~= gadget_id and 70290375 ~= gadget_id then
        return 0
    end]]

    --移除最早拾取的供奉物
    local picked_1 = ScriptLib.GetGroupTempValue(context, "picked_1", {})
    local picked_2 = ScriptLib.GetGroupTempValue(context, "picked_2", {})
    local picked_3 = ScriptLib.GetGroupTempValue(context, "picked_3", {})

    ScriptLib.PrintContextLog(context, "## [KazuhaServeItem] Device_Gadget_State_Change. picked_1@"..picked_1 .." picked_2@"..picked_2.." picked_3@"..picked_3)

    if 0 < picked_1 then
       ScriptLib.KillEntityByConfigId(context, { config_id = picked_1 })
       ScriptLib.SetGroupTempValue(context, "picked_1", 0, {})
    elseif 0 < picked_2 then
       ScriptLib.KillEntityByConfigId(context, { config_id = picked_2 })
        ScriptLib.SetGroupTempValue(context, "picked_2", 0, {})
    elseif 0 < picked_3 then
       ScriptLib.KillEntityByConfigId(context, { config_id = picked_3 })
        ScriptLib.SetGroupTempValue(context, "picked_3", 0, {})
    else
        ScriptLib.PrintContextLog(context, "## [KazuhaServeItem] Serving item while no item picked!")
    end

    return 0
end

function LF_ServeItem_GetIndexInTable(context, value, check_table)
    for i = 1, #check_table do
        if check_table[i] == value then
            return i
        end
    end
    return 0
end

LF_Initialize_ServeItem(triggers, suites)