--鹤观的火把解密Require
--[[
defs = {
	group_id = 111101219,
	torch_list = {219001,219002,219003,219004,219005}, --这里填所有的火把configid
	torch_solution = {219001,219003,219005}, --这里填解密的正确解的火把id
	chest_id = 219006,--刷新的宝箱configId
}

]]

local Triggers_Start = {
	[1] = { name = "gadget_state_change", config_id = 9000001, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "",condition = "",action = "action_gadget_state_change",trigger_count= 0},
	[2] = { name = "group_load", config_id = 9000002, event = EventType.EVENT_GROUP_LOAD, source = "",condition = "",action = "action_group_load",trigger_count= 0},
}



--火把点亮状态改变
function action_gadget_state_change( context, evt )
	local config_id = evt.param2
	local cur_state = evt.param1
	--检查是不是在重置整个火把组，是则不处理
	if 0 ~= ScriptLib.GetGroupTempValue(context, "Reseting",{}) then
		return -1
	end
	--只在火把点亮时检查
	if cur_state ~= 201 then
		return -1
	end
	--完成了的话就不再处理
	if 0 ~= ScriptLib.GetGroupVariableValue(context, "Finished") then
		return 0
	end
	--检查所有火把的状态，如果已经是无解状态，则重置
	local lightedTorch = {}
	--检查所有火把的状态，并放到一个表里
	for key,cfg_id in pairs(defs.torch_list) do
		local torch_state = ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, cfg_id)
		if torch_state == 201 then
			table.insert(lightedTorch, cfg_id)
		end
	end
	--点燃的火把数量等于正确解数量时进行一次校验
	if #lightedTorch == #defs.torch_solution then
		local right_count = 0
		for k_l = 1,#defs.torch_solution do
			for k_s= 1,#lightedTorch do
				if defs.torch_solution[k_l] == lightedTorch[k_s] then
					right_count = right_count + 1
				end
			end
		end
		if right_count == #defs.torch_solution then
			--成功刷新宝箱，将火把置为点燃状态
			ScriptLib.SetGroupTempValue(context, "Reseting", 1, {})
			for key,cfg_id in pairs(defs.torch_list) do
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, cfg_id, 203)
			end
			ScriptLib.CreateGadget(context, { config_id = defs.chest_id })
			ScriptLib.SetGroupVariableValue(context, "Finished", 1)
			ScriptLib.SetGroupTempValue(context, "Reseting", 0, {})
		end
	end

	--火把全部点完进行重置
	if #lightedTorch > #defs.torch_solution then
		--失败重置所有火把状态
		--标记现在是重置状态，不会走到gadgetStateChange里
		if #lightedTorch >= #defs.torch_list then
			ScriptLib.SetGroupTempValue(context, "Reseting", 1, {})
			for key,cfg_id in pairs(defs.torch_list) do
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, cfg_id, 201)
			end
			for key,cfg_id in pairs(defs.torch_list) do
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, cfg_id, 0)
			end
			ScriptLib.SetGroupTempValue(context, "Reseting", 0, {})
		end
	end

	return 0
end

function action_group_load( context,evt )
	--在GroupLoad的时候初始化一下临时变量
	ScriptLib.SetGroupTempValue(context, "Reseting", 0, {})
	if 0 ~= ScriptLib.GetGroupVariableValue(context, "Finished") then
		--完成了就把火把全切到点亮状态
		for key,cfg_id in pairs(defs.torch_list) do
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, cfg_id, 201)
		end
		return 0
	end
	return 0
end


--给每个suite塞触发器
function Initialize()
	for k,v in pairs(Triggers_Start) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	return 0
end

Initialize()