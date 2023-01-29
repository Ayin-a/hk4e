--ServerUploadTool Save to [/root/env/data/lua/common/V3_4]
--======================================================================================================================
--||   Filename      ||    EnergyPillar
--||   RelVersion    ||    V3_4
--||   Owner         ||    chao-jin
--||   Description   ||    
--||   LogName       ||    ##[EnergyPillar]
--||   Protection    ||    
--======================================================================================================================
--Defs & Miscs
local defs = {
	pillar_top = 90003,
	pillar_mid = 90002,
	pillar_bot = 90001,
	operator_1 = 90004,
	operator_2 = 90005,
	operator_3 = 90006,
}

local pillar_decals = {
	[90001] = {"E","F","F"},
	[90002] = {"C","D","C"},
	[90003] = {"A","B","A"},
}

local pillar_answers = {
	[1] = "FCA",
	[2] = "ECB",
	[3] = "FDA",
}

local pillar_state_map = {
	[90004] ={ {state = 0, sgv = "SGV_Surface01"}, {state = 1, sgv = "SGV_Surface02"},{state = 2, sgv = "SGV_Surface03"}},
	[90005] ={ {state = 0, sgv = "SGV_Surface02"}, {state = 1, sgv = "SGV_Surface03"},{state = 2, sgv = "SGV_Surface01"}},
	[90006] ={ {state = 0, sgv = "SGV_Surface03"}, {state = 1, sgv = "SGV_Surface01"},{state = 2, sgv = "SGV_Surface02"}},
}

local OPTION = {
	TOP = 811,
	MID = 812,
	BOT = 813,
}
--======================================================================================================================
local EP_Triggers = {
	{ name = "group_load", config_id = 8000101, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	{ name = "select_option", config_id = 8000102, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },
}
--Events
function action_group_load(context, evt)
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.operator_1, {811,812,813})
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.operator_2, {811,812,813})
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.operator_3, {811,812,813})
	return 0 
end


function action_select_option(context, evt) 
	--处理电源的开关
	if evt.param2 == OPTION.TOP then 
		LF_TurnPillar(context, defs.pillar_top)
		LF_CheckCombine(context)
	end
	if evt.param2 == OPTION.MID then 
		LF_TurnPillar(context, defs.pillar_mid)
		LF_CheckCombine(context)
	end
	if evt.param2 == OPTION.BOT then 
		LF_TurnPillar(context, defs.pillar_bot)
		LF_CheckCombine(context)
	end
	return 0
end

function action_gadget_state_change(context, evt) 
	return 0
end

--======================================================================================================================
--LevelFunctions
function LF_TurnPillar(context, pillar_id)
	local gadget_state = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, pillar_id)
	if gadget_state == 0 then 
		ScriptLib.SetGadgetStateByConfigId(context, pillar_id, 1)
		return 0
	end
	if gadget_state == 1 then 
		ScriptLib.SetGadgetStateByConfigId(context, pillar_id, 2)
		return 0
	end
	if gadget_state == 2 then 
		ScriptLib.SetGadgetStateByConfigId(context, pillar_id, 0)
		return 0
	end
end

--通过gadgetstate来拿一个转子的排列顺序，以State0的初始方向为基准
function LF_GetPillarDecalSeq(context, pillar_id)
	local state_pillar = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, pillar_id)
	if state_pillar == 0 then 
		return 	{ 
					{decal = pillar_decals[pillar_id][1], sgv_key = "SGV_Surface01", p_id = pillar_id},
					{decal = pillar_decals[pillar_id][2], sgv_key = "SGV_Surface02", p_id = pillar_id},
					{decal = pillar_decals[pillar_id][3], sgv_key = "SGV_Surface03", p_id = pillar_id},
				}
	end 
	if state_pillar == 1 then 
		return 	{ 
					{decal = pillar_decals[pillar_id][2], sgv_key = "SGV_Surface02", p_id = pillar_id},
					{decal = pillar_decals[pillar_id][3], sgv_key = "SGV_Surface03", p_id = pillar_id},
					{decal = pillar_decals[pillar_id][1], sgv_key = "SGV_Surface01", p_id = pillar_id},
				}
	end 
	if state_pillar == 2 then 
		return 	{ 
					{decal = pillar_decals[pillar_id][3], sgv_key = "SGV_Surface03", p_id = pillar_id},
					{decal = pillar_decals[pillar_id][1], sgv_key = "SGV_Surface01", p_id = pillar_id},
					{decal = pillar_decals[pillar_id][2], sgv_key = "SGV_Surface02", p_id = pillar_id},
				}
	end 	
end

function LF_CheckCombine(context)
	--先把所有的面全部重置为0
	for pillar_id,v in pairs(pillar_decals) do
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, pillar_id, "SGV_Surface01", 0)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, pillar_id, "SGV_Surface02", 0)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, pillar_id, "SGV_Surface03", 0)
	end
	--拿到每个转子的状态
	local pillar_map = {}

	for pillar_id, decal_str in pairs(pillar_decals) do
		table.insert( pillar_map, LF_GetPillarDecalSeq(context, pillar_id))
	end
--[[
	local pillar_map = {
	[1] = 	{   --转子1
				{decal = a, sgv_key = 1, p_id = 1},
				{decal = b, sgv_key = 2, p_id = 1},
				{decal = a, sgv_key = 3, p_id = 1},
			},
	[2] = 	{   --转子2
				{decal = c, sgv_key = 1, p_id = 2},
				{decal = d, sgv_key = 2, p_id = 2},
				{decal = c, sgv_key = 3, p_id = 2},
			},
	[3] = 	{   --转子3
				{decal = e, sgv_key = 1, p_id = 3},
				{decal = f, sgv_key = 2, p_id = 3},
				{decal = f, sgv_key = 3, p_id = 3},
			},			
	}


]]
	--把三个转子的纵向面连接起来，做一个StringList
	local pillar_combines = {}
	for i=1,3 do
		pillar_combines[i] = pillar_map[1][i].decal..pillar_map[2][i].decal..pillar_map[3][i].decal
	end
	local right_indexs = {}

	--每个StringList去和解做比较，符合解就把这组压到答案组里
	for i=1,3 do
		for j=1,3 do
			if pillar_combines[i] == pillar_answers[j] then 
				table.insert(right_indexs, i)
			end
		end
	end
	--没有匹配的返回
	if #right_indexs == 0 then 
		return 0
	else
	--有匹配的就会去找对应的面
		if #right_indexs < 3 then 
			for i=1,#right_indexs  do
				local idx = right_indexs[i]
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, pillar_map[1][idx].p_id, pillar_map[1][idx].sgv_key, 1)
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, pillar_map[2][idx].p_id, pillar_map[2][idx].sgv_key, 1)
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, pillar_map[3][idx].p_id, pillar_map[3][idx].sgv_key, 1)
			end
		end
		if #right_indexs == 3 then 
			for pillar_id,v in pairs(pillar_decals) do
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, pillar_id, "SGV_Surface01", 1)
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, pillar_id, "SGV_Surface02", 1)
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, pillar_id, "SGV_Surface03", 1)
			end
			ScriptLib.SetGroupVariableValue(context, "Finished", 1)
		end
	end
end


--初始化
function EP_Initialize()
	for k,v in pairs(EP_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	table.insert(variables,{ config_id = 50000001,name = "Finished", value = 0, no_refresh = true})
end

EP_Initialize()