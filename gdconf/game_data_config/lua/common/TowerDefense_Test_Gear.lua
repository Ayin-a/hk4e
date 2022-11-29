--[[
setmetatable(_ENV,{__index=function() return {} end })
--]]
local define = {
	group_id = defs.group_id or 250030001,
	gear_list = --[[defs.gear_list or]] {70350107,70350099,70350100,70350101,70350102,70350103},
	option_list = --[[defs.option_list or]] {41,42,43,44,45},
	option_revert = 46,   
	option_points = --[[defs.option_points or]] {20,20,20,20,20},
	monster_points = defs.monster_points or 10,
	max_points = defs.max_points or 100
}

function LF_Initialize_Level()
	--ScriptLib.PrintLog("================ INITIALIZE 33 ==============")
	for i=1,#points do 		--初始化每个点
		for j=1,#define.gear_list do	--每个点上做机关序列化
			gadgets[i*1000+j] = { config_id = 1000*i+j, gadget_id = define.gear_list[j], pos = points[i].pos, rot = points[i].rot, level = 1}
			if j%10 == 1 then
				table.insert(suites[1].gadgets, i*1000+1)
			end
		end
		var1 = { config_id=51000000+i,name = "gear_info_"..i, value = 0 }	
		table.insert(variables, var1)
		--[[if suites[1].gadgets[i] ~= nil then
			ScriptLib.PrintLog("## suite[1] add gadget -> "..suites[1].gadgets[i])
		else ScriptLib.PrintLog("## null suites[] -> "..i)
		end--]]
	end
	var2 = { config_id=50000001,name = "cur_points_1", value = 0 }
	var3 = { config_id=50000002,name = "cur_points_2", value = 0 }
	table.insert(variables, var2)
	table.insert(variables, var3)
	t1 = { config_id = 8000001, name = "GADGET_CREATE", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE", action = "action_EVENT_GADGET_CREATE", trigger_count = 0 }
	t2 = { config_id = 8000002, name = "SELECT_OPTION", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION", trigger_count = 0 }
	t3 = { config_id = 8000003, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0}
	table.insert(triggers, t1)
	table.insert(triggers, t2)
	table.insert(triggers, t3)
	table.insert(suites[1].triggers, t1.name)
	table.insert(suites[1].triggers, t2.name)
	table.insert(suites[1].triggers, t3.name)
	--ScriptLib.PrintLog("## suite.gadgets.size() -> "..#suites[1].gadgets)
	return 0
end

function condition_EVENT_GADGET_CREATE(context, evt)
	if evt.param1%1000 == 1 then
		return true 
	end
	return false
end

function action_EVENT_GADGET_CREATE(context, evt)
	--ScriptLib.CreateGadget(context, { config_id = evt.param1 + 1})
	--ScriptLib.PrintContextLog(context, "## operator_create : "..evt.param1)
	ScriptLib.SetWorktopOptionsByGroupId(context, define.group_id, evt.param1, define.option_list)
	return 0
end

function action_EVENT_SELECT_OPTION(context, evt)
	ScriptLib.PrintContextLog(context, "## select_option : param1 -> "..evt.param1.." | param2 -> "..evt.param2.." uid -> "..context.uid)
	local uid_list = ScriptLib.GetSceneUidList(context)
	local player = 0
	for i,v in ipairs(uid_list) do
		if v == context.uid then
			player = i
			break
		end
	end
	local result = LF_Enough_Points(context, evt.param2%10, player)
	if 1 == result then
		local prev_option = ScriptLib.GetGroupVariableValue(context, "gear_info_"..(evt.param1//1000))
		ScriptLib.PrintContextLog(context, "## -----------------get_variable : gear_info_"..(evt.param1//1000).."->"..prev_option)
		local create_gear = evt.param1 + evt.param2%10
	 	ScriptLib.CreateGadget(context, { config_id = create_gear })
	 	ScriptLib.PrintContextLog(context, "$$ create_cid = "..create_gear.." | option = "..evt.param2.." | gid = "..gadgets[create_gear].gadget_id)
	 	local new_option_list = {}
	 	local j = 1
	 	for i=1,#define.option_list do
	 		if define.option_list[i] ~= evt.param2 then
	 			new_option_list[j] = define.option_list[i]
	 			j = j + 1
	 		end
	 	end
	 	if prev_option ~= 0 then
 			local remove_gear = evt.param1 + prev_option%10
 			--ScriptLib.PrintContextLog(context, "$$ remove gear -> "..remove_gear)
			ScriptLib.RemoveEntityByConfigId(context, define.group_id, EntityType.GADGET, remove_gear )
			LF_Return_Points(context, prev_option%10, player)
		end
		table.insert(new_option_list, define.option_revert)
		ScriptLib.SetWorktopOptionsByGroupId(context, define.group_id, evt.param1, new_option_list)
		ScriptLib.SetGroupVariableValue(context, "gear_info_"..(evt.param1//1000), evt.param2%10)
		ScriptLib.PrintContextLog(context, "## -----------------set_variable : gear_info_"..(evt.param1//1000).."->"..(evt.param2%10))
		local cur_p = ScriptLib.GetGroupVariableValue(context, "cur_points_"..player)
		ScriptLib.ShowTemplateReminder(context, 115, {player, cur_p, define.max_points})
	elseif -1 == result then
		local cur_p = ScriptLib.GetGroupVariableValue(context, "cur_points_"..player)
		ScriptLib.ShowTemplateReminder(context, 116, {player, cur_p, define.max_points})
		return -1
	elseif 0 == result then
		--返回建造点数并重置机关
		local prev_option = ScriptLib.GetGroupVariableValue(context, "gear_info_"..(evt.param1//1000))
		local remove_gear = evt.param1 + prev_option%10
	 	--ScriptLib.PrintContextLog(context, "$$ remove gear -> "..remove_gear)
		ScriptLib.RemoveEntityByConfigId(context, define.group_id, EntityType.GADGET, remove_gear )
		LF_Return_Points(context, prev_option%10, player)
		ScriptLib.SetWorktopOptionsByGroupId(context, define.group_id, evt.param1, define.option_list)
		ScriptLib.SetGroupVariableValue(context, "gear_info_"..(evt.param1//1000), 0)
		ScriptLib.PrintContextLog(context, "## -----------------set_variable : gear_info_"..(evt.param1//1000).."->"..(evt.param2%10))
		local cur_p = ScriptLib.GetGroupVariableValue(context, "cur_points_"..player)
		ScriptLib.ShowTemplateReminder(context, 115, {player, cur_p, define.max_points})
	end
	return 0
end

function action_EVENT_GROUP_LOAD(context, evt)
	ScriptLib.PrintContextLog(context, "================ INITIALIZE 38 ==============")
	ScriptLib.SetGroupVariableValue(context, "cur_points_1", define.max_points)
	ScriptLib.SetGroupVariableValue(context, "cur_points_2", define.max_points)
	return 0
end

function award_points(context, prev_context, param1, param2, param3)
	local uid_list = ScriptLib.GetSceneUidList(context)
	local new_points = 0
	for i,v in ipairs(uid_list) do
		local cur_points = ScriptLib.GetGroupVariableValue(context, "cur_points_"..i)
		new_points = cur_points + define.monster_points
		if new_points > define.max_points then
			new_points = define.max_points
		end
		ScriptLib.SetGroupVariableValue(context, "cur_points_"..i, new_points)
		--ScriptLib.PrintContextLog(context, "$$ player -> "..i.." | points -> "..new_points)
	end
	ScriptLib.ShowTemplateReminder(context, 117, {define.monster_points})
	return 0
end

function LF_Return_Points(context, index, player)
	if index > 0 then
		local cur_points = ScriptLib.GetGroupVariableValue(context, "cur_points_"..player)
		local new_points = cur_points + define.option_points[index%10]
		if new_points > define.max_points then
			new_points = define.max_points
		end
		ScriptLib.SetGroupVariableValue(context, "cur_points_"..player, new_points)
	else
		return -1
	end
	return 0
end

function LF_Enough_Points(context, index, player)
	--选到46号后恢复原始状态
	if index == define.option_revert%10 then
		return 0
	end
	--使用点数建造对应机关
	local cur_points = ScriptLib.GetGroupVariableValue(context, "cur_points_"..player)
	if cur_points >= define.option_points[index] then
		ScriptLib.ChangeGroupVariableValue(context, "cur_points_"..player, -define.option_points[index])
		return 1
	else 
	--点数不够	
		return -1
	end
end

LF_Initialize_Level()