--[[
defs = {
	group_id = ,
	decal_opt_map = {
		[opt_cfg] = {decal_id = ,index = },
	},
	suite_decals = ,
	suite_opts = ,
}
]]
local Trigger_DecalDecode  = {
	[1] = { name = "gadget_create", config_id = 9001001, event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0 },
	[2] = { name = "select_option", config_id = 9001002, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },
	[3] = { name = "variable_change",config_id = 9001003, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change", trigger_count = 0 },
}


function action_variable_change( context,evt )
	local var_name = evt.source_name
	local value_new = evt.param1
	if var_name == "isNeedNotify" then
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, defs.suite_decals)
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, defs.suite_opts)
		ScriptLib.PrintContextLog(context, "@@ LUA_DD : DD_Init")
	end
	return 0
end

--物件创建时初始化事件
function action_gadget_create(context, evt)
	local config_id = evt.param1
	--校验传进来的gadget是不是Group里的操作台，不是则返回 
	if defs.decal_opt_map[config_id] == nil then
		return -1
	end
	--初始化操作台的操作数
	ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, config_id, {91})
	return 0
end

function action_select_option(context,evt)
	local config_id = evt.param1	--	操作台的configid
	local option_id = evt.param2	--	操作id
	--校验传进来的gadget是不是Group里的操作台，不是则返回 
	if defs.decal_opt_map[config_id] == nil then
		return -1
	end
	if option_id ~= 91 then
		return -1
	end
	--点亮对应的符文
	ScriptLib.PrintContextLog(context, "@@ LUA_DD : Receive_OPT")
	local decal_id = defs.decal_opt_map[config_id].decal_id
	local decal_state = ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, decal_id)
	if decal_state == 202 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, decal_id, 201)
	elseif decal_state == 201 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, decal_id, 202)
	end
	local wrongNums = 0
	for wt_id,infos in pairs(defs.decal_opt_map) do
		if infos.index ~=  ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, infos.decal_id) then
			wrongNums = wrongNums + 1
		end
	end
	if wrongNums == 0 then
		ScriptLib.SetGroupVariableValue(context, "Finished", 1)
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_id,defs.suite_opts)
	end
	return 0
end


--加触发器
function Initialize_DecalDecode()
	for k,v in pairs(Trigger_DecalDecode) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	return 0
end

Initialize_DecalDecode()