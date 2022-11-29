--[[
setmetatable(_ENV,{__index=function() return {} end })
--]]
local define = {
	group_id = defs.group_id or 250030001,
	gear_list = --[[defs.gear_list or]] {70350107,70350112,70350113,70350114,70350115,70350116,70350129,70350111,70350143},
	option_list = --[[defs.option_list or]] {41,42,43,44,45,48,49,50,46},
	option_revert = 46,   
	option_points = --[[defs.option_points or]] {20,20,20,20,20,20,20,20,20},
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
		var4 = { config_id=52000000+i,name = "gear_belong_"..i, value = 0 }		
		table.insert(variables, var1)
		table.insert(variables, var4)
		--[[if suites[1].gadgets[i] ~= nil then
			ScriptLib.PrintLog("## suite[1] add gadget -> "..suites[1].gadgets[i])
		else ScriptLib.PrintLog("## null suites[] -> "..i)
		end--]]
	end
	var2 = { config_id=50000001,name = "cur_points_1", value = 0 }
	var3 = { config_id=50000002,name = "cur_points_2", value = 0 }
	var5 = { config_id=50000003,name = "buff", value = 0}
	table.insert(variables, var2)
	table.insert(variables, var3)
	table.insert(variables, var5)
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
	local op_list = {}
	for i,v in ipairs(define.option_list) do
		op_list[i] = v
	end
	table.remove(op_list, #op_list)
	ScriptLib.SetWorktopOptionsByGroupId(context, define.group_id, evt.param1, op_list)
	return 0
end

function action_EVENT_SELECT_OPTION(context, evt)
	ScriptLib.PrintContextLog(context, "## select_option : param1 -> "..evt.param1.." | param2 -> "..evt.param2.." uid -> "..context.uid)
	--处理联机的情况
	local uid_list = ScriptLib.GetSceneUidList(context)
	local cid = evt.param1//1000
	local belong = ScriptLib.GetGroupVariableValue(context, "gear_belong_"..cid) 
	--定位玩家序号
	local u_index = 0
	for i,v in ipairs(uid_list) do
		if v == context.uid then
			u_index = i
			break
		end
	end
	if belong ~= 0 then
		if belong ~= u_index then
			ScriptLib.ShowTemplateReminder(context, 123, {(belong-3)*-1})
			return -1
		end
	else ScriptLib.SetGroupVariableValue(context, "gear_belong_"..cid, u_index) 
	end
	--允许建造机关
	local uid_list = ScriptLib.GetSceneUidList(context)
	local player = 0
	for i,v in ipairs(uid_list) do
		if v == context.uid then
			player = i
			break
		end
	end
	--确定option序列
	local create_gear = 0
	local o_id = 0
	for i,v in ipairs(define.option_list) do
		if v == evt.param2 then
			create_gear = evt.param1 + i
			o_id = i
			break
		end
	end
	local result = LF_Enough_Points(context, o_id, player)
	if 1 == result then
		local p_o_id = ScriptLib.GetGroupVariableValue(context, "gear_info_"..(evt.param1//1000))
		ScriptLib.PrintContextLog(context, "## -----------------get_variable : gear_info_"..(evt.param1//1000).."->"..p_o_id)
	 	ScriptLib.CreateGadget(context, { config_id = create_gear })
	 	--================================================================
	 	local buff_cache = ScriptLib.GetGroupVariableValue(context, "buff")
	 	if buff_cache ~= 500 then
	 		if buff_cache//100 > 0 then
	 			ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {create_gear}, "TOWEDEFENCE_HITRANGE", buff_cache//100)
	 		end
	 		if (buff_cache%100)//10 > 0 then
	 			ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {create_gear}, "TOWEDEFENCE_DAMAGE", (buff_cache%100)//10)
			end
			if buff_cache%10 > 0 then
				ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {create_gear}, "TOWEDEFENCE_HITINTERVAL", buff_cache%10)
			end
		else ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {create_gear}, "TOWEDEFENCE_HITRANGE", 5)
		end
		--==================================================================
	 	ScriptLib.PrintContextLog(context, "$$ create_cid = "..create_gear.." | option = "..evt.param2.." | gid = "..gadgets[create_gear].gadget_id)
	 	local new_option_list = {}
	 	local j = 1
	 	for i=1,#define.option_list-1 do
	 		if define.option_list[i] ~= evt.param2 then
	 			new_option_list[j] = define.option_list[i]
	 			j = j + 1
	 		end
	 	end
	 	if p_o_id ~= 0 then
 			local remove_gear = evt.param1 + p_o_id
 			--ScriptLib.PrintContextLog(context, "$$ remove gear -> "..remove_gear)
			ScriptLib.RemoveEntityByConfigId(context, define.group_id, EntityType.GADGET, remove_gear )
			LF_Return_Points(context, p_o_id, player)
		end
		table.insert(new_option_list, define.option_revert)
		ScriptLib.SetWorktopOptionsByGroupId(context, define.group_id, evt.param1, new_option_list)
		ScriptLib.SetGroupVariableValue(context, "gear_info_"..(evt.param1//1000), o_id)
		ScriptLib.PrintContextLog(context, "## -----------------set_variable : gear_info_"..(evt.param1//1000).."->"..o_id)
		local cur_p = ScriptLib.GetGroupVariableValue(context, "cur_points_"..player)
		ScriptLib.ShowTemplateReminder(context, 115, {player, cur_p, define.max_points})
	elseif -1 == result then
		local cur_p = ScriptLib.GetGroupVariableValue(context, "cur_points_"..player)
		ScriptLib.ShowTemplateReminder(context, 116, {player, cur_p, define.max_points})
		return -1
	elseif 0 == result then
		--返回建造点数并重置机关
		local p_o_id = ScriptLib.GetGroupVariableValue(context, "gear_info_"..(evt.param1//1000))
		local remove_gear = evt.param1 + p_o_id
	 	--ScriptLib.PrintContextLog(context, "$$ remove gear -> "..remove_gear)
		ScriptLib.RemoveEntityByConfigId(context, define.group_id, EntityType.GADGET, remove_gear )
		LF_Return_Points(context, p_o_id, player)
		ScriptLib.SetWorktopOptionsByGroupId(context, define.group_id, evt.param1, define.option_list)
		ScriptLib.SetGroupVariableValue(context, "gear_info_"..(evt.param1//1000), 0)
		ScriptLib.PrintContextLog(context, "## -----------------set_variable : gear_info_"..(evt.param1//1000).."->"..p_o_id)
		local cur_p = ScriptLib.GetGroupVariableValue(context, "cur_points_"..player)
		ScriptLib.ShowTemplateReminder(context, 115, {player, cur_p, define.max_points})
	end
	return 0
end

function action_EVENT_GROUP_LOAD(context, evt)
	ScriptLib.PrintContextLog(context, "## ================ INITIALIZE 61 ==============")
	ScriptLib.SetGroupVariableValue(context, "cur_points_1", define.max_points)
	ScriptLib.SetGroupVariableValue(context, "cur_points_2", define.max_points)
	return 0
end

function award_points(context, prev_context, param1, param2, param3)
	local uid_list = ScriptLib.GetSceneUidList(context)
	local new_points = 0
	for i,v in ipairs(uid_list) do
		local cur_points = ScriptLib.GetGroupVariableValue(context, "cur_points_"..i)
		new_points = cur_points + param1
		if new_points > define.max_points then
			new_points = define.max_points
		end
		ScriptLib.SetGroupVariableValue(context, "cur_points_"..i, new_points)
		--ScriptLib.PrintContextLog(context, "$$ player -> "..i.." | points -> "..new_points)
	end
	ScriptLib.ShowTemplateReminder(context, 117, {param1})
	return 0
end

function LF_Return_Points(context, index, player)
	if index > 0 then
		local cur_points = ScriptLib.GetGroupVariableValue(context, "cur_points_"..player)
		local new_points = cur_points + define.option_points[index]
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
	if index == #define.option_list then
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

function fix_gear(context, prev_context, param1, param2, param3)
	for i,v in ipairs(points) do
		local cid = ScriptLib.GetGroupVariableValue(context, "gear_info_"..i)
		if cid ~= 0 then
			cid = 1000*i+cid+1
			ScriptLib.PrintContextLog(context, "## TD_LOG : cid -> "..cid.." | buff -> "..param1)
			if param1 == 3001 then
				ScriptLib.ChangeGroupVariableValue(context, "buff", 1)
				ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {cid}, "TOWEDEFENCE_HITRANGE", 1)
			elseif param1 == 3002 then
				ScriptLib.ChangeGroupVariableValue(context, "buff", 10)
				ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {cid}, "TOWEDEFENCE_DAMAGE", 1)
			elseif param1 == 3003 then
				ScriptLib.ChangeGroupVariableValue(context, "buff", 100)
				ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {cid}, "TOWEDEFENCE_HITINTERVAL", 1)
			elseif param1 == 3004 then
				ScriptLib.SetGroupVariableValue(context, "buff", 500)
				ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {cid}, "TOWEDEFENCE_HITRANGE", 5)
				ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {cid}, "TOWEDEFENCE_DAMAGE", -5)
				ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {cid}, "TOWEDEFENCE_HITINTERVAL", -5)
			end
		end
	end
end

LF_Initialize_Level()