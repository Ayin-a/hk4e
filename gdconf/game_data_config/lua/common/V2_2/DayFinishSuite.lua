--ServerUploadTool Save to [/root/env/data/lua/common/V2_2]
--[[
defs = {
	group_id = ,
	questList = {7216701,7216601,7217201,7217301},	--按天填入完成的任务ID
	chestList = {},	--按Suite组填入每组Suite完成时打开的宝箱ID
}
--需要配置一个GroupVariable， chestState，需要Persistent，用来记录没完成的Suite
--需要配置一个GroupVariable， suiteBySeq，需要Persistent,用来顺序刷新下一个组Suite

]]


local Triggers_LoopSuites = {
	[1] = { name = "group_load", config_id = 9000501, event = EventType.EVENT_GROUP_LOAD, source = "",condition = "",action = "action_group_load",trigger_count= 0},
	[2] = { name = "gadget_state_change", config_id = 9000502, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "",condition = "",action = "action_gadget_state_change",trigger_count= 0},
}

--在每天自然加载的时候更新Group
function action_group_load(context, evt)
	if evt.param1 ~= 1 then
		return -1
	end
--	ScriptLib.PrintContextLog(context,"@@DFS: Group_Load")
	local uidList = ScriptLib.GetSceneUidList(context)
    --上线的时候如果同时group load，可能找不到uidlist，做一个保护
    local _suite = 0
    if (uidList == nil or #uidList == 0) then
    --拿不到玩家的消息就去找通用的存档Group拿任务发过来的信息
    	_suite = ScriptLib.GetGroupVariableValueByGroup(context, "suiteByDay", 133225176) 
--    	ScriptLib.PrintContextLog(context,"@@DFS: Get_Suite_By_Group_".._suite)
    else
    --拿到玩家的EID
    	local avatar_entity = ScriptLib.GetAvatarEntityIdByUid(context, uidList[1])
    	ScriptLib.PrintContextLog(context,"@@DFS: EntityID_"..avatar_entity)
    	--遍历拿到任务的进度,根据任务进度取到需要刷新的suiteid
    --第一天的结束任务未接取或未完成，刷1
    	if QuestState.UNFINISHED == ScriptLib.GetQuestState(context, avatar_entity, defs.questList[1]) or QuestState.NONE == ScriptLib.GetQuestState(context, avatar_entity, defs.questList[1]) then
			_suite = 1
		else
    --第二天的结束任务未接取或未完成，刷2
			if QuestState.UNFINISHED == ScriptLib.GetQuestState(context, avatar_entity, defs.questList[2]) or QuestState.NONE == ScriptLib.GetQuestState(context, avatar_entity, defs.questList[2]) then
				_suite = 2
			else
	--第三天结束任务未接取或未完成，刷4
				if QuestState.UNFINISHED == ScriptLib.GetQuestState(context, avatar_entity, defs.questList[3]) or QuestState.NONE == ScriptLib.GetQuestState(context, avatar_entity, defs.questList[3]) then
					_suite = 3
				else 
	--第四天的任务未完成，走营地的循环流程
					if	QuestState.UNFINISHED == ScriptLib.GetQuestState(context, avatar_entity, defs.questList[4]) then
						_suite = 0
					end
				end
			end
		end
--		ScriptLib.PrintContextLog(context,"@@DFS: Get_Suite_By_Quest_".._suite)
	end
	
	--任务全都做完了或者全都没有接过，找没有领奖的Suite切过去
	if _suite == 0  then
--		ScriptLib.PrintContextLog(context,"@@DFS: Get_Suite_By_Finish_State".._suite)
		local chestState = ScriptLib.GetGroupVariableValue(context, "chestState")
		local chestStateList = retStateByDigit(chestState)
		local suite_unfinished_list = {}
		for index,suite_id in pairs(defs.chestList) do
			if chestStateList[index] == 0 or chestStateList[index] == nil then
				table.insert(suite_unfinished_list, index)
			end
		end
		_suite = suite_unfinished_list[1]
		if _suite == 0 or _suite == nil then
			--每天顺序刷新Suite
			_suite = ScriptLib.GetGroupVariableValue(context, "suiteBySeq")
			if _suite == 0 then
				ScriptLib.SetGroupVariableValue(context, "suiteBySeq", 1)
				_suite = 1
			end
			if _suite == 3 then 
				ScriptLib.SetGroupVariableValue(context, "suiteBySeq", 1)
			else
				ScriptLib.SetGroupVariableValue(context, "suiteBySeq", _suite+1)
			end
		end
--		ScriptLib.PrintContextLog(context,"@@DFS: Get_Suite_By_Finish_State".._suite)
	end
--	ScriptLib.PrintContextLog(context,"@@DFS: Get_Suite_Final_".._suite)
	--任务没做完，切到任务对应的Suite
	ScriptLib.RefreshGroup(context,{group_id = defs.group_id, suite = _suite})
	return 0
end


--拿到按位记录的数据情况
function retStateByDigit(numState)
	local list_state = {}
	--没有组完成了，返回一个空的
	if numState == 0 then
		return list_state
	end
--[[禁用whi%le循环
	whi%le numState ~= 0  do
		local last_digit = numState%10
		table.insert(list_state, last_digit)
		numState = (numState - last_digit)/10
	end
]]
--因为一共只有3位数字，所以只做三次循环，逻辑本质不变
	for i=1,3 do
		if numState ~= 0 then
			local last_digit = numState%10
			table.insert(list_state, last_digit)
			numState = (numState - last_digit)/10
		end
		i = i+1
	end
	return list_state
end

--宝箱的状态变化来记录奖励领取情况
function action_gadget_state_change( context, evt )
	local config_id = evt.param2
	local config_state = evt.param1
--宝箱打开的时候更新标记对应Suite完成
	if config_state ~= 102 then
		return -1
	end
--按位记录宝箱完成
	for k,chest_id in pairs(defs.chestList) do
		if chest_id == config_id then
			local chestState = ScriptLib.GetGroupVariableValue(context, "chestState")
			chestState = chestState + 10^(k-1)
			ScriptLib.SetGroupVariableValue(context, "chestState", chestState)
			return 0
		end
	end
	return 0
end

--给每个suite塞触发器
function Initialize_DFS()
	for k,v in pairs(Triggers_LoopSuites) do
		table.insert(triggers, v)
		for k_,v_ in pairs(suites) do
			table.insert(v_.triggers, v.name)
		end
	end
	return 0
end

Initialize_DFS()