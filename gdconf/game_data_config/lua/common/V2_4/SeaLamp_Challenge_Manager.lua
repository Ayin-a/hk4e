
--用于管理所有海灯节活动group，防止开启两个挑战。
--原则上不需要在玩法requir里增加任何代码，只在该requir里监听，但challenge的开启没法监听，所以在Firecracker处有一行调用。

local temp_Tirgger2 = {
    --正式trigger
	{event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_Start",trigger_count = 0},
	{event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_End",trigger_count = 0},
	{event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_End",trigger_count = 0},
	{event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_End",trigger_count = 0},
	{event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_ChallengeManager_GROUP_WILL_UNLOAD",trigger_count = 0},
}
function action_Start(context,evt)
	SeaLamp_Challenge_Manager_Start(context)
	return 0
end
function action_End(context,evt)
	SeaLamp_Challenge_Manager_End(context)
	return 0
end
function action_ChallengeManager_GROUP_WILL_UNLOAD(context,evt)
    ScriptLib.PrintContextLog(context,"action_ChallengeManager_GROUP_WILL_UNLOAD")		--“Is_In_Gameplay”为group内tempValue，记录是不是开了本group的玩法
	if ScriptLib.GetGroupTempValue(context,"Is_In_Gameplay",{}) == 1 then --卸载前，判断如果本group是开玩法的，就关标记
		ScriptLib.SetLanternRiteValue(context,0)
	end
	return 0
end
function SeaLamp_Challenge_Manager_Start(context)
    ScriptLib.PrintContextLog(context,"SeaLamp_Challenge_Manager_Start")	--开标记
	ScriptLib.SetLanternRiteValue(context,1)
	ScriptLib.SetGroupTempValue(context,"Is_In_Gameplay",1,{})
	return 0 
end
function SeaLamp_Challenge_Manager_End(context)
    ScriptLib.PrintContextLog(context,"SeaLamp_Challenge_Manager_End")	--关标记
	ScriptLib.SetLanternRiteValue(context,0)
	ScriptLib.SetGroupTempValue(context,"Is_In_Gameplay",0,{})
	return 0 
end



function Initialize2()
	--加触发器
	for k,v in pairs(temp_Tirgger2) do
        v.name = "SeaLamp_Challenge_Manager_"..k
        v.config_id = 8000000 + k
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	return 0
end
Initialize2()
