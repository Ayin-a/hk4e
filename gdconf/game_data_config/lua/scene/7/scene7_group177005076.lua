-- 基础信息
local base_info = {
	group_id = 177005076
}

-- Trigger变量
local defs = {
	pointarray_1 = 700500010
}

-- DEFS_MISCS
local PlatList = {76001,76002,76003,76004,0,76006,76007,76008,76005}
local initPlatList = {0,76002,76003,76001,76006,76005,76004,76007,76008}

local groupID = 177005076
local ArrayID = 700500010

local operatorConfigID = 76010
local successOptionID = 703
local offeringConfigID = 76014
local borderConfigID = 76018
local baseConfigID = 76019
local lastOfferingConfigID = 76011
local completeConfigID = 76016
local centreConfigID = 76030
local successConfigID = 76017


local OptionID = 705   
local RestartOption = 704
local PointList ={
        {pos={x=242.83, y=325.696, z=284.28}, rot={x=0 ,y=306.419, z=0}},
        {pos={x=241.3458, y=325.696, z=282.2683}, rot={x=0 ,y=306.419, z=0}},
        {pos={x=239.865, y=325.696, z=280.259}, rot={x=0 ,y=306.419, z=0}},
        {pos={x=240.81, y=325.696, z=285.76}, rot={x=0 ,y=306.419, z=0}},
        {pos={x=239.3258, y=325.696, z=283.7483}, rot={x=0 ,y=306.419, z=0}},
        {pos={x=237.845, y=325.696, z=281.739}, rot={x=0 ,y=306.419, z=0}},
        {pos={x=238.83, y=325.696, z=287.225}, rot={x=0 ,y=306.419, z=0}},
        {pos={x=237.3458, y=325.696, z=285.2133}, rot={x=0 ,y=306.419, z=0}},
        {pos={x=235.865, y=325.696, z=283.204}, rot={x=0 ,y=306.419, z=0}},
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
	{ config_id = 76001, gadget_id = 70330125, pos = { x = 242.830, y = 325.696, z = 284.280 }, rot = { x = 0.000, y = 306.419, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	{ config_id = 76002, gadget_id = 70330126, pos = { x = 241.346, y = 325.696, z = 282.268 }, rot = { x = 0.000, y = 306.419, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	{ config_id = 76003, gadget_id = 70330127, pos = { x = 239.865, y = 325.696, z = 280.259 }, rot = { x = 0.000, y = 306.419, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	{ config_id = 76004, gadget_id = 70330128, pos = { x = 240.810, y = 325.696, z = 285.760 }, rot = { x = 0.000, y = 306.419, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	{ config_id = 76005, gadget_id = 70330193, pos = { x = 237.845, y = 325.696, z = 281.739 }, rot = { x = 0.000, y = 306.419, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	{ config_id = 76006, gadget_id = 70330130, pos = { x = 235.846, y = 325.696, z = 283.232 }, rot = { x = 0.000, y = 306.419, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	{ config_id = 76007, gadget_id = 70330131, pos = { x = 238.811, y = 325.696, z = 287.253 }, rot = { x = 0.000, y = 306.419, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	{ config_id = 76008, gadget_id = 70330132, pos = { x = 237.327, y = 325.696, z = 285.241 }, rot = { x = 0.000, y = 306.419, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	-- 临时串联任务线用
	{ config_id = 76010, gadget_id = 70360002, pos = { x = 232.023, y = 325.577, z = 286.752 }, rot = { x = 0.000, y = 309.258, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, worktop_config = { is_persistent = true, init_options = { } }, area_id = 210 },
	{ config_id = 76011, gadget_id = 70330210, pos = { x = 239.342, y = 325.721, z = 283.706 }, rot = { x = 0.000, y = 306.310, z = 0.000 }, level = 36, persistent = true, interact_id = 110, area_id = 210 },
	{ config_id = 76014, gadget_id = 70330210, pos = { x = 239.342, y = 325.721, z = 283.706 }, rot = { x = 0.000, y = 306.310, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, interact_id = 109, area_id = 210 },
	{ config_id = 76015, gadget_id = 70290279, pos = { x = 228.186, y = 330.789, z = 292.016 }, rot = { x = 0.000, y = 304.942, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 76016, gadget_id = 70330211, pos = { x = 239.342, y = 325.696, z = 283.706 }, rot = { x = 0.000, y = 306.310, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 76017, gadget_id = 70330214, pos = { x = 239.342, y = 325.696, z = 283.706 }, rot = { x = 0.000, y = 306.310, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 76018, gadget_id = 70330192, pos = { x = 239.342, y = 325.696, z = 283.706 }, rot = { x = 0.000, y = 306.310, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	-- 底板
	{ config_id = 76019, gadget_id = 70330196, pos = { x = 239.333, y = 324.970, z = 283.737 }, rot = { x = 0.000, y = 306.310, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	-- 替代资源
	{ config_id = 76021, gadget_id = 70330211, pos = { x = 239.358, y = 324.704, z = 283.737 }, rot = { x = 0.000, y = 306.310, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 76030, gadget_id = 70330222, pos = { x = 239.342, y = 325.696, z = 283.706 }, rot = { x = 0.000, y = 306.310, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 76032, gadget_id = 70330223, pos = { x = 239.342, y = 325.696, z = 283.706 }, rot = { x = 0.000, y = 306.310, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1076009, name = "GROUP_LOAD_76009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_76009", trigger_count = 0 },
	-- 18：获得最后石板
	{ config_id = 1076013, name = "QUEST_START_76013", event = EventType.EVENT_QUEST_START, source = "7227624", condition = "", action = "action_EVENT_QUEST_START_76013", trigger_count = 0 },
	-- 20：提交最后一块石板
	{ config_id = 1076020, name = "GADGET_STATE_CHANGE_76020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_76020", action = "action_EVENT_GADGET_STATE_CHANGE_76020", trigger_count = 0 },
	-- 19：复原拼图
	{ config_id = 1076022, name = "SELECT_OPTION_76022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_76022", action = "action_EVENT_SELECT_OPTION_76022", trigger_count = 0 },
	-- 21：第二次启动装置
	{ config_id = 1076023, name = "SELECT_OPTION_76023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_76023", action = "action_EVENT_SELECT_OPTION_76023", trigger_count = 0 },
	-- 01：开门保底
	{ config_id = 1076024, name = "QUEST_START_76024", event = EventType.EVENT_QUEST_START, source = "7227603", condition = "", action = "action_EVENT_QUEST_START_76024", trigger_count = 0 },
	-- 13：第一次供奉石板
	{ config_id = 1076025, name = "GADGET_STATE_CHANGE_76025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_76025", action = "action_EVENT_GADGET_STATE_CHANGE_76025", trigger_count = 0 },
	-- 14：拼图完成
	{ config_id = 1076026, name = "VARIABLE_CHANGE_76026", event = EventType.EVENT_VARIABLE_CHANGE, source = "PuzzleFlag", condition = "condition_EVENT_VARIABLE_CHANGE_76026", action = "action_EVENT_VARIABLE_CHANGE_76026", trigger_count = 0 },
	-- 06：和派蒙对话完毕，调查隐藏房间
	{ config_id = 1076027, name = "QUEST_FINISH_76027", event = EventType.EVENT_QUEST_FINISH, source = "7227603", condition = "condition_EVENT_QUEST_FINISH_76027", action = "action_EVENT_QUEST_FINISH_76027", trigger_count = 0 },
	-- 15：第一次失败启动回滚
	{ config_id = 1076028, name = "QUEST_START_76028", event = EventType.EVENT_QUEST_START, source = "7227622", condition = "", action = "action_EVENT_QUEST_START_76028", trigger_count = 0 },
	-- 21：第二次失败启动回滚
	{ config_id = 1076029, name = "QUEST_START_76029", event = EventType.EVENT_QUEST_START, source = "7227625", condition = "", action = "action_EVENT_QUEST_START_76029", trigger_count = 0 },
	-- 20：提交最后一块石板保底
	{ config_id = 1076031, name = "QUEST_START_76031", event = EventType.EVENT_QUEST_START, source = "7227609", condition = "", action = "action_EVENT_QUEST_START_76031", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "PlatPoint1", value = 0, no_refresh = false },
	{ config_id = 2, name = "PlatPoint2", value = 76002, no_refresh = false },
	{ config_id = 3, name = "PlatPoint3", value = 76003, no_refresh = false },
	{ config_id = 4, name = "PlatPoint4", value = 76001, no_refresh = false },
	{ config_id = 5, name = "PlatPoint5", value = 76006, no_refresh = false },
	{ config_id = 6, name = "PlatPoint6", value = 76005, no_refresh = false },
	{ config_id = 7, name = "PlatPoint7", value = 76004, no_refresh = false },
	{ config_id = 8, name = "PlatPoint8", value = 76007, no_refresh = false },
	{ config_id = 9, name = "PlatPoint9", value = 76008, no_refresh = false },
	{ config_id = 10, name = "PuzzleFlag", value = 0, no_refresh = true },
	{ config_id = 11, name = "stageflag", value = 0, no_refresh = true },
	{ config_id = 12, name = "doorflag", value = 0, no_refresh = true },
	{ config_id = 13, name = "questflag", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1076012, name = "SELECT_OPTION_76012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_76012", action = "action_EVENT_SELECT_OPTION_76012", trigger_count = 0 }
	}
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
		-- description = ,
		monsters = { },
		gadgets = { 76010, 76014, 76015, 76017, 76019, 76021, 76032 },
		regions = { },
		triggers = { "GROUP_LOAD_76009", "QUEST_START_76013", "GADGET_STATE_CHANGE_76020", "SELECT_OPTION_76022", "SELECT_OPTION_76023", "QUEST_START_76024", "GADGET_STATE_CHANGE_76025", "VARIABLE_CHANGE_76026", "QUEST_FINISH_76027", "QUEST_START_76028", "QUEST_START_76029", "QUEST_START_76031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 76001, 76002, 76003, 76004, 76005, 76006, 76007, 76008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 76016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 76030 },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_76009(context, evt)
	
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "doorflag", 177005076) == 1 then
	    ScriptLib.KillEntityByConfigId(context, { config_id = 76015 })
	end
	
	
	-- 判断变量"questflag"为13
	if ScriptLib.GetGroupVariableValueByGroup(context, "questflag", 177005076) == 13 then
	    ScriptLib.AddQuestProgress(context, "7227605")
	end
	
	-- 判断变量"questflag"为14
	if ScriptLib.GetGroupVariableValueByGroup(context, "questflag", 177005076) == 14 then
	    ScriptLib.AddQuestProgress(context, "7227605")	
	    ScriptLib.AddQuestProgress(context, "7227621")
	end
	
	-- 判断变量"questflag"为15
	if ScriptLib.GetGroupVariableValueByGroup(context, "questflag", 177005076) == 15 then
	    ScriptLib.AddQuestProgress(context, "7227605")
	    ScriptLib.AddQuestProgress(context, "7227621")
	    ScriptLib.AddQuestProgress(context, "7227622")
	end
	
	return 0
	
	
	
end

-- 触发操作
function action_EVENT_QUEST_START_76013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177005076, 76010, {706}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_76020(context, evt)
	if 76011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_76020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7227609") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177005076, 76010, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_76022(context, evt)
	--联机下不可使用
	if ScriptLib.CheckIsInMpMode(context) then
	    ScriptLib.AssignPlayerShowTemplateReminder(context, 165, {param_vec={},param_uid_vec={},uid_vec={context.uid}})
	    return false 
	end
	
	-- 判断是gadgetid 76010 option_id 706
	if 76010 ~= evt.param1 then
	  return false  
	end
	
	if 706 ~= evt.param2 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_76022(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7227624") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 177005076 ；指定config：76010；物件身上指定option：706；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 177005076, 76010, 706) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建id为76016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 76016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为76019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 76019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为76021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 76021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 177005076, EntityType.GADGET, 76018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_76023(context, evt)
	-- 判断是gadgetid 76010 option_id 7
	if 76010 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_76023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7227625") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 177005076 ；指定config：76010；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 177005076, 76010, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	  return -1
	end
	
	  -- 卸载指定gadget
	  if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 177005076, EntityType.GADGET, 76016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	    return -1
	  end
	
	  -- 卸载指定gadget
	  if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 177005076, EntityType.GADGET, 76019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	    return -1
	  end
	
	  -- 卸载指定gadget
	  if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 177005076, EntityType.GADGET, 76030 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	    return -1
	  end
	  -- 卸载指定gadget
	  if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 177005076, EntityType.GADGET, 76021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	    return -1
	  end
	
	-- 创建id为76018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 76018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_76024(context, evt)
	-- 将本组内变量名为 "doorflag" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "doorflag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 76015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_76025(context, evt)
	if 76014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_76025(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7227605") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 76010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为76032的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 76032 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "questflag" 的变量设置为 13
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questflag", 13) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_76026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"PuzzleFlag"为2
	if ScriptLib.GetGroupVariableValue(context, "PuzzleFlag") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_76026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7227621") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "questflag" 的变量设置为 14
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questflag", 14) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_76027(context, evt)
	--检查ID为7227603的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7227603 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_76027(context, evt)
	-- 将configid为 76014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_76028(context, evt)
	
	-- 将本组内变量名为 "stageflag" 的变量设置为 0
	ScriptLib.SetGroupVariableValue(context, "stageflag", 0)
	-- 增加重置按钮
	ScriptLib.SetWorktopOptionsByGroupId(context, 177005076, 76010, {703})
	
	--加载底板
	ScriptLib.CreateGadget(context, { config_id = 76019 })
	--加载原版参照
	ScriptLib.CreateGadget(context, { config_id = 76021 })
	
	-- 卸载完整华容道
	ScriptLib.RemoveEntityByConfigId(context, 177005076, EntityType.GADGET, 76018 )
	
	-- 添加suite2的所有内容
	ScriptLib.AddExtraGroupSuite(context, 177005076, 2)
	-- 将本组内变量名为 "stageflag" 的变量设置为 0
	ScriptLib.SetGroupVariableValue(context, "PuzzleFlag", 2)
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_76029(context, evt)
	-- 删除指定group： 177005076 ；指定config：76010；物件身上指定option：7；
	
	ScriptLib.SetWorktopOptionsByGroupId(context, 177005076, 76010, {7})
	
	
	  -- 卸载指定gadget
	
	ScriptLib.CreateGadget(context, { config_id = 76016 }) 
	
	  -- 卸载指定gadget
	
	ScriptLib.CreateGadget(context, { config_id = 76019 }) 
	
	  -- 卸载指定gadget
	
	ScriptLib.CreateGadget(context, { config_id = 76030 }) 
	  -- 卸载指定gadget
	
	ScriptLib.CreateGadget(context, { config_id = 76021 }) 
	
	-- 创建id为76018的gadget
	
	ScriptLib.RemoveEntityByConfigId(context, 177005076, EntityType.GADGET, 76018 )
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_76031(context, evt)
	-- 创建id为76011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 76011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_5/Huarongdao"