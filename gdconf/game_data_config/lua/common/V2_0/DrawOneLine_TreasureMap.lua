--[[
藏宝图特殊藏宝点的一笔画玩法

]]--

local matrix = 
{
{defs.gadget_11,defs.gadget_12,defs.gadget_13},

{defs.gadget_21,defs.gadget_22,defs.gadget_23},

{defs.gadget_31,defs.gadget_32,defs.gadget_33}
}



local extraTriggers={
	{config_id = 9000001, name = "GadgetStateChange", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_Gadget_State_Change", trigger_count = 0 },
	{config_id = 9000002,name = "LEAVE_REGION", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION", forbid_guest = false, trigger_count = 0 },
	{ config_id = 9000003, name = "GADGET_CREATE", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0 },
    { config_id = 9000004, name = "group_load_DOL", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	{ config_id = 9000005, name = "general_award_taken_DOL", event = EventType.EVENT_GENERAL_REWARD_TAKEN, source = "", condition = "", action = "action_general_reward_taken", trigger_count = 0 },

}


function Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	
	table.insert(variables,{ config_id=50000001,name = "digged", value = 0, no_refresh = true})
	table.insert(variables,{ config_id=50000002,name = "successed", value = 0, no_refresh = true})
	table.insert(variables,{ config_id=50000003,name = "challenge_state", value = 0})
	table.insert(variables,{ config_id=50000004,name = "current_stone", value = 0})
--初始化
end


function action_general_reward_taken(context,evt)

	--挖掘点被挖掉的时候触发
	ScriptLib.PrintContextLog(context,"DOL: Group has been digged, load the first brick!!!")

	--发一个reminder
	ScriptLib.ShowReminder(context, 600043)
	
	local targetSolution
	--向服务器申请获得当前group的解法列（某些情况下可能没走group load，做个保险）
	targetSolution = ScriptLib.GetBonusTreasureMapSolution(context, defs.group_ID)

	ScriptLib.PrintContextLog(context,"DOL: Target Solution is: ")
	for i = 1,#targetSolution do 
		ScriptLib.PrintContextLog(context,"DOL :"..targetSolution[i])
	end

	--如果因为任何原因没有拿到解法，立刻返回，不加载石板，防止后续报错
	if (#targetSolution == 0) then
		return 0
	end

	--创建起始方块
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_starter })
	ScriptLib.SetGroupVariableValue(context,"digged",1)
	return 0
end


function action_group_load(context, evt)
	ScriptLib.PrintContextLog(context,"DOL: Draw One Line Group Loaded ")


	local targetSolution
	--向服务器申请获得当前group的解法列
	targetSolution = ScriptLib.GetBonusTreasureMapSolution(context, defs.group_ID)

	ScriptLib.PrintContextLog(context,"DOL: Target Solution is: ")
	for i = 1,#targetSolution do 
		ScriptLib.PrintContextLog(context,"DOL :"..targetSolution[i])
	end

	--如果因为任何原因没有拿到解法，立刻返回，不加载石板，防止后续报错
	if (#targetSolution == 0) then
		return 0
	end

	--group load时，如果没有胜利，则强制加载第一块石板
	if ScriptLib.GetGroupVariableValue(context, "successed")~=1 and ScriptLib.GetGroupVariableValue(context,"digged") == 1 then
		ScriptLib.PrintContextLog(context,"DOL: Reloading from the start!! ")
		--重置一下挑战状态
		ScriptLib.SetGroupVariableValue(context,"challenge_state",0)
		local ret = ScriptLib.CreateGadget(context, { config_id = defs.gadget_starter })
		ScriptLib.PrintContextLog(context,"DOL: Building the first brick result:  "..ret)
	end
	return 0
end

--处理失败逻辑
function FaildProcess(context,str)
	--Fiald process start
	ScriptLib.PrintContextLog(context,"Fiald Process Start : "..str)
	ScriptLib.SetGroupVariableValue(context, "isProcessFaild", 1)
	ScriptLib.PrintContextLog(context,str.." Set isPrecessFaild = 1")
	for k,v in pairs(matrix) do 
		for ik,iv in pairs(v) do
			ScriptLib.PrintContextLog(context,str.." Loop ".. iv)
			local tempGadgeState = ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, iv) 
			ScriptLib.PrintContextLog(context,str.." tempGadgetState = ".. tempGadgeState)
			if tempGadgeState ~= 903 then 
				if iv ~= defs.gadget_starter then 
					ScriptLib.SetGadgetStateByConfigId(context, iv, 102)
				else	
					ScriptLib.SetGadgetStateByConfigId(context, iv, 201)
				end
			end
		end
	end
	ScriptLib.StopChallenge(context,233,0)
	--ScriptLib.SetGroupVariableValue(context, "activeCount", 0)	
	ScriptLib.PrintContextLog(context,"DOL: Fiald Process End : "..str)
	--Fiald process End
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_ID, 2)
	ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_starter })
end

function LuaCallFail(context)
	FaildProcess(context,"踩到空方块")
	return 0
end

function action_gadget_create(context, evt)
	ScriptLib.PrintContextLog(context,"DOL: Changed gadget id is: "..evt.param2)
	ScriptLib.PrintContextLog(context,"DOL: Changed gadget config id is: "..evt.param1)
	if evt.param2==70900304 then
		ScriptLib.PrintContextLog(context," DOL：Build First Brick！")
		--if ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, evt.param1)==0 then
		local ret = ScriptLib.SetGadgetStateByConfigId(context, evt.param1, 101)
		ScriptLib.PrintContextLog(context,"DOL: First brick change state result: "..ret)
		--end 
	end
	return 0
end

function action_Gadget_State_Change(context, evt)
	
	--未开始挑战，并将一个石板踩亮：说明挑战开始，加载剩余的所有石板、并将challenge_state设置为1（挑战进行中）
	if ScriptLib.GetGroupVariableValue(context, "challenge_state")==0 and evt.param1==202 then
		
		--生成第一块石板的时候，同时开启挑战
		local ret = ScriptLib.StartChallenge(context,233,defs.challenge,{0,defs.challenge,1})
		ScriptLib.PrintContextLog(context,"DOL: Challenge active result "..ret)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		ScriptLib.SetGroupVariableValue(context, "challenge_state", 1)
		for i=1,#matrix do
			for j=1,#matrix[i] do
				if matrix[i][j]==evt.param2 then
					ScriptLib.SetGroupVariableValue(context, "current_stone", i*10+j)
				end
			end
		end
		return 0
	end

	--挑战中踩到石板
	--如果是成功踩亮，则检测踩到的是否和current_stone邻接
	--如果是将石板踩灭，确认是否是重复踩了一块石板
	if ScriptLib.GetGroupVariableValue(context, "challenge_state")==1 then
		local current_stone_id = ScriptLib.GetGroupVariableValue(context, "current_stone")
		--ScriptLib.PrintContextLog(context,"DOL:current stone id: "..current_stone_id)
		if evt.param1==202 then
			ScriptLib.PrintContextLog(context,"DOL:step on an DEFAULT stone")
			CheckTwoGadgetIsAdjacent(context,ScriptLib.GetGroupVariableValue(context, "current_stone"),evt.param2)
		end
		if evt.param1==201 and evt.param3==202 then
			CheckTwoGadgetIsAdjacent(context,ScriptLib.GetGroupVariableValue(context, "current_stone"),evt.param2)
			local current_idx=ScriptLib.GetGroupVariableValue(context, "current_stone")
			local config_one=matrix[math.floor(current_idx/10)][current_idx%10]
			if config_one==evt.param2 then
				ScriptLib.PrintContextLog(context,"DOL:step on the SAME stone")
				--ScriptLib.SetGadgetStateByConfigId(context, evt.param2, 202)
			else
				ScriptLib.PrintContextLog(context,"DOL:step on a ACTIVITED stone")
			end
		end
		--每次石板状态变化，都要检查一次是否成功
		CheckIsSuccess(context)
		return 0
	end
	return 0
end

function action_EVENT_LEAVE_REGION(context, evt)
	if evt.param1~=defs.trigger_boarder or ScriptLib.GetGroupVariableValue(context, "successed")==1 then
		return 0
	end
	FaildProcess(context,"出圈")
	return 0
end
--检测玩法是否成功
function CheckIsSuccess(context)
	--用到的时候再找服务端要，防止服务器清数据
	local targetSolution = ScriptLib.GetBonusTreasureMapSolution(context, defs.group_ID)
	--校验一下是否拿到数据，如果没拿到直接返回失败
	if (#targetSolution == 0) then
		return 0
	end
	local score=0
	local state=nil
	local isSuccess = true
	for i=1,#matrix do
		for j=1,#matrix[i] do
			state=ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID,matrix[i][j]) 
			--石板激活，但目标解法不为1，说明该次判定失败，直接返回失败
			ScriptLib.PrintContextLog(context,"DOL : Brick ["..i..","..j.."] is "..state-201)
			ScriptLib.PrintContextLog(context,"DOL : target index is "..(i-1)*#matrix+j)
			if (state-201) ~= targetSolution[(i-1)*#matrix+j] and (state-101) ~= targetSolution[(i-1)*#matrix+j] then
				isSuccess = false
				break
			end
		end
	end
	if (isSuccess == false) then
		return 0
	end
	if isSuccess then
		ScriptLib.PrintContextLog(context,"DOL:SUCCESS!")
		for i=1,#matrix do
			for j=1,#matrix[i] do
				ScriptLib.SetGadgetStateByConfigId(context, matrix[i][j], 901)
			end
		end
		ScriptLib.SetGroupVariableValue(context, "challenge_state", 2)
		--ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		ScriptLib.SetGroupVariableValue(context, "successed", 1)
		ScriptLib.StopChallenge(context,233,1)
	end
	return 0
end
--检测两个方块是否是相邻方块
function CheckTwoGadgetIsAdjacent(context,current_idx,config_two)
	local x=math.floor(current_idx/10)
	local y=current_idx%10
	if matrix[x][y]==config_two then
		return 0
	end
	if y>1 then
		if matrix[x][y-1]==config_two then
			ScriptLib.SetGroupVariableValue(context, "current_stone", x*10+y-1)
			return 0
		end
	end
	if y< #matrix[x] then
		if matrix[x][y+1]==config_two then
			ScriptLib.SetGroupVariableValue(context, "current_stone", x*10+y+1)
			return 0
		end
	end
	if x>1 then
		if matrix[x-1][y]==config_two then
			ScriptLib.SetGroupVariableValue(context, "current_stone", (x-1)*10+y)
			return 0
		end
	end
	if x < #matrix then
		if matrix[x+1][y]==config_two then
			ScriptLib.SetGroupVariableValue(context, "current_stone", (x+1)*10+y)
			return 0
		end
	end
	FaildProcess(context,"踩错")
	return 0
end
Initialize_Group(triggers, suites)