--ServerUploadTool Save to [/root/env/data/lua/common/V2_5]
--[[
=====================================================================================================================
||	Filename 	  ||	RecircleChallenge  
||	RelVersion    ||	2.5
||	Owner         ||	xudong.sun
||	Description   ||	2.5版本，黑色剑气循环挑战
||	LogName       ||    ## RC_LOG
||	Protection    ||	挑战成功、失败，group卸载时清空怪物；所有玩家出圈时，设置挑战失败
=====================================================================================================================
-- local defs = {
--         --groupID
--         groupID = 177006001,

--         --挑战操作台
--         challenge_gadget = 1006,

--         --挑战时间
--         duration = 240,

--         --出范围失败region
--         regionID = 1008,

--         --挑战ID
--         challengeID = 111195,

--         --怪物列表
--         monster_array = {1001,1002,1003,1004,1005},
--         monster_min = 5,
--         monster_max = 5,
--         monster_count = 5
-- }

=======================================================================================]]



local extrTriggers = {
	initialtrigger = {
		["Interact_Dwon"] = { config_id = 80000002, name = "Interact_Dwon", event= EventType.EVENT_MICHIAE_INTERACT, source = "", condition = "", action = "action_InteractDwon", trigger_count = 0 },
		["Challenge_Success"] = { config_id = 80000003, name = "Challenge_Success", event= EventType.EVENT_CHALLENGE_SUCCESS, source = "233", condition = "", action = "action_ChallengeSuccess", trigger_count = 0 },
		["Challenge_Fail"] = { config_id = 80000004, name = "Challenge_Fail", event= EventType.EVENT_CHALLENGE_FAIL, source = "233", condition = "", action = "action_ChallengeFail", trigger_count = 0 },
		["Group_Unload"] = { config_id = 80000005, name = "Group_Unload", event= EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_GroupUnload", trigger_count = 0 },
		["Leave_Region"] = { config_id = 80000006, name = "Leave_Region", event= EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_LeaveRegion", trigger_count = 0,forbid_guest = false },
		["Group_Refresh"] = { config_id = 80000007, name = "Group_Refresh", event= EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_GroupRefresh", trigger_count = 0 },
	}
}

--local challengeID = 0
--local groupID = 1
--local switchGadgetID = 1
local challengeRange = 50

function LF_GetPointDistance(x1,y1,x2,y2)
	return math.sqrt(math.pow((y2-y1),2)+math.pow((x2-x1),2))
end

function action_LeaveRegion( context, evt)

	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR })~=0 then
		return 0 
	end

	ScriptLib.KillMonsterTide(context, defs.groupID, 1)

	ScriptLib.StopChallenge(context, 233, 0)

	return 0
end

function action_GroupRefresh( context, evt )
	ScriptLib.PrintContextLog(context,"RC_LOG: Group Refresh")

	ScriptLib.SetGroupTempValue(context, "ChallengeMode", 0, {})
	
	return 0
end

function action_GroupUnload( context, evt)
	ScriptLib.PrintContextLog(context,"RC_LOG: Group Unload")

	ScriptLib.SetGroupTempValue(context, "ChallengeMode", 0, {})

	
	if ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, defs.challenge_gadget) == 202 then
		return 0
	end
	
	ScriptLib.SetGadgetStateByConfigId(context, defs.challenge_gadget, 0)

	ScriptLib.KillMonsterTide(context, defs.groupID, 1)
	
	return 0
end

function action_InteractDwon( context, evt )

	ScriptLib.PrintContextLog(context,"RC_LOG: ChallengeMode = "..ScriptLib.GetGroupTempValue(context, "ChallengeMode", {}))

	if evt.param1 ~= 2 then
		return 0 
	end


	if ScriptLib.GetGroupTempValue(context, "ChallengeMode", {}) ~=0 then
		return 0
	end

	ScriptLib.PrintContextLog(context,"RC_LOG: Start Challenge")


	ScriptLib.StartChallenge(context, 233, defs.challengeID,{defs.duration,defs.groupID,defs.monster_count})
	--ScriptLib.ActiveChallenge(context, 233, defs.challengeID, defs.duration, defs.groupID, defs.monster_count, 0 )
	ScriptLib.SetGadgetStateByConfigId(context, defs.challenge_gadget, 201)

	ScriptLib.AutoMonsterTide(context, 1, defs.groupID, defs.monster_array, defs.monster_count, defs.monster_min, defs.monster_max)

	ScriptLib.SetGroupTempValue(context, "ChallengeMode", 1, {})

	return 0
end

function action_ChallengeSuccess( context, evt )

	ScriptLib.SetGroupTempValue(context, "ChallengeMode", 0, {})

	ScriptLib.KillMonsterTide(context, defs.groupID, 1)

	ScriptLib.updateBundleMarkShowStateByGroupId(context, defs.groupID, false)
	ScriptLib.SetGadgetStateByConfigId(context, defs.challenge_gadget, 202)

	return 0
end

function action_ChallengeFail( context, evt )

	ScriptLib.SetGroupTempValue(context, "ChallengeMode", 0, {})

	ScriptLib.SetGadgetStateByConfigId(context, defs.challenge_gadget, 0)

	ScriptLib.KillMonsterTide(context, defs.groupID, 1)
	
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