--ServerUploadTool Save to [/root/env/data/lua/common/V2_5]
--[[
=====================================================================================================================
||	Filename 	  ||	Wathcer_Energy 千灯垂绿watcher
||	RelVersion    ||	2.5
||	Owner         ||	xudong.sun
||	Description   ||	2.5版本，千灯垂绿的陈列室计数、运营埋点
||	LogName       ||    /
||	Protection    ||	/
=====================================================================================================================


=======================================================================================]]
local extrTriggers = {
	initialtrigger = {
		["Option_Down"] = { config_id = 80000002, name = "Option_Down", event= EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_OptionDown", trigger_count = 0, forbid_guest = false },
	}
}

local optionID = 700


function action_OptionDown( context, evt )
	if evt.param2 ~= optionID then
		return 0
	end

	ScriptLib.DelWorktopOptionByGroupId(context, 0, evt.param1, optionID)

	ScriptLib.AddRegionalPlayVarValue(context, context.uid, 2501, 30)

	ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, 201)

	--陈列室记录
	ScriptLib.AddExhibitionAccumulableData(context, context.uid, "Activity_Michiae_watcher_energy_charge", 1)

	--运营数据埋点
	ScriptLib.MarkGroupLuaAction(context, "MichiaeMatsuri_2","" , { EnergyAdd = 30, CurEnergy = math.floor(ScriptLib.GetRegionalPlayVarValue(context, context.uid, 2501)), CurPressure = math.floor(ScriptLib.GetRegionalPlayVarValue(context, context.uid, 2500))  })

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