--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---
--[[======================================
||  filename:   MonaPortal
||  owner:      weiwei.sun
||  description:    2.8莫娜梦境 传送门
||  LogName:    MonaPortal
||  Protection: 
=======================================]]--
--[[
local defs = {
    target_leveltag = 22,
    pos = { x=-677.9, y=135, z=-16},
    rot = {x=0, y=0, z=1},
    radius = 2,
}
]]

function SLC_MonaPortal_Start(context)
    if true == ScriptLib.CheckIsInMpMode(context) then        
        local cfg_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
        ScriptLib.ShowReminderRadius(context, 321700501, gadgets[cfg_id].pos, 5)
        return 0
    end
    --埋点
    local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
    ScriptLib.MarkGroupLuaAction(context, "MonaPortal", "", {["group_id"] = base_info.group_id, ["config_id"] = config_id, ["to_leveltag"] = defs.target_leveltag})

    ScriptLib.ChangeToTargetLevelTagWithParamTable(context, defs.target_leveltag, {pos = defs.pos, radius = defs.radius, rot = defs.rot})

    return 0
end

function SLC_MonaPortal_TryShowReminder(context)
    local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
    if 22 == defs.target_leveltag then 
        ScriptLib.ShowReminderRadius(context, 1111377, gadgets[config_id].pos, 5)
    end

    return 0
end