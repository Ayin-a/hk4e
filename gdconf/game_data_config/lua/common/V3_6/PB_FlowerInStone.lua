--ServerUploadTool Save to [/root/env/data/lua/common/V3_6]
--======================================================================================================================
--||   Filename      ||    PB_FlowerInStone
--||   RelVersion    ||    V3_6
--||   Owner         ||    chao-jin
--||   Description   ||    
--||   LogName       ||    ##[PB_FlowerInStone]
--||   Protection    ||    
--======================================================================================================================
--Defs & Miscs || 需要LD配置的内容
--[[
local defs = {
	bloom_time = 10,
}

local flower_core = {
	[flower_cfg_id] = core_cfg_id,
}
]]
--======================================================================================================================
--Events || Group内EVENT事件,记得初始化和return 0
local FIS_Triggers = {
	{ name = "gadget_state_change", config_id = 8000101, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0 },
	{ name = "time_axis_pass", config_id = 8000102, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
}

function FIS_Initialize()
	for k,v in pairs(FIS_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end

FIS_Initialize()

--石中花的状态变化，创建和移除采集物
function action_gadget_state_change(context, evt) 
	if flower_core[evt.param2] ~= nil then 
		if evt.param1 == 0 then 
			ScriptLib.PrintContextLog(context, "##[PB_FlowerInStone.lua]:石中花关闭，移除采集物")
			ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, flower_core[evt.param2])
			return 0
		end
		if evt.param1 == 201 then
			ScriptLib.PrintContextLog(context, "##[PB_FlowerInStone.lua]:石中花打开，创建采集物")
			ScriptLib.CreateGadget(context, {config_id = flower_core[evt.param2]})
			ScriptLib.InitTimeAxis(context, tostring(evt.param2), {defs.bloom_time}, false)
			return 0
		end
	end
	return 0
end

--开花后一段时间闭合
function action_time_axis_pass(context, evt) 
	local flower_id = tonumber(evt.source_name)
	if flower_id ~= nil then 
		ScriptLib.SetGadgetStateByConfigId(context, flower_id, 0)
	end
	return 0
end

--======================================================================================================================
--ServerLuaCalls || 物件SLC,记得return 0

--======================================================================================================================
--LevelFunctions || 自定义函数



