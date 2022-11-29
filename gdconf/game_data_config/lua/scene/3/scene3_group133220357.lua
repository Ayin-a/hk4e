-- 基础信息
local base_info = {
	group_id = 133220357
}

-- Trigger变量
local defs = {
	group_ID = 133220357,
	gadget_11 = 357001,
	gadget_12 = 357002,
	gadget_13 = 357003,
	gadget_14 = 357004,
	gadget_21 = 357006,
	gadget_22 = 357007,
	gadget_23 = 357008,
	gadget_24 = 357009,
	gadget_31 = 357011,
	gadget_32 = 357012,
	gadget_33 = 357013,
	gadget_34 = 357014,
	gadget_41 = 357016,
	gadget_42 = 357017,
	gadget_43 = 357018,
	gadget_44 = 357019,
	trigger_boarder = 357027,
	gadget_starter = 0,
	gadget_ender = 0
}

-- DEFS_MISCS
local matrix = 
{
{defs.gadget_11,defs.gadget_12,defs.gadget_13,defs.gadget_14},

{defs.gadget_21,defs.gadget_22,defs.gadget_23,defs.gadget_24},

{defs.gadget_31,defs.gadget_32,defs.gadget_33,defs.gadget_34},

{defs.gadget_41,defs.gadget_42,defs.gadget_43,defs.gadget_44}

}


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
				ScriptLib.SetGadgetStateByConfigId(context, iv, 201)
			end
		end
	end
	ScriptLib.PrintContextLog(context,"Faild Process End : "..str)
	ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
	ScriptLib.SetGroupVariableValue(context, "start_enter", 0)
	ScriptLib.InitTimeAxis(context, "Reset", {1}, false)
end


function LuaCallFail(context)
	--物件调用
	--如果踩到禁用格，且正在挑战中，则走一下失败流程
	if ScriptLib.GetGroupVariableValue(context, "challenge_state")==1 then
	FaildProcess(context,"踩到空方块")
	end
	return 0
end

function LookUpPosByConfigID(context,config_id)
	local pos
		for x=1,#matrix do
			for y=1,#matrix[x] do
				if config_id == matrix[x][y] then 
					pos = x*10+y
				end
			end
		end
	return pos
end

--检测玩法是否成功
function CheckIsSuccess(context)
	local score=0
	local state=nil
	local maxscore = #matrix * #matrix[1]

	for i=1,#matrix do
		for j=1,#matrix[i] do
			state=ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID,matrix[i][j]) 
			if state==202 or state==903 then
				score=score+1
			end
		end
	end

	if score>= maxscore then
		for i=1,#matrix do
			for j=1,#matrix[i] do
				if ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID,matrix[i][j]) ~= 903 then
				ScriptLib.SetGadgetStateByConfigId(context, matrix[i][j], 901)
				end
			end
		end
		ScriptLib.SetGroupVariableValue(context, "challenge_state", 2)
		--ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		
		ScriptLib.SetGroupVariableValue(context, "successed", 1)
		ScriptLib.InitTimeAxis(context, "Finish", {2}, false)
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

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 357001, gadget_id = 70360186, pos = { x = -1856.657, y = 193.381, z = -4222.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 357002, gadget_id = 70360186, pos = { x = -1856.656, y = 193.381, z = -4224.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 357003, gadget_id = 70360186, pos = { x = -1856.657, y = 193.381, z = -4226.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 357004, gadget_id = 70360186, pos = { x = -1856.656, y = 193.381, z = -4228.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 357006, gadget_id = 70360186, pos = { x = -1858.711, y = 193.381, z = -4222.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 357007, gadget_id = 70360186, pos = { x = -1858.711, y = 193.381, z = -4224.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 357008, gadget_id = 70360186, pos = { x = -1858.710, y = 193.381, z = -4226.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 357009, gadget_id = 70360186, pos = { x = -1858.710, y = 193.381, z = -4228.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 357011, gadget_id = 70360186, pos = { x = -1860.787, y = 193.381, z = -4222.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 357012, gadget_id = 70360186, pos = { x = -1860.787, y = 193.381, z = -4224.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 357013, gadget_id = 70360186, pos = { x = -1860.786, y = 193.381, z = -4226.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 357014, gadget_id = 70360186, pos = { x = -1860.787, y = 193.381, z = -4228.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 357016, gadget_id = 70360186, pos = { x = -1862.886, y = 193.381, z = -4222.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 357017, gadget_id = 70360186, pos = { x = -1862.885, y = 193.381, z = -4224.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 357018, gadget_id = 70360186, pos = { x = -1862.885, y = 193.381, z = -4226.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 357019, gadget_id = 70360186, pos = { x = -1862.887, y = 193.381, z = -4228.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 357031, gadget_id = 70360079, pos = { x = -1858.233, y = 197.265, z = -4234.358 }, rot = { x = 0.000, y = 0.320, z = 0.000 }, level = 32, persistent = true, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 357027, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1859.910, y = 193.270, z = -4224.878 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1357005, name = "VARIABLE_CHANGE_357005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_357005", action = "action_EVENT_VARIABLE_CHANGE_357005", trigger_count = 0 },
	-- 玩法流程判断
	{ config_id = 1357010, name = "GADGET_STATE_CHANGE_357010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_357010", action = "action_EVENT_GADGET_STATE_CHANGE_357010", trigger_count = 0 },
	-- 断线重连后,如果当前状态是已经完成玩法, 此时直接发送一个事件
	{ config_id = 1357015, name = "GROUP_LOAD_357015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_357015", trigger_count = 0 },
	-- 根据var改变Gadget状态1
	{ config_id = 1357020, name = "VARIABLE_CHANGE_357020", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_357020", action = "action_EVENT_VARIABLE_CHANGE_357020", trigger_count = 0 },
	-- 根据var改变Gadget状态2
	{ config_id = 1357021, name = "VARIABLE_CHANGE_357021", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_357021", action = "action_EVENT_VARIABLE_CHANGE_357021", trigger_count = 0 },
	-- 根据var改变Gadget状态3
	{ config_id = 1357022, name = "VARIABLE_CHANGE_357022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_357022", action = "action_EVENT_VARIABLE_CHANGE_357022", trigger_count = 0 },
	-- 根据var改变Gadget状态4
	{ config_id = 1357023, name = "VARIABLE_CHANGE_357023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_357023", action = "action_EVENT_VARIABLE_CHANGE_357023", trigger_count = 0 },
	{ config_id = 1357027, name = "LEAVE_REGION_357027", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_357027", action = "action_EVENT_LEAVE_REGION_357027", trigger_count = 0 },
	-- 【后果自负】检测玩法成功的Trigger。如果你希望在玩法成功后再做某些事，将这个Trigger挪到suite2里，并在action里写上你想做的事。
	{ config_id = 1357028, name = "VARIABLE_CHANGE_357028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_357028", action = "action_EVENT_VARIABLE_CHANGE_357028" },
	{ config_id = 1357032, name = "GROUP_LOAD_357032", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_357032", action = "action_EVENT_GROUP_LOAD_357032", trigger_count = 0 },
	-- 表现保护
	{ config_id = 1357033, name = "TIME_AXIS_PASS_357033", event = EventType.EVENT_TIME_AXIS_PASS, source = "Reset", condition = "condition_EVENT_TIME_AXIS_PASS_357033", action = "action_EVENT_TIME_AXIS_PASS_357033", trigger_count = 0 },
	-- 收到完成消息后转换到Suite3
	{ config_id = 1357034, name = "TIME_AXIS_PASS_357034", event = EventType.EVENT_TIME_AXIS_PASS, source = "Finish", condition = "", action = "action_EVENT_TIME_AXIS_PASS_357034", trigger_count = 0 },
	{ config_id = 1357035, name = "GADGET_STATE_CHANGE_357035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_357035", action = "action_EVENT_GADGET_STATE_CHANGE_357035", trigger_count = 0 },
	-- 回滚阶段二
	{ config_id = 1357040, name = "GROUP_LOAD_357040", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_357040", action = "action_EVENT_GROUP_LOAD_357040", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "successed", value = 0, no_refresh = true },
	{ config_id = 2, name = "challenge_state", value = 0, no_refresh = false },
	{ config_id = 3, name = "current_stone", value = 0, no_refresh = false },
	{ config_id = 4, name = "starter_id", value = 0, no_refresh = false },
	{ config_id = 5, name = "start_enter", value = 0, no_refresh = false },
	{ config_id = 6, name = "open", value = 0, no_refresh = true },
	{ config_id = 7, name = "stone1", value = 0, no_refresh = true },
	{ config_id = 8, name = "stone2", value = 0, no_refresh = true },
	{ config_id = 9, name = "stone3", value = 0, no_refresh = true },
	{ config_id = 10, name = "stone4", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 357026, gadget_id = 70211111, pos = { x = -1861.208, y = 193.346, z = -4234.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 3,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 357001, state = 201 },
			{ config_id = 357002, state = 201 },
			{ config_id = 357003, state = 201 },
			{ config_id = 357004, state = 201 },
			{ config_id = 357006, state = 201 },
			{ config_id = 357007, state = 0 },
			{ config_id = 357008, state = 0 },
			{ config_id = 357009, state = 201 },
			{ config_id = 357011, state = 201 },
			{ config_id = 357012, state = 0 },
			{ config_id = 357013, state = 0 },
			{ config_id = 357014, state = 201 },
			{ config_id = 357016, state = 201 },
			{ config_id = 357017, state = 201 },
			{ config_id = 357018, state = 201 },
			{ config_id = 357019, state = 201 },
			{ config_id = 357031, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_357005", "VARIABLE_CHANGE_357020", "VARIABLE_CHANGE_357021", "VARIABLE_CHANGE_357022", "VARIABLE_CHANGE_357023", "GADGET_STATE_CHANGE_357035", "GROUP_LOAD_357040" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "successed", value = 0, no_refresh = true },
			{ config_id = 2, name = "challenge_state", value = 0, no_refresh = false },
			{ config_id = 3, name = "current_stone", value = 0, no_refresh = false },
			{ config_id = 4, name = "starter_id", value = 0, no_refresh = false },
			{ config_id = 5, name = "start_enter", value = 0, no_refresh = false },
			{ config_id = 6, name = "open", value = 0, no_refresh = true },
			{ config_id = 7, name = "stone1", value = 0, no_refresh = true },
			{ config_id = 8, name = "stone2", value = 0, no_refresh = true },
			{ config_id = 9, name = "stone3", value = 0, no_refresh = true },
			{ config_id = 10, name = "stone4", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 357001, state = 201 },
			{ config_id = 357002, state = 201 },
			{ config_id = 357003, state = 201 },
			{ config_id = 357004, state = 201 },
			{ config_id = 357006, state = 201 },
			{ config_id = 357007, state = 201 },
			{ config_id = 357008, state = 201 },
			{ config_id = 357009, state = 201 },
			{ config_id = 357011, state = 201 },
			{ config_id = 357012, state = 201 },
			{ config_id = 357013, state = 201 },
			{ config_id = 357014, state = 201 },
			{ config_id = 357016, state = 201 },
			{ config_id = 357017, state = 201 },
			{ config_id = 357018, state = 201 },
			{ config_id = 357019, state = 201 },
			{ config_id = 357031, state = 0 }
		},
		monsters = {
		},
		regions = { 357027 },
		triggers = { "GADGET_STATE_CHANGE_357010", "GROUP_LOAD_357015", "LEAVE_REGION_357027", "VARIABLE_CHANGE_357028", "GROUP_LOAD_357032", "TIME_AXIS_PASS_357033", "TIME_AXIS_PASS_357034" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "successed", value = 0, no_refresh = true },
			{ config_id = 2, name = "challenge_state", value = 1, no_refresh = false },
			{ config_id = 3, name = "current_stone", value = 0, no_refresh = false },
			{ config_id = 4, name = "starter_id", value = 0, no_refresh = false },
			{ config_id = 5, name = "start_enter", value = 0, no_refresh = false },
			{ config_id = 6, name = "open", value = 0, no_refresh = true },
			{ config_id = 7, name = "stone1", value = 1, no_refresh = true },
			{ config_id = 8, name = "stone2", value = 1, no_refresh = true },
			{ config_id = 9, name = "stone3", value = 1, no_refresh = true },
			{ config_id = 10, name = "stone4", value = 1, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 357031, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_357028", "GROUP_LOAD_357032" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "successed", value = 1, no_refresh = true },
			{ config_id = 2, name = "challenge_state", value = 2, no_refresh = false },
			{ config_id = 3, name = "current_stone", value = 0, no_refresh = false },
			{ config_id = 4, name = "starter_id", value = 0, no_refresh = false },
			{ config_id = 5, name = "start_enter", value = 0, no_refresh = false },
			{ config_id = 6, name = "open", value = 1, no_refresh = true },
			{ config_id = 7, name = "stone1", value = 1, no_refresh = true },
			{ config_id = 8, name = "stone2", value = 1, no_refresh = true },
			{ config_id = 9, name = "stone3", value = 1, no_refresh = true },
			{ config_id = 10, name = "stone4", value = 1, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_357005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challenge_state"为1
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_357005(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133220357, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220659, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_357010(context, evt)
	-- 判断变量"challenge_state"为1
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_357010(context, evt)
		--将初次激活的地板设置为当前的Current_stone
		if evt.param1==202 and evt.param3 == 201 and ScriptLib.GetGroupVariableValue(context, "start_enter") == 0 then
			ScriptLib.SetGroupVariableValue(context, "start_enter", 1)
			local pos = LookUpPosByConfigID(context,evt.param2)
			ScriptLib.SetGroupVariableValue(context, "current_stone", pos)
		end
		
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

-- 触发操作
function action_EVENT_GROUP_LOAD_357015(context, evt)
		if ScriptLib.GetGroupVariableValue(context, "successed") == 1 then 
			ScriptLib.InitTimeAxis(context, "Finish", {2}, false)
		end
		return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_357020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challenge_state"为0
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 0 then
			return false
	end
	
	-- 判断变量"stone1"为1
	if ScriptLib.GetGroupVariableValue(context, "stone1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_357020(context, evt)
	-- 将configid为 357007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_357021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challenge_state"为0
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 0 then
			return false
	end
	
	-- 判断变量"stone2"为1
	if ScriptLib.GetGroupVariableValue(context, "stone2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_357021(context, evt)
	-- 将configid为 357012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_357022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challenge_state"为0
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 0 then
			return false
	end
	
	-- 判断变量"stone3"为1
	if ScriptLib.GetGroupVariableValue(context, "stone3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_357022(context, evt)
	-- 将configid为 357013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_357023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challenge_state"为0
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 0 then
			return false
	end
	
	-- 判断变量"stone4"为1
	if ScriptLib.GetGroupVariableValue(context, "stone4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_357023(context, evt)
	-- 将configid为 357008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_357027(context, evt)
	-- 判断变量"challenge_state"为1
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 1 then
			return false
	end
	
	-- 判断变量"successed"为0
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_357027(context, evt)
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_357028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_357028(context, evt)
	-- 将configid为 357031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332203571") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_357032(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_357032(context, evt)
	-- 将configid为 357031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332203571") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_357033(context, evt)
	
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 1 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_357033(context, evt)
	-- 将本组内变量名为 "challenge_state" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge_state", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_357034(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133220357, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_357035(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133220357, 357007) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133220357, 357008) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133220357, 357012) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133220357, 357013) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_357035(context, evt)
	-- 将本组内变量名为 "challenge_state" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge_state", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_357040(context, evt)
	-- 判断变量"challenge_state"为1
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_357040(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133220357, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220659, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end