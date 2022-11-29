-- 基础信息
local base_info = {
	group_id = 133103015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15006, monster_id = 21030101, pos = { x = 748.993, y = 169.559, z = 1126.612 }, rot = { x = 0.000, y = 318.635, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 9012, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 15007, monster_id = 22010201, pos = { x = 747.356, y = 169.562, z = 1128.504 }, rot = { x = 0.000, y = 317.711, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9013, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 15015, monster_id = 21010201, pos = { x = 746.099, y = 169.588, z = 1125.917 }, rot = { x = 0.000, y = 353.603, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 9012, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 15016, monster_id = 21010201, pos = { x = 749.980, y = 169.717, z = 1129.181 }, rot = { x = 0.000, y = 262.143, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 9012, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 15022, monster_id = 20011101, pos = { x = 746.012, y = 169.559, z = 1123.891 }, rot = { x = 0.000, y = 91.997, z = 0.000 }, level = 24, drop_id = 1000100, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 15023, monster_id = 20011101, pos = { x = 752.442, y = 169.802, z = 1128.720 }, rot = { x = 0.000, y = 189.345, z = 0.000 }, level = 24, drop_id = 1000100, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 15024, monster_id = 20010901, pos = { x = 752.448, y = 169.893, z = 1121.959 }, rot = { x = 0.000, y = 317.207, z = 0.000 }, level = 24, drop_id = 1000100, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 15025, monster_id = 22010301, pos = { x = 746.461, y = 169.652, z = 1122.141 }, rot = { x = 0.000, y = 80.938, z = 0.000 }, level = 24, drop_id = 1000100, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 15026, monster_id = 22010201, pos = { x = 753.703, y = 169.960, z = 1127.472 }, rot = { x = 0.000, y = 187.367, z = 0.000 }, level = 24, drop_id = 1000100, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 15058, monster_id = 28050102, pos = { x = 711.168, y = 157.819, z = 1175.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "魔法生物", area_id = 6 }
}

-- NPC
npcs = {
	{ config_id = 15013, npc_id = 20048, pos = { x = 658.689, y = 162.681, z = 1177.999 }, rot = { x = 0.000, y = 301.603, z = 0.000 }, area_id = 6 }
}

-- 装置
gadgets = {
	{ config_id = 105, gadget_id = 70380007, pos = { x = 650.692, y = 162.000, z = 1188.288 }, rot = { x = 0.000, y = 42.000, z = 0.000 }, level = 24, route_id = 310300016, start_route = false, persistent = true, area_id = 6 },
	{ config_id = 15003, gadget_id = 70360046, pos = { x = 680.853, y = 161.624, z = 1155.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 15004, gadget_id = 70800001, pos = { x = 742.630, y = 174.026, z = 1134.430 }, rot = { x = 0.000, y = 140.399, z = 0.000 }, level = 24, state = GadgetState.GearStop, persistent = true, area_id = 6 },
	{ config_id = 15005, gadget_id = 70360046, pos = { x = 685.695, y = 161.620, z = 1170.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 15008, gadget_id = 70211121, pos = { x = 663.413, y = 154.062, z = 1167.832 }, rot = { x = 0.000, y = 97.111, z = 0.000 }, level = 21, chest_drop_id = 2000600, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 15009, gadget_id = 70211021, pos = { x = 746.159, y = 169.562, z = 1130.346 }, rot = { x = 0.000, y = 144.702, z = 0.000 }, level = 21, drop_tag = "战斗高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 15012, gadget_id = 70710091, pos = { x = 658.850, y = 162.102, z = 1177.725 }, rot = { x = 0.000, y = 316.163, z = 0.000 }, level = 24, state = GadgetState.GearStart, persistent = true, area_id = 6 },
	{ config_id = 15014, gadget_id = 70220010, pos = { x = 746.385, y = 169.691, z = 1120.837 }, rot = { x = 0.000, y = 51.415, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 15017, gadget_id = 70310001, pos = { x = 744.208, y = 169.619, z = 1117.932 }, rot = { x = 0.000, y = 210.720, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 15018, gadget_id = 70310001, pos = { x = 758.704, y = 170.017, z = 1129.270 }, rot = { x = 0.000, y = 210.720, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 15019, gadget_id = 70310001, pos = { x = 742.915, y = 169.460, z = 1125.321 }, rot = { x = 0.000, y = 210.720, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 15020, gadget_id = 70310001, pos = { x = 751.401, y = 169.789, z = 1131.865 }, rot = { x = 0.000, y = 210.720, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 15029, gadget_id = 70220010, pos = { x = 755.712, y = 170.079, z = 1127.041 }, rot = { x = 0.000, y = 230.873, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 15030, gadget_id = 70220010, pos = { x = 753.340, y = 169.912, z = 1121.058 }, rot = { x = 0.000, y = 315.223, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 15032, gadget_id = 70220010, pos = { x = 750.759, y = 169.678, z = 1124.459 }, rot = { x = 0.000, y = 189.830, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 15033, gadget_id = 70220035, pos = { x = 744.577, y = 169.562, z = 1132.197 }, rot = { x = 0.000, y = 160.069, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 15034, gadget_id = 70220035, pos = { x = 755.280, y = 169.779, z = 1130.585 }, rot = { x = 0.000, y = 237.521, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 15035, gadget_id = 70220035, pos = { x = 743.359, y = 169.545, z = 1121.329 }, rot = { x = 0.000, y = 63.603, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 15036, gadget_id = 70800001, pos = { x = 699.349, y = 156.600, z = 1160.628 }, rot = { x = 0.000, y = 327.007, z = 0.000 }, level = 24, state = GadgetState.GearStop, persistent = true, area_id = 6 },
	{ config_id = 15037, gadget_id = 70330019, pos = { x = 701.875, y = 156.522, z = 1176.908 }, rot = { x = 0.000, y = 185.306, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 15038, gadget_id = 70330019, pos = { x = 715.474, y = 156.485, z = 1157.583 }, rot = { x = 0.000, y = 276.997, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 15039, gadget_id = 70330019, pos = { x = 696.775, y = 156.597, z = 1144.232 }, rot = { x = 0.000, y = 9.014, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 15044, gadget_id = 70330021, pos = { x = 750.090, y = 162.088, z = 1158.062 }, rot = { x = 0.000, y = 293.402, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 15046, gadget_id = 70330021, pos = { x = 732.088, y = 156.816, z = 1145.663 }, rot = { x = 0.000, y = 274.455, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 15047, gadget_id = 70330021, pos = { x = 659.846, y = 158.666, z = 1150.459 }, rot = { x = 0.000, y = 63.975, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 15048, gadget_id = 70360046, pos = { x = 699.302, y = 155.981, z = 1160.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 15049, gadget_id = 70360055, pos = { x = 650.700, y = 162.000, z = 1188.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 15050, gadget_id = 70360046, pos = { x = 719.149, y = 161.559, z = 1143.448 }, rot = { x = 0.000, y = 182.659, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 15055, gadget_id = 70330021, pos = { x = 711.870, y = 156.051, z = 1175.545 }, rot = { x = 0.000, y = 303.688, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 15054, shape = RegionShape.SPHERE, radius = 18, pos = { x = 750.772, y = 175.429, z = 1122.627 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1015001, name = "GADGET_CREATE_15001", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15001", action = "action_EVENT_GADGET_CREATE_15001", trigger_count = 0 },
	{ config_id = 1015002, name = "SELECT_OPTION_15002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15002", action = "action_EVENT_SELECT_OPTION_15002" },
	{ config_id = 1015010, name = "TIMER_EVENT_15010", event = EventType.EVENT_TIMER_EVENT, source = "waterfall33", condition = "condition_EVENT_TIMER_EVENT_15010", action = "action_EVENT_TIMER_EVENT_15010" },
	{ config_id = 1015011, name = "GADGET_CREATE_15011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15011", action = "action_EVENT_GADGET_CREATE_15011", trigger_count = 0 },
	{ config_id = 1015021, name = "ANY_MONSTER_DIE_15021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15021", action = "action_EVENT_ANY_MONSTER_DIE_15021" },
	{ config_id = 1015027, name = "ANY_MONSTER_DIE_15027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15027", action = "action_EVENT_ANY_MONSTER_DIE_15027" },
	{ config_id = 1015028, name = "ANY_MONSTER_DIE_15028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15028", action = "action_EVENT_ANY_MONSTER_DIE_15028" },
	{ config_id = 1015031, name = "QUEST_FINISH_15031", event = EventType.EVENT_QUEST_FINISH, source = "7100101", condition = "condition_EVENT_QUEST_FINISH_15031", action = "action_EVENT_QUEST_FINISH_15031" },
	{ config_id = 1015040, name = "VARIABLE_CHANGE_15040", event = EventType.EVENT_VARIABLE_CHANGE, source = "gears", condition = "condition_EVENT_VARIABLE_CHANGE_15040", action = "action_EVENT_VARIABLE_CHANGE_15040" },
	{ config_id = 1015041, name = "GADGET_STATE_CHANGE_15041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15041", action = "action_EVENT_GADGET_STATE_CHANGE_15041" },
	{ config_id = 1015042, name = "GADGET_STATE_CHANGE_15042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15042", action = "action_EVENT_GADGET_STATE_CHANGE_15042" },
	{ config_id = 1015043, name = "GADGET_STATE_CHANGE_15043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15043", action = "action_EVENT_GADGET_STATE_CHANGE_15043" },
	{ config_id = 1015045, name = "SELECT_OPTION_15045", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15045", action = "action_EVENT_SELECT_OPTION_15045" },
	{ config_id = 1015051, name = "TIMER_EVENT_15051", event = EventType.EVENT_TIMER_EVENT, source = "waterfall2", condition = "condition_EVENT_TIMER_EVENT_15051", action = "action_EVENT_TIMER_EVENT_15051" },
	{ config_id = 1015052, name = "GADGET_CREATE_15052", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15052", action = "action_EVENT_GADGET_CREATE_15052" },
	{ config_id = 1015053, name = "GADGET_CREATE_15053", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15053", action = "action_EVENT_GADGET_CREATE_15053", trigger_count = 0 },
	{ config_id = 1015054, name = "ENTER_REGION_15054", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15054", action = "action_EVENT_ENTER_REGION_15054" },
	{ config_id = 1015056, name = "GROUP_LOAD_15056", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_15056", action = "action_EVENT_GROUP_LOAD_15056", trigger_count = 0 },
	{ config_id = 1015057, name = "GROUP_LOAD_15057", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_15057", action = "action_EVENT_GROUP_LOAD_15057", trigger_count = 0 },
	{ config_id = 1015059, name = "GROUP_LOAD_15059", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_15059", action = "action_EVENT_GROUP_LOAD_15059", trigger_count = 0 },
	{ config_id = 1015060, name = "GROUP_LOAD_15060", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_15060", action = "action_EVENT_GROUP_LOAD_15060", trigger_count = 0 },
	{ config_id = 1015061, name = "GADGET_CREATE_15061", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15061", action = "action_EVENT_GADGET_CREATE_15061", trigger_count = 0 },
	{ config_id = 1015062, name = "GROUP_LOAD_15062", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_15062", action = "action_EVENT_GROUP_LOAD_15062", trigger_count = 0 },
	{ config_id = 1015063, name = "GROUP_LOAD_15063", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_15063", action = "action_EVENT_GROUP_LOAD_15063", trigger_count = 0 },
	{ config_id = 1015064, name = "GROUP_LOAD_15064", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_15064", action = "action_EVENT_GROUP_LOAD_15064", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "killed", value = 0, no_refresh = true },
	{ config_id = 2, name = "wave2", value = 0, no_refresh = true },
	{ config_id = 3, name = "wave3", value = 0, no_refresh = true },
	{ config_id = 4, name = "gears", value = 0, no_refresh = true },
	{ config_id = 5, name = "waterlevel", value = 0, no_refresh = true },
	{ config_id = 6, name = "waterlevel2", value = 0, no_refresh = true },
	{ config_id = 7, name = "statue1", value = 0, no_refresh = true },
	{ config_id = 8, name = "statue2", value = 0, no_refresh = true },
	{ config_id = 9, name = "statue3", value = 0, no_refresh = true }
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
		monsters = { 15006, 15007, 15015, 15016 },
		gadgets = { 105, 15003, 15004, 15005, 15008, 15012, 15014, 15017, 15018, 15019, 15020, 15029, 15030, 15036, 15037, 15038, 15039, 15044, 15046, 15047, 15048, 15050, 15055 },
		regions = { 15054 },
		triggers = { "GADGET_CREATE_15001", "SELECT_OPTION_15002", "TIMER_EVENT_15010", "GADGET_CREATE_15011", "ANY_MONSTER_DIE_15021", "ANY_MONSTER_DIE_15027", "ANY_MONSTER_DIE_15028", "QUEST_FINISH_15031", "VARIABLE_CHANGE_15040", "GADGET_STATE_CHANGE_15041", "GADGET_STATE_CHANGE_15042", "GADGET_STATE_CHANGE_15043", "SELECT_OPTION_15045", "TIMER_EVENT_15051", "GADGET_CREATE_15052", "GADGET_CREATE_15053", "ENTER_REGION_15054", "GROUP_LOAD_15056", "GROUP_LOAD_15057", "GROUP_LOAD_15059", "GROUP_LOAD_15060", "GADGET_CREATE_15061", "GROUP_LOAD_15062", "GROUP_LOAD_15063", "GROUP_LOAD_15064" },
		npcs = { 15013 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 15022, 15023, 15024 },
		gadgets = { 15033, 15034, 15035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 15025, 15026 },
		gadgets = { 15032 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 15003, 15005, 15050 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 15058 },
		gadgets = { },
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
function condition_EVENT_GADGET_CREATE_15001(context, evt)
	if 15036 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"gears"为3
	if ScriptLib.GetGroupVariableValue(context, "gears") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15001(context, evt)
	-- 将configid为 15036 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15036, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103015, 15036, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15002(context, evt)
	-- 判断是gadgetid 15004
	if 15004 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15002(context, evt)
	-- 删除指定group： 133103015 ；指定config：15004；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103015, 15004, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 15004 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15004, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知场景上的所有玩家播放名字为310301501 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310301501, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建id为15049的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 15049 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5004, 2, 2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "wave3" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave3", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "waterlevel" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "waterlevel", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103015, 4)
	
	-- 延迟1秒后,向groupId为：133103015的对象,请求一次调用,并将string参数："waterfall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133103015, "waterfall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103015, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_15010(context, evt)
	-- 判断变量"wave3"为2
	if ScriptLib.GetGroupVariableValue(context, "wave3") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_15010(context, evt)
	-- 通知场景上的所有玩家播放名字为310301501 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310301501, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建id为15049的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 15049 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_15011(context, evt)
	if 15004 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"wave3"为2
	if ScriptLib.GetGroupVariableValue(context, "wave3") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103015, 15004, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 15004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15021(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133103015) ~= 0 then
		return false
	end
	
	-- 判断变量"wave2"为0
	if ScriptLib.GetGroupVariableValue(context, "wave2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15021(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103015, 2)
	
	-- 将本组内变量名为 "wave2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15027(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133103015) ~= 0 then
		return false
	end
	
	-- 判断变量"wave2"为1
	if ScriptLib.GetGroupVariableValue(context, "wave2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15027(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103015, 3)
	
	-- 将本组内变量名为 "wave3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "wave2" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15028(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133103015) ~= 0 then
		return false
	end
	
	-- 判断变量"wave3"为1
	if ScriptLib.GetGroupVariableValue(context, "wave3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15028(context, evt)
	-- 将configid为 15004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103015, 15004, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 创建id为15009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 15009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（742，174，1134），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=742, y=174, z=1134}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "wave3" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave3", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_15031(context, evt)
	--检查ID为7100101的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7100101 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_15031(context, evt)
	-- 调用提示id为 1109013 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1109013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_15040(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"gears"为3
	if ScriptLib.GetGroupVariableValue(context, "gears") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15040(context, evt)
	-- 将configid为 15036 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15036, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103015, 15036, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（699，156，1160），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=699, y=156, z=1160}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5004, 3, 3) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15041(context, evt)
	if 15037 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15041(context, evt)
	-- 针对当前group内变量名为 "gears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "gears", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "statue1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "statue1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15042(context, evt)
	if 15038 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15042(context, evt)
	-- 针对当前group内变量名为 "gears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "gears", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "statue2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "statue2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15043(context, evt)
	if 15039 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15043(context, evt)
	-- 针对当前group内变量名为 "gears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "gears", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "statue3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "statue3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15045(context, evt)
	-- 判断是gadgetid 15036
	if 15036 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15045(context, evt)
	ScriptLib.PlayCutScene(context, 310301502, 0)
	ScriptLib.CreateGadget(context, { config_id = 15049 })
	ScriptLib.DelWorktopOptionByGroupId(context, 133103015, 15036, 7) ScriptLib.SetGadgetStateByConfigId(context, 15036, GadgetState.GearAction1)
	ScriptLib.SetPlatformRouteId(context, 105, 310300182)
	ScriptLib.StartPlatform(context, 105)
	ScriptLib.UnfreezeGroupLimit(context, 131)
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5004, 4, 4) then
	      return -1
	    end
	
	-- 将本组内变量名为 "gears" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gears", 4) then
	  return -1
	end
	
	-- 将本组内变量名为 "waterlevel2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "waterlevel2", 1) then
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：133103015的对象,请求一次调用,并将string参数："waterfall2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133103015, "waterfall2", 13) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_15051(context, evt)
	-- 判断变量"gears"为4
	if ScriptLib.GetGroupVariableValue(context, "gears") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_15051(context, evt)
	-- 调用提示id为 1109017 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1109017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_15052(context, evt)
	-- 判断变量"waterlevel"为1
	if ScriptLib.GetGroupVariableValue(context, "waterlevel") ~= 1 then
			return false
	end
	
	-- 判断变量"waterlevel2"为0
	if ScriptLib.GetGroupVariableValue(context, "waterlevel2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15052(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_15053(context, evt)
	if 105 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"waterlevel"为1
	if ScriptLib.GetGroupVariableValue(context, "waterlevel") ~= 1 then
			return false
	end
	
	-- 判断变量"waterlevel2"为0
	if ScriptLib.GetGroupVariableValue(context, "waterlevel2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15053(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15054(context, evt)
	if evt.param1 ~= 15054 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15054(context, evt)
	-- 调用提示id为 1109015 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1109015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_15056(context, evt)
	-- 判断变量"wave2"为1
	if ScriptLib.GetGroupVariableValue(context, "wave2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_15056(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103015, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_15057(context, evt)
	-- 判断变量"wave3"为1
	if ScriptLib.GetGroupVariableValue(context, "wave3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_15057(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103015, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_15059(context, evt)
	-- 判断变量"wave2"为0
	if ScriptLib.GetGroupVariableValue(context, "wave2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_15059(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 15006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 15007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 15015, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 15016, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_15060(context, evt)
	-- 判断变量"statue1"为0
	if ScriptLib.GetGroupVariableValue(context, "statue1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_15060(context, evt)
	-- 将configid为 15037 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15037, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_15061(context, evt)
	if 105 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"waterlevel2"为1
	if ScriptLib.GetGroupVariableValue(context, "waterlevel2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15061(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 105, 310300182) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_15062(context, evt)
	-- 判断变量"statue2"为0
	if ScriptLib.GetGroupVariableValue(context, "statue2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_15062(context, evt)
	-- 将configid为 15038 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15038, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_15063(context, evt)
	-- 判断变量"statue3"为0
	if ScriptLib.GetGroupVariableValue(context, "statue3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_15063(context, evt)
	-- 将configid为 15039 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15039, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_15064(context, evt)
	-- 判断变量"gears"大于等于3
	if ScriptLib.GetGroupVariableValue(context, "gears") < 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_15064(context, evt)
	-- 将本组内变量名为 "statue1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "statue1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "statue2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "statue2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "statue3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "statue3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 15037 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15037, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 15038 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15038, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 15039 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15039, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end