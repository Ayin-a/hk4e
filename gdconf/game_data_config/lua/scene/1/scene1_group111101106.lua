-- 基础信息
local base_info = {
	group_id = 111101106
}

-- Trigger变量
local defs = {
	groupID = 111101106,
	rewardChestID = 106004,
	isLoop = 0,
	maxCount = 3,
	minCount = 3,
	gadget_1 = 106001,
	gadget_2 = 106002,
	gadget_3 = 106003,
	gadget_4 = 0,
	gadget_5 = 0
}

-- DEFS_MISCS
minCount = 3
gadgetInfo = {	{index = 1, name = "gadget_1"},
					{index = 2, name = "gadget_2"},
					{index = 3, name = "gadget_3"},
					{index = 4, name = "gadget_4"},
					{index = 5, name = "gadget_5"}}

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
	-- 1号石头
	{ config_id = 106001, gadget_id = 70950055, pos = { x = 2635.260, y = 229.527, z = -1327.835 }, rot = { x = 0.000, y = 189.505, z = 0.000 }, level = 1, state = GadgetState.Action03, persistent = true },
	-- 2号石头
	{ config_id = 106002, gadget_id = 70950055, pos = { x = 2634.997, y = 229.516, z = -1330.366 }, rot = { x = 0.000, y = 190.825, z = 0.000 }, level = 1, state = GadgetState.Action02, persistent = true },
	-- 3号石头
	{ config_id = 106003, gadget_id = 70950055, pos = { x = 2634.601, y = 229.662, z = -1332.832 }, rot = { x = 0.000, y = 190.825, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 106007, gadget_id = 70210004, pos = { x = 2631.688, y = 228.163, z = -1329.863 }, rot = { x = 0.000, y = 269.823, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1106004, name = "GADGET_STATE_CHANGE_106004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_106004", action = "action_EVENT_GADGET_STATE_CHANGE_106004", trigger_count = 0 },
	{ config_id = 1106014, name = "GADGET_STATE_CHANGE_106014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_106014", action = "action_EVENT_GADGET_STATE_CHANGE_106014", trigger_count = 0 },
	{ config_id = 1106015, name = "GADGET_STATE_CHANGE_106015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_106015", action = "action_EVENT_GADGET_STATE_CHANGE_106015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
	{ config_id = 2, name = "midChecker", value = 0, no_refresh = true },
	{ config_id = 3, name = "RightChecker", value = 0, no_refresh = true },
	{ config_id = 4, name = "LeftChecker", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 106001, 106002, 106003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_106004", "GADGET_STATE_CHANGE_106014", "GADGET_STATE_CHANGE_106015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 106001, 106002, 106003, 106007 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_106004(context, evt)
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	-- 判断变量"midChecker"为0
	if ScriptLib.GetGroupVariableValue(context, "midChecker") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_106004(context, evt)
		--ScriptLib.PrintLog(evt.param2.."---".."GadgetStateChange Start")	
		--ScriptLib.PrintLog(evt.param2.."---".."GadgetStateChange isActive ~= 1")
		--ScriptLib.CreateGadget(context, { config_id = 106008 })
				local gadgetDefsName=""
				local gadgetID = 0
				local gadgetIndex = 0
				local gadgetRightDefsName = ""
				local gadgetRightIndex = 0
				local gadgetLeftDefsName = ""
				local gadgetLeftIndex = 0
			
				gadgetID = evt.param2
				--检测是哪个Gadget被触发了,并且获取对应的defs中定义的名称
				for k,v in pairs(defs) do
					if v == gadgetID then 
						gadgetDefsName = k
					end
				end
			
					
				--根据触发的Gadget计算周围的联动Gadget,并且获取他们的Index
				for k,v in pairs (gadgetInfo) do 
					if v.name == gadgetDefsName then 
						gadgetIndex = v.index
			
						if defs.isLoop == 0 then
							if v.index <= 1 then
								gadgetLeftIndex = -1
								gadgetRightIndex = gadgetIndex + 1
							elseif v.index >= defs.maxCount then 
								gadgetRightIndex = -1
								gadgetLeftIndex = gadgetIndex - 1
							else
								gadgetLeftIndex = gadgetIndex - 1
								gadgetRightIndex = gadgetIndex + 1
							end
						elseif defs.isLoop == 1 then
							if v.index <= 1 then
								gadgetLeftIndex = defs.maxCount
								gadgetRightIndex = gadgetIndex + 1
							elseif v.index >= defs.maxCount then 
								gadgetRightIndex = 1
								gadgetLeftIndex = gadgetIndex - 1
							else
								gadgetLeftIndex = gadgetIndex - 1
								gadgetRightIndex = gadgetIndex + 1
							end
						end
						break
					end
				end
			
				--判断index是否超界，如果超界则设置对应的ID为0
				if gadgetRightIndex ~= -1 then 
					gadgetRightDefsName = gadgetInfo[gadgetRightIndex].name
				else
					gadgetRightDefsName = nil
				end
	
	
				if gadgetLeftIndex ~= -1 then
					gadgetLeftDefsName = gadgetInfo[gadgetLeftIndex].name
				else
					gadgetLeftDefsName = nil
				end
	
				
				
				
				ScriptLib.SetGroupVariableValue(context, "midChecker", 1)
				--ScriptLib.PrintLog(evt.param2.."---".."GadgetStateChange Ready to change negiborhold")
				--ScriptLib.CreateGadget(context, { config_id = 106009 })
				--设置相连的右边物件状态
				if gadgetRightDefsName ~= nil and ScriptLib.GetGroupVariableValue(context,"isFinished") == 0 then
					ScriptLib.SetGroupVariableValue(context, "RightChecker", 1)
			
					if GadgetState.Default == ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, defs[gadgetRightDefsName]) then
						ScriptLib.SetGadgetStateByConfigId(context, defs[gadgetRightDefsName], GadgetState.Action01)
					elseif GadgetState.Action01 == ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, defs[gadgetRightDefsName]) then
						ScriptLib.SetGadgetStateByConfigId(context, defs[gadgetRightDefsName], GadgetState.Action02)
					elseif GadgetState.Action02 == ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, defs[gadgetRightDefsName]) then
						ScriptLib.SetGadgetStateByConfigId(context, defs[gadgetRightDefsName], GadgetState.Action03)
					elseif GadgetState.Action03 == ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, defs[gadgetRightDefsName]) then
						ScriptLib.SetGadgetStateByConfigId(context, defs[gadgetRightDefsName], GadgetState.Action01)
					end
				end
			
				--设置相连的左边物件状态
				if gadgetLeftDefsName ~= nil and ScriptLib.GetGroupVariableValue(context,"isFinished") == 0 then
					ScriptLib.SetGroupVariableValue(context, "LeftChecker", 1)
					if GadgetState.Default == ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, defs[gadgetLeftDefsName]) then
						ScriptLib.SetGadgetStateByConfigId(context, defs[gadgetLeftDefsName], GadgetState.Action01)
					elseif GadgetState.Action01 == ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, defs[gadgetLeftDefsName]) then
						ScriptLib.SetGadgetStateByConfigId(context, defs[gadgetLeftDefsName], GadgetState.Action02)
					elseif GadgetState.Action02 == ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, defs[gadgetLeftDefsName]) then
						ScriptLib.SetGadgetStateByConfigId(context, defs[gadgetLeftDefsName], GadgetState.Action03)
					elseif GadgetState.Action03 == ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, defs[gadgetLeftDefsName]) then
						ScriptLib.SetGadgetStateByConfigId(context, defs[gadgetLeftDefsName], GadgetState.Action01)
					end
				end
			
			
				--ScriptLib.PrintLog(evt.param2.."---".."GadgetStateChange check allEqual")
				--ScriptLib.CreateGadget(context, { config_id = 106010 })
	
				
				--ScriptLib.CreateGadget(context, { config_id = 106011 })
				--ScriptLib.SetGroupVariableValue(context, "isActive", 0)
				--ScriptLib.CreateGroupTimerEvent(context, 111101106, "isActiveTimer", 1)
				--ScriptLib.PrintLog(evt.param2.."---".."GadgetStateChange Set isActive = 0")
				--ScriptLib.CreateGadget(context, { config_id = 106012 })
				return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_106014(context, evt)
	-- 判断变量"RightChecker"为1
	if ScriptLib.GetGroupVariableValue(context, "RightChecker") ~= 1 then
			return false
	end
	
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_106014(context, evt)
			--检测玩法是否完成
			local allEqual = 1
						
			for i=1,defs.maxCount do
				if ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, defs[gadgetInfo[i].name]) ~= evt.param1 then
					allEqual = 0
					break
				end
			end
		
			
			if allEqual == 1 and ScriptLib.GetGroupVariableValue(context,"isFinished") ~= 1 then 
				ScriptLib.SetGroupVariableValue(context, "isFinished", 1)
				ScriptLib.SetGroupVariableValue(context, "midChecker", 2)
				ScriptLib.SetGroupVariableValue(context, "RightChecker", 2)
				ScriptLib.SetGroupVariableValue(context, "LeftChecker", 2)
		
				--ScriptLib.AddExtraGroupSuite(context, defs.groupID, 2)
				for k,v in pairs(gadgetInfo) do
					if defs[v.name] ~=0 then
						ScriptLib.SetGadgetStateByConfigId(context, defs[v], GadgetState.GearStart)
					end
				end
				
				ScriptLib.GoToGroupSuite(context, defs.groupID, 2)
				
	
				return 0
			end
			---如果玩法没有完成
			ScriptLib.SetGroupVariableValue(context, "RightChecker", 0)
		
			if ScriptLib.GetGroupVariableValue(context,"RightChecker") == 0 and ScriptLib.GetGroupVariableValue(context,"LeftChecker") == 0 then 
				ScriptLib.SetGroupVariableValue(context, "midChecker", 0)
			end
			return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_106015(context, evt)
	-- 判断变量"LeftChecker"为1
	if ScriptLib.GetGroupVariableValue(context, "LeftChecker") ~= 1 then
			return false
	end
	
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_106015(context, evt)
			--检测玩法是否完成
			local allEqual = 1
						
			for i=1,defs.maxCount do
				if ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, defs[gadgetInfo[i].name]) ~= evt.param1 then
					allEqual = 0
					break
				end
			end
		
			
			if allEqual == 1 and ScriptLib.GetGroupVariableValue(context,"isFinished") ~= 1 then 
				ScriptLib.SetGroupVariableValue(context, "isFinished", 1)
				ScriptLib.SetGroupVariableValue(context, "midChecker", 2)
				ScriptLib.SetGroupVariableValue(context, "RightChecker", 2)
				ScriptLib.SetGroupVariableValue(context, "LeftChecker", 2)
				--ScriptLib.AddExtraGroupSuite(context, defs.groupID, 2)
	
				for k,v in pairs(gadgetInfo) do
					if defs[v.name] ~=0 then
						ScriptLib.SetGadgetStateByConfigId(context, defs[v], GadgetState.GearStart)
					end
				end
		
				ScriptLib.GoToGroupSuite(context, defs.groupID, 2)
				
	
				return 0
			end
			---如果玩法没有完成
			ScriptLib.SetGroupVariableValue(context, "LeftChecker", 0)
		
			if ScriptLib.GetGroupVariableValue(context,"RightChecker") == 0 and ScriptLib.GetGroupVariableValue(context,"LeftChecker") == 0 then 
				ScriptLib.SetGroupVariableValue(context, "midChecker", 0)
			end
		
			return 0
end