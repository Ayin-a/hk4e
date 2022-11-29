--ServerUploadTool Save to [/root/env/data/lua/common/V3_1]
--[[
=====================================================================================================================
||	Filename 	  ||	OutOfBattle
||	RelVersion    ||	3.1
||	Owner         ||	xudong.sun
||	Description   ||	3.1脱战任务玩法
||	LogName       ||    ## OutOfBattle_LOG
||	Protection    ||	
=====================================================================================================================
local levelUpOption = 0
local chainId = 0
lcoal maxLevel = 5

local notifyGroupList = {}

=======================================================================================]]

local extrTriggers = {
	initialtrigger = {
		["LeaveRegion"] = { config_id = 80000001, name = "LeaveRegion", event= EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", trigger_count = 0},
		["GroupUnLoad"] = { config_id = 80000002, name = "GroupUnLoad", event= EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_unload", trigger_count = 0},
	}
}

function SLC_OutOfBattle( context )

	ScriptLib.AddQuestProgress(context, ""..questID)

	ScriptLib.SetTeamServerGlobalValue(context, ScriptLib.GetSceneOwnerUid(context), "SGV_CAN_CLEAR_THREAT", 1)

	return 0
end

function SLC_ResetSGV( context )

	ScriptLib.SetTeamServerGlobalValue(context, ScriptLib.GetSceneOwnerUid(context), "SGV_CAN_CLEAR_THREAT", 0)

	return 0
end

function action_leave_region( context, evt )

	ScriptLib.SetTeamServerGlobalValue(context, ScriptLib.GetSceneOwnerUid(context), "SGV_CAN_CLEAR_THREAT", 0)

	return 0
end

function action_group_unload( context, evt )

	ScriptLib.SetTeamServerGlobalValue(context, ScriptLib.GetSceneOwnerUid(context), "SGV_CAN_CLEAR_THREAT", 0)

	return 0
end

function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		for i=1,#suites do
			table.insert(suites[i].triggers, v.name)
		end
	end

	return 0
end

LF_Initialize_Group()