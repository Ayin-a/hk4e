-- 基础信息
local base_info = {
	group_id = 133220126
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
	{ config_id = 126001, gadget_id = 70710407, pos = { x = -2746.902, y = 205.894, z = -4110.592 }, rot = { x = 0.000, y = 201.971, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 126002, gadget_id = 70710432, pos = { x = -2739.564, y = 206.710, z = -4112.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 126003, gadget_id = 70710432, pos = { x = -2738.308, y = 206.782, z = -4117.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 126004, gadget_id = 70710432, pos = { x = -2743.613, y = 206.689, z = -4121.187 }, rot = { x = 0.000, y = 296.284, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 126007, gadget_id = 70710407, pos = { x = -2738.378, y = 206.782, z = -4117.323 }, rot = { x = 0.000, y = 237.768, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 126008, gadget_id = 70710407, pos = { x = -2739.392, y = 206.705, z = -4112.663 }, rot = { x = 0.000, y = 69.924, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 126009, gadget_id = 70710407, pos = { x = -2743.580, y = 206.681, z = -4121.080 }, rot = { x = 0.000, y = 296.284, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 126010, gadget_id = 70710407, pos = { x = -2735.916, y = 206.533, z = -4112.118 }, rot = { x = 0.000, y = 293.324, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 126011, gadget_id = 70710432, pos = { x = -2735.778, y = 206.541, z = -4112.095 }, rot = { x = 0.000, y = 322.970, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 126012, gadget_id = 70710432, pos = { x = -2746.760, y = 205.895, z = -4110.428 }, rot = { x = 0.000, y = 35.761, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 126023, gadget_id = 70710407, pos = { x = -2744.235, y = 206.039, z = -4114.975 }, rot = { x = 0.000, y = 25.322, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 126024, gadget_id = 70710407, pos = { x = -2748.199, y = 206.020, z = -4118.188 }, rot = { x = 0.000, y = 291.488, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 126025, gadget_id = 70710432, pos = { x = -2744.389, y = 206.046, z = -4115.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 126026, gadget_id = 70710432, pos = { x = -2748.058, y = 206.032, z = -4118.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 判定全部灌木击破用
	{ config_id = 1126005, name = "VARIABLE_CHANGE_126005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_126005", action = "action_EVENT_VARIABLE_CHANGE_126005" },
	-- 第一次击破灌木的反馈
	{ config_id = 1126006, name = "ANY_GADGET_DIE_126006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_126006" },
	{ config_id = 1126013, name = "ANY_GADGET_DIE_126013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_126013", action = "action_EVENT_ANY_GADGET_DIE_126013" },
	{ config_id = 1126014, name = "ANY_GADGET_DIE_126014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_126014", action = "action_EVENT_ANY_GADGET_DIE_126014" },
	{ config_id = 1126015, name = "ANY_GADGET_DIE_126015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_126015", action = "action_EVENT_ANY_GADGET_DIE_126015" },
	{ config_id = 1126016, name = "ANY_GADGET_DIE_126016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_126016", action = "action_EVENT_ANY_GADGET_DIE_126016" },
	{ config_id = 1126017, name = "ANY_GADGET_DIE_126017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_126017", action = "action_EVENT_ANY_GADGET_DIE_126017" },
	{ config_id = 1126018, name = "QUEST_START_126018", event = EventType.EVENT_QUEST_START, source = "1201202", condition = "condition_EVENT_QUEST_START_126018", action = "action_EVENT_QUEST_START_126018", trigger_count = 0 },
	{ config_id = 1126019, name = "QUEST_START_126019", event = EventType.EVENT_QUEST_START, source = "1201202", condition = "condition_EVENT_QUEST_START_126019", action = "action_EVENT_QUEST_START_126019", trigger_count = 0 },
	{ config_id = 1126020, name = "QUEST_START_126020", event = EventType.EVENT_QUEST_START, source = "1201202", condition = "condition_EVENT_QUEST_START_126020", action = "action_EVENT_QUEST_START_126020", trigger_count = 0 },
	{ config_id = 1126021, name = "QUEST_START_126021", event = EventType.EVENT_QUEST_START, source = "1201202", condition = "condition_EVENT_QUEST_START_126021", action = "action_EVENT_QUEST_START_126021", trigger_count = 0 },
	{ config_id = 1126022, name = "QUEST_START_126022", event = EventType.EVENT_QUEST_START, source = "1201202", condition = "condition_EVENT_QUEST_START_126022", action = "action_EVENT_QUEST_START_126022", trigger_count = 0 },
	{ config_id = 1126027, name = "QUEST_START_126027", event = EventType.EVENT_QUEST_START, source = "1201202", condition = "condition_EVENT_QUEST_START_126027", action = "action_EVENT_QUEST_START_126027", trigger_count = 0 },
	{ config_id = 1126028, name = "QUEST_START_126028", event = EventType.EVENT_QUEST_START, source = "1201202", condition = "condition_EVENT_QUEST_START_126028", action = "action_EVENT_QUEST_START_126028", trigger_count = 0 },
	{ config_id = 1126029, name = "ANY_GADGET_DIE_126029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_126029", action = "action_EVENT_ANY_GADGET_DIE_126029" },
	{ config_id = 1126030, name = "ANY_GADGET_DIE_126030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_126030", action = "action_EVENT_ANY_GADGET_DIE_126030" },
	-- 断线重连的判定
	{ config_id = 1126031, name = "QUEST_START_126031", event = EventType.EVENT_QUEST_START, source = "1201209", condition = "condition_EVENT_QUEST_START_126031", action = "action_EVENT_QUEST_START_126031" }
}

-- 变量
variables = {
	{ config_id = 1, name = "1_die", value = 0, no_refresh = false },
	{ config_id = 2, name = "2_die", value = 0, no_refresh = false },
	{ config_id = 3, name = "3_die", value = 0, no_refresh = false },
	{ config_id = 4, name = "4_die", value = 0, no_refresh = false },
	{ config_id = 5, name = "5_die", value = 0, no_refresh = false },
	{ config_id = 6, name = "6_die", value = 0, no_refresh = false },
	{ config_id = 7, name = "7_die", value = 0, no_refresh = false }
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
		gadgets = { 126001, 126007, 126008, 126009, 126010, 126023, 126024 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_126005", "ANY_GADGET_DIE_126006", "ANY_GADGET_DIE_126013", "ANY_GADGET_DIE_126014", "ANY_GADGET_DIE_126015", "ANY_GADGET_DIE_126016", "ANY_GADGET_DIE_126017", "QUEST_START_126018", "QUEST_START_126019", "QUEST_START_126020", "QUEST_START_126021", "QUEST_START_126022", "QUEST_START_126027", "QUEST_START_126028", "ANY_GADGET_DIE_126029", "ANY_GADGET_DIE_126030", "QUEST_START_126031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 126002, 126003, 126004, 126011, 126012, 126025, 126026 },
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
function condition_EVENT_VARIABLE_CHANGE_126005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"1_die"为1
	if ScriptLib.GetGroupVariableValue(context, "1_die") ~= 1 then
			return false
	end
	
	-- 判断变量"2_die"为1
	if ScriptLib.GetGroupVariableValue(context, "2_die") ~= 1 then
			return false
	end
	
	-- 判断变量"3_die"为1
	if ScriptLib.GetGroupVariableValue(context, "3_die") ~= 1 then
			return false
	end
	
	-- 判断变量"4_die"为1
	if ScriptLib.GetGroupVariableValue(context, "4_die") ~= 1 then
			return false
	end
	
	-- 判断变量"5_die"为1
	if ScriptLib.GetGroupVariableValue(context, "5_die") ~= 1 then
			return false
	end
	
	-- 判断变量"6_die"为1
	if ScriptLib.GetGroupVariableValue(context, "6_die") ~= 1 then
			return false
	end
	
	-- 判断变量"7_die"为1
	if ScriptLib.GetGroupVariableValue(context, "7_die") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_126005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220126") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_126006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1201208") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_126013(context, evt)
	if 126007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_126013(context, evt)
	-- 将本组内变量名为 "1_die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1_die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220126, EntityType.GADGET, 126003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_126014(context, evt)
	if 126008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_126014(context, evt)
	-- 将本组内变量名为 "2_die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "2_die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220126, EntityType.GADGET, 126002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_126015(context, evt)
	if 126009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_126015(context, evt)
	-- 将本组内变量名为 "3_die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "3_die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220126, EntityType.GADGET, 126004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_126016(context, evt)
	if 126010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_126016(context, evt)
	-- 将本组内变量名为 "4_die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "4_die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220126, EntityType.GADGET, 126011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_126017(context, evt)
	if 126001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_126017(context, evt)
	-- 将本组内变量名为 "5_die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "5_die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220126, EntityType.GADGET, 126012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_126018(context, evt)
	-- 判断变量"1_die"为0
	if ScriptLib.GetGroupVariableValue(context, "1_die") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_126018(context, evt)
	-- 创建id为126003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_126019(context, evt)
	-- 判断变量"2_die"为0
	if ScriptLib.GetGroupVariableValue(context, "2_die") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_126019(context, evt)
	-- 创建id为126002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_126020(context, evt)
	-- 判断变量"3_die"为0
	if ScriptLib.GetGroupVariableValue(context, "3_die") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_126020(context, evt)
	-- 创建id为126004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_126021(context, evt)
	-- 判断变量"4_die"为0
	if ScriptLib.GetGroupVariableValue(context, "4_die") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_126021(context, evt)
	-- 创建id为126011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_126022(context, evt)
	-- 判断变量"5_die"为0
	if ScriptLib.GetGroupVariableValue(context, "5_die") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_126022(context, evt)
	-- 创建id为126012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_126027(context, evt)
	-- 判断变量"6_die"为0
	if ScriptLib.GetGroupVariableValue(context, "6_die") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_126027(context, evt)
	-- 创建id为126025的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126025 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_126028(context, evt)
	-- 判断变量"7_die"为0
	if ScriptLib.GetGroupVariableValue(context, "7_die") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_126028(context, evt)
	-- 创建id为126026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126026 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_126029(context, evt)
	if 126023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_126029(context, evt)
	-- 将本组内变量名为 "6_die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "6_die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220126, EntityType.GADGET, 126025 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_126030(context, evt)
	if 126024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_126030(context, evt)
	-- 将本组内变量名为 "7_die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "7_die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220126, EntityType.GADGET, 126026 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_126031(context, evt)
	-- 判断变量"1_die"为1
	if ScriptLib.GetGroupVariableValue(context, "1_die") ~= 1 then
			return false
	end
	
	-- 判断变量"2_die"为1
	if ScriptLib.GetGroupVariableValue(context, "2_die") ~= 1 then
			return false
	end
	
	-- 判断变量"3_die"为1
	if ScriptLib.GetGroupVariableValue(context, "3_die") ~= 1 then
			return false
	end
	
	-- 判断变量"4_die"为1
	if ScriptLib.GetGroupVariableValue(context, "4_die") ~= 1 then
			return false
	end
	
	-- 判断变量"5_die"为1
	if ScriptLib.GetGroupVariableValue(context, "5_die") ~= 1 then
			return false
	end
	
	-- 判断变量"6_die"为1
	if ScriptLib.GetGroupVariableValue(context, "6_die") ~= 1 then
			return false
	end
	
	-- 判断变量"7_die"为1
	if ScriptLib.GetGroupVariableValue(context, "7_die") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_126031(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220126") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end