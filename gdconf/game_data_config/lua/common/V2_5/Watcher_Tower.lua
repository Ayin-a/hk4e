--ServerUploadTool Save to [/root/env/data/lua/common/V2_5]
--[[
=====================================================================================================================
||	Filename 	  ||	Wathcer_Tower  暗夜塔Wathcer
||	RelVersion    ||	2.5
||	Owner         ||	xudong.sun
||	Description   ||	2.5版本，暗夜塔陈列室、运营埋点
||	LogName       ||    /
||	Protection    ||	/
=====================================================================================================================


=======================================================================================]]


local extrTriggers = {
	initialtrigger = {
		["GadgetStateChange"] = { config_id = 80000004, name = "GadgetStateChange", event= EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_GadgetStateChange", trigger_count = 0 },
	}
}

function action_GadgetStateChange( context, evt )

	if evt.param1 ~= 201 or ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid) ~= 70330154 then
		return 0
	end


	--陈列室计数
	ScriptLib.AddExhibitionAccumulableData(context, ScriptLib.GetSceneOwnerUid(context), "Activity_Michiae_watcher_abyss_tower", 1)

	--运营数据埋点
	ScriptLib.MarkGroupLuaAction(context, "MichiaeMatsuri_1","" , {})

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