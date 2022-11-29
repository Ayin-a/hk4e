--- ServerUploadTool Save to [/root/env/data/lua/common/V3_2]  ---

--[[======================================
||	filename:	MachineCarrier
||	owner: 		weiwei.sun
||	description: 	3.2散兵工厂 轨道运输装置 提供移动平台随时暂停、启动，以及根据轨道状态改变移动方向的支持
||	LogName:	## [MachineCarrier]
||	Protection:	
=======================================]]
--[[

local defs = {

	option_turn = 613,

	option_start = ,
	option_stop = ,

	play_region = ,

	--岔路旋转State列表
	turn_queue = {0,201,202,203},

	point_array = 110200027,
	--运输装置config_id
	carrier_list = {},

	switcher_control = 
	{--[操作台configID] = {被控岔路装置1, 被控岔路装置2},
		[9017] = {9003},
	},

	--终点
	end_point = ,
	--几条路 注意是point_list有向的 倒数第二个点为岔路判定点
	way_info = 
	{
		--key为路径几 顺序无所谓
		[1] = 
		{
			point_list = {1},

			spawn_point = 0,

			gear_id = 0, --此判定点依据哪个岔路物件

			dir = --岔路物件每个State通向哪
			{	--GadgetState索引way_info ID
				[0] = 7,
				[201] = 0,
				[202] = 0,
				[204] = 0,
			}, 
		},
		[2] = 
		{
			point_list = {12,11,10,9,8,7,6,5,4,3},

			spawn_point = 3,

			gear_id = 0, --此判定点依据哪个岔路物件

			dir = --岔路物件每个State通向哪
			{	--GadgetState索引way_info ID
				[0] = 0,
				[201] = 5,
				[202] = 0,
				[203] = 0,
			}, 
		},
		},
	},

	--每次任意车到达上车点时，检查region内是否有玩家，有则停车
	station_region = ,

	turn_point = 
	{
		3
	},

	--停车点 到此点时会判断是否需要停车
	stop_points = 
	{
		7, 14
	},
}

]]

local cfg = 
{
	--岔路旋转State列表
	turn_queue = {0,201,202,203},
}

local extraTriggers = {
	{ config_id = 8000001, name = "Select_Turn_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_Select_Turn_Option", trigger_count = 0 },
	{ config_id = 8000002, name = "Select_StartStop_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_Select_StartStop_Option", trigger_count = 0 },
	{ config_id = 8000003, name = "Enter_Play_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Enter_Play_Region", trigger_count = 0 },
	{ config_id = 8000004, name = "Leave_Play_Region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_Leave_Play_Region", trigger_count = 0 },
	{ config_id = 8000005, name = "Point_Arrival", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_Point_Arrival", trigger_count = 0 },
	{ config_id = 8000006, name = "Enter_Station_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Enter_Station_Region", trigger_count = 0 },
	{ config_id = 8000007, name = "Create_Gadget", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_Create_Gadget", trigger_count = 0 },
}


function LF_Initialize()
	for k,v in pairs(extraTriggers) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	table.insert(variables,{ config_id = 50000001, name = "first_station", value = 0, no_refresh = true })
end

function action_Create_Gadget(context, evt)
	--创建时 检查运输线状态
	if 70320028 ~= evt.param2 then
		return 0
	end
	if 0 ~= ScriptLib.GetGroupTempValue(context, "move_state", {}) then
		return 0
	end
	ScriptLib.StopPlatform(context, evt.param1)
	ScriptLib.PrintContextLog(context,"## [MachineCarrier] Spawned while move_state is 0. Stop platform. config_id@"..evt.param1)
	return 0
end

function action_Select_Turn_Option(context, evt)
	if defs.option_turn ~= evt.param2 then
		return 0
	end
	if nil == defs.switcher_control[evt.param1] then
		return 0
	end
	local turn_queue = cfg.turn_queue
	if nil ~= defs.turn_queue then
		turn_queue = defs.turn_queue
	end
	if nil == turn_queue[1] then
		return 0
	end
	for i,v in ipairs(defs.switcher_control[evt.param1]) do
		local gadget_state = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, v)
		local state_index = GetIndexInTable(context, gadget_state, turn_queue)
		if state_index >= #turn_queue then
			ScriptLib.SetGadgetStateByConfigId(context, v, turn_queue[1])
			ScriptLib.PrintContextLog(context,"## [MachineCarrier] action_Select_Turn_Option. config_id@"..v.." to state@".. turn_queue[1])
		else
			ScriptLib.SetGadgetStateByConfigId(context, v, turn_queue[state_index + 1])
			ScriptLib.PrintContextLog(context,"## [MachineCarrier] action_Select_Turn_Option. config_id@"..v.." point@".. turn_queue[state_index + 1])
		end
	end
	if 1 ~= move_state then
		LF_ResumeMove(context)	
	end
	return 0
end

function action_Select_StartStop_Option(context, evt)

	if defs.option_start == evt.param2 then
		LF_ResumeMove(context)
		return 0
	end
	if defs.option_stop == evt.param2 then
		--LF_PauseMove(context)--立即停下
		ScriptLib.SetGroupTempValue(context, "is_toStop", 1, {})--按下停止按钮后当有任意一个车到上车点的时候 停下
		return 0
	end
	
	return 0
end

function action_Enter_Play_Region(context, evt)
	if nil == defs.play_region then
		ScriptLib.PrintContextLog(context,"## [MachineCarrier] action_Enter_Play_Region. play_region is empty!")
		return 0
	end
	if defs.play_region ~= evt.param1 then	
		return 0
	end
	if nil == defs.carrier_list[1] then
		ScriptLib.PrintContextLog(context,"## [MachineCarrier] defs.carrier_list[1] is empty!")
		return 0
	end

	LF_StartMove(context, defs.carrier_list[1])	

	return 0
end

function action_Leave_Play_Region(context, evt)
	if nil == defs.play_region then
		ScriptLib.PrintContextLog(context,"## [MachineCarrier] action_Leave_Play_Region. play_region is empty!")
		return 0
	end
	if defs.play_region ~= evt.param1 then	
		return 0
	end
	--重置电车
	for i,v in ipairs(defs.carrier_list) do
		ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, v)
	end
	--恢复选项
	LF_TrySetAllTurningOption(context)

	if nil ~= defs.carrier_list[1] then
		ScriptLib.CreateGadget(context, { config_id = defs.carrier_list[1] })
	end
	--ScriptLib.RefreshGroup(context, {group_id = base_info.group_id, suite = init_config.suite })
	return 0
end

function action_Enter_Station_Region(context, evt)
	--进入station_region时，检查如果现在是停的，且没有车处于停靠状态，则启动
	if defs.station_region ~= evt.param1 then
		return 0
	end

	if 0 ~= ScriptLib.GetGroupTempValue(context, "move_state", {}) then
		return 0
	end

	for i,v in ipairs(defs.carrier_list) do
		if 1 == ScriptLib.GetGadgetAbilityFloatValue(context, base_info.group_id, v, "SGV_MachineCarrier_State") then
			return 0
		end
	end

	LF_ResumeMove(context)

	return 0
end


function action_Point_Arrival(context, evt)

	--PointIndex更新
	ScriptLib.ChangeGroupTempValue(context, "point_"..evt.param1, 1, {})
	local cur_way = ScriptLib.GetGroupTempValue(context, "way_"..evt.param1, {})
	if nil == defs.way_info[cur_way] then
		return 0
	end
	local length = #defs.way_info[cur_way].point_list

	ScriptLib.PrintContextLog(context,"## [MachineCarrier] action_Point_Arrival. config_id@"..evt.param1.." cur_way@"..cur_way.." point@"..evt.param3.." check_point@"..defs.way_info[cur_way].point_list[length])

	--是否为 选项恢复点
	if nil ~= defs.recover_points then
		if LF_CheckIsInTable(context, evt.param3, defs.recover_points) then
			LF_TrySetAllTurningOption(context)
		end
	end

	--是否为 自杀点
	if nil ~= defs.end_point then
		if LF_CheckIsInTable(context, evt.param3, defs.end_point) then
			ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, evt.param1)
			ScriptLib.SetGroupTempValue(context, "way_"..evt.param1, 0, {})
			return 0
		end
	end

	--是否为 下车点
	if nil ~= defs.leave_points then
		if LF_CheckIsInTable(context, evt.param3, defs.leave_points) then
			if 1 == LF_TryStopMoveAtStation(context, evt.param1) then
				LF_TryTurnGadget(context, evt.param1, evt.param3)
				return 0
			end		
		end
	end

	--是否为 上车点
	if nil ~= defs.stop_points then
		if LF_CheckIsInTable(context, evt.param3, defs.stop_points) then
			local region_eid = ScriptLib.GetEntityIdByConfigId(context, defs.station_region)
			if 1 == ScriptLib.GetGroupTempValue(context, "is_toStop", {}) or 1 <= ScriptLib.GetRegionEntityCount(context, { region_eid = region_eid, entity_type = EntityType.AVATAR }) then
				if 0 == ScriptLib.GetGroupVariableValue(context, "first_station") then
					ScriptLib.SetGroupVariableValue(context, "first_station", 1)
				end
				LF_PauseMove(context)	
				LF_TryTurnGadget(context, evt.param1, evt.param3)
			end
		end
	end

	--是否为 当前路径上的岔路判定点
	if nil ~= defs.way_info[cur_way].point_list[length] then
		if defs.way_info[cur_way].point_list[length] == evt.param3 then
			LF_HandleChangeDir(context, evt.param1, cur_way)
			return 0
		end
	end

	--是否为 当前路径上的Spawn点
	if defs.way_info[cur_way].spawn_point == evt.param3 then
		LF_TrySpawnCarrier(context)
	end

	return 0
end
--在路径判定点处，设置新点阵
function LF_HandleChangeDir(context, config_id, cur_way)
	ScriptLib.PrintContextLog(context,"## [MachineCarrier] LF_HandleChangeDir. config_id"..config_id.." cur_way@"..cur_way)
	local switcher_state = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, defs.way_info[cur_way].gear_id)
	if nil == defs.way_info[cur_way].dir[switcher_state] then
		ScriptLib.PrintContextLog(context,"## [MachineCarrier] LF_HandleChangeDir. Empty switcher_state. gear_id@"..defs.way_info[cur_way].gear_id.." switcher_state@"..switcher_state)
		return 0
	end

	local new_way = defs.way_info[cur_way].dir[switcher_state]
	ScriptLib.PrintContextLog(context,"## [MachineCarrier] LF_HandleChangeDir. Get new way cur_way@"..cur_way.." switcher_state@"..switcher_state.. " new_way@"..new_way)
	--前方无路，停车 不隐藏转向按钮
	if 0 == new_way then
		LF_PauseMove(context)
		return 0
	end
	--隐藏转向按钮
	LF_DelAllTurningOption(context)

	ScriptLib.SetGroupTempValue(context, "way_"..config_id, new_way, {})

	ScriptLib.SetGroupTempValue(context, "point_"..config_id, 0, {})
	ScriptLib.SetPlatformPointArray(context, config_id, defs.point_array, defs.way_info[new_way].point_list, { route_type = 0, record_mode = 0 })

	return 0
end

--是否所有车都可移动
function LF_IsMoveable(context)
	for i,v in pairs(defs.carrier_list) do
		--取得之前停在哪里
		local cur_way = ScriptLib.GetGroupTempValue(context, "way_"..v, {})

		if 0 < cur_way and nil ~= defs.way_info[cur_way] then	
			local switcher_state = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, defs.way_info[cur_way].gear_id)
			if nil ~= defs.way_info[cur_way].dir[switcher_state] then
				local new_way = defs.way_info[cur_way].dir[switcher_state]
				if 0 >= new_way then
					ScriptLib.PrintContextLog(context,"## [MachineCarrier] LF_IsMoveable. Is not movable. config_id@"..v.." cur_way@"..cur_way)
					return 0
				end
			end
		end	
	end
	return 1
end

function LF_TryTurnGadget(context, config_id, point_id)
	if LF_CheckIsInTable(context, point_id, defs.turn_point) then
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, config_id, "SGV_MachineCarrier_State", 1)
	end
	return 0
end

function LF_TrySpawnCarrier(context)
	local carrier_num = ScriptLib.CheckRemainGadgetCountByGroupId(context, { group_id = base_info.group_id, gadget_id = { 70320026 }})
	ScriptLib.PrintContextLog(context,"## [MachineCarrier] LF_TrySpawnCarrier. carrier_num@"..carrier_num.." carrier_list@"..#defs.carrier_list)
	if 0 > carrier_num then
		return 0
	end
	if #defs.carrier_list > carrier_num then
		for i,v in ipairs(defs.carrier_list) do
			local ret = ScriptLib.CreateGadget(context, { config_id = v })
			if 0 == ret then
				LF_StartMove(context, v)	
				return 0
			end
		end	 
	end
	return 0
end

function LF_StartMove(context, config_id)

	if nil == defs.way_info[1] then
		return 0
	end
	ScriptLib.PrintContextLog(context,"## [MachineCarrier] LF_StartMove. Try start config_id@"..config_id.." point_list@".. table.concat(defs.way_info[1].point_list, ", "))
	local ret = ScriptLib.SetPlatformPointArray(context, config_id, defs.point_array, defs.way_info[1].point_list, { route_type = 0, record_mode = 0 })
	if 0 == ret then 
		ScriptLib.SetGroupTempValue(context, "move_state", 1, {})
		ScriptLib.SetGroupTempValue(context, "way_"..config_id, 1, {})	
		ScriptLib.SetGroupTempValue(context, "point_"..config_id, 0, {})	
		return 0
	end
	if nil ~= defs.option_gadget then
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.option_gadget, { defs.option_stop })
	end
	ScriptLib.PrintContextLog(context,"## [MachineCarrier] LF_StartMove. SetPlatformPointArray ret@"..ret)
	return 0
end

function LF_ResumeMove(context)

	if 0 == LF_IsMoveable(context) then	
		return 0
	end
	--启动
	for i,v in ipairs(defs.carrier_list) do
		--物件朝向恢复
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_MachineCarrier_State", 0)

		--取得之前停在哪里
		local cur_way = ScriptLib.GetGroupTempValue(context, "way_"..v, {})
		if 0 < cur_way then		

			local cur_point_index = ScriptLib.GetGroupTempValue(context, "point_"..v, {})

			--是否是在终点停下
			if #defs.way_info[cur_way].point_list <= cur_point_index then
				LF_HandleChangeDir(context, v, cur_way)
			end

			local resume_point_list = {}
			--设置点阵路径
			--如果在起点
			if 0 == cur_point_index then
				ScriptLib.SetPlatformPointArray(context, v, defs.point_array, defs.way_info[cur_way].point_list, { route_type = 0, record_mode = 0 })
				ScriptLib.PrintContextLog(context,"## [MachineCarrier] LF_ResumeMove. config_id@"..v.." cur_way@"..cur_way.." point_list@".. table.concat(defs.way_info[1].point_list, ", "))
			--一条路没走完继续走
			elseif #defs.way_info[cur_way].point_list > cur_point_index then
				for i = cur_point_index + 1, #defs.way_info[cur_way].point_list do
					table.insert(resume_point_list, defs.way_info[cur_way].point_list[i])
				end
				ScriptLib.PrintContextLog(context,"## [MachineCarrier] LF_ResumeMove. config_id@"..v.." cur_way@"..cur_way.." cur_point_index@"..cur_point_index.." point_list@".. table.concat(resume_point_list, ", "))
			end
			ScriptLib.SetPlatformPointArray(context, v, defs.point_array, resume_point_list, { route_type = 0, record_mode = 0 })
			ScriptLib.SetGroupTempValue(context, "move_state", 1, {})
		end
	end
	if nil ~= defs.option_gadget then
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.option_gadget, { defs.option_stop })
	end
	return 0
end

function LF_PauseMove(context)
	for i, v in ipairs(defs.carrier_list) do
		ScriptLib.StopPlatform(context, v)
	end	
	ScriptLib.SetGroupTempValue(context, "move_state", 0, {})
	if nil ~= defs.option_gadget then
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.option_gadget, { defs.option_start })
	end
	ScriptLib.PrintContextLog(context,"## [MachineCarrier] LF_PauseMove.")
	return 0
end

function LF_TryStopMoveAtStation(context, config_id)
	local carrier_state = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, config_id)
	ScriptLib.PrintContextLog(context,"## [MachineCarrier] LF_TryStopMoveAtStation. carrier_state@"..carrier_state)
	if 201 == carrier_state then
		LF_PauseMove(context)
		return 1
	end
	return 0
end
--物件检测到玩家上车
function SLC_MachineCarrier_Player_In(context)

	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })

	--确保整个运输线只能有一个201
	for k,v in pairs(defs.carrier_list) do
		if v ~= config_id then
			ScriptLib.SetGadgetStateByConfigId(context, v, 0)
		end
	end

	local move_state = ScriptLib.GetGroupTempValue(context, "move_state", {})
	local cur_way = ScriptLib.GetGroupTempValue(context, "way_"..config_id, {})
	local cur_point_index = ScriptLib.GetGroupTempValue(context, "point_"..config_id, {})

	ScriptLib.PrintContextLog(context,"## [MachineCarrier] SLC_MachineCarrier_Player_In. move_state@"..move_state.." config_id@"..config_id.." cur_point_index@"..cur_point_index)

	if nil == defs.way_info[cur_way] then
		return 0
	end

	local way_info = defs.way_info[cur_way] 

	if nil == way_info.point_list[cur_point_index] then
		return 0
	end
	ScriptLib.PrintContextLog(context,"## [MachineCarrier] SLC_MachineCarrier_Player_In. move_state@"..move_state.." config_id@"..config_id.." cur_point@"..way_info.point_list[cur_point_index])
	if false == LF_CheckIsInTable(context, way_info.point_list[cur_point_index], defs.stop_points) then
		return 0
	end
	if 1 ~= move_state then
		LF_ResumeMove(context)	
	end
	return 0
end

function LF_DelAllTurningOption(context)
	for k,v in pairs(defs.switcher_control) do
		
		ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, k, defs.option_turn )
	end
	ScriptLib.SetGroupTempValue(context, "option_deleted", 1, {})

	return 0
end
function LF_TrySetAllTurningOption(context)
	if 1 ~= ScriptLib.GetGroupTempValue(context, "option_deleted", {}) then
		return 0
	end
	for k,v in pairs(defs.switcher_control) do
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, k, { defs.option_turn })
	end
	ScriptLib.SetGroupTempValue(context, "option_deleted", 0, {})

	return 0
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

function GetIndexInTable(context, value, check_table)
	for i = 1, #check_table do
		if check_table[i] == value then
			return i
		end
	end
	return 0
end

LF_Initialize()