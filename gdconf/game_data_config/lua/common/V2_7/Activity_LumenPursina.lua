--ServerUploadTool Save to [/root/env/data/lua/common/V2_7]
--======================================================================================================================
--||   Filename      ||    Activity_LumenPursina
--||   RelVersion    ||    V2_7
--||   Owner         ||    chao-jin
--||   Description   ||    
--||   LogName       ||    ##[Activity_LumenPursina]
--||   Protection    ||    
--======================================================================================================================
--[[Defs & Miscs
defs = {
	pursina = ,光钉的configID
}

--====================================================================================================================]]
local LumenPursina_Triggers = {
	{config_id = 8002001,  name = "pursina_state",  event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_pursina_state", trigger_count = 0},
	{config_id = 8002002, name = "challenge_success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0 }, 

}

--Events
function action_pursina_state(context, evt) 
	if evt.source_name == "pursina_state" then 
		if evt.param1 == 0 then 
			LF_PursinaStop(context)
			return 0
		end
		if evt.param1 == 1 then 
			LF_PursinaLow(context)
			return 0
		end
		if evt.param1 == 2 then 
			LF_PursinaMid(context)
			return 0
		end
		if evt.param3 == 3 then 
			LF_PursinaHigh(context)
			return 0
		end
	end
	return 0
end

function action_challenge_success(context, evt) 
	ScriptLib.FinishGroupLinkBundle(context, base_info.group_id)
	ScriptLib.TryFinishLuminanceStoneChallengeStage(context, base_info.group_id)
	return 0
end


--======================================================================================================================
--LevelFunctions
function LF_PursinaStop(context)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 0)
end

function LF_PursinaLow(context)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 1)
end

function LF_PursinaMid(context)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 2)
end

function LF_PursinaHigh(context)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 3)
end

function LumenPursina_Initialize()
	for config_id,infos in pairs(monsters) do
        if infos.affix ~= nil then
            table.insert(infos.affix, 4160)
        else
            infos["affix"] = {4160}
        end
    end
	table.insert(variables, {  config_id=50000001,name = "pursina_state", value = 0,no_refresh = false})
	table.insert(variables, {  config_id=50000002,name = "ChallengeSuccess", value = 0,no_refresh = false})
	for k,v in pairs(LumenPursina_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end

LumenPursina_Initialize()