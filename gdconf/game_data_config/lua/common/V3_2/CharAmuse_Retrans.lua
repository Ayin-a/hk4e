--- ServerUploadTool Save to [/root/env/data/lua/common/V3_2]  ---

--[[======================================
||	filename:	CharAmuse_Retrans
||	owner: 		weiwei.sun
||	description: 	3.2奇趣秘园 局内逻辑 战斗
||	LogName:	## [CharAmuse_Retrans]
||	Protection:	
=======================================]]
--[[

local defs = {
	--玩法范围region，玩法进行期间，不在此Region内的玩家会被拉回
	play_region = ,
}

]]

local retrans_cfg = {
	--主控GroupID
	main_group = 251008007,
	--检查频率
	check_interval = 5,
}

local Retrans_Triggers = {
	{ config_id = 8800001, name = "Time_Axis_ReTrans", event = EventType.EVENT_TIME_AXIS_PASS, source = "retranstimer", condition = "", action = "action_Time_Axis_ReTrans", trigger_count = 0}
}

function LF_Initialize_Retrans()

	for k,v in pairs(Retrans_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end

end

function EX_StartReTransCheck(context, prev_context)
	if nil ~= defs.play_region and 0 ~= defs.play_region then
		ScriptLib.InitTimeAxis(context, "retranstimer", { retrans_cfg.check_interval }, true)
		ScriptLib.PrintContextLog(context, "## [CharAmuse_Retrans] EX_StartReTransCheck. play_region@"..defs.play_region)
	end
	return 0
end

function EX_StopReTransCheck(context, prev_context)
	if nil ~= defs.play_region and 0 ~= defs.play_region then
		ScriptLib.EndTimeAxis(context, "retranstimer")
		ScriptLib.PrintContextLog(context, "## [CharAmuse_Retrans] EX_StopReTransCheck. ")
	end
	return 0
end

function action_Time_Axis_ReTrans(context, evt)
	local uid_list = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(uid_list) do
		LF_DoReTransCheck(context, v)
	end
	return 0
end

function EX_DoReTransCheck(context, prev_context)
	local uid_list = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(uid_list) do
		LF_DoReTransCheck(context, v)
	end
	return 0
end

function EX_DoReTransCheck_Single(context, prev_context, uid)
	LF_DoReTransCheck(context, uid)
	return 0
end

function LF_DoReTransCheck(context, uid)
	if nil == regions[defs.play_region] then 
		return 0
	end
	if false == ScriptLib.IsPlayerTransmittable(context, uid) then
		ScriptLib.PrintContextLog(context, "## [CharAmuse_Retrans] LF_DoReTransCheck. Player@"..uid.." is not transmittable.")
		return 0
	end

	if false == ScriptLib.IsInRegion(context, uid, defs.play_region) then
		ScriptLib.PrintContextLog(context, "## [CharAmuse_Retrans] Player@"..uid.." need retrans.")
		ScriptLib.ExecuteGroupLua(context, retrans_cfg.main_group, "EX_ReTrans", {uid} )
	end
	return 0
end



LF_Initialize_Retrans()