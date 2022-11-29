--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---

--[[======================================
||  filename:   TransferFlower
||  owner:      weiwei.sun
||  description:    辛焱岛 传音炮逻辑
||  LogName:    ## [TransferFlower]
||  Protection: 
=======================================]]

--[[

	有左右摆头（4档可调）和上下俯仰（5档可调）两种传音花，
	关卡中并不是所有档位都要切，这个re。quire让LD可以配置每个花用到哪些档
	可操作调整的传音花需要配置操作台选项, 左右转和上下转的SelectOption不同
	导出GroupLua需要勾选可索引

local	defs = {

		--左右旋转的SelectOptionID
		selectID_horizon = ,

		--上下俯仰的SelectOptionID
		selectID_vertical = ,

		--定义左右旋转的步长,key为传音花configID，value为GadgetState
		horizon_steps = {
			[传音花configID1] = {0, 102, 103, 104},
		},

		--定义上下俯仰的步长,key为传音花configID，value为GadgetState
		vertical_steps = {
			[传音花configID1] = {0, 302, 303, 304, 305},
		}
	}

]]

local extraTriggers={
  { config_id = 8000001, name = "Select_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_Select_Option", trigger_count = 0 },
  { config_id = 8000002, name = "BigFlower_Var_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "big_flower", condition = "", action = "action_BigFlower_Var_Change", trigger_count = 0 },
  { config_id = 8000003, name = "Group_Init", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Init", trigger_count = 1 },
  { config_id = 8000004, name = "Enter_Guide_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Enter_Guide_Region", trigger_count = 0 },
  { config_id = 8000005, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 }
}

function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	--大传音花开闭
	table.insert(variables, { config_id = 50000001, name = "big_flower", value = 0})
end

--玩家操作传音花
function action_Select_Option(context, evt)

	if evt.param2 == defs.selectID_horizon then
		LF_TurnByStep(context, evt.param1, defs.horizon_steps)
		return 0
	elseif evt.param2 == defs.selectID_vertical then
		LF_TurnByStep(context, evt.param1, defs.vertical_steps)
		return 0
	end
	return 0
end

--玩家操作传音花（SLC）
function SLC_TransferFlower_Turn(context)
	local cfg_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	for k,v in pairs(defs.horizon_steps) do
		if k == cfg_id then
			LF_TurnByStepSLC(context, cfg_id, v)
			return 0
		end
	end
	for k,v in pairs(defs.vertical_steps) do
		if k == cfg_id then
			LF_TurnByStepSLC(context, cfg_id, v)
			return 0
		end
	end
	return 0
end

function action_Enter_Guide_Region(context, evt)
	if evt.param1 ~= defs.guide_region then 
		return 0
	end
	LF_TryShowGuide(context)
	return 0
end

function action_Group_Init(context, evt)
	LF_InitRotation(context)
	return 0
end
function action_Group_Load(context, evt)
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	return 0
end
function LF_InitRotation(context)
	if nil == defs.init_state then
		return 0
	end
	for k,v in pairs(defs.init_state) do
		ScriptLib.SetGadgetStateByConfigId(context, k, v)
	end
	return 0
end

--根据配置的步长切state(SLC用)
function LF_TurnByStepSLC(context, config_id, step_table)

	local current_state = ScriptLib.GetGadgetStateByConfigId(context, 0, config_id)
	local current_index = LF_GetIndexInTable(context, current_state, step_table)

	if 0 == current_index then
		--传音花的state并不在配置table中，告警
		ScriptLib.PrintContextLog(context, "## [TransferFlower] #WARN# TransferFlower at unexpected state! Check defs. config_id@"..config_id.." current_state@"..current_state)
	else
		--切到下一个State
		if current_index >= #step_table then
			ScriptLib.SetGadgetStateByConfigId(context, config_id, step_table[1])
		else
			ScriptLib.SetGadgetStateByConfigId(context, config_id, step_table[current_index + 1])
		end
	end

	return 0
end

--根据配置的步长切state
function LF_TurnByStep(context, config_id, step_table)

	for k,v in pairs(step_table) do 

		if k == config_id then
			local current_state = ScriptLib.GetGadgetStateByConfigId(context, 0, config_id)
			local current_index = LF_GetIndexInTable(context, current_state, v)

			if 0 == current_index then
				--传音花的state并不在配置table中，告警
				ScriptLib.PrintContextLog(context, "## [TransferFlower] #WARN# TransferFlower at unexpected state! Check defs. config_id@"..config_id.." current_state@"..current_state)
			else
				--切到下一个State
				if current_index >= #v then
					ScriptLib.SetGadgetStateByConfigId(context, config_id, v[1])
				else
					ScriptLib.SetGadgetStateByConfigId(context, config_id, v[current_index + 1])
				end
			end
			return 0
		end		
		--传进来的configID不是配置的传音花，告警
		ScriptLib.PrintContextLog(context, "## [TransferFlower] #WARN# LF_HorizonalTurnByStep find config_id failed, check defs. config_id@"..config_id)
	end
	return 0
end

--当大传音花被打时，如果变量为0，则设为1
function SLC_TransferFlower_BigFlowerHit(context)
	--记下本Group内大传音花的configID
	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	ScriptLib.SetGroupTempValue(context, "big_flower_id", config_id, {})
	if 0 == ScriptLib.GetGroupVariableValue(context, "big_flower") then
		ScriptLib.SetGroupVariableValue(context, "big_flower", 1)
	end
	return 0
end

function action_BigFlower_Var_Change(context, evt)
	local big_flowerID = ScriptLib.GetGroupTempValue(context, "big_flower_id", {})
	if 0 >= big_flowerID then
		return 0
	end
	if 1 == evt.param1 and 0 == evt.param2 then
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, big_flowerID, "SGV_BigFlower_On", 1)
	elseif 0 == evt.param1 and 1 == evt.param2 then
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, big_flowerID, "SGV_BigFlower_On", 0)
	end
	return 0
end

--用value查key
function LF_GetIndexInTable(context, value, check_table)
	for i = 1, #check_table do
		if check_table[i] == value then
			return i
		end
	end
	return 0
end

function LF_TryShowGuide(context)
	--在NewActivityPushTipsData配置中查找对应id, 并通过lua添加进活动中
	--重复添加已有push tips返回-1 成功添加返回0
	local ret = ScriptLib.TryRecordActivityPushTips(context, 2014010)
	if 0 == ret then
		local uid = ScriptLib.GetSceneOwnerUid(context)
		ScriptLib.ShowClientTutorial(context, 1181, {uid})
	end
	return 0
end

LF_Initialize_Group(triggers, suites)