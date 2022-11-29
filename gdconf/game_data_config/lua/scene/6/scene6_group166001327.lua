-- 基础信息
local base_info = {
	group_id = 166001327
}

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
	{ config_id = 327001, gadget_id = 70710703, pos = { x = 457.500, y = 482.627, z = 522.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	-- Room1
	{ config_id = 327002, gadget_id = 70710702, pos = { x = 453.280, y = 475.962, z = 460.290 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	-- Room2
	{ config_id = 327003, gadget_id = 70710702, pos = { x = 518.179, y = 475.525, z = 523.730 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	-- Room3
	{ config_id = 327004, gadget_id = 70710702, pos = { x = 457.110, y = 475.284, z = 587.150 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	-- Room4
	{ config_id = 327005, gadget_id = 70710702, pos = { x = 390.570, y = 475.119, z = 523.582 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	-- Room1
	{ config_id = 327013, gadget_id = 70710727, pos = { x = 453.240, y = 477.440, z = 460.190 }, rot = { x = 86.500, y = 13.230, z = 0.000 }, level = 36, area_id = 300 },
	-- Room2
	{ config_id = 327014, gadget_id = 70710727, pos = { x = 518.010, y = 477.020, z = 523.780 }, rot = { x = 85.464, y = 270.000, z = 0.000 }, level = 36, area_id = 300 },
	-- Room3
	{ config_id = 327015, gadget_id = 70710727, pos = { x = 457.120, y = 476.800, z = 587.060 }, rot = { x = 276.114, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- Room4
	{ config_id = 327016, gadget_id = 70710727, pos = { x = 390.770, y = 476.730, z = 523.582 }, rot = { x = 0.000, y = 0.000, z = 275.745 }, level = 36, area_id = 300 },
	-- Room1 To C
	{ config_id = 327017, gadget_id = 70710728, pos = { x = 457.103, y = 490.180, z = 487.540 }, rot = { x = 80.000, y = 180.000, z = 180.000 }, level = 36, area_id = 300 },
	-- Room2 To C
	{ config_id = 327018, gadget_id = 70710728, pos = { x = 493.430, y = 490.180, z = 523.015 }, rot = { x = 0.000, y = 0.000, z = 100.000 }, level = 36, area_id = 300 },
	-- Room3 To C
	{ config_id = 327019, gadget_id = 70710728, pos = { x = 457.103, y = 490.460, z = 560.370 }, rot = { x = 280.000, y = 180.000, z = 180.000 }, level = 36, area_id = 300 },
	-- Room4 To C
	{ config_id = 327020, gadget_id = 70710728, pos = { x = 419.600, y = 490.460, z = 523.015 }, rot = { x = 0.000, y = 0.000, z = 260.000 }, level = 36, area_id = 300 },
	-- Room1 To C
	{ config_id = 327021, gadget_id = 70710704, pos = { x = 456.799, y = 476.040, z = 475.749 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 300 },
	-- Room2 To C
	{ config_id = 327022, gadget_id = 70710704, pos = { x = 502.319, y = 476.040, z = 523.730 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 300 },
	-- Room3 To C
	{ config_id = 327023, gadget_id = 70710704, pos = { x = 457.110, y = 476.040, z = 571.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- Room4 To C
	{ config_id = 327024, gadget_id = 70710704, pos = { x = 406.560, y = 476.040, z = 523.582 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 36, area_id = 300 },
	-- C To Room1
	{ config_id = 327025, gadget_id = 70710704, pos = { x = 457.103, y = 487.980, z = 487.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- C To Room2
	{ config_id = 327026, gadget_id = 70710704, pos = { x = 493.840, y = 487.980, z = 523.015 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 36, area_id = 300 },
	-- C To Room3
	{ config_id = 327027, gadget_id = 70710704, pos = { x = 457.103, y = 487.980, z = 560.705 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 300 },
	-- C To Room4
	{ config_id = 327028, gadget_id = 70710704, pos = { x = 419.390, y = 487.980, z = 523.015 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 327057, gadget_id = 70710725, pos = { x = 457.500, y = 499.911, z = 522.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 327058, gadget_id = 70690008, pos = { x = 498.515, y = 453.000, z = 544.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 327059, gadget_id = 70690008, pos = { x = 480.234, y = 452.000, z = 558.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- Room1 To C
	{ config_id = 327060, gadget_id = 70710731, pos = { x = 457.103, y = 490.180, z = 487.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- Room2 To C
	{ config_id = 327062, gadget_id = 70710731, pos = { x = 493.430, y = 490.180, z = 523.015 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 36, area_id = 300 },
	-- Room3 To C
	{ config_id = 327063, gadget_id = 70710731, pos = { x = 457.103, y = 490.460, z = 560.370 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 300 },
	-- Room4 To C
	{ config_id = 327064, gadget_id = 70710731, pos = { x = 419.600, y = 490.460, z = 523.015 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 300 },
	-- Room1
	{ config_id = 327065, gadget_id = 70710731, pos = { x = 456.799, y = 478.330, z = 475.749 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 300 },
	-- Room2
	{ config_id = 327066, gadget_id = 70710731, pos = { x = 502.319, y = 478.250, z = 523.730 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 300 },
	-- Room3
	{ config_id = 327067, gadget_id = 70710731, pos = { x = 457.110, y = 478.510, z = 571.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- Room4
	{ config_id = 327068, gadget_id = 70710731, pos = { x = 406.560, y = 478.300, z = 523.582 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- Room1-净化小机关被破坏-完成战斗分支任务
	{ config_id = 1327006, name = "ANY_GADGET_DIE_327006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_327006", action = "action_EVENT_ANY_GADGET_DIE_327006" },
	-- Room2-净化小机关被破坏-完成战斗分支任务
	{ config_id = 1327007, name = "ANY_GADGET_DIE_327007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_327007", action = "action_EVENT_ANY_GADGET_DIE_327007" },
	-- Room3-净化小机关被破坏-完成战斗分支任务
	{ config_id = 1327008, name = "ANY_GADGET_DIE_327008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_327008", action = "action_EVENT_ANY_GADGET_DIE_327008" },
	-- Room4-净化小机关被破坏-完成战斗分支任务
	{ config_id = 1327009, name = "ANY_GADGET_DIE_327009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_327009", action = "action_EVENT_ANY_GADGET_DIE_327009" },
	-- Q800701开始-切换机关状态，运行全部机关特效
	{ config_id = 1327010, name = "QUEST_START_327010", event = EventType.EVENT_QUEST_START, source = "800701", condition = "", action = "action_EVENT_QUEST_START_327010", trigger_count = 0 },
	-- Q800701完成-切换大净化机关状态-变成被压制的状态
	{ config_id = 1327011, name = "QUEST_FINISH_327011", event = EventType.EVENT_QUEST_FINISH, source = "800701", condition = "", action = "action_EVENT_QUEST_FINISH_327011", trigger_count = 0 },
	-- Q800708完成-改动Progress_Var为3
	{ config_id = 1327012, name = "QUEST_FINISH_327012", event = EventType.EVENT_QUEST_FINISH, source = "800708", condition = "", action = "action_EVENT_QUEST_FINISH_327012", trigger_count = 0 },
	-- Progress_Var=2切换机关状态，运行全部机关特效，大机关改成第二状态
	{ config_id = 1327029, name = "GROUP_REFRESH_327029", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_327029", action = "action_EVENT_GROUP_REFRESH_327029", trigger_count = 0 },
	-- Q800708-破坏任意一个机关之后的reminder
	{ config_id = 1327053, name = "VARIABLE_CHANGE_327053", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_327053", action = "action_EVENT_VARIABLE_CHANGE_327053" },
	-- Q800708-破坏任意第二个机关之后的reminder
	{ config_id = 1327054, name = "VARIABLE_CHANGE_327054", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_327054", action = "action_EVENT_VARIABLE_CHANGE_327054" },
	-- 切换机关状态，运行全部机关特效
	{ config_id = 1327055, name = "VARIABLE_CHANGE_327055", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_327055", action = "action_EVENT_VARIABLE_CHANGE_327055" },
	-- 破坏机关玩法结束之后，切换大净化机关状态-变成默认状态
	{ config_id = 1327056, name = "VARIABLE_CHANGE_327056", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_327056", action = "action_EVENT_VARIABLE_CHANGE_327056" },
	-- Progress_Var=1切换机关状态，运行全部机关特效
	{ config_id = 1327061, name = "GROUP_LOAD_327061", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_327061", action = "action_EVENT_GROUP_LOAD_327061", trigger_count = 0 },
	-- Progress_Var=2切换机关状态，运行全部机关特效，大机关改成第二状态
	{ config_id = 1327069, name = "GROUP_LOAD_327069", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_327069", action = "action_EVENT_GROUP_LOAD_327069", trigger_count = 0 },
	-- Progress_Var=3 全静默，去掉小装置
	{ config_id = 1327070, name = "GROUP_LOAD_327070", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_327070", action = "action_EVENT_GROUP_LOAD_327070", trigger_count = 0 },
	-- Progress_Var=0 全静默，默认状态
	{ config_id = 1327071, name = "GROUP_LOAD_327071", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_327071", action = "action_EVENT_GROUP_LOAD_327071", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Progress_Var", value = 0, no_refresh = true },
	{ config_id = 2, name = "Battle_Var", value = 0, no_refresh = false },
	{ config_id = 3, name = "RoomClear_1", value = 0, no_refresh = true },
	{ config_id = 4, name = "RoomClear_2", value = 0, no_refresh = true },
	{ config_id = 5, name = "RoomClear_3", value = 0, no_refresh = true },
	{ config_id = 6, name = "RoomClear_4", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		-- description = 诅咒净化机关控制Suit,
		monsters = { },
		gadgets = { 327001, 327002, 327003, 327004, 327005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_327006", "ANY_GADGET_DIE_327007", "ANY_GADGET_DIE_327008", "ANY_GADGET_DIE_327009", "QUEST_START_327010", "QUEST_FINISH_327011", "QUEST_FINISH_327012", "GROUP_REFRESH_327029", "VARIABLE_CHANGE_327053", "VARIABLE_CHANGE_327054", "VARIABLE_CHANGE_327055", "VARIABLE_CHANGE_327056", "GROUP_LOAD_327061", "GROUP_LOAD_327069", "GROUP_LOAD_327070", "GROUP_LOAD_327071" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = Room1_能量光线显示控制Suit,
		monsters = { },
		gadgets = { 327013, 327017, 327060, 327065 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = Room2_能量光线显示控制Suit,
		monsters = { },
		gadgets = { 327014, 327018, 327062, 327066 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = Room3_能量光线显示控制Suit,
		monsters = { },
		gadgets = { 327015, 327019, 327063, 327067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = Room4_能量光线显示控制Suit,
		monsters = { },
		gadgets = { 327016, 327020, 327064, 327068 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 深渊传送门控制Suit,
		monsters = { },
		gadgets = { 327021, 327022, 327023, 327024, 327025, 327026, 327027, 327028, 327057 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 327058, 327059 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_327006(context, evt)
	if 327002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_327006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001127") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 327013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 327017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 166001327, EntityType.GADGET, 327060 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 166001327, EntityType.GADGET, 327065 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "Battle_Var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Battle_Var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "RoomClear_1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "RoomClear_1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_327007(context, evt)
	if 327003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_327007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001128") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 327014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 327018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 166001327, EntityType.GADGET, 327062 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 166001327, EntityType.GADGET, 327066 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "Battle_Var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Battle_Var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "RoomClear_2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "RoomClear_2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_327008(context, evt)
	if 327004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_327008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001129") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 327015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 327019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 166001327, EntityType.GADGET, 327063 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 166001327, EntityType.GADGET, 327067 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "Battle_Var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Battle_Var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "RoomClear_3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "RoomClear_3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_327009(context, evt)
	if 327005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_327009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001130") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 327016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 327020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 166001327, EntityType.GADGET, 327064 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 166001327, EntityType.GADGET, 327068 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "Battle_Var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Battle_Var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "RoomClear_4" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "RoomClear_4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_327010(context, evt)
	-- 将本组内变量名为 "Progress_Var" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Progress_Var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_327011(context, evt)
	-- 将configid为 327001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Progress_Var" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Progress_Var", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_327012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 166001327, EntityType.GADGET, 327057 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 166001327, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001327, 7)
	
	-- 将本组内变量名为 "Progress_Var" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Progress_Var", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_327029(context, evt)
	-- 判断变量"Progress_Var"为2
	if ScriptLib.GetGroupVariableValue(context, "Progress_Var") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_327029(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 7)
	
	-- 将configid为 327001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_327053(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Battle_Var"为1
	if ScriptLib.GetGroupVariableValue(context, "Battle_Var") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_327053(context, evt)
	-- 调用提示id为 1110535 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110535) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_327054(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Battle_Var"为2
	if ScriptLib.GetGroupVariableValue(context, "Battle_Var") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_327054(context, evt)
	-- 调用提示id为 1110537 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110537) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_327055(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Progress_Var"为1
	if ScriptLib.GetGroupVariableValue(context, "Progress_Var") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_327055(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 6)
	
	-- 将configid为 327001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_327056(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Progress_Var"为3
	if ScriptLib.GetGroupVariableValue(context, "Progress_Var") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_327056(context, evt)
	-- 将configid为 327001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_327061(context, evt)
	-- 判断变量"Progress_Var"为1
	if ScriptLib.GetGroupVariableValue(context, "Progress_Var") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_327061(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 6)
	
	-- 将configid为 327001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_327069(context, evt)
	-- 判断变量"Progress_Var"为2
	if ScriptLib.GetGroupVariableValue(context, "Progress_Var") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_327069(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001327, 7)
	
	-- 将configid为 327001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_327070(context, evt)
	-- 判断变量"Progress_Var"为3
	if ScriptLib.GetGroupVariableValue(context, "Progress_Var") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_327070(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 166001327, EntityType.GADGET, 327002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 166001327, EntityType.GADGET, 327003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 166001327, EntityType.GADGET, 327004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 166001327, EntityType.GADGET, 327005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 327001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_327071(context, evt)
	-- 判断变量"Progress_Var"为0
	if ScriptLib.GetGroupVariableValue(context, "Progress_Var") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_327071(context, evt)
	-- 将configid为 327001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 327005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end