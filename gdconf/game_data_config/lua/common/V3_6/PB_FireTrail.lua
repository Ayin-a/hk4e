--ServerUploadTool Save to [/root/env/data/lua/common/V3_6]
--======================================================================================================================
--||   Filename      ||    PB_FireTrail
--||   RelVersion    ||    V3_6
--||   Owner         ||    chao-jin
--||   Description   ||    
--||   LogName       ||    ##[PB_FireTrail]
--||   Protection    ||    
--======================================================================================================================
--Defs & Miscs || 需要LD配置的内容
--[[
local defs = {
	fire_seed = 110001,
	time_limit = 5, 
}

local pillars = {110002,110003,110004,110005,110006}
]]
--======================================================================================================================
--Events || Group内EVENT事件,记得初始化和return 0
local FT_Triggers ={
	{ name = "group_load", config_id = 8000101, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	{ name = "gadget_state_change", config_id = 8000102, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0 },
	{ name = "time_axis_pass", config_id = 8000103, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
}

function FT_Initialize()
	for k,v in pairs(FT_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	table.insert(variables,{ config_id = 50000001,name = "Finished", value = 0, no_refresh = true})
end

FT_Initialize()

function action_group_load(context, evt) 
	ScriptLib.PrintContextLog(context, "##[PB_FireTrail.lua]:火传导加载")
	ScriptLib.SetGroupTempValue(context, "PillarChanged", 0, {base_info.group_id})
	return 0
end

function action_gadget_state_change(context, evt) 
	if evt.param2 == defs.fire_seed and evt.param1 == 201 then 
		ScriptLib.PrintContextLog(context, "##[PB_FireTrail.lua]:火种状态变化，开启时间轴")
		ScriptLib.InitTimeAxis(context, "FireTrail", {defs.time_limit}, false)
		return 0
	else 
		if gadgets[evt.param2].gadget_id == 70800422 and evt.param1 == 201 then 
			ScriptLib.PrintContextLog(context, "##[PB_FireTrail.lua]:传导柱状态变化，更新数量")
			if #pillars == ScriptLib.GetGroupTempValue(context, "PillarChanged", {base_info.group_id}) then 
				ScriptLib.EndTimeAxis(context, "FireTrail")
				ScriptLib.PrintContextLog(context, "##[PB_FireTrail.lua]:挑战完成")
				ScriptLib.SetGroupVariableValue(context, "Finished", 1)
				return 0
			end
			ScriptLib.EndTimeAxis(context, "FireTrail")
			ScriptLib.InitTimeAxis(context, "FireTrail", {defs.time_limit}, false)
			ScriptLib.ChangeGroupTempValue(context, "PillarChanged", 1, {base_info.group_id})
		end
	end
	return 0
end

function action_time_axis_pass(context, evt)
	if evt.source_name ==  "FireTrail" then 
		ScriptLib.PrintContextLog(context, "##[PB_FireTrail.lua]:火种监听的时间结束，重置Group")
		ScriptLib.SetGroupTempValue(context, "PillarChanged", 0, {base_info.group_id})
		ScriptLib.SetGadgetStateByConfigId(context, defs.fire_seed, 0)
		for i=1,#pillars do
			ScriptLib.SetGadgetStateByConfigId(context, pillars[i], 0)
		end
	end
	return 0
end


--======================================================================================================================
--ServerLuaCalls || 物件SLC,记得return 0

--======================================================================================================================
--LevelFunctions || 自定义函数



