--ServerUploadTool Save to [/root/env/data/lua/common/V2_8]
--[[
=====================================================================================================================
||	Filename 	  ||	EchoConch
||	RelVersion    ||	2.8
||	Owner         ||	xudong.sun
||	Description   ||	2.8回声海螺，影像海螺
||	LogName       ||    ## EchoConch_LOG
||	Protection    ||	离开范围后保证reminder被中断
=====================================================================================================================
local conchConfigID = 0
local shadowConfigIDList = {}

=======================================================================================]]


local extrTriggers = {
	initialtrigger = {
		["Triger_Interact"] = { config_id = 80000001, name = "Triger_Interact", event= EventType.EVENT_ECHO_SHELL_INTERACT, source = "", condition = "", action = "action_trigger_interact", trigger_count = 0},
		["Leave_Region"] = { config_id = 80000002, name = "Leave_Region", event= EventType.EVENT_LEAVE_REGION, source = "1", condition = "", action = "action_player_leave_region", trigger_count = 0},
	}
}


function action_trigger_interact( context, evt )

	--获取reminderID
	--local reminderID = gadgets[conchConfigID].arguments[1]
	local reminderID = evt.param3
	ScriptLib.SetGroupTempValue(context, "reminderID", reminderID,{})
	ScriptLib.PrintContextLog(context, "## EchoConch_LOG : remindferID is"..reminderID)

	--创建虚影
	for i,v in ipairs(shadowConfigIDList) do
		ScriptLib.CreateGadget(context, { config_id = v })
	end

	--玩家按下按键，播放reminder
	ScriptLib.ShowReminderByUid(context, {context.owner_uid},reminderID)

	return 0
end


function action_player_leave_region( context, evt )

	--获取reminderID
	--local reminderID = gadgets[conchConfigID].arguments[1]
	local reminderID = ScriptLib.GetGroupTempValue(context, "reminderID",{})
	ScriptLib.PrintContextLog(context, "## EchoConch_LOG : remindferID is"..reminderID)

	--玩家离开区域后，停止对应的reminder
	if reminderID ~= 0 then
		ScriptLib.StopReminder(context, reminderID)
	end


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