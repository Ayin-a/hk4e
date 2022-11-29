--[[
defs = {
	group_id = ,
	Lightup_Seq = {1,2,3,4,5}
}

]]

local Tirgger_Stone_Seq = {
	[1] = { name = "group_load", config_id = 9000301, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	[2] = { name = "state_change", config_id = 9000302, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0 },
	[3] = { name = "variable_change", config_id = 9000303, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change", trigger_count = 0 },

}

--在GadgetStateChange的时候记录状态并且计数+1
function action_gadget_state_change( context, evt )
	local config_id = evt.param2
	local cur_state = evt.param1
	ScriptLib.PrintContextLog(context, "@@ LUA_StoneSeq : State_Change_"..cur_state)
	if cur_state ~= 201 then 
		return -1
	end
	--鉴定是不是需要点亮的石头，不是就返回
	local isInSuite = 0
	for k,stone_cfg in pairs(defs.Lightup_Seq) do
		if stone_cfg == config_id then
			isInSuite = isInSuite + 1
		end
	end
	if isInSuite == 0 then
		return -1
	end
	--在重置过程中不会触发后续的操作
	if 0 ~= ScriptLib.GetGroupTempValue(context, "Reseting", {}) then
		return -1
	end

	--找到当前点亮的是不是对应的
	local cur_seq = ScriptLib.GetGroupTempValue(context, "LightedIndex", {})
	--记录现在点亮的符文石
	ScriptLib.SetGroupTempValue(context, "Lighted"..config_id, cur_seq, {})
	ScriptLib.SetGroupTempValue(context, "LightedIndex", cur_seq+1, {})
	ScriptLib.PrintContextLog(context, "@@ LUA_StoneSeq : Current_Seq_"..cur_seq)
	--当前是最后一个点亮的就开始校验
	if #defs.Lightup_Seq == cur_seq then
		--按顺序校验
		local rightCounts = 0
		for k,cfg in pairs(defs.Lightup_Seq) do
			if k == ScriptLib.GetGroupTempValue(context, "Lighted"..cfg, {}) then
				rightCounts = rightCounts + 1 
			end
		end
		--成功
		if rightCounts == #defs.Lightup_Seq then
			ScriptLib.SetGroupVariableValue(context, "Finished", 1)
		--失败
		else
			--没有按顺序点亮
			ScriptLib.PrintContextLog(context, "@@ LUA_StoneSeq : Reset")
			ScriptLib.SetGroupTempValue(context, "Reseting", 1, {})
			for k,cfg in pairs(defs.Lightup_Seq) do
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, cfg, 202)
			end
			--记录失败次数
			local failCount = ScriptLib.GetGroupVariableValue(context, "FailCount")
			ScriptLib.SetGroupVariableValue(context, "FailCount", failCount + 1)
				--重置记录变量
			ScriptLib.SetGroupTempValue(context, "LightedIndex",  1, {})
			ScriptLib.SetGroupTempValue(context, "Reseting", 0, {})
		end
	end
	return 0
end

--Group加载的时候重置临时记录用的变量
function action_group_load( context,evt )
	ScriptLib.PrintContextLog(context, "@@ LUA_StoneSeq : Init")
	ScriptLib.SetGroupTempValue(context, "LightedIndex", 1, {})
	ScriptLib.SetGroupTempValue(context, "Reseting", 0, {})
	if 0 ~= ScriptLib.GetGroupVariableValue(context, "Finished") then
		for k,cfg in pairs(defs.Lightup_Seq) do
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, cfg, 201)
		end
		return 0
	end
	if 0 ~= ScriptLib.GetGroupVariableValue(context, "isQuestNotify") then
		for k,cfg_id in pairs(defs.Lightup_Seq) do
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, cfg_id, 202)
			ScriptLib.PrintContextLog(context, "@@ LUA_StoneSeq : Can be hit")
		end
	end
	return 0
end


--变量发生变化的时候切换组内所有符文石状态
function action_variable_change( context,evt )
	local var_name = evt.source_name
	local value_new = evt.param1
	if var_name == "isNeedNotify" then
		for k,cfg_id in pairs(defs.Lightup_Seq) do
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, cfg_id, 202)
			ScriptLib.PrintContextLog(context, "@@ LUA_StoneSeq : Can be hit")
		end
	end
	if var_name == "isQuestNotify" then
		for k,cfg_id in pairs(defs.Lightup_Seq) do
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, cfg_id, 202)
			ScriptLib.PrintContextLog(context, "@@ LUA_StoneSeq : Can be hit")
		end
	end
	return 0
end

--加触发器
function Initialize_TSS()
	for k,v in pairs(Tirgger_Stone_Seq) do
		table.insert(triggers, v)
		for k_,v_ in pairs(suites) do
			table.insert(v_.triggers, v.name)
		end
	end
	return 0
end

Initialize_TSS()