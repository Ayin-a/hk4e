--ServerUploadTool Save to [/root/env/data/lua/common/V3_4]
--======================================================================================================================
--||   Filename      ||    EnergyTransform
--||   RelVersion    ||    V3_4
--||   Owner         ||    chao-jin
--||   Description   ||    重构的能量传递Require
--||   LogName       ||    ##[EnergyTrans]
--||   Protection    ||    
--======================================================================================================================
--Defs & Miscs
--[[
local DIR = {Up = 0,Right = 1,Down = 2,Left = 3,None = 4,}
--转换器的列表，1表示可移动
local defs = {
	pointarray_id = 110200028, --点阵ID
	graph_num = 1,
	len_x = 7, --长度
	len_z = 9, --高度
	rot_y = 0, --偏转角
	reminder_push_warning = 400095, --无法推动的reminder
}
local converter_infos = {[71017] = 2,[71022] = 1,[71039] = 1,[71040] = 1}
--0->断路 |-1 电源| 1-> 可停留节点| 1.5 -> 可能存在结晶的节点| 2 -> 电线 | 2.5-> 结晶块 | 
--3-> 接收器 | 4 -> 中继器 | 4.5 -> 对位中继器输入

local connected_graph = {
[9] = { 1, 2, 2, 2,  1, 2, 1},
[8] = { 0, 0, 0, 0,  0, 0, 2},
[7] = { 1, 2, 3, 0, -1, 0, 1},
[6] = { 2, 0, 0, 0,  2, 0, 2},
[5] = { 1, 2, 1, 2,  1, 2, 1},
[4] = { 0, 0, 2, 0,  0, 0, 2},
[3] = { 1, 2, 1, 2,2.5, 2, 1},
[2] = { 2, 0, 0, 0,  0, 0, 2},
[1] = { 3, 0, 0, 0,  0, 0,-1},
}

--与节点图一一对应，点阵中 点的位置
local waypoint_graph = {
[9] = {10, 0, 0, 0, 6, 0, 5},
[8] = { 0, 0, 0, 0, 0, 0, 0},
[7] = {11, 0, 0, 0, 0, 0, 4},
[6] = { 0, 0, 0, 0, 0, 0, 0},
[5] = {12, 0, 9, 0, 7, 0, 3},
[4] = { 0, 0, 0, 0, 0, 0, 0},
[3] = {13, 0, 8, 0, 5, 0, 2},
[2] = { 0, 0, 0, 0, 0, 0, 0},
[1] = { 0, 0, 0, 0, 0, 0, 1},
}

local gadget_graph ={
[9] = { 71035,	71024,	71024,	71024,	71028,	71006,	71027},
[8] = { 	0,		0,		0,		0,		0,		0,	71005},
[7] = { 71029,	71013,	71019,		0,	71021,		0,	71036},
[6] = { 71014,		0,		0,		0,	71020,		0,	71004},
[5] = { 71030,	71012,	71031,	71011,	71034,	71010,	71026},
[4] = { 	0,		0,	71023,		0,		0,		0,	71003},
[3] = { 71033,	71015,	71032,	71008,	71009,	71007,	71025},
[2] = { 71016,		0,		0,		0,		0,		0,	71002},
[1] = { 71018,		0,		0,		0,		0,		0,	71001},
}

--点阵和每个点的POS,用来在恢复的时候创建Gadget
local waypoint_pos = {
	[1] = {x=1996.51245, y=197.46463, z=-1265.03467},
	[2] = {x=2000.27747, y=197.637466, z=-1269.03479},
	[3] = {x=2004.44043, y=197.682251, z=-1273.08423},
	[4] = {x=2008.35669, y=198.132111, z=-1276.61426},
	[5] = {x=2011.79822, y=198.469543, z=-1280.75232},
	[6] = {x=2016.40918, y=198.902481, z=-1275.91077},
	[7] = {x=2008.25366, y=198.260834, z=-1268.04431},
	[8] = {x=2008.5968, y=198.515762, z=-1260.09985},
	[9] = {x=2012.65173, y=198.5158, z=-1264.41284},
	[10] = {x=2025.0188, y=199.691757, z=-1267.24316},
	[11] = {x=2020.85693, y=198.902466, z=-1263.183},
	[12] = {x=2017.17883, y=198.681519, z=-1260.414},
	[13] = {x=2013.269, y=198.889435, z=-1255.92017},
}

--定义左下角原点、X轴、Z轴正方向的点，通过向量计算位置关系
local axis_O = {x = 2009, z = -1252}
local axis_Z = {x = 2013, z = -1256}
local axis_X = {x = 2003, z = -1258}


--发射器的位置以及朝向,发射器的状态
local emitter_infos = { 
	[71001] = {z = 1, x = 7, dir = DIR.Up}, 
	[71021] = {z = 7, x = 5, dir = DIR.Down}, 
}

local receiver_infos = {
	[71018] = {r_type = "Rec", connect_gadget = {71037} },
	[71019] = {r_type = "Rec", connect_gadget = {71038} },
}
]]
--======================================================================================================================
--全局变量，不需要LD处理,仅在Require内部使用
local _G_pipe_route = {} --电路的流向合集
local _G_pipe_state= {}
local _G_ec_dir = 0 --电流的方向，每次递归计算的时候会用
local _G_recur_counter = 0 --递归计数器
local _G_cvt_graph = {} --在递归时建立的临时表，减少遍历次数
local OPTION = {ROTATE = 31,START = 7,STOP = 72,PUSH = 193,}
--0->断路 |-1 电源| 1-> 可停留节点| 1.5 -> 可能存在结晶的节点| 2 -> 电线 | 2.5-> 结晶块 | 
--3-> 接收器 | 4 -> 中继器 | 4.5 -> 对位中继器输入
local NODE = {Off = 0,Power = -1,N_Node = 1,C_Node = 1.5, N_Pipe = 2, Crystal = 2.5, N_Rec = 3,C_Rec = 3.5,Sy_P_Node = 4,Sy_R_Node = 4.5}
--======================================================================================================================
--Events
local ET_Triggers = {
	{ name = "group_load", config_id = 8000101, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	{ name = "select_option", config_id = 8000102, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },
	{ name = "time_axis_pass", config_id = 8000103, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
	{ name = "platform_reach",config_id = 8000104, event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_platform_arrival", trigger_count = 0 },
}

--初始化
function ET_Initialize()
	for k,v in pairs(ET_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end
--Events
function action_group_load(context, evt) 
	ScriptLib.PrintContextLog(context, "##[EnergyTrans]:Group 加载完毕")
	--确认每个电源的状态，修改按键信息,1代表物件结晶化,物件需要在加载完成的时候同步一次状态
	ScriptLib.PrintContextLog(context, "##[EnergyTrans]:打开电源操作台操作")
	for emitter_id,infos in pairs(emitter_infos) do
		--物件没有结晶化，给选项
		if 0 == ScriptLib.GetGadgetAbilityFloatValue(context, base_info.group_id, emitter_id, "GV_TMHY_CRYSTAL") then 
			if 0 == ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, emitter_id) then 
				ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, emitter_id, {OPTION.STOP})
				ScriptLib.SetGroupTempValue(context, "GenState"..emitter_id, 1, {base_info.group_id})
			end
			if 201 == ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, emitter_id) then 
				ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, emitter_id, {OPTION.START})
				ScriptLib.SetGroupTempValue(context, "GenState"..emitter_id, 0, {base_info.group_id})
			end
		else
			--物件结晶化了，选项关掉
			ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, emitter_id, {})
			ScriptLib.SetGroupTempValue(context, "GenState"..emitter_id, 0, {base_info.group_id})
		end
	end

	ScriptLib.PrintContextLog(context, "##[EnergyTrans]:开始创建转换器")
	local _cvt_graph = LF_RefreshGlobalConverterList(context)
	for cvt_id,cvt_info in pairs(_cvt_graph) do
		local waypoint = waypoint_graph[cvt_info.z][cvt_info.x]
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:转换器"..cvt_id.."对应路点"..waypoint)
		--创建转换器，设置方向
		ScriptLib.CreateGadgetByConfigIdByPos(context, cvt_id, waypoint_pos[waypoint], {x = 0, y = defs.rot_y, z = 0})
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:创建转换器"..cvt_id)
		ScriptLib.SetGadgetStateByConfigId(context, cvt_id, cvt_info.dir)
		--可移动的转换器
		if cvt_info.cvt_type == 1 then 
			if 0 == ScriptLib.GetGadgetAbilityFloatValue(context, base_info.group_id, cvt_id, "GV_TMHY_CRYSTAL") then 
				ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, cvt_id, {OPTION.ROTATE, OPTION.PUSH})
			end
		end
		--不可移动的转换器
		if cvt_info.cvt_type == 2 then 
			if 0 == ScriptLib.GetGadgetAbilityFloatValue(context, base_info.group_id, cvt_id, "GV_TMHY_CRYSTAL") then 
				ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, cvt_id, {OPTION.ROTATE})
			end
		end
	end
	LF_CheckConnection(context)
	return 0
end

function action_select_option(context, evt) 
	--处理电源的开关
	if emitter_infos[evt.param1] ~= nil and evt.param2 == OPTION.START then 
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:打开电源")
--		ScriptLib.SetEntityServerGlobalValueByConfigId(context, evt.param1, "SGV_PowerOn", 1)
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, evt.param1, {OPTION.STOP})
		ScriptLib.SetGadgetStateByConfigId(context, evt.param1, 201)
		ScriptLib.SetGroupTempValue(context, "GenState"..evt.param1, 1, {base_info.group_id})
		LF_CheckConnection(context)
	end
	if emitter_infos[evt.param1] ~= nil and evt.param2 == OPTION.STOP then 
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:关闭电源")
--		ScriptLib.SetEntityServerGlobalValueByConfigId(context, evt.param1, "SGV_PowerOn", 0)
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, evt.param1, {OPTION.START})
		ScriptLib.SetGadgetStateByConfigId(context, evt.param1, 0)
		ScriptLib.SetGroupTempValue(context, "GenState"..evt.param1, 0, {base_info.group_id})
		LF_CheckConnection(context)
	end

	--处理中继器的旋转
	if converter_infos[evt.param1] ~= nil  and evt.param2 == OPTION.ROTATE then 
		--判断结晶化
		if 1 == ScriptLib.GetGadgetAbilityFloatValue(context, base_info.group_id, evt.param1, "GV_TMHY_CRYSTAL") then 
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:电桩结晶化了，不能旋转")
			ScriptLib.ShowReminder(context, defs.reminder_push_warning)
		end
		local rotate_state = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, evt.param1)
--		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:旋转中继器,旋转前方向"..rotate_state)
		if rotate_state == 3 then 
			rotate_state = 0
		else
			rotate_state = rotate_state + 1
		end
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:旋转中继器,更新方向"..rotate_state)
		--更新当前电桩的朝向
		LF_LockConverterOperations(context, true)
		ScriptLib.SetGadgetStateByConfigId(context, evt.param1, rotate_state)
		LF_SetConverterData(context, evt.param1, "Gadget_State", rotate_state)
		ScriptLib.InitTimeAxis(context, tostring(evt.param1), {1}, false)
	end

	--处理推动电桩,只有类型1的电桩才会推动
	if converter_infos[evt.param1] ~= nil and converter_infos[evt.param1] == 1 and evt.param2 == OPTION.PUSH then 
		if 1 == ScriptLib.GetGadgetAbilityFloatValue(context, base_info.group_id, evt.param1, "GV_TMHY_CRYSTAL") then 
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:电桩结晶化了，不能移动")
			ScriptLib.ShowReminder(context, defs.reminder_push_warning)
		end
		--按照玩家和电桩的相对位置推动电桩
		local push_dir = LF_CalcDirection(context, context.uid, evt.param1)
		local path = LF_GetMovePath(context, evt.param1, push_dir)
		if path ~= 0 then
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:推动中继器"..path[1].."to"..path[2])
			ScriptLib.SetPlatformPointArray(context, evt.param1, defs.pointarray_id, path, { route_type = 0})
		else
			ScriptLib.ShowReminder(context, defs.reminder_push_warning)
		end
		LF_LockConverterOperations(context, true)
		ScriptLib.InitTimeAxis(context, tostring(evt.param1), {1}, false)
	end

	return 0
end

--电桩旋转过程完成，检测电路连通和恢复电桩操作
function action_time_axis_pass(context, evt) 
	LF_CheckConnection(context)
	LF_LockConverterOperations(context, false)
	ScriptLib.PrintContextLog(context, "##[EnergyTrans]:操作时点完成，TimeAxis结束")
	return 0
end

--电桩到达目标位置
function action_platform_arrival( context, evt)
	--到达的柱子是这组Group里的
	if nil == converter_infos[evt.param1] then
		return -1
	end
	--到的不是目标点
	if evt.param3 ~= ScriptLib.GetGroupTempValue(context, "Move_Target_Point", {}) then 
		return -1
	end
	local pos = LF_GetWaypointPos(evt.param3)
	--更新当前电桩的信息
	LF_SetConverterData( context, evt.param1, "Gadget_Pos", {pos_z = pos[1] ,pos_x = pos[2]})
	LF_CheckConnection(context)
	return 0
end
--======================================================================================================================
--ServerLuaCalls
--电桩从结晶化恢复时，通知Group恢复操作
function SLC_CVTCrystallizeOff(context) 
	local cvt_cfg_id = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	if converter_infos[cvt_cfg_id] == 1 then 
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, cvt_cfg_id, {OPTION.PUSH, OPTION.ROTATE})
	end
	if converter_infos[cvt_cfg_id] == 2 then 
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, cvt_cfg_id, {OPTION.ROTATE})
	end
	LF_CheckConnection(context)
	return 0
end

--电桩结晶化，通知Group关闭操作
function SLC_CVTCrystallizeOn(context) 
	local cvt_cfg_id = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, cvt_cfg_id, {})
	LF_CheckConnection(context)
	return 0
end

--电源结晶相关SLC
function SLC_GeneratorCrystalStateChange(context, is_crystallized) 
	local gen_cfg_id = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	--结晶化时关掉开关的选项
	if 1 == is_crystallized then 
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电源SLC]电源结晶")
		ScriptLib.SetGroupTempValue(context, "GenState"..gen_cfg_id, 0, {base_info.group_id})
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, gen_cfg_id, {})
		if 201 == ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, gen_cfg_id) then
			--相当于关闭电源，走一遍遍历
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电源SLC]关闭电路")
			LF_CheckConnection(context)
		end
	end 
	if 0 == is_crystallized then 
		--电源没打开，仍然是断路
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电源SLC]电源结晶解除")
		if 0 == ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, gen_cfg_id) then
			ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, gen_cfg_id, { OPTION.START })
		else
			--相当于电源打开了，重新连通
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电源SLC]打开电路")
			ScriptLib.SetGroupTempValue(context, "GenState"..gen_cfg_id, 1, {base_info.group_id})
			LF_CheckConnection(context)
			ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, gen_cfg_id, { OPTION.STOP })
		end
	end		
	return 0
end

--电桩结晶相关SLC
function SLC_ConverterCrystalStateChange(context, is_crystallized) 
	local cvt_cfg_id = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})

	--结晶化时关掉旋转的选项
	if 1 == is_crystallized then 
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[中继器]中继器结晶")
		LF_CheckConnection(context)
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, cvt_cfg_id, {})
	end 
	if 0 == is_crystallized then 
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[中继器]中继器解除结晶")
		LF_CheckConnection(context)
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, cvt_cfg_id, {OPTION.ROTATE})
	end		
	return 0
end

--接收器相关SLC，结晶和结晶化解除时都要发
function SLC_ReceiverCrystalStateChange(context, is_crystallized) 
	--结晶化时关掉旋转的选项
	LF_CheckConnection(context)	
	return 0
end

--对位中继器相关SLC，结晶和结晶化解除时都要发
function SLC_ReceiverCrystalStateChange(context, is_crystallized) 
	local sync_cfg_id = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	LF_CheckConnection(context)
	return 0
end
--======================================================================================================================
--LevelFunctions
--更新所有转换器的位置信息，使用一个全局表处理，每次使用时需要重置此表
function LF_RefreshGlobalConverterList(context)
	local _cvt_graph = {}
--	ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电桩]创建电桩列表")
	for config_id,cvt_type in pairs(converter_infos) do
		_cvt_graph[config_id] = LF_GetConverterData(context, config_id)
--		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:转换器"..config_id.."z".._cvt_graph[config_id].z.."x".._cvt_graph[config_id].x)
	end
	return _cvt_graph
end

--开关全部的电桩选项
function LF_LockConverterOperations(context, is_lock)
	if is_lock then
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电桩]关闭全部中转器操作")
		for cvt_id,info in pairs(converter_infos) do
			ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, cvt_id, {})
		end
	else
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电桩]打开全部中转器操作")
		for cvt_id,info in pairs(converter_infos) do
			--校验结晶化
			if 0 == ScriptLib.GetGadgetAbilityFloatValue(context, base_info.group_id, cvt_id, "GV_TMHY_CRYSTAL") then
				if info == 1 then 
					ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, cvt_id, {OPTION.ROTATE, OPTION.PUSH})
				end
				if info == 2 then
					ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, cvt_id, {OPTION.ROTATE})
				end
			end
		end
	end
end
--======================================================================================================================
--电桩移动相关
--获取电桩的移动路点列表
function LF_GetMovePath(context, cvt_id, push_dir) 
	local _cvt_graph = LF_RefreshGlobalConverterList(context)
	local pos_z = _cvt_graph[cvt_id].z
	local pos_x = _cvt_graph[cvt_id].x
	local cur_point = waypoint_graph[pos_z][pos_x]
	--走到下一个可以停留的点为止
	for i=1,defs.len_x do
		if push_dir == DIR.Up then
			pos_z = pos_z + 1
		end
		if push_dir == DIR.Down then
			pos_z = pos_z - 1
		end
		if push_dir == DIR.Left then
			pos_x = pos_x - 1
		end
		if push_dir == DIR.Right then
			pos_x = pos_x + 1
		end
			--检查是否越界,越界则直接返回
		if pos_z < 1 or pos_z > defs.len_z then 
--			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电桩]Z坐标越界")
			return 0
		end
		if pos_x < 1 or pos_x > defs.len_x then
--			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电桩]X坐标越界")
			return 0
		end
		--找到下一个去的点信息
		if connected_graph[pos_z][pos_x] == NODE.Off or connected_graph[pos_z][pos_x] == NODE.Power or 
			connected_graph[pos_z][pos_x] == NODE.N_Rec or connected_graph[pos_z][pos_x] == NODE.C_Rec or 
			connected_graph[pos_z][pos_x] == NODE.Sy_P_Node or connected_graph[pos_z][pos_x] == NODE.Sy_R_Node then 
--			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电桩]前方是短路/终点/起点,停止检查")
			return 0
		end
		if connected_graph[pos_z][pos_x] == NODE.N_Pipe then 
--			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电桩]可以移动到中间点".."Z_"..pos_z.."X_"..pos_x)
		end
		if connected_graph[pos_z][pos_x] == NODE.Crystal then 
			if LF_IsGadgetCrystal(context, gadget_graph[pos_z][pos_x]) then 
				ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电桩]检查中间有结晶挡住")
				return 0
			else
				ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电桩]检查中间没有结晶挡住")
			end
		end
		--节点检测
		if connected_graph[pos_z][pos_x] == NODE.C_Node or connected_graph[pos_z][pos_x] == NODE.N_Node then 
--			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电桩]可以移动到停留点".."Z_"..pos_z.."X_"..pos_x)
			if not LF_IsGadgetCrystal(context, gadget_graph[pos_z][pos_x]) then
				for k,v in pairs(_cvt_graph) do
					if v.z == pos_z and v.x == pos_x then 
	--					ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电桩]目标点有一个电桩了，不移动")
						return 0
					end
				end
			--记录一下目标点
				ScriptLib.SetGroupTempValue(context, "Move_Target_Point", waypoint_graph[pos_z][pos_x], {})
				return {cur_point, waypoint_graph[pos_z][pos_x]}
			else
				return 0
			end 
		end
	end
end
--根据点的位置获取xz坐标
function LF_GetWaypointPos(point_id)
	for z = 1,defs.len_z do
		for x = 1,defs.len_x do
			if waypoint_graph[z][x] == point_id then 
				return {z,x}
			end
		end
	end
end

--======================================================================================================================
--全量检查当前电路的连接情况
function LF_CheckConnection(context)
	--每个电源都走一个递归检测逻辑
	--递归次数清零
	local _cvt_graph = LF_RefreshGlobalConverterList(context)
	--建立一个每个电线的状态表,记为0 关闭
	for z = 1, defs.len_z do
		_G_pipe_state[z] = {}
		for x = 1, defs.len_x do
			_G_pipe_state[z][x] = 0
		end
	end

	for emt_id,emt_pos in pairs(emitter_infos) do
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[检查连接]检查电路连通,起点"..emt_id)
		--更新电流方向
		_G_ec_dir = emt_pos.dir
		_G_recur_counter = 0 
		--检测一下电源的状态，
		if LF_IsGeneratorOn(context, emt_id) then 
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[检查连接]开始打开电线")
			LF_RunEC(context, emt_pos, true, _cvt_graph)
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[检查连接]检查完成")
		else
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[检查连接]开始关闭电线")
			LF_RunEC(context, emt_pos, false, _cvt_graph)
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[检查连接]检查完成")
		end
	end

	--刷新所有电线状态
	for z=1,defs.len_z do
		for x=1,defs.len_x do
			if gadget_graph[z][x] ~= 0 then
				if connected_graph[z][x] == NODE.N_Pipe or connected_graph[z][x] == NODE.N_Node then 
					if _G_pipe_state[z][x] > 0 then 
						ScriptLib.SetGadgetStateByConfigId(context, gadget_graph[z][x], 201)
						ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[检查连接]刷新物件状态"..gadget_graph[z][x])
					else
						ScriptLib.SetGadgetStateByConfigId(context, gadget_graph[z][x], 0)
					end
				end
			end
		end
	end
end

--从一个点出发，更新电流信息,递归处理
function LF_RunEC(context, ec_pos, is_on, _cvt_graph) 
	_G_recur_counter = _G_recur_counter + 1
	if _G_recur_counter >= defs.len_x*defs.len_z then 
		return false
	end 
	ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]步长".._G_recur_counter.."电流方向".._G_ec_dir.."当前位置z"..ec_pos.z.."当前位置x"..ec_pos.x)
	for cfg_id,cvt_pos in pairs(_cvt_graph) do
		--找有没有对应的转接器
		if cvt_pos.x == ec_pos.x and cvt_pos.z == ec_pos.z then
			--判断电桩有没有结晶化
			if 0 ~= ScriptLib.GetGadgetAbilityFloatValue(context, base_info.group_id, cfg_id, "GV_TMHY_CRYSTAL") then 
				ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]走到了一个结晶化的电桩")
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, cfg_id, "SGV_PowerOn", 0)
				return false
			end
			--更新一下电流方向 
			_G_ec_dir = cvt_pos.dir
			--更新电桩状态
			if is_on then
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, cfg_id, "SGV_PowerOn", 1)
			else
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, cfg_id, "SGV_PowerOn", 0)
			end
		end
	end
	--获取电流的所在节点
	local pos_x = ec_pos.x
	local pos_z = ec_pos.z
	--根据方向流动电流
	if _G_ec_dir == DIR.Up then 
		pos_z = pos_z + 1
	end
	if _G_ec_dir == DIR.Down then 
		pos_z = pos_z - 1
	end
	if _G_ec_dir == DIR.Left then 
		pos_x = pos_x - 1
	end
	if _G_ec_dir == DIR.Right then 
		pos_x = pos_x + 1
	end
	--检查是否越界,越界检查尝试转弯
	if pos_z < 1 or pos_z > defs.len_z or pos_x < 1 or pos_x > defs.len_x then 
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]走到了尽头，尝试拐弯")
		local try_turn_ec = LF_TurnEcDir(context, ec_pos) 
		if try_turn_ec.dir == DIR.None then 
			return false
		else
			_G_ec_dir = try_turn_ec.dir
			return LF_RunEC(context, ec_pos, is_on, _cvt_graph)
		end
	end
	--下一个点的信息判断
	if connected_graph[pos_z][pos_x] == NODE.Off then 
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]走到了断路，尝试拐弯")
		local try_turn_ec = LF_TurnEcDir(context, ec_pos) 
		if try_turn_ec.dir == DIR.None then 
			return false
		else
			_G_ec_dir = try_turn_ec.dir
			return LF_RunEC(context, ec_pos, is_on, _cvt_graph)
		end
	end

	if connected_graph[pos_z][pos_x] == NODE.Power then 
		return false
	end

	if connected_graph[pos_z][pos_x] == NODE.N_Pipe then 
		if is_on then 
			_G_pipe_state[pos_z][pos_x] = _G_pipe_state[pos_z][pos_x] + 1 
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]记录电线打开"..gadget_graph[pos_z][pos_x])
		end
		return LF_RunEC(context, {z = pos_z,x = pos_x}, is_on, _cvt_graph)
	end

	if connected_graph[pos_z][pos_x] == NODE.C_Node or connected_graph[pos_z][pos_x] == NODE.N_Node then 
		--确认节点有没有结晶化
		if LF_IsGadgetCrystal(context,gadget_graph[pos_z][pos_x]) then 
			--如果是打开，就给这个位置的标记+1
			if is_on then 
				_G_pipe_state[pos_z][pos_x] = _G_pipe_state[pos_z][pos_x] + 1 
				ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]记录节点打开")
			end
		end
		return LF_RunEC(context, {z = pos_z,x = pos_x}, is_on, _cvt_graph)
	end

	if connected_graph[pos_z][pos_x] == NODE.Crystal then 
		if LF_IsGadgetCrystal(context, gadget_graph[pos_z][pos_x]) then 
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]走到了结晶")
			return false 
		else
			LF_RunEC(context, {z = pos_z,x = pos_x}, is_on, _cvt_graph)
		end
	end
	--到达了接收器
	if connected_graph[pos_z][pos_x] == NODE.N_Rec or connected_graph[pos_z][pos_x] == NODE.C_Rec then 
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]到达终点")
		if LF_IsGadgetCrystal(context, gadget_graph[pos_z][pos_x]) then  
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]到达终点,终点被结晶化,连接失败")
			return false
		else
			if is_on then
				ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]接收器打开")
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, gadget_graph[pos_z][pos_x], "SGV_PowerOn", 1)
				ScriptLib.SetGadgetStateByConfigId(context, gadget_graph[pos_z][pos_x], 201)
			else
				ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]接收器关闭")
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, gadget_graph[pos_z][pos_x], "SGV_PowerOn", 0)
				ScriptLib.SetGadgetStateByConfigId(context, gadget_graph[pos_z][pos_x], 0)
			end
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]连接完毕")
			return true
		end
	end
	if connected_graph[pos_z][pos_x] == NODE.Sy_P_Node or connected_graph[pos_z][pos_x] == NODE.Sy_C_Node then 
--		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]到达终点")
		if LF_IsGadgetCrystal(context, gadget_graph[pos_z][pos_x]) then  
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]到达终点,终点被结晶化,连接失败")
			return false
		else
			if is_on then
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, gadget_graph[pos_z][pos_x], "SGV_PowerOn", 1)
			else
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, gadget_graph[pos_z][pos_x], "SGV_PowerOn", 0)
			end
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电路]连接完毕")
			return true
		end
	end
end

--电流在走到头时自动检测是否转向
function LF_TurnEcDir(context, cur_pos) 
	--原来的电流是上下的，尝试左右移动
	ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]尝试扭转电流")
	local can_turn_dir = 0
	if _G_ec_dir == DIR.Up or _G_ec_dir == DIR.Down then  
		--尝试向右转动电流
		if (cur_pos.x + 1) <= defs.len_x and (cur_pos.x + 1) >= 1 then 
			if connected_graph[cur_pos.z][cur_pos.x + 1] >= 1  then 
				can_turn_dir = can_turn_dir + 1
			end
		end
		--尝试向左转动电流
		if (cur_pos.x - 1) >= 1 and (cur_pos.x - 1) <= defs.len_x then 
			if connected_graph[cur_pos.z][cur_pos.x - 1] >= 1  then 
				can_turn_dir = can_turn_dir + 10
			end
		end
		--电流上下都没法转或者都能转
		if can_turn_dir  == 11 or can_turn_dir == 0 then 
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]不转") 
			return {dir = DIR.None,z =  cur_pos.z, x = cur_pos.x}
		else
			if can_turn_dir == 1 then
				ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]右转")
				return {dir = DIR.Right,z = cur_pos.z,x = cur_pos.x + 1}
			end
			if can_turn_dir == 10 then
				ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]左转")
				return {dir = DIR.Left,z =  cur_pos.z,x = cur_pos.x - 1}
			end
		end
	end 
	if _G_ec_dir == DIR.Left or _G_ec_dir == DIR.Right then
		--尝试向上转动电流
		if (cur_pos.z + 1) <= defs.len_z and (cur_pos.z + 1) >= 1 then 
			if connected_graph[cur_pos.z+1][cur_pos.x] >= 1  then 
				can_turn_dir = can_turn_dir + 1
			end
		end
		--尝试向下转动电流
		if (cur_pos.z - 1) >= 1 and (cur_pos.z - 1) <= defs.len_z then 
			if connected_graph[cur_pos.z-1][cur_pos.x] >= 1  then 
				can_turn_dir = can_turn_dir + 10
			end
		end
		--电流上下都没法转或者都能转
		if can_turn_dir  == 11 or can_turn_dir == 0 then
			ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]不转") 
			return {dir = DIR.None, z = cur_pos.z, x = cur_pos.x }
		else
			if can_turn_dir == 1 then
				ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]上转")
				return {dir = DIR.Up,z =  cur_pos.z + 1,x = cur_pos.x }
			end
			if can_turn_dir == 10 then
				ScriptLib.PrintContextLog(context, "##[EnergyTrans]:[电流]下转")
				return {dir = DIR.Down,z =  cur_pos.z - 1,x = cur_pos.x }
			end
		end
	end 
	
end

--判断一个节点或者电源是否被结晶化
function LF_IsGadgetCrystal(context, gadget_cid)
	if 0 == ScriptLib.GetGadgetAbilityFloatValue(context, base_info.group_id, gadget_cid, "GV_TMHY_CRYSTAL") then 
		return false
	else
		return true
	end
end

--判断电源是否通电,201为电源打开，GV为0时非结晶化
function LF_IsGeneratorOn(context, gen_id)
	if 0 == ScriptLib.GetGroupTempValue(context, "GenState"..gen_id, {base_info.group_id}) then 
		return false
	else
		return true
	end 
end
--======================================================================================================================

--======================================================================================================================
--计算玩家和电桩的相对位置
--根据玩家和电桩的坐标获取对应的夹角，计算出电桩移动的位置
function LF_CalcDirection(context, uid, cvt_id)
	local avatar_pos = LF_GetEntityPos(context, context.uid, 0)
	local conver_pos = LF_GetEntityPos(context, 0, cvt_id)
	local vec_axis_OZ = {x = (axis_Z.x - axis_O.x), z = (axis_Z.z - axis_O.z)}
	local vec_axis_OX = {x = (axis_X.x - axis_O.x), z = (axis_X.z - axis_O.z)}
	local vec_cvt2avt = {x = (avatar_pos.x - conver_pos.x), z = (avatar_pos.z - conver_pos.z)}
	local deg_avt2OZ = LF_ClacAngle(vec_axis_OZ, vec_cvt2avt)
	local deg_avt2OX = LF_ClacAngle(vec_axis_OX, vec_cvt2avt)
	if 0 <= deg_avt2OZ and deg_avt2OZ <= 45 then 
		ScriptLib.PrintContextLog(context,  "##[EnergyTrans]:向后推动")
		return DIR.Down
	end
	if 45 < deg_avt2OZ and  deg_avt2OZ < 135 then 
		if 0 <= deg_avt2OX and deg_avt2OX <= 45 then 
			ScriptLib.PrintContextLog(context,  "##[EnergyTrans]:向左推动")
			return DIR.Left
		end 
		if 135 <= deg_avt2OX and deg_avt2OX <= 180 then 
			ScriptLib.PrintContextLog(context,  "##[EnergyTrans]:向右推动")
			return DIR.Right
		end 
	end
	if 135 <= deg_avt2OZ and deg_avt2OZ <= 180 then 
		ScriptLib.PrintContextLog(context,  "##[EnergyTrans]:向前推动")
		return DIR.Up
	end
end

--计算向量夹角
function LF_ClacAngle(vec1, vec2)
	local vec_cos = (vec1.x*vec2.x + vec1.z*vec2.z)/(math.sqrt( vec1.x^2 + vec1.z^2 )*math.sqrt( vec2.x^2 + vec2.z^2))
	return (math.acos(vec_cos)/math.pi*180)
end

--拿到实体位置
function LF_GetEntityPos(context, uid, cid)
	ScriptLib.PrintContextLog(context,  "##[EnergyTrans]:获取坐标")
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
		ScriptLib.PrintContextLog(context, "##[EnergyTrans]:获取坐标失败，报错")
		_res.error = 1
		return _res
	end
	_res.x = _array.x
	_res.y = _array.y
	_res.z = _array.z
	return _res
end

--======================================================================================================================
--切分和储存电桩数据
--|移动类型 1位|GadgetState 1位|Pos_Z 2位|Pos_X 2位|
--|1移动  2固定|State 0 1 2 3代表朝向 
--切分储存的数据
function LF_GetConverterData(context, config_id)
	local cvt_archive_int = ScriptLib.GetGroupVariableValue(context, "converter_"..tostring(config_id))
	local cvt_archive_str = tostring(math.ceil(cvt_archive_int))
	return { cvt_type = tonumber(string.sub(cvt_archive_str,1,1)), 
				dir = tonumber(string.sub(cvt_archive_str,2,2)), 
				z = tonumber(string.sub(cvt_archive_str,3,4)), 
				x = tonumber(string.sub(cvt_archive_str,5,6))}
end

--数据储存
function LF_SetConverterData( context, config_id, data_type, data_info)
	local cvt_archive_int = ScriptLib.GetGroupVariableValue(context, "converter_"..tostring(config_id))
	local cvt_archive_str = tostring(math.ceil(cvt_archive_int))
	local cvt_new_archive_str = ""
	if data_type == "Gadget_State" then 
		cvt_new_archive_str = table.concat({string.sub(cvt_archive_str,1,1), tostring(data_info), string.sub(cvt_archive_str,3,6)})
		ScriptLib.SetGroupVariableValue(context, "converter_"..config_id,  math.ceil( tonumber(cvt_new_archive_str)) )
	end
	if data_type == "Gadget_Pos" then
		local cvt_pos_new_z = ""
		local cvt_pos_new_x = ""
		if data_info.pos_z < 10 then 
			cvt_pos_new_z = "0"..tostring(data_info.pos_z)
		else
			cvt_pos_new_z = tostring(data_info.pos_z)
		end
		if data_info.pos_x < 10 then 
			cvt_pos_new_x = "0"..tostring(data_info.pos_x)
		else
			cvt_pos_new_x = tostring(data_info.pos_x)
		end
		cvt_new_archive_str = table.concat({string.sub(cvt_archive_str,1,2), cvt_pos_new_z, cvt_pos_new_x})
		ScriptLib.SetGroupVariableValue(context, "converter_"..config_id,  math.ceil( tonumber(cvt_new_archive_str)) )
	end
end
--======================================================================================================================
ET_Initialize()