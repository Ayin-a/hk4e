local gadget_list = {70350099,70350100,70350101,70350102,70350103,70350108,70350111}
local var = {
	[1] = {config_id=50000001,name="SGV_TDLevel",value=1,no_refresh=true},
	[2] = {config_id=54000002,name="SGV_TDCanDoAttack",value=1,no_refresh=true},
	[3] = {config_id=54000003,name="SGV_TDUpGrade_Special",value=0,no_refresh=true},
	[4] = {config_id=54000004,name="SGV_TDAttackDamage_A",value=0,no_refresh=true},
	[5] = {config_id=54000005,name="SGV_TDAttackSpeed_A",value=0,no_refresh=true},
	[6] = {config_id=54000006,name="SGV_TDAttackRange_A",value=0,no_refresh=true},
	[7] = {config_id=54000007,name="SGV_TDAttackDamage_B",value=0,no_refresh=true},
	[8] = {config_id=54000008,name="SGV_TDAttackSpeed_B",value=0,no_refresh=true},
	[9] = {config_id=54000009,name="SGV_TDAttackRange_B",value=0,no_refresh=true},
	[10]= {config_id=54000010,name="SGV_TDAttackSpeed_C",value=0,no_refresh=true},
	[11]= {config_id=54000011,name="SGV_TDAttackMastery",value=0,no_refresh=true}
}
local tri = {
	[1] = {config_id=10000, name="group_load", event=EventType.EVENT_GROUP_LOAD, source="", condition="", action="action_group_load", trigger_count=0},
	[2] = {config_id=10001, name="group_refresh", event=EventType.EVENT_GROUP_REFRESH, source="", condition="", action="action_group_load", trigger_count=0},
	[3] = {config_id=10002, name="variable_change", event=EventType.EVENT_VARIABLE_CHANGE, source="", condition="", action="action_variable_change", trigger_count=0}
}

function Initialize()
	for i,v in ipairs(points) do
		if i > #gadget_list then
			break
		end
		
		if points[i] == nil then
			break
		end
		temp_gadget = {config_id = 8000+i, gadget_id = gadget_list[i], pos = points[i].pos, rot = points[i].rot, level = 1}
		table.insert(gadgets, temp_gadget)
		--table.insert(suites[1].gadgets, temp_gadget.config_id)
	end
	------------

	for i,v in ipairs(var) do
		table.insert(variables, v)
	end
	-------------

	for i,v in ipairs(tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end


function action_group_load(context, evt)
	ScriptLib.PrintLog("--------------- v4 -----------------")
	local SGV_table = {}
	for i,v in ipairs(var) do
		local str = v.name
		SGV_table[str] = v.value
	end
	for k,v in pairs(SGV_table) do
		ScriptLib.PrintContextLog(context, "k="..k.." | v="..v)
	end
	for i,v in ipairs(gadget_list) do
		ScriptLib.CreateGadgetWithGlobalValue(context, 8000+i, SGV_table)
	end
	return 0
end

function action_variable_change(context, evt)
	--local value = ScriptLib.GetGroupVariableValue(context, evt.source_name)
	for i,v in ipairs(gadget_list) do
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 8000+i, evt.source_name, evt.param1)
	end
	return 0
end

Initialize()