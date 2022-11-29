
function LF_Initialize_Group(triggers, suites)
	table.insert(variables, { config_id=51200001,name = "DropRockAbyssBulletTrigger", value = 0,no_refresh = false})
end


--增加对应的variable
function DropRockAbyssBulletTrigger(context)
	local value=ScriptLib.GetGroupVariableValue(context, "DropRockAbyssBulletTrigger")
	if value == -1 then
		ScriptLib.PrintContextLog(context,"##[DropRockAbyssBulletTrigger] variable get failed")
		return 0
	end
	if value==0 then
		value=value+1
		ScriptLib.SetGroupVariableValue(context, "DropRockAbyssBulletTrigger", value) 
	else
		ScriptLib.SetGroupVariableValue(context, "DropRockAbyssBulletTrigger", 0)
	end 
	return 0
end

LF_Initialize_Group(triggers, suites)