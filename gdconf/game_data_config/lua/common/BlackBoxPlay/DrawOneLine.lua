--[[
		一笔画固定5x5版本

]]--

local matrix = 
{
{defs.gadget_11,defs.gadget_12,defs.gadget_13,defs.gadget_14,defs.gadget_15},

{defs.gadget_21,defs.gadget_22,defs.gadget_23,defs.gadget_24,defs.gadget_25},

{defs.gadget_31,defs.gadget_32,defs.gadget_33,defs.gadget_34,defs.gadget_35},

{defs.gadget_41,defs.gadget_42,defs.gadget_43,defs.gadget_44,defs.gadget_45},

{defs.gadget_51,defs.gadget_52,defs.gadget_53,defs.gadget_54,defs.gadget_55}}

local extraTriggers={
	{config_id = 8000001, name = "GadgetStateChange", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_Gadget_State_Change", trigger_count = 0 },
	{config_id = 8000002,name = "LEAVE_REGION", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION", forbid_guest = false, trigger_count = 0 },
	--{ config_id = 8000003, name = "GADGET_CREATE", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0 },
    { config_id = 8000004, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	table.insert(variables,{ config_id=50000001,name = "successed", value = 0, no_refresh = true})
	--challenge_state 0-等待开始 1-正在进行 2-完成 3-失败流程中
	table.insert(variables,{ config_id=50000002,name = "challenge_state", value = 0})
	table.insert(variables,{ config_id=50000003,name = "current_stone", value = 0})
	--这个GV用于GadgetLua
	table.insert(variables,{ config_id=50000004,name = "starter_id", value = 0})
--初始化
end

function action_group_load(context, evt)

	ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
	ScriptLib.SetGroupVariableValue(context, "starter_id",defs.gadget_starter)
	return 0
end

--处理失败逻辑
function FaildProcess(context,str)
	--Faild process start
	ScriptLib.PrintContextLog(context,"Faild Process Start : "..str)
	ScriptLib.SetGroupVariableValue(context, "challenge_state", 3)

	for k,v in pairs(matrix) do 
		for ik,iv in pairs(v) do
			local tempGadgeState = ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, iv) 
			--除了禁用格和起始格，全部格子下降
			if tempGadgeState ~= 903 then 
				if iv ~= defs.gadget_starter then 
					ScriptLib.SetGadgetStateByConfigId(context, iv, 102)
				else	
					ScriptLib.SetGadgetStateByConfigId(context, iv, 201)
				end
			end
		end
	end
	ScriptLib.PrintContextLog(context,"Faild Process End : "..str)
	ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
end

function LuaCallFail(context)
	--物件调用
	--如果踩到禁用格，且正在挑战中，则走一下失败流程
	if ScriptLib.GetGroupVariableValue(context, "challenge_state")==1 then
	FaildProcess(context,"踩到空方块")
	end
	return 0
end

function action_Gadget_State_Change(context, evt)

	if evt.param1==202 and evt.param3==204 and ScriptLib.GetGroupVariableValue(context, "challenge_state")==1 then
		--先检查是不是从相邻的格子踩进终点格
		CheckTwoGadgetIsAdjacent(context,ScriptLib.GetGroupVariableValue(context, "current_stone"),evt.param2)
		--再算分
		CheckIsSuccess(context)
		if ScriptLib.GetGroupVariableValue(context, "successed")~=1 then
			FaildProcess(context,"提前踩到终点")
		end
		return 0
	end

	--如果挑战状态是未开始（challenge_state=0），且被交互的是起始格，则开始挑战
	if ScriptLib.GetGroupVariableValue(context, "challenge_state")==0 and 
		evt.param1==202 and evt.param2== defs.gadget_starter then
		ScriptLib.PrintContextLog(context,"StartChallenge！ ")
		ScriptLib.SetGroupVariableValue(context, "challenge_state", 1)

		--先把终点格子切到State 204
		if defs.gadget_ender==0 then
			ScriptLib.PrintContextLog(context,"一笔画终点石板没配，使用自由模式")
		else
			ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_ender, 204)
		end
		--然后除了禁用格、起始格、终点格，全部格子升起
		for i=1,#matrix do
			for j=1,#matrix[i] do				
				if ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, matrix[i][j]) ~= 903 then
					if matrix[i][j] ~= defs.gadget_starter and matrix[i][j] ~= defs.gadget_ender then
						ScriptLib.SetGadgetStateByConfigId(context, matrix[i][j], 101)
					end
				end
				--设置当前在哪个方块
				if matrix[i][j]==evt.param2 then
					ScriptLib.SetGroupVariableValue(context, "current_stone", i*10+j)
				end
			end
		end
		return 0
	end
	--如果挑战状态是已开始（challenge_state=1），则检查格子有效性
	if ScriptLib.GetGroupVariableValue(context, "challenge_state")==1 then
		if evt.param1==202 then
			CheckTwoGadgetIsAdjacent(context,ScriptLib.GetGroupVariableValue(context, "current_stone"),evt.param2)
		end
		if evt.param1==201 and evt.param3==202 then
			local current_idx=ScriptLib.GetGroupVariableValue(context, "current_stone")
			local config_one=matrix[math.floor(current_idx/10)][current_idx%10]
			if config_one==evt.param2 then
				ScriptLib.SetGadgetStateByConfigId(context, evt.param2, 202)
			else
				FaildProcess(context,"踩错")
			end
		end
		CheckIsSuccess(context)
		return 0
	end
	return 0
end

function action_EVENT_LEAVE_REGION(context, evt)
	--解谜成功、解谜未开始 不算出圈
	if evt.param1~=defs.trigger_boarder or 
		ScriptLib.GetGroupVariableValue(context, "successed")==1 or 
		ScriptLib.GetGroupVariableValue(context, "challenge_state")==0 then
		ScriptLib.PrintContextLog(context, "Safe LEAVE REGION")	
		return 0
	else	
		FaildProcess(context,"出圈")
	end
	return 0
end
--检测玩法是否成功
function CheckIsSuccess(context)
	local score=0
	local state=nil
	for i=1,#matrix do
		for j=1,#matrix[i] do
			state=ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID,matrix[i][j]) 
			if state==202 or state==903 then
				score=score+1
			end
		end
	end
	if score>=25 then
		for i=1,#matrix do
			for j=1,#matrix[i] do
				if ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID,matrix[i][j]) ~= 903 then
				ScriptLib.SetGadgetStateByConfigId(context, matrix[i][j], 901)
				end
			end
		end
		ScriptLib.SetGroupVariableValue(context, "challenge_state", 2)
		ScriptLib.GoToGroupSuite(context, defs.group_ID, 3)
		ScriptLib.SetGroupVariableValue(context, "successed", 1)
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
LF_Initialize_Group(triggers, suites)