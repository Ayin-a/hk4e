--[[======================================
||	filename:		||	YeLan_BoxPusher
||	owner: 			||	siyu.li
||	description: 	||	根据夜兰地城需求增加了路径屏蔽的功能
||	LogName:		||	
||	Protection:		||	TimeAxisPass检测箱子到达点位
=======================================]]
--[[
设置var: level_start为1以开启推箱子流程
用var_change接source为"level_finish"即可响应箱子推完的结果
local defs = {
	box_gadget_id_1 = 1, 	--可推箱子的gadget_id
	box_gadget_id_2 = 2, 	--可推箱子的gadget_id
	config_suites = {1}		--注册逻辑的suite队列
	point_array_id = 1,		--点阵id
	option_id = 1,			--推动的option_id
	reminder_level_boarder = 1,
	reminder_array_boarder = 1,
	reminder_box_conflict = 1,
	reminder_right_pos = 1
}

--地形信息：0-墙面,1-地面,2-空气墙
local level_map = {
	{0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0},
	{0,0,0,0,0,0,0,0,1,1,0,1,1,1,1,0,0},
	{1,1,1,1,1,1,1,1,1,1,0,1,0,1,1,1,1},
	{0,0,0,0,0,0,0,0,2,1,0,1,1,1,1,1,1},
	{0,0,0,0,0,0,0,0,2,1,0,1,1,1,1,1,1}
}

--点阵id信息
local point_map = {
	{ 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 0, 9,10,11,12, 0, 0},
	{13,14,15,16,17,18,19,20,21,22, 0,23, 0,24,25,26,27},
	{ 0, 0, 0, 0, 0, 0, 0, 0, 2,28, 0,29,30,31,32,33,34},
	{ 0, 0, 0, 0, 0, 0, 0, 0, 2,35, 0,36,37,38,39,40,41}
}

--箱子信息
local box_config = {
	[1] = {config_id = 1001, pos = {x=8,z=3}},
	[2] = {config_id = 1002, pos = {x=11,z=1}},
	[3] = {config_id = 1003, pos = {x=12,z=2}},
	[4] = {config_id = 1004, pos = {x=13,z=2}}
}

--关卡结算信息
local level_finish_config = {
	box_config_id = {1,3} --box_config中序列
	target_point_id = {11,22} --点阵id
}

--路径摘除信息(pont_id)
local illegal_path = {
	{1,2},
	{3,4}
}
--]]
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
local Tri = {
	{ name = "Group_Load", config_id = 8000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	{ name = "Gadget_Create", config_id = 8000002, event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0 },
	{ name = "Select_Option", config_id = 8000003, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },
	{ name = "Platform_Reach_Point", config_id = 8000004, event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_platform_reach_point", trigger_count = 0 },
	{ name = "Group_Refresh", config_id = 8000005, event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_group_refresh", trigger_count = 0 },
	--{ name = "Avatar_Near_Platform", config_id = 8000006, event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "", action = "action_avatar_near_platform", trigger_count = 0 }
	{ name = "Time_Axis_Pass", config_id = 8000006, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
	{ name = "Level_Start", config_id = 8000007, event = EventType.EVENT_VARIABLE_CHANGE, source = "level_start", condition = "", action = "action_level_start", trigger_count = 0 },
}

--[[local Var = {
	{ name = "level_start", value = 0 }
}
--]]
function Initialize()
--[[	for i,v in ipairs(Var) do
		table.insert(variables, v)
	end--]]
	--ScriptLib.PrintLog("## YeLan_BoxPusher_Initialize 1")
	for i,v in ipairs(Tri) do
		table.insert(triggers, v)
		for m,n in ipairs(defs.config_suites) do
			--ScriptLib.PrintLog("## YeLan_BoxPusher_Initialize 2")
			table.insert(suites[n].triggers, v.name)
		end
	end
end

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function LF_Notify(context, r_id)
	ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : LF_Notify | reminder_id="..r_id)
	ScriptLib.ShowReminder(context, r_id)
end

--初始化所有box的位置
function LF_Init_Level(context)
	ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : LF_Init_Level")
	ScriptLib.SetGroupTempValue(context, "next_point_x", 0, {})
	ScriptLib.SetGroupTempValue(context, "next_point_z", 0, {})
	for i,v in ipairs(box_config) do
		ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, v.config_id)
		local _ret,R_pos,R_rot = ScriptLib.GetPlatformArrayInfoByPointId(context, defs.point_array_id, point_map[v.pos.z][v.pos.x])
		local _pos = {x=R_pos.x,y=R_pos.y,z=R_pos.z}
		local _rot = {x=0,y=0,z=0}
		ScriptLib.CreateGadgetByConfigIdByPos(context, v.config_id, _pos, _rot)
		ScriptLib.SetPlatformPointArray(context, v.config_id, defs.point_array_id, {point_map[v.pos.z][v.pos.x]}, {})
		ScriptLib.SetGroupTempValue(context, "box_pos_x_"..i, v.pos.x, {})
		ScriptLib.SetGroupTempValue(context, "box_pos_z_"..i, v.pos.z, {})
	end
end

function LF_Get_Entity_Pos(context, uid, cid)
	ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : LF_Get_Entity_Pos")
	local _eid = 0
	--转译entityId
	if uid ~= 0 then
		_eid = ScriptLib.GetAvatarEntityIdByUid(context, uid)
	elseif cid ~= 0 then
		_eid = ScriptLib.GetEntityIdByConfigId(context, cid)
	end
	--返回安全值,印象中直接返回_array时table里不干净
	local _array = ScriptLib.GetPosByEntityId(context, _eid)
	local _res = {}
	if _array.x == 0 and _array.y == 0 and _array.z == 0 then
		ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : Get Pos Fail !!! | uid="..uid.." | cid="..cid)
		_res.error = 1
		return _res
	end
	_res.x = _array.x
	_res.y = _array.y
	_res.z = _array.z
	return _res
end

function LF_Get_Push_Direction(context, avatar, target)
	ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : LF_Get_Push_Direction")
	local _direction = {x=0,y=0,z=0}
	_direction.x = target.x - avatar.x
	_direction.y = target.y - avatar.y
	_direction.z = target.z - avatar.z
	local _direct = ""
	local _angle = 0
	--世界坐标系正X为up,正Z为left
	if _direction.x == 0 then
		if _direction.z >= 0 then
			_direct = "left"
		else _direct = "right"
		end
	else
		_angle = math.deg(math.atan(_direction.z/_direction.x))
		if math.abs(_angle) <= 45 then
			if _direction.x > 0 then
				_direct = "up"
			else _direct = "down"
			end
		else
			if _direction.z > 0 then
				_direct = "left"
			else _direct = "right"
			end
		end  
	end
	ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : LF_Get_Entity_Pos | _direct = ".._direct)
	return _direct
end

function LF_Try_Push_Box(context, config_id, direction)
	ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : LF_Try_Push_Box | config_id = "..config_id.." | direction = "..direction)
	local _box = ScriptLib.GetPlatformPointArray(context, config_id)
	local _box_point = _box[2]
	local _is_found = false
	--以i,j获取当前的坐标
	for _j,_list in ipairs(point_map) do
		if _is_found == true then
			break
		end
		for _i,point in ipairs(_list) do
			if point == _box_point then
				--检测地图连通性
				ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : LF_Try_Push_Box | Point_Map_Pos | x=".._i.." | z=".._j)
				local _connection = LF_Check_Target_Position(context, _i, _j, direction)
				if #_connection == 2 then
					--执行箱子移动
					LF_Execute_Box_Move(context, config_id, {_i,_j}, _connection)
				end
				_is_found = true
				break
			end
		end
	end
end

function LF_Check_Target_Position(context, x, z, forward)
	ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : LF_Check_Target_Position | x="..x.."|z="..z.."|forward="..forward)
	local res = {}
	local _x = x
	local _z = z
	local _forward = forward
	--由于关卡方向与地图方向可能不一致,需要额外做一次旋转
	--[[if forward == "up" then	_forward = "left"
		elseif forward == "left" then _forward = "down" 
		elseif forward == "down" then _forward = "right"
		else _forward = "up"
	end--]]

	if _forward == "up" then
		_z = _z - 1
	elseif _forward == "down" then
		_z = _z + 1
	elseif _forward == "right" then
		_x = _x + 1
	elseif _forward == "left" then
		_x = _x - 1
	else
		ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : Invalid Box Direction !!! | forward=".._forward)
		return res
	end
	--判地图边界
	if _x < 1 or _x > #level_map[z] or _z < 1 or _z > #level_map then
		LF_Notify(context, defs.reminder_level_boarder)
		return res
	end
	--判路点边界
	if point_map[_z][_x] == 0 then
		LF_Notify(context, defs.reminder_array_boarder)
		return res
	end
	--判路径连通
	if illegal_path ~= nil then
		local value1 = point_map[z][x]
		local value2 = point_map[_z][_x]
		for idx,array in ipairs(illegal_path) do
			if math.max(value1, value2) == math.max(array[1], array[2]) and math.min(value1, value2) == math.min(array[1], array[2]) then
				ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : Route is Illegal !!".." idx="..idx)
				LF_Notify(context, defs.reminder_array_boarder)
				return res
			end
		end
	end
	--判有无箱子
	for _box,_pos in ipairs(box_config) do
		if ScriptLib.GetGroupTempValue(context, "box_pos_x_".._box, {}) == _x and ScriptLib.GetGroupTempValue(context, "box_pos_z_".._box, {}) == _z then
			LF_Notify(context, defs.reminder_box_conflict)
			return res
		end
	end
	res[1] = _x
	res[2] = _z
	ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : LF_Check_Target_Position |_x=".._x.."|_z=".._z)
	return res
end

function LF_Execute_Box_Move(context, config_id, source, vector)
	ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : LF_Execute_Box_Move | config_id="..config_id)
	--下option锁推箱子操作
	LF_Lock_Operation(context, true)
	--ScriptLib.SetGroupGadgetStateByConfigId(context, 0, config_id, 201)
	ScriptLib.SetGroupTempValue(context, "next_point_x", vector[1], {})
	ScriptLib.SetGroupTempValue(context, "next_point_z", vector[2], {})
	ScriptLib.SetPlatformPointArray(context, config_id, defs.point_array_id, {point_map[source[2]][source[1]] ,point_map[vector[2]][vector[1]]}, {})
	--增加一个时间轴保底
	ScriptLib.InitTimeAxis(context, tostring(config_id), {4}, true)
end

function LF_Lock_Operation(context, is_locked)
	if is_locked == true then
		ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : LF_Lock_Operation | is_locked = true")
		for i,v in ipairs(box_config) do
			ScriptLib.DelWorktopOptionByGroupId(context, 0, v.config_id, defs.option_id)
		end
	elseif is_locked == false then
		ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : LF_Lock_Operation | is_locked = false")
		for id,box in ipairs(box_config) do
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, box.config_id, {defs.option_id})
			--停止时间轴
			ScriptLib.EndTimeAxis(context, tostring(box.config_id))
			--清空目标点cache
			ScriptLib.SetGroupTempValue(context, "next_point_x", 0, {})
			ScriptLib.SetGroupTempValue(context, "next_point_z", 0, {})
		end
	end
end

--处理正确终点的箱子表现
function LF_Check_Is_Correct_Target_Point(context, box_id, x, z)
	if level_finish_config.box_config_id == nil or level_finish_config.target_point_id == nil then
		return false
	end
	for i,v in ipairs(level_finish_config.box_config_id) do
		if v == box_id then
			local x_ = ScriptLib.GetGroupTempValue(context, "box_pos_x_"..v, {})
			local z_ = ScriptLib.GetGroupTempValue(context, "box_pos_z_"..v, {})
			local is_pos_correct = false
			for m,n in ipairs(level_finish_config.target_point_id) do
				--对应箱子推到了正确的point决定state
				if point_map[z_][x_] == n then
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, box_config[box_id].config_id, 202)
					LF_Notify(context, defs.reminder_right_pos)
					is_pos_correct = true
				end
			end
			if is_pos_correct == false then
				ScriptLib.SetGroupGadgetStateByConfigId(context, 0, box_config[box_id].config_id, 201)
			end	
		end
	end
	return true
end

function LF_Check_Is_Level_Finish(context)
	if level_finish_config.box_config_id == nil or level_finish_config.target_point_id == nil then
		return false
	end
	--判断是否所有箱子都在正确的点
	for i,v in ipairs(level_finish_config.box_config_id) do
		local x_ = ScriptLib.GetGroupTempValue(context, "box_pos_x_"..v, {})
		local z_ = ScriptLib.GetGroupTempValue(context, "box_pos_z_"..v, {})
		local is_right_pos = false
		for m,n in ipairs(level_finish_config.target_point_id) do
			if point_map[z_][x_] == n then
				is_right_pos = true
			end
		end
		if is_right_pos == false then	
			return false
		end
	end
	--没有中断则所有点位都正确,完成关卡
	LF_Level_Finish(context)
	return true
end

function LF_Level_Finish(context)
	ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : LF_Level_Finish")
	--[[if init_config.end_suite ~= 0 then
		ScriptLib.GoToGroupSuite(context, 0, init_config.end_suite)
	end--]]
	ScriptLib.SetGroupTempValue(context, "level_finish", 1, {})
end

--=====================================
function action_group_load(context, evt)
	--local cur_suite = ScriptLib.GetGroupSuite(context, 0)
	--if cur_suite ~= init_config.end_suite then
		LF_Init_Level(context)
	--end
	return 0
end

function action_group_refresh(context, evt)
	--local cur_suite = ScriptLib.GetGroupSuite(context, 0)
	--if cur_suite ~= init_config.end_suite then
		LF_Init_Level(context)
	--end
	return 0
end

function action_gadget_create(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "level_start") ~= 1 then
		return -1
	end
	if gadgets[evt.param1].gadget_id == defs.box_gadget_id_1 or gadgets[evt.param1].gadget_id == defs.box_gadget_id_2 then
		ScriptLib.SetWorktopOptionsByGroupId(context, 0, evt.param1, {defs.option_id})
		return 0
	end
	return -1
end

function action_level_start(context, evt)
	if evt.param1 == 1 then
		for i,v in ipairs(box_config) do
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, v.config_id, {defs.option_id})
			ScriptLib.SetGadgetStateByConfigId(context, v.config_id,201)
		end
	end
	return 0
end

function action_select_option(context, evt)
	if evt.param2 ~= defs.option_id then
		return -1
	end
	--获取玩家位置与箱子位置
	local _avatar_pos = LF_Get_Entity_Pos(context, context.uid, 0)
	local _box_pos = LF_Get_Entity_Pos(context, 0, evt.param1)
	if _avatar_pos.error == 1 or _box_pos.error == 1 then
		ScriptLib.PrintContextLog(context, "YeLan_BoxPusher : Invalid entity pos !!!!")
		return -1
	end
	--计算推动方向
	local _dir = LF_Get_Push_Direction(context, _avatar_pos, _box_pos)
	LF_Try_Push_Box(context, evt.param1, _dir)
	return 0
end

function action_platform_reach_point(context, evt)
	--记录下个理论点位
	local _x = ScriptLib.GetGroupTempValue(context, "next_point_x", {})
	local _z = ScriptLib.GetGroupTempValue(context, "next_point_z", {})
	if _x == 0 or _z == 0 then
		return -1
	end
	if point_map[_z][_x] == evt.param3 then
		ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : reach point ".._x.."|".._z)
		for idx,box in ipairs(box_config) do
			if box.config_id == evt.param1 then
				ScriptLib.SetGroupTempValue(context, "box_pos_x_"..idx, _x, {})
				ScriptLib.SetGroupTempValue(context, "box_pos_z_"..idx, _z, {})
				--ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, 0)
				LF_Lock_Operation(context, false)
				--检测箱子抵达正确位置
				LF_Check_Is_Correct_Target_Point(context, idx, _x, _z)
				--检测关卡是否完成
				LF_Check_Is_Level_Finish(context)
				return 0
			end
		end
	end
	return -1
end

function action_time_axis_pass(context, evt)
	ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : TimeAxisPass -> "..evt.source_name)
	--[[if ScriptLib.GetGadgetStateByConfigId(context, 0, tonumber(evt.source_name)) ~= 201 then
		ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : T.A.P fail by state")
		return -1
	end--]]
	local _x = 0
	local _z = 0
	for m,n in ipairs(box_config) do
		if tostring(n.config_id) == evt.source_name then
			_x = ScriptLib.GetGroupTempValue(context, "box_pos_x_"..m, {})
			_z = ScriptLib.GetGroupTempValue(context, "box_pos_z_"..m, {})
			break
		end
	end
	ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : Get Box Protected")
	local _ret,R_pos,R_rot = ScriptLib.GetPlatformArrayInfoByPointId(context, defs.point_array_id, point_map[_z][_x])
	local _eid = ScriptLib.GetEntityIdByConfigId(context, tonumber(evt.source_name))
	local _pos = ScriptLib.GetPosByEntityId(context, _eid)
	ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : Get Box Real Pos | ".._pos.x.." | ".._pos.z)
	ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : Get Box Theory Pos | "..R_pos.x.." | "..R_pos.z)
	if math.ceil(_pos.x) ~= math.ceil(R_pos.x) or math.ceil(_pos.z) ~= math.ceil(R_pos.z) then
		ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : T.A.P fail by pos")
		return -1
	end
	ScriptLib.PrintContextLog(context, "## YeLan_BoxPusher : T.A.P success")
	LF_Lock_Operation(context, false)
	return 0
end

Initialize()