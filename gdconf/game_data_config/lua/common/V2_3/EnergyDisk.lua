--[[
	2.3导能原盘-物件增幅装置
]]

--[[

local defs = {
}

]]

local extraTriggers={
  { config_id = 8000001,name = "ANY_MONSTER_LIVE", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_Set_SGV", trigger_count = 0 },
  { config_id = 8000002, name = "EVENT_ANY_GADGET_DIE", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_Refresh_SGV", trigger_count = 0 },
  { config_id = 8000003, name = "EVENT_GADGET_CREATE", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_Refresh_SGV", trigger_count = 0 },
  { config_id = 8000004, name = "EVENT_GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
end

function action_EVENT_GROUP_LOAD(context,evt)
	for i=1,#monsters do
		ScriptLib.CreateMonsterWithGlobalValue(context, monsters[i].config_id,{["SGV_Energy_Level"] = 0})
	end
	return 0
end


function action_Set_SGV(context,evt)
	local powerGadgetNum=0
	--根据group内残留的增幅器数量来给怪物上SGV
	powerGadgetNum=ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = defs.group_id,gadget_id={70350201}})
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, evt.param1, "SGV_Energy_Level", powerGadgetNum)
	return 0
end

function action_Refresh_SGV(context,evt)
	--物件数量发生变动时修改group内怪物的层数
	local powerGadgetNum=0
	--根据group内残留的增幅器数量来给怪物上SGV
	powerGadgetNum=ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = defs.group_id,gadget_id={70350201}})
	local monsterTable=ScriptLib.GetGroupAliveMonsterList(context,defs.group_id)
	if monsterTable~=nil and monsterTable~=-1 then
		for i=1,#monsterTable do
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, monsterTable[i], "SGV_Energy_Level", powerGadgetNum)
		end
	end
	return 0
end

LF_Initialize_Group(triggers, suites)

