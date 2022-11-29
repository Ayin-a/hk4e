function SLC_Reminder_Done( context)

	ScriptLib.SetGroupVariableValue(context, "open_the_door", 1)

	return 0
end

function LF_Initialize_OpenDoor_Group()
	table.insert(variables,{ config_id= 50000001, name = "open_the_door", value = 0, no_refresh = true})
	return 0
end

LF_Initialize_OpenDoor_Group()