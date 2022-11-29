--[[
雷导立方

square={
[1]={config_id=115001,rotation=0},
[2]={config_id=115002,rotation=90},
[3]={config_id=115003,rotation=180},
[4]={config_id=115004,rotation=270},
[5]={config_id=115005,rotation=0},
}


]]--

local square={
	{config_id=defs.gadget_1,rotation=defs.rotation_1},
    {config_id=defs.gadget_2,rotation=defs.rotation_2},
    {config_id=defs.gadget_3,rotation=defs.rotation_3},
    {config_id=defs.gadget_4,rotation=defs.rotation_4},
    {config_id=defs.gadget_5,rotation=defs.rotation_5},
}

local connectRelation={
	[defs.gadget_1]=defs.gadget_connect1,
	[defs.gadget_2]=defs.gadget_connect2,
	[defs.gadget_3]=defs.gadget_connect3,
	[defs.gadget_4]=defs.gadget_connect4,
	[defs.gadget_5]=defs.gadget_connect5,
}

local extraTriggers={
  { config_id = 8000001, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
  { config_id = 8000002, name = "PLATFORM_REACH_POINT", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_EVENT_PLATFORM_REACH_POINT", trigger_count = 0 },
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	table.insert(variables,{ config_id=50000001,name = "successed", value = 0, no_refresh = true})
	for i=1,#square do
		if square[i].config_id ~= 0 then 
			table.insert(variables,{ config_id=50000000+square[i].config_id,name = square[i].config_id.."isrotating", value = 0})
			table.insert(variables,{ config_id=51000000+square[i].config_id,name = square[i].config_id.."rotation", value = square[i].rotation})
		end
	end
--初始化
end

function SquareBeHit(context)
	if ScriptLib.GetGroupVariableValue(context,"successed")~=0 then
		return 0
	end
	for i=1,#square do
		if square[i].config_id ~= 0 then 
			if context.target_entity_id == ScriptLib.GetEntityIdByConfigId(context, square[i].config_id) or context.source_entity_id== ScriptLib.GetEntityIdByConfigId(context, square[i].config_id) then
				if CheckAllRotationDone(context) then
				--if ScriptLib.GetGroupVariableValue(context,square[i].config_id.."isrotating") ==0 then
					--ScriptLib.SetGroupVariableValue(context, square[i].config_id.."isrotating", 1)
					--ScriptLib.SetPlatformPointArray(context, square[i].config_id, 322000031, { 1 }, { route_type = 0,turn_mode=true })
					--local angle=ScriptLib.GetGroupVariableValue(context,square[i].config_id.."rotation")
					--angle=(angle+90)%360
					--ScriptLib.SetGroupVariableValue(context, square[i].config_id.."rotation",angle)
					RotateGadget(context,square[i].config_id)
					for j=1,#connectRelation[square[i].config_id] do
						RotateGadget(context,connectRelation[square[i].config_id][j])
					end
				end
			end
		end
	end
	return 0
end

function RotateGadget(context,config_id)
	ScriptLib.SetGroupVariableValue(context, config_id.."isrotating", 1)
	ScriptLib.SetPlatformPointArray(context, config_id, 322000031, { 1 }, { route_type = 0,turn_mode=true })
	local angle=ScriptLib.GetGroupVariableValue(context,config_id.."rotation")
	angle=(angle+90)%360
	ScriptLib.SetGroupVariableValue(context, config_id.."rotation",angle)
	ScriptLib.SetGadgetStateByConfigId(context, config_id, 201) -- gadget旋转过程特效
	return 0
end

-- 底座物件表现
function RootGadgetEffect(context)
	for i=1,#gadgets do
		if ScriptLib.GetEntityIdByConfigId(context,gadgets[i].config_id) == 70330084 then
			ScriptLib.SetGadgetStateByConfigId(context, gadgets[i].config_id, 201)
		end
	end
	return 0
end

function CheckAllRotationDone(context)
	for i=1,#square do
		if ScriptLib.GetGroupVariableValue(context,square[i].config_id.."isrotating") ~=0 then
			return false
		end
	end
	return true
end

function action_EVENT_PLATFORM_REACH_POINT(context,evt)
	ScriptLib.SetGroupVariableValue(context, evt.param1.."isrotating", 0)
	CheckIsSuccess(context)
	return 0
end

function action_group_load(context,evt)
	if ScriptLib.GetGroupVariableValue(context,"successed")~=0 then
		for i=1,#square do
			if square[i].config_id ~= 0 then 
				ScriptLib.SetGadgetStateByConfigId(context, square[i].config_id, 901)
			end
		end
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		return 0
	end
	--groupload重置variable
	for i=1,#square do
		if square[i].config_id ~= 0 then 
			ScriptLib.SetGroupVariableValue(context, square[i].config_id.."rotation", square[i].rotation)
			ScriptLib.SetGroupVariableValue(context, square[i].config_id.."isrotating", 0)
		end
	end
	for i=1,#square do
		if square[i].config_id ~= 0 then 
			if square[i].rotation==90 then
				ScriptLib.SetPlatformPointArray(context, square[i].config_id, 322000031, { 1 }, { route_type = 0,turn_mode=true })
				ScriptLib.SetGroupVariableValue(context, square[i].config_id.."isrotating", 1)
			end
			if square[i].rotation==180 then
				ScriptLib.SetPlatformPointArray(context, square[i].config_id, 322000031, { 2 }, { route_type = 0,turn_mode=true })
				ScriptLib.SetGroupVariableValue(context, square[i].config_id.."isrotating", 1)
			end
			if square[i].rotation==270 then
				ScriptLib.SetPlatformPointArray(context, square[i].config_id, 322000031, { 3 }, { route_type = 0,turn_mode=true })
				ScriptLib.SetGroupVariableValue(context, square[i].config_id.."isrotating", 1)
			end
		end
	end
	return 0
end

function CheckIsSuccess(context)
	local table0={}
	local table90={}
	local table180={}
	local table270={}
	local angle=999
	local exitCount=0
	for i=1,#square do
		if square[i].config_id ~= 0 then 
			exitCount=exitCount+1
			angle=ScriptLib.GetGroupVariableValue(context,square[i].config_id.."rotation")
			if angle==0 then
				table.insert(table0,square[i].config_id)
			elseif angle==90 then
				table.insert(table90,square[i].config_id)
			elseif angle==180 then
				table.insert(table180,square[i].config_id)
			elseif angle==270 then
				table.insert(table270,square[i].config_id)
			end
		end
	end
	if #table0>=exitCount or #table90>=exitCount or #table180>=exitCount or #table270>=exitCount then
		for i=1,#square do
			if square[i].config_id ~= 0 then 
				ScriptLib.SetGadgetStateByConfigId(context, square[i].config_id, 901)
			end
		end
		ScriptLib.SetGroupVariableValue(context, "successed", 1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		RootGadgetEffect(context)
		return 0
	end

	if #table0>1 then
		for i=1,#table0 do
			ScriptLib.SetGadgetStateByConfigId(context, table0[i], 902)
		end
	else
		for i=1,#table0 do
			ScriptLib.SetGadgetStateByConfigId(context, table0[i], 0)
		end
	end

	if #table90>1 then
		for i=1,#table90 do
			ScriptLib.SetGadgetStateByConfigId(context, table90[i], 902)
		end
	else
		for i=1,#table90 do
			ScriptLib.SetGadgetStateByConfigId(context, table90[i], 0)
		end
	end

	if #table180>1 then
		for i=1,#table180 do
			ScriptLib.SetGadgetStateByConfigId(context, table180[i], 902)
		end
	else
		for i=1,#table180 do
			ScriptLib.SetGadgetStateByConfigId(context, table180[i], 0)
		end
	end

	if #table270>1 then
		for i=1,#table270 do
			ScriptLib.SetGadgetStateByConfigId(context, table270[i], 902)
		end
	else
		for i=1,#table270 do
			ScriptLib.SetGadgetStateByConfigId(context, table270[i], 0)
		end
	end

	return 0
end
--local square=InitialData()
LF_Initialize_Group(triggers, suites)