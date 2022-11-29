local play={
}


local extraTriggers={
	{config_id = 8000001,name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	{config_id = 8000002,name = "Boss_Die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_boss_die", trigger_count = 0 },
	{config_id = 8000003,name = "Gadget_Create", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0 },
	{config_id = 8000004, name = "LEAVE_REGION", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION", action = "action_EVENT_LEAVE_REGION", forbid_guest = false, trigger_count = 0 },
    {config_id = 8000005, name = "ENTER_REGION", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION", action = "action_EVENT_ENTER_REGION", forbid_guest = false, trigger_count = 0 },
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	table.insert(variables,{  config_id=50000001,name = "boss_exist", value = 1 })
end

function condition_EVENT_ENTER_REGION(context, evt)
	if evt.param1 ~= 640012 then
		return false
	end
	return true
end

function action_EVENT_ENTER_REGION(context, evt)
	if context.uid~=0 then
		local small_region={}
		local big_region={}
		for i=1,#regions do
			if regions[i].config_id==640012 then
				small_region=regions[i]
			end
			if regions[i].config_id==640020 then
				big_region=regions[i]
			end
		end
		TrySetPlayerEyePoint(context, small_region, big_region, 1, {0})
	end
	return 0
end

function condition_EVENT_LEAVE_REGION(context, evt)
	if evt.param1 ~= 640020 then
		return false
	end
	return true
end

function action_EVENT_LEAVE_REGION(context, evt)
	if context.uid~=0 then
		--local small_region={}
		--local big_region={}
		--for i=1,#regions do
			--if regions[i].config_id==640012 then
				--small_region=regions[i]
			--end
			--if regions[i].config_id==640020 then
				--big_region=regions[i]
			--end
		--end
		--TrySetPlayerEyePoint(context, small_region, big_region, 1, {1})
		ScriptLib.ClearPlayerEyePoint(context, 640012)
		ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})
	end
	return 0
end

--刷新时加载怪物
function action_group_load(context, evt)
	ScriptLib.PrintContextLog(context, "DrakePrimoRockBossGroupLoad")
	math.randomseed(ScriptLib.GetServerTime(context))
	local newIdx=math.random(#monsters)
	if ScriptLib.GetGroupVariableValue(context, "current_idx") == 0 then
		ScriptLib.SetGroupVariableValue(context, "current_idx", newIdx) 
		--ScriptLib.CreateMonster(context, { config_id = monster[newIdx].config_id, delay_time = 0 })
		ScriptLib.CreateMonsterByConfigIdByPos(context, monsters[newIdx].config_id, monsters[newIdx].pos, monsters[newIdx].rot)
		return 0
	end
	if ScriptLib.GetGroupVariableValue(context, "killed") ~= 0 and evt.param1 ~=1 then
		return 0
	end
	if ScriptLib.GetGroupVariableValue(context, "killed") ~= 0 and evt.param1 ==1 then
		ScriptLib.CreateMonster(context, { config_id = monsters[newIdx].config_id, delay_time = 0 })
		ScriptLib.SetGroupVariableValue(context, "current_idx", newIdx) 
		ScriptLib.SetGroupVariableValue(context, "killed", 0) 
		return 0
	end
	if ScriptLib.GetGroupVariableValue(context, "killed") == 0 then
		ScriptLib.CreateMonster(context, { config_id = monsters[ScriptLib.GetGroupVariableValue(context, "current_idx")].config_id, delay_time = 0 })
		return 0
	end

    return 0
end

--boss死亡创建领奖点
function action_boss_die(context, evt)
	ScriptLib.SetGroupVariableValue(context, "killed", 1) 
	ScriptLib.SetGroupVariableValue(context, "boss_exist", 0)
	ScriptLib.CreateGadget(context, { config_id = 640007 })
	return 0
end

function action_gadget_create(context, evt)
	if evt.param1~=640007 then
		return 0
	end
	if ScriptLib.GetGroupVariableValue(context, "current_idx") == 1 then
		ScriptLib.CreateGadget(context, { config_id = 640008 })
	elseif ScriptLib.GetGroupVariableValue(context, "current_idx") == 2 then
		ScriptLib.CreateGadget(context, { config_id = 640009 })
	elseif ScriptLib.GetGroupVariableValue(context, "current_idx") == 3 then
		ScriptLib.CreateGadget(context, { config_id = 640010 })
	elseif ScriptLib.GetGroupVariableValue(context, "current_idx") == 4 then
		ScriptLib.CreateGadget(context, { config_id = 640011 })
	end
	return 0
end

LF_Initialize_Group(triggers, suites)