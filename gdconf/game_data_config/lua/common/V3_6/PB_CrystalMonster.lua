--ServerUploadTool Save to [/root/env/data/lua/common/V3_6]
--======================================================================================================================
--||   Filename      ||    PB_CrystalMonster
--||   RelVersion    ||    V3_6
--||   Owner         ||    chao-jin
--||   Description   ||    
--||   LogName       ||    ##[PB_CrystalMonster]
--||   Protection    ||    
--======================================================================================================================
--Defs & Miscs || 需要LD配置的内容
--[[
local crystal_to_monster = {
	[126002] = 126001,
	[126003] = 126004,
}
]]
--======================================================================================================================
--Events || Group内EVENT事件,记得初始化和return 0
local CM_Triggers ={
	{ name = "gadget_state_change", config_id = 8000102, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0 },
}

function CM_Initialize()
	for k,v in pairs(CM_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
--	table.insert(variables,{ config_id = 50000001,name = "Finished", value = 0, no_refresh = true})
end

CM_Initialize()

function action_gadget_state_change(context, evt) 
	if crystal_to_monster[evt.param2] ~= nil then
		if evt.param1 == 201 then 
			ScriptLib.CreateMonster(context, { config_id = crystal_to_monster[evt.param2], delay_time = 0 })
		end
	end
	return 0
end

--======================================================================================================================
--ServerLuaCalls || 物件SLC,记得return 0

--======================================================================================================================
--LevelFunctions || 自定义函数



