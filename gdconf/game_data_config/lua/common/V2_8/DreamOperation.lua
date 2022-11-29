--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---

--[[======================================
||	filename:	DreamOperation
||	owner: 		weiwei.sun
||	description: 	2.8愚人众操作台旋转输密码逻辑
||	LogName:	## [DreamOperation]
||	Protection:	
=======================================]]
--[[

local defs = {
	--每个操作台config_id, 控制的markfalg和它的解，最多5位数字。
	--玩家按按钮，左转写2 右转写3。
	--例如“左左右左”即为“{2,2,3,2}”
	answers = {
		[操作台config_id1] = { markflag = 1, key = {2,2,3,2},
		[操作台config_id2] = { markflag = 2, key = {2,2,3,2},
	}
	
}

]]

local Triggers = {
	{ config_id = 8000001, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
}

function LF_Initialize_Group(triggers, suites)

	for i=1, #Triggers do
		table.insert(triggers, Triggers[i])
		table.insert(suites[init_config.suite].triggers,Triggers[i].name)
	end
	--组内完成的操作台数量
	table.insert(variables,{ config_id = 50000001, name = "unlock_num", value = 0, no_refresh = true })
end

function action_Group_Load(context, evt)
	LF_InitGear(context)
	return 0
end


--操作台初始化
function LF_InitGear(context)
	for k,v in pairs(defs.answers) do
		--重设输入位数,
		ScriptLib.SetGroupTempValue(context, "g_"..k, 1 , {})
	end
	return 0
end

--ability Init完成后，再赋值
function SLC_DreamOperation_GetFlag(context)
	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })

	ScriptLib.SetEntityServerGlobalValueByConfigId(context, config_id, "SGV_Control_Target", defs.answers[config_id].markflag)
	ScriptLib.PrintContextLog(context, "## [DreamOperation] LF_InitGear. config_id@"..config_id.." markflag@"..defs.answers[config_id].markflag)
		
	return 0
end

--param： 左转为2 右转为3
function SLC_DreamOperation_Turn(context, param)

	--本组解谜是否完成
	local count = LF_CountTableNum(context, defs.answers)
	if count <= ScriptLib.GetGroupVariableValue(context, "unlock_num") then
		return 0
	end

	--是否为组内已被完成的操作台
	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	local gadget_state = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, config_id)
	if 202 == gadget_state then
		return 0
	end

	--检查合法的param
	if param == 2 or param == 3 then
		LF_HandleInput(context, config_id, param)
	end

	return 0
end

--比较玩家的输入
--param： 左转为2 右转为3
function LF_HandleInput(context, config_id, param)

	--获取当前是该操作台的第几次输入
	local index = ScriptLib.GetGroupTempValue(context, "g_"..config_id, {})

	local key = defs.answers[config_id].key

	ScriptLib.PrintContextLog(context, "## [DreamOperation] LF_HandleInput. input_index@"..index.." input@"..param.." answer@"..key[index])

	--如果正确，则index前进一位
	if key[index] == param then
		index = index + 1
	--否则index回到1
	else
		index = 1
	end

	if index > #key then
		--本操作台输入完成，切GadgetState。客户端关闭交互，服务器不再接受它SLC
		ScriptLib.SetGadgetStateByConfigId(context, config_id, 202)
		ScriptLib.ChangeGroupVariableValue(context, "unlock_num", 1)

		local num = ScriptLib.GetGroupVariableValue(context, "unlock_num")
		ScriptLib.PrintContextLog(context, "## [DreamOperation] DreamOperation puzzle done. config_id@"..config_id)

	else
		--继续
		ScriptLib.SetGroupTempValue(context, "g_"..config_id, index, {})
	end
	
	return 0
end

function LF_CountTableNum(context, t)
	local count = 0 
	for k,v in pairs(t) do
		count = count + 1
	end
	return count
end


LF_Initialize_Group(triggers, suites)