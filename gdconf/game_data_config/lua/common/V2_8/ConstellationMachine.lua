--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---

--[[======================================
||	filename:	ConstellationMachine
||	owner: 		weiwei.sun
||	description: 	莫娜岛光线机关解谜逻辑。 
||	LogName:	## [ConstellationMachine]
||	Protection:	
=======================================]]

--[[
local	defs = {

	gear_info = 
	{	--connect: 每个物件各个旋转档位可连接的对象 0表示无可连接
		--start_index: 初始在哪个旋转档位
		[1] = { config_id= , connect = {0,0,0}, point_array_id = ,}
		[2] = { config_id= , connect = {0,0,0,0}, point_array_id = ,}
		[3] = { config_id= , connect = {0,0,0}, point_array_id = ,}
	},

  --几种解
  solutions = 
  {
          --[解法x] = {connect = {gear_info[1]切到它的第x档, gear_info[2]切到它的第y档...}，ends = {这个连法中，哪些机关作为末端}}
          [1] = { connection = {1,3,2,4,0,3,2,1,3,1}, ends = {11008,11008 }},
  },
}
]]
local cfg =
{
	connect_sgv = "SGV_Constellation_Target",--物件在Group中找此SGV的对象进行连线
	mark_sgv = "SGV_Constellation_Mark",--物件自身的SGV
}

local extraTriggers={
  { config_id = 8000001, name = "Select_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_Select_Option", trigger_count = 0 },
  { config_id = 8000002, name = "Reach_Point", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_Reach_Point", trigger_count = 0 },
  { config_id = 8000003, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
  { config_id = 8000004, name = "Solution_Variable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "solution", condition = "", action = "action_Solution_Variable_Change", trigger_count = 0 },
  { config_id = 8000005, name = "Enter_Guide_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Enter_Guide_Region", trigger_count = 0 }
}

function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end

	for k, v in pairs(defs.gear_info) do
		local cfg = 50000000 + k
		table.insert(variables,{ config_id = cfg, name = v.config_id.."rot", value = 1, no_refresh = true})
	end
	table.insert(variables,{ config_id = 51000001, name = "solution", value = 0, no_refresh = true})
end

--玩家旋转机关
function action_Select_Option(context, evt)
	--排除非连线机关
	if false == LF_CheckIsGear(context, evt.param1) then 
		return 0
	end
	--排除非旋转选项
	if defs.turn_option ~= evt.param2 then
		return 0
	end
	--操作台选项移除
	ScriptLib.DelWorktopOption(context, evt.param2)
	--开始转动物件
	LF_TurnByStep(context, evt.param1)
  --埋点 日志量太大 取消了
  --ScriptLib.MarkGroupLuaAction(context, "ConstellationMachine", "", {["group_id"] = base_info.group_id, ["config_id"] = evt.param1, ["op_type"] = 1})
	return 0
end

--当玩家匹配出一个解时，将var设成解的index，供外部监听
function action_Solution_Variable_Change(context, evt)
	ScriptLib.PrintContextLog(context, "## [ConstellationMachine] Solution_Variable_Change: Player finished solution. from@"..evt.param2.." to@"..evt.param1)
	return 0
end

function LF_CheckSuccess(context)

	--取得玩家的解
	local player_result = LF_GetPlayerSolution(context)
	if #player_result == 0 then
		ScriptLib.PrintContextLog(context, "## [ConstellationMachine] LF_CheckSuccess: Get player solution failed!")
		return 0
	end

	--检查匹配的解
	local match_solution = LF_CompareWithSolution(context, player_result) 
	if 0 == match_solution then
		return 0
	else
		ScriptLib.SetGroupVariableValue(context, "solution", match_solution)
	end

	return 0
end

--返回当前匹配哪一个解
function LF_CompareWithSolution(context, player_result)

	--每种解依次和玩家的解对比
	for i, v in ipairs(defs.solutions) do

		if true == LF_CompareList(context, player_result, v.connection, v.ends) then 

			ScriptLib.PrintContextLog(context, "## [ConstellationMachine] LF_CompareWithSolution: solution@"..i.." match.")
			return i
		end
	end
	return 0
end

--取得玩家当前解
function LF_GetPlayerSolution(context)

	local player_result = {}

	for i = 1, #defs.gear_info do
		local state = 0
		local gadget_state = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, defs.gear_info[i].config_id)
		if 201 == gadget_state then
			state = ScriptLib.GetGroupVariableValue(context, defs.gear_info[i].config_id.."rot")
		end
		ScriptLib.PrintContextLog(context, "## [ConstellationMachine] LF_GetPlayerSolution: Player_result. gear@"..defs.gear_info[i].config_id.." @"..state)
		table.insert(player_result, i, state)
	end
	return player_result
end

--用于比较玩家的解和目标解是否相同
function LF_CompareList(context, player_result, connection, ends_list)

	if #player_result ~= #connection then
		return false
	end

	for i = 1, #player_result do
		--发现玩家的第i个机关和正解的第i个朝向不同。
		--若不是末端,则不成功；如果是末端，其gadget_state必须为0，否则不成功
		if player_result[i] ~= connection[i] then
			
			local gadget_state = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, defs.gear_info[i].config_id)
			if LF_CheckIsInTable(context, defs.gear_info[i].config_id, ends_list) and 0 == ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, defs.gear_info[i].config_id) then
			 ScriptLib.PrintContextLog(context, "## [ConstellationMachine] LF_CompareList: Ignore ending gear@"..defs.gear_info[i].config_id)
			else
				return false
			end
		end
	end

	return true
end

function action_Group_Load(context, evt)
	--当前有几个机关在旋转。当此值不为0时，机关不接受玩家攻击交互
	ScriptLib.SetGroupTempValue(context, "turning_num", 0, {})
	--Ability就绪后的物件数量，当达到总数时，分配SGV
	ScriptLib.SetGroupTempValue(context, "ready_count", 0, {})
	--计算总数
	local total = 0
	for k,v in pairs(defs.gear_info) do
		total = total + 1
	end
	ScriptLib.SetGroupTempValue(context, "total", total, {})

	LF_InitRotation(context)

	return 0
end

function SLC_Constellation_AbilityReady(context)

	ScriptLib.ChangeGroupTempValue(context, "ready_count", 1, {})
	local ready = ScriptLib.GetGroupTempValue(context, "ready_count", {})
	local total = ScriptLib.GetGroupTempValue(context, "total", {})
	if ready >= total then
		LF_SetConnectMark(context)
		LF_SetConnectTarget(context)
	end
	return 0
end
--根据保存的旋转档位，设置物件旋转
function LF_InitRotation(context)
	for k, v in pairs(defs.gear_info) do
		local saved_point = ScriptLib.GetGroupVariableValue(context, v.config_id.."rot")
		--开始旋转
		ScriptLib.SetPlatformPointArray(context, v.config_id, v.point_array_id, { saved_point }, { route_type = 0, turn_mode = true })
		--增加一个正在旋转的机关计数
		ScriptLib.ChangeGroupTempValue(context, "turning_num", 1, {})
		local turning_num = ScriptLib.GetGroupTempValue(context, "turning_num", {})
		ScriptLib.PrintContextLog(context, "## [ConstellationMachine] LF_InitRotation: gear@"..v.config_id.." saved_point@"..saved_point.." turning_num@"..turning_num)
	end
	return 0
end

--每个机关给自己上标识， 给其他机关找目标用
function LF_SetConnectMark(context)
	for k, v in pairs(defs.gear_info) do
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, cfg.mark_sgv, v.config_id)
	end
	return 0
end

--根据当前场上的旋转情况，为所有机关分配连线SGV
function LF_SetConnectTarget(context)

	for k, v in pairs(defs.gear_info) do
		--先清掉之前的连线对象
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, cfg.connect_sgv, 0)
		--设置新的连线对象
		local turn_index = ScriptLib.GetGroupVariableValue(context, v.config_id.."rot")
		if 0 >= turn_index then --返回-1、0为异常
			return 0
		end
		if nil == v.connect[turn_index] then --配置不匹配
			return 0
		end
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, cfg.connect_sgv, v.connect[turn_index])
		--ScriptLib.PrintContextLog(context, "## [ConstellationMachine] LF_SetConnectTarget: gear@"..v.config_id.." turn_index@"..turn_index.." target@"..v.connect[turn_index])
	end

	return 0
end

--按档位循环切换
function LF_TurnByStep(context, config_id)
	--取得config_id对应的机关信息
	local gear = {}
	for i, v in ipairs(defs.gear_info) do
		if v.config_id == config_id then
			gear = v
		end
	end

	--关闭连线
	if 0 ~= ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, gear.config_id) then 
		ScriptLib.SetGadgetStateByConfigId(context, gear.config_id, 0)
		--记录 在结束转动时尝试恢复连线
		ScriptLib.SetGroupTempValue(context, "closed_"..gear.config_id, 1, {})
	end 
	
	--当前在哪个档位
	local cur_point = ScriptLib.GetGroupVariableValue(context, config_id.."rot")
	local next_point = 1

	if #gear.connect > cur_point then
		next_point = cur_point + 1
	end
	--开始旋转
	ScriptLib.SetPlatformPointArray(context, config_id, gear.point_array_id, { next_point }, { route_type = 0, turn_mode = true })
	--更新记录的旋转档位
	ScriptLib.SetGroupVariableValue(context, config_id.."rot", next_point)
	--增加一个正在旋转的机关计数
	ScriptLib.ChangeGroupTempValue(context, "turning_num", 1, {})
	return 0
end

--旋转结束
function action_Reach_Point(context, evt)
	--排除非连线机关
	if false == LF_CheckIsGear(context, evt.param1) then 
		return 0
	end

	--减少一个正在旋转的机关计数
	ScriptLib.ChangeGroupTempValue(context, "turning_num", -1, {})
	--恢复操作台选项
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, evt.param1, {defs.turn_option})

	local turning_num = ScriptLib.GetGroupTempValue(context, "turning_num", {})
	ScriptLib.PrintContextLog(context, "## [ConstellationMachine] Reach_Point: Current turning_num@"..turning_num)

	--如果都转完了，设置连接关系
	if 0 == turning_num then
		LF_SetConnectTarget(context)
		--尝试恢复连线
		if 1 == ScriptLib.GetGroupTempValue(context, "closed_"..evt.param1, {}) then 
			LF_TryConnect(context, evt.param1)			
		end
	end

	return 0
end

--机关在State 0被玩家攻击，且SGV不为0，则尝试连线。
function SLC_Constellation_TryConnect(context)
	local turning_num = ScriptLib.GetGroupTempValue(context, "turning_num", {})
	
	if 0 ~= turning_num then
		ScriptLib.PrintContextLog(context, "## [ConstellationMachine] Get SLC_Constellation_TryConnect while turning_num@"..turning_num..". Refused")
		return 0
	end

	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	LF_TryConnect(context, config_id)
	 --埋点 日志量太大 取消了
  --ScriptLib.MarkGroupLuaAction(context, "ConstellationMachine", "", {["group_id"] = base_info.group_id, ["config_id"] = config_id, ["op_type"] = 2})
	return 0
end

--机关尝试连线
function LF_TryConnect(context, config_id)

	local cur_point = ScriptLib.GetGroupVariableValue(context, config_id.."rot")
	local cur_target = 0

	for k, v in pairs(defs.gear_info) do
		if v.config_id == config_id then
			cur_target = v.connect[cur_point]
		end
	end
	if 0 == cur_target then
		return 0
	end
	ScriptLib.PrintContextLog(context, "## [ConstellationMachine] LF_TryConnect: from gear@"..config_id.."cur_point@"..cur_point.." cur_target@"..cur_target)
	if LF_CheckIsGear(context, cur_target) then
		ScriptLib.SetGadgetStateByConfigId(context, config_id, 201)
		ScriptLib.PrintContextLog(context, "## [ConstellationMachine] LF_TryConnect: Trace On! From gear@"..config_id.." to@"..cur_target)
	else
		ScriptLib.PrintContextLog(context, "## [ConstellationMachine] LF_TryConnect: cur_target is not expected gear. Refused.")
		return 0
	end	

	LF_CheckSuccess(context)

	return 0
end

--机关在State 201被玩家攻击，关闭连线
function SLC_Constellation_CloseConnect(context)
	local turning_num = ScriptLib.GetGroupTempValue(context, "turning_num", {})
	
	if 0 ~= turning_num then
		ScriptLib.PrintContextLog(context, "## [ConstellationMachine] Get SLC_Constellation_CloseConnect while turning_num@"..turning_num..". Refused")
		return 0
	end

	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	ScriptLib.SetGadgetStateByConfigId(context, config_id, 0)
	
	LF_CheckSuccess(context)

	ScriptLib.PrintContextLog(context, "## [ConstellationMachine] SLC_Constellation_CloseConnect： state set 0. gear@@"..config_id)

	return 0
end

function action_Enter_Guide_Region(context, evt)
	if evt.param1 ~= defs.guide_region then 
		return 0
	end
	LF_TryShowGuide(context)
	return 0
end

function LF_TryShowGuide(context)
	--在NewActivityPushTipsData配置中查找对应id, 并通过lua添加进活动中
	--重复添加已有push tips返回-1 成功添加返回0
	local ret = ScriptLib.TryRecordActivityPushTips(context, 2014003)
	if 0 == ret then
		local uid = ScriptLib.GetSceneOwnerUid(context)
		ScriptLib.ShowClientTutorial(context, 1169, {uid})
	end
	return 0
end

--检查configID是否为配置的光线机关
function LF_CheckIsGear(context, value)
	for k, v in pairs(defs.gear_info) do
		if v.config_id == value then
			return true
		end
	end
	return false
end

--用于检查value是否在目标table中
function LF_CheckIsInTable(context, value, check_table)

	for i = 1, #check_table do
		if check_table[i] == value then
			return true
		end
	end
	return false
end

LF_Initialize_Group(triggers, suites)