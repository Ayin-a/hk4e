--[[
tide_group_defs ={
	[1] = {group = 250030010, delay = 60, next_group = 2, buff = {1,2,3}},
	[2] = {group = 250030010, delay = 60, next_group = 3, buff = {1,2,3}},
	[3] = {group = 250030010, delay = 60, next_group = 4, buff = {1,2,3}},
	[4] = {group = 250030010, delay = 60, next_group = 5, buff = {1,2,3}},
	[5] = {group = 250030010, delay = 60, next_group = 0, buff = {1,2,3}},
}
--]]

function LF_Init_Challenge_Group()
	g1 = { config_id = 1, gadget_id = 70360002, pos = points[1].pos, rot = points[1].rot, level = 1 } 
	g2 = { config_id = 2, gadget_id = 70360002, pos = points[1].pos, rot = points[1].rot, level = 1 } 
	g3 = { config_id = 3, gadget_id = 70360002, pos = points[1].pos, rot = points[1].rot, level = 1 } 
	table.insert(gadgets, g1)
	table.insert(gadgets, g2)
	table.insert(gadgets, g3)
	table.insert(suites[1].gadgets, g1.config_id)
	t1 = { config_id = 8000001, name = "gadget_create", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0 }
	t2 = { config_id = 8000002, name = "select_option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 }
	--t3 = { config_id = 8000003, name = "timer_event", event = EventType.EVENT_TIMER_EVENT, source = "wave_delay", condition = "", action = "action_timer_event", trigger_count = 0}
	t3 = { config_id = 8000003, name = "challenge_success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_challenge_success", trigger_count = 0}
	for i,v in ipairs(suites) do
		table.insert(v.triggers, t1.name)
		table.insert(v.triggers, t2.name)
		table.insert(v.triggers, t3.name)
	end
	table.insert(triggers, t1)
	table.insert(triggers, t2)
	table.insert(triggers, t3)
	table.insert(variables, { config_id=50000001,name = "wave_ptr", value = 0})
	table.insert(variables, { config_id=50000002,name = "special_challenge", value = 0})
end
--------------------------------------
function action_gadget_create(context, evt)
	if evt.param1 == 1 then
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, evt.param1, {2902})
	elseif evt.param1 == 2 or evt.param1 == 3 then
		--[[
		local array = {}
		for i,v in ipairs(tide_group_defs[wave].buff) do
			array[i] = v
		end
		--]]
		local wave = ScriptLib.GetGroupVariableValue(context, "wave_ptr")
		ScriptLib.PrintContextLog(context, "## tide_wave = "..wave)
		local buff = {}
		for i,v in ipairs(tide_group_defs[wave].buff) do
			buff[i] = 3000 + v
		end
		ScriptLib.PrintContextLog(context, "## evt.param1="..evt.param1)
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, evt.param1, buff)
	end
	return 0
end

function action_select_option(context, evt)
	if evt.param1 == 1 and evt.param2 == 2902 then
		ScriptLib.ExecuteGroupLua(context, tide_group_defs[1].group, "start_tide", {defs.group_id})
		ScriptLib.SetGroupVariableValue(context, "wave_ptr", 1)
		ScriptLib.DelWorktopOption(context, evt.param2)
	elseif evt.param1 == 2 or evt.param1 == 3 then
		local uid_list = ScriptLib.GetSceneUidList(context)
		if uid_list[evt.param1 - 1] ~= context.uid then
			ScriptLib.ShowTemplateReminder(context, 123, {evt.param1 - 1})
			return -1
		end
		--根据option发起对应的globalValue
		ScriptLib.PrintContextLog(context, "## TD_LOG : Uid_"..context.uid.." select_option = "..evt.param2)
		ScriptLib.ShowTemplateReminder(context, evt.param2-3000+117, {evt.param1 - 1})
		---[[
		local wave = ScriptLib.GetGroupVariableValue(context, "wave_ptr")
		local next_wave = tide_group_defs[wave].next_group
		if evt.param2 ~= 3004 then
			--不知道gear的group，先转发给monster，再转发给gear升级用
			ScriptLib.ExecuteGroupLua(context, tide_group_defs[next_wave].group, "fix_gear", {evt.param2})
		elseif evt.param2 == 3004 then
			--下一波额外添加一个挑战
			ScriptLib.SetGroupVariableValue(context, "special_challenge", 1)
		end 
		--]]
		ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, evt.param1)
	end
	return 0
end

--某group结束,进下一阶段
function tide_done(context, prev_context, param1, param2, param3)
	local wave = ScriptLib.GetGroupVariableValue(context, "wave_ptr")
	ScriptLib.PrintContextLog(context, "## wave = "..wave)
	if tide_group_defs[wave].next_group == 0 then
		ScriptLib.PrintContextLog(context, "## TD_LOG : All Wave Done")
		ScriptLib.CauseDungeonFail(context)
		return 0
	end
	--限时击杀
	--ScriptLib.ActiveChallenge(context, 1, 4, defs.group_id, 1, tide_group_defs[tide_group_defs[wave].next_group].delay, 1)
	ScriptLib.ActiveChallenge(context, 1, 3, tide_group_defs[tide_group_defs[wave].next_group].delay, 1, 0, 0)
		--ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "wave_delay", tide_group_defs[tide_group_defs[wave].next_group].delay)
	ScriptLib.StopChallenge(context, 2, 1)
	LF_Buff_Choice(context, wave)
	return 0
end

function action_challenge_success(context, evt)
	if evt.source_name == "1" then
		local wave = ScriptLib.GetGroupVariableValue(context, "wave_ptr")
		local next_wave = tide_group_defs[wave].next_group
		ScriptLib.SetGroupVariableValue(context, "wave_ptr", next_wave)
		ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, 2)
		ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, 3)
		ScriptLib.ExecuteGroupLua(context, tide_group_defs[next_wave].group, "start_tide", {defs.group_id})
		if 0 ~= ScriptLib.GetGroupVariableValue(context, "special_challenge") then
			ScriptLib.ActiveChallenge(context, 2, 3, 999, 1, 0, 0)
		end
	elseif evt.source_name == "2" then
		ScriptLib.SetGroupVariableValue(context, "special_challenge", 0)
	end
	return 0
end

function LF_Buff_Choice(context, wave)
	--[[
	math.randomseed(ScriptLib.GetServerTime(context)+wave)
	local buff = {}
	for i=1,2 do
		local index = math.random(#array)
		buff[i] = index + 3000
		table.remove(array, index)
	end
	]]
	local uid_list = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(uid_list) do
		if i <= 2 then
			local eid = ScriptLib.GetAvatarEntityIdByUid(context, v)
			local pos = ScriptLib.GetPosByEntityId(context, eid)
			ScriptLib.CreateGadgetByConfigIdByPos(context, i+1, {x=pos.x,y=pos.y,z=pos.z}, {x=0,y=0,z=0})
			ScriptLib.PrintContextLog(context, "## TD_LOG : operator of "..i.."P")
			--ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, i+1, array)
		end
	end
end

LF_Init_Challenge_Group()