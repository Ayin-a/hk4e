--ServerUploadTool Save to [/root/env/data/lua/common/V2_5]

local extrTriggers = {
	initialtrigger = {
		["GadgetStateChange"] = { config_id = 8000004, name = "GadgetStateChange", event= EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_GadgetStateChange", trigger_count = 0 },
		["Group_Load"] = { config_id = 8000005, name = "Group_Load", event= EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_GroupLoad", trigger_count = 0 },
		["Player_Die"] = { name = "any_player_die", config_id = 8000012, event = EventType.EVENT_SCENE_MP_PLAY_ALL_AVATAR_DIE, source = "", condition = "", action = "action_any_player_die", trigger_count = 0 }
	}
}


function action_GroupLoad( context, evt)

	ScriptLib.PrintContextLog(context, "## TEST_LOG : Group Load")

	return 0
end


function action_GadgetStateChange( context, evt )

	-- ScriptLib.PrintContextLog(context, "## TEST_LOG : Group Refresh 144001009 Return "..ScriptLib.RefreshGroup(context, { group_id = 144001009, suite = 1 }))

	-- ScriptLib.PrintContextLog(context, "## TEST_LOG : Group Refresh 177005038 Return "..ScriptLib.RefreshGroup(context, { group_id = 177005038, suite = 1 }))

	return 0
end

function action_any_player_die(context, evt)
	

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