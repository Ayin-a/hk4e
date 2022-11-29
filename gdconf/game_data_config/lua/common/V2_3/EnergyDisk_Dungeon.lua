--[[
	2.3导能原盘-物件增幅装置
	地城版
	--场上每存在一个被激怒的漂浮灵，全体怪物的攻击力上升X%
	只有激怒的漂浮灵才加buff，用SLC通知Buff层数增减

	SGV_EnergyDisk_Level 当前Buff层数
	SGV_EnergyDisk_RefreshBuff 通知场地中心物件刷Buff
]]

--[[

local defs = {
	buff_gadget = ,
}

]]

local extraTriggers={
  --{ config_id = 8000001,name = "MONSTER_LIVE", event = EventType.EVENT_POOL_MONSTER_TIDE_CREATE, source = "", condition = "", action = "action_Monster_Tide_Create", trigger_count = 0 },
  --{ config_id = 8000002,name = "MONSTER_LIVE", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_Monster_Tide_Create", trigger_count = 0 },
  --{ config_id = 8000002,name = "MONSTER_DIE", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "", condition = "", action = "action_Monster_Tide_Die", trigger_count = 0 },
  { config_id = 8000003,name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
  { config_id = 8000004, name = "SELECT_OPTION", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION", trigger_count = 0 },
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	table.insert(variables,{ config_id=50000001,name = "buff_level", value = 0})
end

function action_Group_Load(context, evt)
	local cur_level = ScriptLib.GetGroupVariableValue(context,"buff_level")
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.buff_gadget, "SGV_EnergyDisk_Level", cur_level)
	--ScriptLib.SetGroupTempValue(context, "step", 0, {})
	return 0
end

function action_EVENT_SELECT_OPTION(context,evt)
	if 1001 ~= evt.param1 then
		return 0	
	end
	
	if 175 ~= evt.param2 then
		return 0
	end
	--重置等级
	ScriptLib.SetGroupVariableValue(context, "buff_level", 0)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.buff_gadget, "SGV_EnergyDisk_Level", 0)

	return 0
end

--改变刷Buff物件上的Buff等级
--param1：变化值
function SLC_Change_EnhanceLevel(context, param1)
	ScriptLib.PrintContextLog(context, "[EnergyDisk] Get SLC_Change_EnhanceLevel. param1@"..param1.." from@"..context.source_entity_id)
	if defs.buff_gadget == nil then 
		return 0
	end
	--先将中央物件置为可触发
	--LF_DisTrigger_BuffGadget(context)

	local cur_level = ScriptLib.GetGroupVariableValue(context,"buff_level")
	local tmp = cur_level + param1
	if tmp < 0 or tmp > 4 then 
		ScriptLib.PrintContextLog(context, "[EnergyDisk] #WARN# Get SLC at cur_level@"..cur_level.." change value@"..param1)
		return 0
	else
		--设置等级
		ScriptLib.SetGroupVariableValue(context, "buff_level", tmp)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.buff_gadget, "SGV_EnergyDisk_Level", tmp)
		--通知刷一次buff （怪物侧会监听，此处不用）
		--LF_Trigger_BuffGadget(context)
	end
	
	return 0
end
--[[
function action_Monster_Tide_Create(context, evt)
	ScriptLib.PrintContextLog(context, "[EnergyDisk] Monster_Tide_Create. Index@"..evt.source_eid)
	if defs.buff_gadget == nil then 
		return 0
	end
	--if evt.source_eid == 2 then
		--如果招出来是怪，则触发一次中央物件
		LF_Trigger_BuffGadget(context)
	--elseif evt.source_eid == 1 then 
		--如果招出来是漂浮灵，则将中央物件置为可触发
		--LF_DisTrigger_BuffGadget(context)
	--end
	return 0
end

function action_Monster_Tide_Die(context, evt)
	if defs.buff_gadget == nil then 
		return 0
	end
	if evt.source_eid == 2 then
		--如果是怪，则触发一次中央物件
		LF_Trigger_BuffGadget(context)
	end
	
	return 0
end
]]
function LF_Trigger_BuffGadget(context)

	if ScriptLib.GetGroupTempValue(context, "step", {}) == 0 then
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.buff_gadget, "SGV_EnergyDisk_RefreshBuff", 1)
		ScriptLib.SetGroupTempValue(context, "step", 1, {})
	else
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.buff_gadget, "SGV_EnergyDisk_RefreshBuff", 0)
		ScriptLib.SetGroupTempValue(context, "step", 0, {})
	end

	return 0
end

--[[function LF_DisTrigger_BuffGadget(context)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.buff_gadget, "SGV_EnergyDisk_RefreshBuff", 0)
	return 0
end]]

LF_Initialize_Group(triggers, suites)

