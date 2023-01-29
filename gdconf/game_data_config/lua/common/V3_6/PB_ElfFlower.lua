--ServerUploadTool Save to [/root/env/data/lua/common/V3_6]
--======================================================================================================================
--||   Filename      ||    PB_ElfFlower
--||   RelVersion    ||    V3_6
--||   Owner         ||    chao-jin
--||   Description   ||    精灵花朵收集玩法
--||   LogName       ||    ##[PB_ElfFlower]
--||   Protection    ||    
--======================================================================================================================
--Defs & Miscs || 需要LD配置的内容
--[[
local defs = {
	flower_gadget_id = 70290733,
}
local elf_flowers = {}
]]
--======================================================================================================================
--Events || Group内EVENT事件,记得初始化和return 0
local EF_Triggers ={
	{ name = "group_load", config_id = 8000101, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	{ name = "gadget_state_change", config_id = 8000102, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0 },
	{ name = "time_axis_pass", config_id = 8000103, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
}

function EF_Initialize()
	for k,v in pairs(EF_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	table.insert(variables,{ config_id = 50000001,name = "Finished", value = 0, no_refresh = true})
end

EF_Initialize()

function action_group_load(context, evt) 
	ScriptLib.PrintContextLog(context, "##[PB_ElfFlower]:精灵花朵玩法加载")
	ScriptLib.SetGroupTempValue(context, "FlowerBloomed", 0, {base_info.group_id})
	return 0
end

--监听花朵状态
function action_gadget_state_change(context, evt) 
	if gadgets[evt.param2].gadget_id == 70290733 and evt.param1 == 201 then 
		ScriptLib.PrintContextLog(context, "##[PB_ElfFlower]: 精灵花朵状态变化")
		if #elf_flowers == ScriptLib.GetGroupTempValue(context, "FlowerBloomed", {base_info.group_id}) then 
			ScriptLib.EndTimeAxis(context, "FlowerBloomTrail")
			ScriptLib.PrintContextLog(context, "##[PB_ElfFlower]:挑战完成")
			for i=1,#elf_flowers do
				ScriptLib.SetGadgetStateByConfigId(context, elf_flowers[i], 202)
			end
			ScriptLib.SetGroupVariableValue(context, "Finished", 1)
			return 0
		end
		ScriptLib.EndTimeAxis(context, "FlowerBloomTrail")
		ScriptLib.InitTimeAxis(context, "FlowerBloomTrail", {defs.time_limit}, false)
		ScriptLib.ChangeGroupTempValue(context, "FlowerBloomed", 1, {base_info.group_id})
		end
	return 0
end

function action_time_axis_pass(context, evt)
	if evt.source_name ==  "FlowerBloomTrail" then 
		ScriptLib.PrintContextLog(context, "##[PB_ElfFlower]:时间结束，重置Group")
		ScriptLib.SetGroupTempValue(context, "FlowerBloomed", 0, {base_info.group_id})
		for i=1,#elf_flowers do
			ScriptLib.SetGadgetStateByConfigId(context, elf_flowers[i], 0)
		end
	end
	return 0
end
--======================================================================================================================
--ServerLuaCalls || 物件SLC,记得return 0

--======================================================================================================================
--LevelFunctions || 自定义函数



