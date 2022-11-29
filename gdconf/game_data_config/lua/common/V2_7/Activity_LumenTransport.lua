--ServerUploadTool Save to [/root/env/data/lua/common/V2_7]
--======================================================================================================================
--||   Filename      ||    Activity_LumenTransport
--||   RelVersion    ||    V2_7
--||   Owner         ||    chao-jin
--||   Description   ||    
--||   LogName       ||    ##[Activity_LumenTransport]
--||   Protection    ||    
--======================================================================================================================
--Defs & Miscs

--======================================================================================================================
local LumenTransport_Triggers = {
--	{config_id = 8002001,  name = "pursina_state",  event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_pursina_state", trigger_count = 0},
	{config_id = 8002002, name = "challenge_success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0 }, 
	{config_id = 8002003, name = "challenge_fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0 }, 
    {config_id = 8002004, name = "any_gadget_die",  event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_any_gadget_die", trigger_count = 0},
    {config_id = 8002005, name = "group_load",  event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
}

local cores = {582021,582022,582031,582058,582059,582060,582095,582096,582097,582101,582127,582128,582148,582045,582169,582171,582173,582175,582190,582207,582208,582209,582210,582211}

--Events
--[[ 运输关卡不需要此段内容
function action_pursina_state(context, evt) 
	if evt.source_name == "pursina_state" then 
		if evt.param1 == 0 then 
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 0)
			return 0
		end
		if evt.param1 == 1 then 
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 1)
			return 0
		end
		if evt.param1 == 2 then 
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 2)
			return 0
		end
		if evt.param3 == 3 then 
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 3)
			return 0
		end
	end
	return 0
end
]]

function action_challenge_success(context, evt)
	ScriptLib.PrintContextLog(context,"##[LumenTransport]:挑战成功") 
	local used_time = 300 - evt.param2
	local remove_mud  = ScriptLib.GetGroupTempValue(context, "MUD_REMOVED", {})
	local uid_list = ScriptLib.GetSceneUidList(context)
    local lumen_level = ScriptLib.GetTeamServerGlobalValue(context, context.owner_uid, "SGV_Light_Stone_Level")
    ScriptLib.PrintContextLog(context,"##[LumenTransport]:挑战成功，发送埋点数据，流水号"..(evt.param_str1).."耗时"..used_time.."清除黑泥数"..remove_mud.."流明石等级"..lumen_level) 
    ScriptLib.MarkGroupLuaAction(context, "Luminous_challenge_2", evt.param_str1, {["challenge_id"] = 2009006,["end_reason"] = 1,["use_time"]= used_time ,["remove_mud"]= remove_mud,["luminous_level"] = lumen_level})
	for i=1,9 do
    	ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, i+1)
    end
	ScriptLib.TryFinishLuminanceStoneChallengeStage(context, base_info.group_id)
    ScriptLib.GoToGroupSuite(context, base_info.group_id, 11)
    
    ScriptLib.FinishGroupLinkBundle(context, base_info.group_id)
	return 0
end


function action_challenge_fail(context, evt) 
	ScriptLib.PrintContextLog(context,"##[LumenTransport]:挑战失败") 
	local used_time = 300 - evt.param2
	local remove_mud  = ScriptLib.GetGroupTempValue(context, "MUD_REMOVED", {})
    local lumen_level = ScriptLib.GetTeamServerGlobalValue(context, context.owner_uid, "SGV_Light_Stone_Level")
	if evt.param2 <= 0 then 
    	ScriptLib.PrintContextLog(context,"##[LumenTransport]:挑战超时失败，发送埋点数据，流水号"..(evt.param_str1).."耗时"..used_time.."清除黑泥数"..remove_mud.."流明石等级"..lumen_level) 
    	ScriptLib.MarkGroupLuaAction(context, "Luminous_challenge_2", evt.param_str1, {["challenge_id"] = 2009006,["end_reason"] = 2,["use_time"]= used_time ,["remove_mud"]= remove_mud,["luminous_level"] = lumen_level})
    else
    	if ScriptLib.IsPlayerAllAvatarDie(context, context.owner_uid) then
    		ScriptLib.PrintContextLog(context,"##[LumenTransport]:挑战团灭，发送埋点数据，流水号"..(evt.param_str1).."耗时"..used_time.."清除黑泥数"..remove_mud.."流明石等级"..lumen_level) 
    		ScriptLib.MarkGroupLuaAction(context, "Luminous_challenge_2", evt.param_str1, {["challenge_id"] = 2009006,["end_reason"] = 0,["use_time"]= used_time ,["remove_mud"]= remove_mud,["luminous_level"] = lumen_level})
    	end
    end
    ScriptLib.SetGroupTempValue(context, "MUD_REMOVED", 0, {})
    for i=1,9 do
    	ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, i+1)
    end
    ScriptLib.RefreshGroup(context, {group_id = base_info.group_id, suite = 1})
	return 0
end


function action_any_gadget_die(context,evt)
    if not ScriptLib.IsChallengeStartedByChallengeId(context, 2009006) then
        ScriptLib.PrintContextLog(context,"##[LumenTransport]:挑战未開啟，不處理") 
        return 0
    end
    for k,v in pairs(cores) do
        if evt.param1 == v then 
            ScriptLib.PrintContextLog(context,"##[LumenProtect]:黑泥死亡增加统计")
            ScriptLib.ChangeGroupTempValue(context, "MUD_REMOVED", 1, {})
        end
    end
    return 0
end

function action_group_load( context, evt )
	ScriptLib.SetGroupTempValue(context, "MUD_REMOVED", 0, {})
	--保底
	ScriptLib.RefreshGroup(context, {group_id = base_info.group_id, suite = 1})
	return 0
end


--======================================================================================================================
--LevelFunctions

function LumenTransport_Initialize()
	for config_id,infos in pairs(monsters) do
        if infos.affix ~= nil then
            table.insert(infos.affix, 4160)
        else
            infos["affix"] = {4160}
        end
    end
--	table.insert(variables, {  config_id=50000001,name = "pursina_state", value = 0,no_refresh = false})
--	table.insert(variables, {  config_id=50000002,name = "ChallengeSuccess", value = 0,no_refresh = false})
	for k,v in pairs(LumenTransport_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end

LumenTransport_Initialize()