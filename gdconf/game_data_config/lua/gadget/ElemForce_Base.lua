--玩家吃球的数据包
local protocol = {
	[1] = { name = "small_grume", value = 0 },
	[2] = { name = "big_grume", value = 0 },
	[3] = { name = "in_burst", value = 0 },
	[4] = { name = "score", value = 0 },
	[5] = { name = "elem_type", value = 0 }
}

--玩法基础定义,有可能会配在group里
local base = {
	inferior = 200,		--小球分数
	superior = 500,		--大球分数
	hit_punish = 1000,	--受击扣分
	burst_multi = 2	--加成倍率
}

--元素类型字典
local elemType = {
	[1] = "Fire",
	[2] = "Water",
	[3] = "Electric",
	[4] = "Ice",
	[5] = "Wind",
	[6] = "Rock",
	[7] = "Grass"
}

--globalValue的字典
local submit = {
	[1] = { key = "_Crucible_Grume_Player_Sum_Inferior", value = 0 },	--该玩家本次提交小凝块的数量
	[2] = { key = "_Crucible_Grume_Player_Sum_Superior", value = 0 },	--该玩家本次提交大凝块的数量
	[3] = { key = "_Crucible_Grume_Player_In_Burst", value = 0 }		--该玩家是否处于加成状态
}

--跟ability通信的编码
local notify = {
	submit_grume = 10086,
	select_user_str = "random_user",
	select_user_value = 10
}

function OnPlayStageChange(context, old_stage, cur_stage, final_stage)
	if cur_stage > old_stage and cur_stage ~= final_stage then
		local uid_list = ScriptLib.GetSceneUidList(context)
		local random_user = {}
		if #uid_list <= 2 then
			random_user = uid_list
		else 
			local seed = math.randomseed(tostring(os.time()):reverse():sub(1,5))
			for i=1,2 do
				local r = math.random(1,#uid_list)
				random_user[i] = uid_list[r]
				table.remove(uid_list, r)
			end

			local elem = LF_Calculate_ElemWeight(context)
			ScriptLib.GadgetPlayUidOp(context, 0, 0, random_user, notify.select_user_value, elem)
			--stage变化的识别符标为1
			ScriptLib.GadgetLuaNotifyGroup(context, elem, old_stage, cur_stage)
		end	
	end
	return 0
end

--接收来自abilityAction的消息，启动玩法进度更新逻辑
function OnClientExecuteReq(context, param1, param2, param3)
	--玩家提交param2->1
	if param2 == 1 then 
		local uid = ScriptLib.GetUidByTeamEntityId(context, param3)
		return LF_Update_Player_Submit_Grume(context, uid)

	--本体受击param->9
	elseif param2 == 9 then
		--上传炉子受击信息
		return LF_Update_Crucible_BeHit(context)

	--元素凝块异常param->100+
	elseif param2 >= 100 then
		local uid = ScriptLib.GetTeamUidByEntityId(context, entity_id)
		--解析复杂param
		return LF_Update_Player_Lose_Grume(context, uid, param2)
	end
	return -1
end

--计算炉子受击扣分信息
function LF_Update_Crucible_BeHit(context)
	local process_lost = 0

	local cur_process = ScriptLib.GetGadgetPlayProgress(context, 0, 0)
	local min_process = ScriptLib.GetGadgetPlayStageBeginProgress(context, 0, 0)  

	if min_process <= cur_process - base.hit_punish then 
		process_lost = base.hit_punish
	else process_lost = min_process - cur_process
	end

	ScriptLib.AddGadgetPlayProgress(context, 0, 0, process_lost)
	return 0
end

--根据uid信息更新获取globalValue
function LF_Update_Player_Submit_Grume(context, uid)
	for i=1,#submit do
		submit[i].value = ScriptLib.GetTeamAbilityFloatValue(context, uid, submit[i].key)
	end

	--user_crucible_protocal
	local user_crucible = LF_Get_Uid_Submit_Info(context, uid)
	
	--计算本次提交的分数
	user_crucible[4].value = user_crucible[1].value*base.inferior*(1+user_crucible[3].value*base.burst_multi) 
	user_crucible[4].value = user_crucible[4].value + user_crucible[2].value*base.superior*(1+user_crucible[3].value*base.burst_multi) 
	
	--获取本次提交的元素
	local x = ScriptLib.GetTeamAbilityFloatValue(context, uid, "_Team_Real_Grume_ElemType")
	user_crucible[5].value = elemType[x]
	
	local final_packet = {
		[1]=user_crucible[1].value, 
		[2]=user_crucible[2].value,
		[3]=user_crucible[3].value,
		[4]=user_crucible[4].value,
		[5]=user_crucible[5].value
	}
	--##将玩家获取分数消息更新至c++
	--ScriptLib.UploadCrucibleSubmitPacket(context, uid, final_packet)

	ScriptLib.AddGadgetPlayProgress(context, 0, 0, user_crucible[4].value)
	return 0
end

--获取玩家信息数组
function LF_Get_Uid_Submit_Info(context, uid)
	local result = protocol
	for i=1,#result do
		LF_Get_Gadget_Uid_Variable(context, uid, result, i) 
	end
	return result
end

--从gadget变量中获取差值,并更新
function LF_Get_Gadget_Uid_Variable(context, uid, array, t)
	array[t].value = submit[t].value - ScriptLib.GetGadgetPlayUidValue(context, 0, 0, uid, array[t].name)
	ScriptLib.SetGadgetPlayUidValue(context, 0, 0, uid, array[t].name, submit[t].value)
	return 
end

--解析复杂param
function LF_Update_Player_Lose_Grume(context, uid, value)
	local struct = {}
	struct.location = math.floor(value%1000/100)
	struct.size = math.floor(value%100/10)
	struct.reason = math.floor(value%10)
	if struct.location > 3 or struct.size > 2 or struct.reason > 3 then
		return -1
	end
	--##将玩家丢球数据上传至c++
	--ScriptLib.UploadCrucibleAbnormalPacket(context, uid, struct)
	return 0
end

function LF_Calculate_ElemWeight(context)
	local sum = 0
	for i=1,7 do
		local var_value = ScriptLib.GetGroupVariableValue(context, elemType[i])
		if var_value < 0 then
			break
		end
		sum = sum + var_value
	end
	local r_s = math.random(1,sum)
	for i=1,7 do
		local var_value = ScriptLib.GetGroupVariableValue(context, elemType[i])
		if r_s > var_value then
			r_s = r_s - var_value
		else
			return i
		end
	end
	return 1
end