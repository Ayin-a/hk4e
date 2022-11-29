--[[
local defs = {
	RegionID =  575001
}
--]]
-----------------------------------------
local tempTrigger = {
    { config_id = 2330000, name = "LEAVE_REGION_Arena", event = EventType.EVENT_LEAVE_REGION, source = "1",
      condition = "", action = "action_LEAVE_REGION_Arena", trigger_count = 0},
    { config_id = 2330001, name = "ENTER_REGION_Arena", event = EventType.EVENT_ENTER_REGION, source = "1",
      condition = "", action = "action_ENTER_REGION_Arena", trigger_count = 0},
	{ config_id = 2330002, name = "GROUP_WILL_UNLOAD", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "",
	  condition = "", action = "action_GROUP_WILL_UNLOAD", trigger_count = 0 }
}

function action_GROUP_WILL_UNLOAD(context, evt)
	ScriptLib.PrintContextLog(context, "action_Group_Will_Unload")
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.REGION, defs.RegionID)
	return 0
end

function action_LEAVE_REGION_Arena(context, evt)
    ScriptLib.PrintContextLog(context, "action_LEAVE_REGION_Arena")
    ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})
    ScriptLib.ClearPlayerEyePoint(context, defs.RegionID)
    return 0
end

-- 触发操作
function action_ENTER_REGION_Arena(context, evt)
    ScriptLib.PrintContextLog(context, "@@ ENTER_REGION_Arena")
    TrySetPlayerEyePoint(context,regions[defs.RegionID],regions[defs.RegionID],1,{0})
    return 0
end

--此方法在两个region坐标接近时调用比较合适
function TrySetPlayerEyePoint(context, small_region, big_region, opt_type, vision_type_list)
    --opt_type为1表示需要setVisionType
    local eid = ScriptLib.GetAvatarEntityIdByUid(context, context.uid)
    local player_pos = ScriptLib.GetPosByEntityId(context, eid)
    --在小圈内要处理入圈
    if Is_In_Region(player_pos, small_region) == true then
        ScriptLib.SetPlayerEyePoint(context, small_region.config_id, big_region.config_id)
        if opt_type == 1 then
            ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, vision_type_list)
        end
    end
end

function Is_In_Region(pos1, region)
    local X = pos1.x - region.pos.x
    local Y = pos1.y - region.pos.y
    local Z = pos1.z - region.pos.z
    if region.shape == RegionShape.SPHERE then
        if math.sqrt(X*X+Y*Y+Z*Z) <= region.radius then
            return true
        else
            return false
        end
    elseif region.shape == RegionShape.CUBIC then
        if math.abs(X) > region.size.x/2 or math.abs(Y) > region.size.y/2 or math.abs(Z) > region.size.z/2 then
            return false
        else
            return true
        end
    end
end

function LF_Initialize_Level()
    for k,v in pairs(tempTrigger) do
        table.insert(triggers, v)
        table.insert(suites[init_config.suite].triggers, v.name)
    end
    return 0
end

LF_Initialize_Level()
