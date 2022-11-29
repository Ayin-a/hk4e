local temp_Variables = {
	{  config_id=50000001,name = "SET_GV_1", value = 0, no_refresh = false },
	{  config_id=50000002,name = "SET_GV_0", value = 0, no_refresh = false },
	{  config_id=50000003,name = "StartChallenge", value = 0, no_refresh = false },
	{  config_id=50000004,name = "FinishChallenge", value = 0, no_refresh = false },
	{  config_id=50000005,name = "StartGallery", value = 0, no_refresh = false },
}

local temp_Tirgger = {
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "StartChallenge", condition = "", action = "action_EVENT_VARIABLE_CHANGE_StartChallenge",trigger_count = 0},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "FinishChallenge", condition = "", action = "action_EVENT_VARIABLE_CHANGE_FinishChallenge",trigger_count = 0,tag = "1000"},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "SET_GV_1", condition = "", action = "action_EVENT_VARIABLE_CHANGE_1",trigger_count = 0},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "SET_GV_0", condition = "", action = "action_EVENT_VARIABLE_CHANGE_0",trigger_count = 0},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "StartGallery", condition = "", action = "action_EVENT_VARIABLE_CHANGE_StartGallery",trigger_count = 0},
}
function action_EVENT_VARIABLE_CHANGE_StartGallery(context,evt)
    ScriptLib.StartGallery(context,12009)
    return 0 
end

function action_EVENT_VARIABLE_CHANGE_FinishChallenge(context,evt)

    return 0
end
function action_EVENT_VARIABLE_CHANGE_StartChallenge(context,evt)
    ScriptLib.PrintContextLog(context,"action_EVENT_VARIABLE_CHANGE_StartChallenge")
    ScriptLib.StartChallenge(context,2002008,2002008,{3,1000,1})
    return 0
end
function action_EVENT_VARIABLE_CHANGE_1(context,evt)
    ScriptLib.PrintContextLog(context,"action_EVENT_VARIABLE_CHANGE_1")
    local uid = ScriptLib.GetSceneUidList(context)
    ScriptLib.SetTeamEntityGlobalFloatValue(context, {uid[1]}, "Team_SLCType_test_GV_01", 1)
    return 0
end

function action_EVENT_VARIABLE_CHANGE_0(context,evt)
    ScriptLib.PrintContextLog(context,"action_EVENT_VARIABLE_CHANGE_0")
    local uid = ScriptLib.GetSceneUidList(context)
    ScriptLib.SetTeamEntityGlobalFloatValue(context, {uid[1]}, "Team_SLCType_test_GV_01", 0)
    return 0
end

function SLC_function_01(context)
    ScriptLib.PrintContextLog(context,"SLC_function_01")
    return 0 
end

function Initialize()
	--加触发器
	for k,v in pairs(temp_Tirgger) do
        v.name = k..""
        v.config_id = 9000000 + k
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	--加变量
	for k,v in pairs(temp_Variables) do
		table.insert(variables,v)
	end

	return 0
end
Initialize()
