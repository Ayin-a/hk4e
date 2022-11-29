--ServerUploadTool Save to [/root/env/data/lua/common/V3_1]
--[[
=====================================================================================================================
||	Filename 	  ||	Engineer_Laser
||	RelVersion    ||	3.1
||	Owner         ||	xudong.sun
||	Description   ||	3.1建筑师射线
||	LogName       ||    ## Engineer_Laser_LOG
||	Protection    ||	
=====================================================================================================================
local engineerLaserConfigID = 0
local turnOption = 0 

local correctState = 0

=======================================================================================]]

local nextState ={
	[0]= 201,
	[201]= 202,
	[202]= 0,
}

local extrTriggers = {
	initialtrigger = {
		["Gadget_Create"] = { config_id = 80000002, name = "Gadget_Create", event= EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0},
		["State_Change"] = { config_id = 80000003, name = "State_Change", event= EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_state_change", trigger_count = 0},
	}
}

function action_state_change( context, evt )

	if evt.param1 == correctState and evt.param2 == engineerLaserConfigID then
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, engineerLaserConfigID, "SGV_HAS_LASER", 1)
	elseif evt.param1 ~= correctState and evt.param2 == engineerLaserConfigID then
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, engineerLaserConfigID, "SGV_HAS_LASER", 0)
	end

	return 0
end

function action_gadget_create( context, evt )

	if evt.param1 == engineerLaserConfigID then
		if ScriptLib.GetGadgetStateByConfigId(context, 0, engineerLaserConfigID) == correctState then
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, engineerLaserConfigID, "SGV_HAS_LASER", 1)
		else
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, engineerLaserConfigID, "SGV_HAS_LASER", 0)
		end

	end

	return 0
end

function SLC_EngineerMark( context )

	local eid = context.source_entity_id

	ScriptLib.MarkGroupLuaAction(context, "getengineer", "", {group_id = base_info.group_id ,config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = eid }) })

	return 0
end




function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end

	return 0
end

LF_Initialize_Group()