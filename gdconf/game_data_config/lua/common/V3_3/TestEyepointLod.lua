--[[======================================
||  filename:   EyePointLOD
||  owner:      shuyi.chang
||  description:    EyePoint固定LOD测试
||  LogName:    ## [TestEyepointLOD]
||  Protection: 
=======================================]]
--[[
local defs = {
    target_region_config_id = 1,
    related_big_region_config_id = 2,
}
--]]

local extraTriggers = 
{
	{ config_id = 50000001, name = "ENTER_REGION", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION", trigger_count = 0 },
	{ config_id = 50000002, name = "LEAVE_REGION", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION", trigger_count = 0 },

}

local extraVariables = 
{
    -- 设置LOD层级
	{ config_id = 50000101, name = "lodLevel", value = 1, no_refresh = true },
}

local pos = regions[defs.related_big_region_config_id].pos
local markGadget = 	{ config_id = 80001, gadget_id = 70220006, pos = { x = pos.x, y = pos.y, z = pos.z }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }


--================================================================
-- Local Functions
--================================================================
function LF_Initialize_Group(triggers, suites, variables, gadgets, regions)

    -- insert triggers
    for i = 1, #extraTriggers do
        table.insert(triggers, extraTriggers[i])
    end

    -- add triggers to suite
    for i = 1, #extraTriggers do
        -- 都放到初始suite 1中
        table.insert(suites[1].triggers,extraTriggers[i].name)

    end

    -- insert variables
    for i = 1, #extraVariables do
        table.insert(variables, extraVariables[i])
    end

    -- table.insert(gadgets, markGadget)
    -- table.insert(suites[1].gadgets, markGadget.config_id)
end

--================================================================
-- Triggers
--================================================================

function action_EVENT_ENTER_REGION(context, evt)
	ScriptLib.PrintContextLog(context, "## [TestEyepointLOD] player enters region "..evt.param1)

	if evt.param1 == defs.target_region_config_id then
        local fix_lod_level = ScriptLib.GetGroupVariableValue(context, "lodLevel")
        local temp = ScriptLib.SetPlayerEyePointLOD(context, defs.target_region_config_id, defs.related_big_region_config_id, fix_lod_level)
        ScriptLib.PrintContextLog(context, "## [TestEyepointLOD] lod level is set to "..fix_lod_level..", succeed = "..temp)

    end
	return 0
end

function action_EVENT_LEAVE_REGION(context, evt)
	ScriptLib.PrintContextLog(context, "## [TestEyepointLOD] player leaves region "..evt.param1)

	if evt.param1 == defs.target_region_config_id then
        local temp = ScriptLib.ClearPlayerEyePoint(context, defs.target_region_config_id)
        ScriptLib.PrintContextLog(context, "## [TestEyepointLOD] player eye point is cleared, succeed = "..temp)

	end
	
	return 0
end

--================================================================
-- Initialization
--================================================================
LF_Initialize_Group(triggers, suites, variables, gadgets, regions)