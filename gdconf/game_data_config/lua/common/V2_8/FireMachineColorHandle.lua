--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---

--[[======================================
||  filename:   FireMachineColorHandle
||  owner:      weiwei.sun
||  description:    万叶岛 变色传音炮逻辑
||  LogName:    ## [FireMachine]
||  Protection: 
=======================================]]

--[[

	每个Group最多允许3个发射器
	color_stateInt: 后3位用于存档每个发射器能切几种颜色、哪几种

local	defs = {

		--本Group中发射器gadget的configID，最多3个,
		fireMachineList = {
			
		},

		--key为发射器configID，value为ColorDefine
		initConfig = {
			[发射器configID1] = color_defined的key,
		},

		--Key为操作台。value为发射器。允许有多个操作台控制同一个发射器
		controlRelation = {
			[发射器configID1] = 操作台configID1,
		},

		--左右旋转的SelectOptionID
		selectID_horizon = ,

		--上下俯仰的SelectOptionID
		selectID_vertical = ,

		--定义左右旋转的步长,key为传递装置configID，value为GadgetState
		horizon_steps = {
			[装置configID1] = {0, 102, 103, 104},
		},

		--定义上下俯仰的步长,key为传递装置configID，value为GadgetState
		vertical_steps = {
			[装置configID1] = {0, 302, 303, 304, 305},
		},
		--反射装置初始state
		init_state = {
			[装置configID1] = 302,
		}
	}

]]

local color_define = {
	--index刚好唯一对应GadgetState末位之和
	--当可切state列表变化时，通过这个性质来知道自己的新index
	[1] = {201},
	[2] = {202},
	[3] = {201, 202},
	[4] = {204},
	[5] = {201, 204},
	[6] = {202, 204},
	[7] = {201, 202, 204}
}

local cfg = {
	switch_option = 601,--切换颜色optionID
	crystal_201 = {70310163,70310364},--A色晶石GadgetID
	crystal_202 = {70310164,70310365},--B色晶石GadgetID
	crystal_204 = {70310165,70310366},--C色晶石GadgetID
}

local extraTriggers = {
  { config_id = 8000001, name = "Shooter_Select_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_Shooter_Select_Option", trigger_count = 0 },
  { config_id = 8000002, name = "FireMachine_Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_FireMachine_Group_Load", trigger_count = 0 },
  { config_id = 8000003, name = "Transfer_Select_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_Transfer_Select_Option", trigger_count = 0 }, 
  { config_id = 8000004, name = "FireMachine_LevelTag_Change", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_FireMachine_LevelTag_Change", trigger_count = 0 }, 
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	-- 后3位用于存档每个发射器能切几种颜色、哪几种
	table.insert(variables, { config_id = 50000001, name = "color_stateInt", value = 1000, no_refresh = true})
	-- 是否执行过LF_InitColorStateInt
	table.insert(variables, { config_id = 50000002, name = "has_inited", value = 0, no_refresh = true})
end

function action_FireMachine_Group_Load(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "has_inited") then 
		--根据LD配置的初始GadgetState，初始化int存档
		LF_InitColorStateInt(context)
		--如果有可切的颜色，设置optionID
		LF_SetSwitchColorOption(context)

		ScriptLib.SetGroupVariableValue(context , "has_inited", 1)
	else
		--根据Int存档设置客户端SGV
		LF_InitSGV(context)
	end
		--初始化反射机关旋转角度
		LF_InitRotation(context)
	return 0
end

function action_FireMachine_LevelTag_Change(context, evt)
		--重置反射机关旋转角度
		LF_InitRotation(context)
	return 0
end

--设置客户端SGV 
function LF_InitSGV(context)
	for k,v in pairs(defs.fireMachineList) do 
		local color_define = LF_GetColorDefineIndex(context, k)
		--”x晶石是否可装填“
		--2，4，6可装填晶石A（201）
		if 2 == color_define or 4 == color_define or 6 == color_define then
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_FireMachineColorReceive_A", 1)
		end
		--1，4，5可装填晶石B（202)
		if 1 == color_define or 4 == color_define or 5 == color_define then
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_FireMachineColorReceive_B", 1)
		end
		--1，2，3可装填晶石C（204)
		if 1 == color_define or 2 == color_define or 3 == color_define then
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_FireMachineColorReceive_C", 1)
		end

			--”总共有x色可切
		if 1 == color_define or 2 == color_define or 4 == color_define then
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_FireMachineColor_Num", 1)
		elseif 3 == color_define or 5== color_define or 6 == color_define then
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_FireMachineColor_Num", 2)
		elseif 7 == color_define then
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_FireMachineColor_Num", 3)
		end
	
	end
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

--物件请求给自己增加一种可切颜色(GadgetState)
--param1: 颜色代号。 A色-201 B色-202 C色-204
function SLC_AddFireMachineColor(context, param1)
	--检查是否为合法param
	if 0 == LF_GetIndexInTable(context, param1, {201, 202, 204}) then 
		ScriptLib.PrintContextLog(context, "## [FireMachine] SLC get wrong param, check ability. param1: "..param1)
		return 0
	end

	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })

	--检查SLC来源是否为Group内登记在册的发射器
	local gadget_index = LF_GetIndexInTable(context, config_id, defs.fireMachineList)
	if 0 == gadget_index then 
		return 0
	end

	--获取自己当前可切state列表
	local color_define_index = LF_GetColorDefineIndex(context, gadget_index)

	--如果param1没在table中，则增加param1,并以此找到对应的新color_define_index
	local index_temp = 0
	if 0 ~= color_define_index then
		for i, v in ipairs(color_define[color_define_index]) do
		--将可切的state加和
		index_temp = index_temp + v
		--如果param1已存在，直接return
		if v == param1 then 
				ScriptLib.SetGadgetStateByConfigId(context, config_id, param1)
				ScriptLib.PrintContextLog(context, "## [FireMachine] Trying to add an existed color, only switch state: "..param1)
				return 0
			end		
		end
	end
	--state加和再加上param1
	index_temp = index_temp + param1
	--取个位数，得到ColorDefineIndex
	local index_new = index_temp%10
	LF_SetColorDefineIndex(context, gadget_index, index_new)
	
	--如果本次加颜色使其有2种及以上可切，则增加操作台选项
	if 0 ~= color_define_index then
		if 2 > #color_define[color_define_index] and 2 <= #color_define[index_new] then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, config_id, {cfg.switch_option})
		end
	end

	--切到新添加的GadgetState
	ScriptLib.SetGadgetStateByConfigId(context, config_id, param1)

	--kill掉本Group中，对应颜色的晶石。 
	--一个Group中，同一颜色的晶石只会有一个，如果LD配多了，则删除configID靠前的那一个
	--注意，如果GroupA的晶石来GroupB交，则删除的是GroupB的晶石。
	local gadget_id = {}
	if 201 == param1 then
		gadget_id = cfg.crystal_201
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, config_id, "SGV_FireMachineColorReceive_A", 0)
	elseif 202 == param1 then
		gadget_id = cfg.crystal_202
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, config_id, "SGV_FireMachineColorReceive_B", 0)
	elseif 204 == param1 then
		gadget_id = cfg.crystal_204
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, config_id, "SGV_FireMachineColorReceive_C", 0)
	end
	for k,v in pairs(gadgets) do
		if v.gadget_id == gadget_id[1] or v.gadget_id == gadget_id[2] then
			ScriptLib.KillEntityByConfigId(context, { config_id = v.config_id })
		end
	end

	return 0
end

--根据LD配置的初始GadgetState，初始化int存档
function LF_InitColorStateInt(context)
		ScriptLib.PrintContextLog(context, "## [FireMachine] LF_InitColorStateInt.")
		for k, v in pairs(defs.initConfig) do
			if 0 ~= v then
				local gadget_index = LF_GetIndexInTable(context, k, defs.fireMachineList)
				LF_InitColorDefineIndex(context, gadget_index, v)
				ScriptLib.SetGadgetStateByConfigId(context, defs.fireMachineList[gadget_index], color_define[v][1])
			end
			--设置SGV，客户端Ability用
			--2，4，6可装填晶石A（201）
			if 2 == v or 4 == v or 6 == v then
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, k, "SGV_FireMachineColorReceive_A", 1)
			end
			--1，4，5可装填晶石B（202)
			if 1 == v or 4 == v or 5 == v then
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, k, "SGV_FireMachineColorReceive_B", 1)
			end
			--1，2，3可装填晶石C（204)
			if 1 == v or 2 == v or 3 == v then
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, k, "SGV_FireMachineColorReceive_C", 1)
			end
		end
	return 0
end

function LF_SetSwitchColorOption(context)

	for i = 1, #defs.fireMachineList do
			--获取自己当前可切state列表
		local color_define_index = LF_GetColorDefineIndex(context, i)

		if 0 ~= color_define_index then
			if 1 < #color_define[color_define_index] then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, defs.fireMachineList[i], {cfg.switch_option})
			end
		end
	end

	return 0
end

--玩家操作发射器
function action_Shooter_Select_Option(context, evt)
	for k,v in pairs(defs.controlRelation) do
		if k == evt.param1 then 
			LF_SwitchColor(context, v)
			return 0
		end
	end
	return 0
end

--玩家操作发射器（SLC）
function SLC_FireMachine_Switch(context)
	local cfg_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	LF_SwitchColor(context, cfg_id)
	return 0
end

--发射器Ability就绪后请求SGV
function SLC_FireMachine_AbilityReady(context)
	LF_InitSGV(context)

	return 0
end

--玩家操作传递装置
function action_Transfer_Select_Option(context, evt)

	if evt.param2 == defs.selectID_horizon then
		LF_TurnByStep(context, evt.param1, defs.horizon_steps)
		return 0
	elseif evt.param2 == defs.selectID_vertical then
		LF_TurnByStep(context, evt.param1, defs.vertical_steps)
		return 0
	end

	return 0
end
--传递机关：根据配置的步长切state
function LF_TurnByStep(context, config_id, step_table)

	for k,v in pairs(step_table) do 

		if k == config_id then
			local current_state = ScriptLib.GetGadgetStateByConfigId(context, 0, config_id)
			local current_index = LF_GetIndexInTable(context, current_state, v)

			if 0 == current_index then
				--传递装置的state并不在配置table中，告警
				ScriptLib.PrintContextLog(context, "## [FireMachine] #WARN# FireMachine Transfer at unexpected state! Check defs. config_id@"..config_id.." current_state@"..current_state)
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
		--传进来的configID不是配置的传递装置，告警
		ScriptLib.PrintContextLog(context, "## [FireMachine] #WARN# LF_TurnByStep find config_id failed, check defs. config_id@"..config_id)
	end
	return 0
end
--切到下一个颜色
function LF_SwitchColor(context, config_id)
	--查这个configID对应哪一位，数字是几，
	local gadget_index = LF_GetIndexInTable(context, config_id, defs.fireMachineList)

	if gadget_index ~= 0 then
		--它当前的可用GadgetState列表
		local color_define_index = LF_GetColorDefineIndex(context, gadget_index)
		if 0 == color_define_index then
			return 0
		end
		local availible_list = color_define[color_define_index]

		--取其当前state，再取得此state在它可用GadgetState列表中的index
		local current_state = ScriptLib.GetGadgetStateByConfigId(context, 0, config_id)
		local state_index = LF_GetIndexInTable(context, current_state, availible_list)

		--然后切到下一个State
		if state_index >= #availible_list then
			ScriptLib.SetGadgetStateByConfigId(context, config_id, availible_list[1])
		else
			ScriptLib.SetGadgetStateByConfigId(context, config_id, availible_list[state_index + 1])
		end

	else
		ScriptLib.PrintContextLog(context, "## [FireMachine] #WARN# Get fireMachine index by configID failed, check defs.")
	end

	return 0
end

--Init
function LF_InitColorDefineIndex(context, gadget_index, new_colorDefine_index)

	--将gadget_index对应的位数设为指定值
	local temp_stateInt = ScriptLib.GetGroupVariableValue(context, "color_stateInt")

	ScriptLib.PrintContextLog(context, "## [FireMachine] LF_InitColorDefineIndex Start. gadget_index@"..gadget_index.." new_colorDefine_index@"..new_colorDefine_index.." color_stateInt@"..temp_stateInt)

	temp_stateInt = temp_stateInt + (new_colorDefine_index * math.pow(10, gadget_index - 1))

	if 1999 < temp_stateInt or 0 >= temp_stateInt then 
		ScriptLib.PrintContextLog(context, "## [FireMachine] LF_InitColorDefineIndex fail. temp_stateInt@"..temp_stateInt)
		return 0
	end

	ScriptLib.SetGroupVariableValue(context, "color_stateInt", temp_stateInt)

	ScriptLib.PrintContextLog(context, "## [FireMachine] LF_InitColorDefineIndex Finished. color_stateInt@"..temp_stateInt)
	return 0
end

--Set
function LF_SetColorDefineIndex(context, gadget_index, new_colorDefine_index)
	--不大于7的整数
	if new_colorDefine_index < 0 or new_colorDefine_index > 7 then
		ScriptLib.PrintContextLog(context, "## [FireMachine] SetColorDefineIndex fail. new_colorDefine_index@"..new_colorDefine_index)
		return 0
	end

	--将gadget_index对应的位数设为指定值
	local temp_stateInt = ScriptLib.GetGroupVariableValue(context, "color_stateInt")

	ScriptLib.PrintContextLog(context, "## [FireMachine] SetColorDefineIndex Start. gadget_index@"..gadget_index.." new_colorDefine_index@"..new_colorDefine_index.." color_stateInt@"..temp_stateInt)

	local old_colorDefine_index = LF_GetColorDefineIndex(context, gadget_index)

	if old_colorDefine_index < 0 or old_colorDefine_index > 7 then
		ScriptLib.PrintContextLog(context, "## [FireMachine] SetColorDefineIndex fail. old_colorDefine_index@"..old_colorDefine_index)
		return 0
	end

	temp_stateInt = temp_stateInt + (new_colorDefine_index - old_colorDefine_index) * math.pow(10, gadget_index - 1)
	if 1999 < temp_stateInt or 0 >= temp_stateInt then 
		ScriptLib.PrintContextLog(context, "## [FireMachine] LF_SetColorDefineIndex fail. temp_stateInt@"..temp_stateInt)
		return 0
	end
	ScriptLib.SetGroupVariableValue(context, "color_stateInt", temp_stateInt)

	--设置物件SGV，这个SGv被客户端Ability使用
	if 1 == new_colorDefine_index or 2 == new_colorDefine_index or 4 == new_colorDefine_index then
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.fireMachineList[gadget_index], "SGV_FireMachineColor_Num", 1)
	elseif 3 == new_colorDefine_index or 5== new_colorDefine_index or 6 == new_colorDefine_index then
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.fireMachineList[gadget_index], "SGV_FireMachineColor_Num", 2)
	elseif 7 == new_colorDefine_index then
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.fireMachineList[gadget_index], "SGV_FireMachineColor_Num", 3)
	end

	ScriptLib.PrintContextLog(context, "## [FireMachine] SetColorDefineIndex Finished. color_stateInt@"..temp_stateInt)
	return 0
end

--Get
function LF_GetColorDefineIndex(context, gadget_index)
	local color_define_index = 0

	local color_stateInt = ScriptLib.GetGroupVariableValue(context, "color_stateInt")
	local color_stateList = LF_Split_Int(context, color_stateInt)

	color_define_index = color_stateList[gadget_index]
	--检查color_define_index合法性
	if nil == color_define[color_define_index] and 0 ~= color_define_index then
		--如不是合法范围内，则返回原始配置
		ScriptLib.PrintContextLog(context, "## [FireMachine] #WARN# Get illegal color_define_index @"..color_define_index)
		color_define_index = defs.initConfig[defs.fireMachineList[gadget_index]]
		
	end
	ScriptLib.PrintContextLog(context, "## [FireMachine] GetColorDefineIndex. gadget_index@"..gadget_index.." color_define_index@"..color_define_index)
	return color_define_index
end

--将整数各位切分为table
function LF_Split_Int(context, num)
    local tb = {0,0,0}
    if 0 >= num then
    	ScriptLib.PrintContextLog(context, "## [FireMachine] #WARN# LF_Split_Int Get illegal num @"..num)
			return tb 
		end
    for i=1, #tb do
    	tb[i] = num%10
    	num = math.floor(num/10)
    end
    return tb
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

LF_Initialize_Group(triggers, suites)