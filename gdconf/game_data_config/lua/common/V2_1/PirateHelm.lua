--[[
local connection = {
	[194001] = {194004,1,194003,0},
	[194002] = {194001,1,194004,0},
	[194003] = {194004,1}
	...
	...
}
--]]

--key为操作的config_id，v[1] v[2]为关联的config_id和是否同向转动（1同向，0反向）；v[3]v[4]同理，最多关联两个物件
-----------------------------------------

local PirateHelmGadgetID = {
70360180,
70360181,
70360182,
70360183,
}
local OPTION_LEFT = 210
local OPTION_RIGHT = 211
local temp_Variables = {
	{ config_id=50000001,name = "IsFinished", value = 0, no_refresh = true },	--用于标识是否已完成，初始0，完成时LD需要设置成1，使得机关不可转动
}
local tempTrigger = {
    { config_id = 9000001, name = "EVENT_GADGET_CREATE", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_SetOption", trigger_count = 0},--创建
    { config_id = 9000002, name = "EVENT_SELECT_OPTION", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_SelectOption", trigger_count = 0},
    { config_id = 9000003, name = "EVENT_GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_GroupLoadShowVersion", trigger_count = 0},
    { config_id = 9000004, name = "EVENT_TIME_AXIS_PASS", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_RemoveCoolDown", trigger_count = 0},
    { config_id = 9000005, name = "EVENT_VARIABLE_CHANGE", event = EventType.EVENT_VARIABLE_CHANGE, source = "IsFinished", condition = "", action = "action_IsFinished", trigger_count = 0},
}
function action_IsFinished(context,evt)
	if evt.param1 == 1 then
		local group_id = ScriptLib.GetContextGroupId(context)
		for k,v in pairs(gadgets) do
			if isPirateHelm(v.gadget_id) then
				ScriptLib.DelWorktopOptionByGroupId(context, group_id, v.config_id, OPTION_LEFT)
				ScriptLib.DelWorktopOptionByGroupId(context, group_id, v.config_id, OPTION_RIGHT)
			end
		end
	end
	return 0
end
function action_GroupLoadShowVersion(context,evt)
	ScriptLib.PrintContextLog(context,"version:2021_7_1_105017")
	return 0
end
function action_RemoveCoolDown(context,evt)
	if evt.source_name == "CD"  then ScriptLib.SetGroupTempValue(context,"disableInteract",0,{}) end
	return 0 
end
function action_SelectOption(context,evt)
	if ScriptLib.GetGroupTempValue(context, "disableInteract",{}) == 0 then
		if evt.param2 == OPTION_LEFT then
			turnLeft(context,evt.param1)
			if connection ~= nil then
				for k,v in pairs(connection) do--key为操作的config_id，v[1] v[2]为关联的config_id和是否同向转动（1同向，0反向）；v[3]v[4]同理，最多关联两个物件
					if evt.param1 == k then
						if v[2] ~=nil then
							if v[2] == 1 then turnLeft(context,v[1]) end
							if v[2] == 0 then turnRight(context,v[1]) end
						end
						if v[4] ~=nil then
							if v[4] == 1 then turnLeft(context,v[3]) end
							if v[4] == 0 then turnRight(context,v[3]) end
						end
					end
				end
			end
			ScriptLib.SetGroupTempValue(context,"disableInteract",1,{})
			ScriptLib.InitTimeAxis(context, "CD", {1}, false)
		end
		if evt.param2 == OPTION_RIGHT then
			turnRight(context,evt.param1)
			if connection ~= nil then
				for k,v in pairs(connection) do--key为操作的config_id，v[1] v[2]为关联的config_id和是否同向转动（1同向，0反向）；v[3]v[4]同理，最多关联两个物件
					if evt.param1 == k then
						if v[2] ~=nil then
							if v[2] == 1 then turnRight(context,v[1]) end
							if v[2] == 0 then turnLeft(context,v[1]) end
						end
						if v[4] ~=nil then
							if v[4] == 1 then turnRight(context,v[3]) end
							if v[4] == 0 then turnLeft(context,v[3]) end
						end
					end
				end
			end
			ScriptLib.SetGroupTempValue(context,"disableInteract",1,{})
			ScriptLib.InitTimeAxis(context, "CD", {1}, false)
		end
	end
	return 0
end

function action_SetOption(context,evt)
	if isPirateHelm(evt.param2) then
		ScriptLib.SetWorktopOptions(context, {OPTION_LEFT,OPTION_RIGHT})
	end
	return 0
end

function isPirateHelm(gadgetID)
	local result = false
	for k,v in pairs(PirateHelmGadgetID) do
		if gadgetID == v then result = true end
	end
	return result
end
function turnLeft(context,config_id)
	local groupID = ScriptLib.GetContextGroupId(context)
	local nowState = ScriptLib.GetGadgetStateByConfigId(context, groupID, config_id)
	if nowState ==0 then ScriptLib.SetGroupGadgetStateByConfigId(context, groupID, config_id, 201) end
	if nowState ==201 then ScriptLib.SetGroupGadgetStateByConfigId(context, groupID, config_id, 202) end
	if nowState ==202 then ScriptLib.SetGroupGadgetStateByConfigId(context, groupID, config_id, 203) end
	if nowState ==203 then ScriptLib.SetGroupGadgetStateByConfigId(context, groupID, config_id, 0) end
	return 0
end
function turnRight(context,config_id)
	local groupID = ScriptLib.GetContextGroupId(context)
	local nowState = ScriptLib.GetGadgetStateByConfigId(context, groupID, config_id)
	if nowState ==0 then ScriptLib.SetGroupGadgetStateByConfigId(context, groupID, config_id, 203) end
	if nowState ==201 then ScriptLib.SetGroupGadgetStateByConfigId(context, groupID, config_id, 0) end
	if nowState ==202 then ScriptLib.SetGroupGadgetStateByConfigId(context, groupID, config_id, 201) end
	if nowState ==203 then ScriptLib.SetGroupGadgetStateByConfigId(context, groupID, config_id, 202) end
	return 0
end

function LF_Initialize_Level()
    for k,v in pairs(tempTrigger) do
        table.insert(triggers, v)
        table.insert(suites[init_config.suite].triggers, v.name)
    end
	--加变量
	for k,v in pairs(temp_Variables) do
		table.insert(variables,v)
	end
    return 0
end

LF_Initialize_Level()
