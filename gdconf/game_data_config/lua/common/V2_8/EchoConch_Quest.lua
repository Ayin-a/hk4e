--ServerUploadTool Save to [/root/env/data/lua/common/V2_8]
--[[
=====================================================================================================================
||	Filename 	  ||	EchoConch_Quest
||	RelVersion    ||	2.8
||	Owner         ||	xudong.sun
||	Description   ||	2.8回声海螺，任务版，不播放reminder，只推进任务
||	LogName       ||    ## EchoConch_LOG
||	Protection    ||	
=====================================================================================================================
local questID = 0
local shadowConfigIDList = {}

local remainMode = 1

=======================================================================================]]


local extrTriggers = {
	initialtrigger = {
		["Triger_Interact"] = { config_id = 80000001, name = "Triger_Interact", event= EventType.EVENT_ECHO_SHELL_INTERACT, source = "", condition = "", action = "action_trigger_interact", trigger_count = 0},
	}
}


function action_trigger_interact( context, evt )

	--推进任务进度
	ScriptLib.AddQuestProgress(context, ""..questID)

	--创建虚影
	if shadowConfigIDList ~= nil then
		for i,v in ipairs(shadowConfigIDList) do
			ScriptLib.CreateGadget(context, { config_id = v })
		end
	end

	if remainMode == nil or remainMode == 0 then
		--删除回声海螺
		ScriptLib.KillEntityByConfigId(context, {config_id = evt.param1})
	elseif remainMode == 1 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, 202)
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