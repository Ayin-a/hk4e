--[[
雷共鸣石黑河玩法

]]--

local light_stones_initial={
	[1]=defs.gadget_1,
	[2]=defs.gadget_2,
	[3]=defs.gadget_3,
	[4]=defs.gadget_4,
	[5]=defs.gadget_5
}

local extraTriggers={
	 { config_id = 8000001, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	table.insert(variables,{ config_id=50000001,name = "successed", value = 0, no_refresh = true})
--初始化
end

function action_group_load(context, evt)
	if ScriptLib.GetGroupVariableValue(context,"successed")~=0 then
		for i=1,#light_stones_initial do
			if light_stones_initial[i] ~= 0 then 
				ScriptLib.SetGadgetStateByConfigId(context, light_stones_initial[i], GadgetState.GearAction2)
			end
		end
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		return 0
	end 
	return 0
end

function Generate_Table(light_stones_initial)
	local outTable={}
	for i=1,#light_stones_initial do
		if light_stones_initial[i]~=0 then
			table.insert(outTable,light_stones_initial[i])
		end
	end
	return outTable
end

function Stone_Behit(context)
	local light_stones=Generate_Table(light_stones_initial)
	ScriptLib.PrintContextLog(context, "target_entity_id="..context.target_entity_id.." source_entity_id="..context.source_entity_id)
	if ScriptLib.GetGroupVariableValue(context,"successed") ~=0 then
		return 0
	end 
	for i=1,#light_stones do
		if context.target_entity_id==ScriptLib.GetEntityIdByConfigId(context,light_stones[i]) then
			gadget_level_change(context,light_stones[i])
			--非循环模式
			if defs.loop_mode==0 then
				if i-1>=1 then
					gadget_level_change(context,light_stones[i-1])
				end
				if i+1 <= #light_stones then
					gadget_level_change(context,light_stones[i+1])
				end
			end
			--循环模式
			if defs.loop_mode==1 then
				if i-1<1 then
					gadget_level_change(context,light_stones[#light_stones])
				else
					gadget_level_change(context,light_stones[i-1])
				end
				if i+1 > #light_stones then
					gadget_level_change(context,light_stones[1])
				else
					gadget_level_change(context,light_stones[i+1])
				end
			end
			break
		end
	end
	if check_success(context,light_stones)==true then
		for i=1,#light_stones do
			if GadgetState.Action01 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, light_stones[i]) then
				ScriptLib.SetGadgetStateByConfigId(context, light_stones[i], 9010)
			elseif GadgetState.Action02 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, light_stones[i]) then
				ScriptLib.SetGadgetStateByConfigId(context, light_stones[i], 9020)
			elseif GadgetState.Action03 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, light_stones[i]) then
				ScriptLib.SetGadgetStateByConfigId(context, light_stones[i], 9030)
			end
		end
		ScriptLib.SetGroupVariableValue(context, "successed",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
	end
	return 0
end
--检测是否达成目标
function check_success(context,light_stones)
	if #light_stones<=1 then
		return true
	end
	for i=1,#light_stones-1 do
		if ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, light_stones[i])~=ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, light_stones[i+1]) then
			return false
		end
	end
	return true
end
--处理共鸣石的状态变化
function gadget_level_change(context,config_id)
	if config_id==nil then
		return 0
	end
	ScriptLib.PrintContextLog(context, "##config_id is "..config_id)
	if GadgetState.Default == ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, config_id) then
		ScriptLib.SetGadgetStateByConfigId(context, config_id, GadgetState.Action01)
	elseif GadgetState.Action01 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, config_id) then
		ScriptLib.SetGadgetStateByConfigId(context, config_id, GadgetState.Action02)
	elseif GadgetState.Action02 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, config_id) then
		ScriptLib.SetGadgetStateByConfigId(context, config_id, GadgetState.Action03)
	elseif GadgetState.Action03 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, config_id) then
		ScriptLib.SetGadgetStateByConfigId(context, config_id, GadgetState.Action01)
	end
	return 0
end

LF_Initialize_Group(triggers, suites)