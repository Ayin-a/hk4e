--[[
磁力机关 黑盒
ServerUploadTool Save to [/root/env/data/lua/common/BlackBoxPlay]
]]--
local fundations={
	[1]=defs.gadget_fundation01,
	[2]=defs.gadget_fundation02,
	[3]=defs.gadget_fundation03,
	[4]=defs.gadget_fundation04,
	[5]=defs.gadget_fundation05,
}

local hands={
	[1]=defs.gadget_hand01,
	[2]=defs.gadget_hand02,
	[3]=defs.gadget_hand03,
	[4]=defs.gadget_hand04,
	[5]=defs.gadget_hand05,
}



local extraTriggers={
  { config_id = 8000001, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
   { config_id = 8000002, name = "TIME_AXIS", event = EventType.EVENT_TIME_AXIS_PASS, source = "checkSuccess", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	table.insert(variables,{ config_id=50000001,name = "successed", value = 0, no_refresh = true})
--初始化
end

function NormalizationAngles(input)
	local output=input
	return math.abs(180-(180-output)%360)
end

function action_group_load(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "successed")~=1 then
		ScriptLib.InitTimeAxis(context, "checkSuccess", {1}, true)
		return 0
	end
	ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
	--ScriptLib.PrintContextLog(context, "挑战已经完成")
	local pos={}
	local rot={}
	for i=1,5 do
		if hands[i] ~= 0 then
			ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, hands[i])
			for j=1,#gadgets do
				if gadgets[j].config_id==hands[i] then
					pos=gadgets[j].pos
				end
				if gadgets[j].config_id==fundations[i] then
					rot=gadgets[j].rot
				end
			end
			--ScriptLib.PrintContextLog(context, "位置"..pos.x.." "..pos.y.." "..pos.z.." "..rot.x.." "..rot.y.." "..rot.z)
			ScriptLib.CreateGadgetByConfigIdByPos(context, hands[i], pos, rot)
			ScriptLib.SetGadgetStateByConfigId(context, hands[i], 201)
			ScriptLib.SetGadgetStateByConfigId(context, fundations[i], 201)
		end
	end
	return 0
end

function action_time_axis_pass(context, evt)
	local count=0
	local y1=0
	local y2=0
	for i=1,5 do
		if fundations[i]~=0 then
			y1=ScriptLib.GetRotationByEntityId(context, ScriptLib.GetEntityIdByConfigId(context, fundations[i])).y
			y2=ScriptLib.GetRotationByEntityId(context, ScriptLib.GetEntityIdByConfigId(context, hands[i])).y
			if y1<0 or y1>360 or y2<0 or y2>360 then
				return 0
			end
		end
		if fundations[i]==0 then
			count=count+1
		elseif NormalizationAngles(y1-y2) <= defs.minDiscrapancy then
			count=count+1
			ScriptLib.SetGadgetStateByConfigId(context, fundations[i], 201)
		else
			ScriptLib.SetGadgetStateByConfigId(context, fundations[i], 0)
		end
	end
	--ScriptLib.PrintContextLog(context, "count is "..count)
	if count>=5 then
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		for i=1,5 do
			if hands[i] ~= 0 then
				ScriptLib.SetGadgetStateByConfigId(context, hands[i], 201)
			end
		end
		ScriptLib.PauseTimeAxis(context, "checkSuccess")
		ScriptLib.SetGroupVariableValue(context, "successed", 1)
	end
	return 0
end


LF_Initialize_Group(triggers, suites)