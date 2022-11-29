-- 基础信息
local base_info = {
	group_id = 133101203
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
	-- 第一次对话npc
	{ config_id = 203001, npc_id = 20133, pos = { x = 1236.459, y = 314.442, z = 1435.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 6 }
}

-- 装置
gadgets = {
	{ config_id = 203002, gadget_id = 70211011, pos = { x = 1146.347, y = 351.016, z = 1520.097 }, rot = { x = 0.000, y = 131.230, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 203003, gadget_id = 70360092, pos = { x = 1236.116, y = 313.575, z = 1434.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 203004, gadget_id = 70360001, pos = { x = 1236.293, y = 314.504, z = 1435.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 203005, gadget_id = 70360046, pos = { x = 1234.071, y = 313.637, z = 1440.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 203006, gadget_id = 70360046, pos = { x = 1226.595, y = 300.306, z = 1465.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 203007, gadget_id = 70360046, pos = { x = 1230.348, y = 308.658, z = 1450.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 203008, gadget_id = 70690010, pos = { x = 1214.754, y = 301.101, z = 1464.892 }, rot = { x = 0.000, y = 0.000, z = 275.409 }, level = 24, area_id = 6 },
	{ config_id = 203009, gadget_id = 70360046, pos = { x = 1248.991, y = 292.083, z = 1468.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 203010, gadget_id = 70360046, pos = { x = 1236.738, y = 298.701, z = 1475.936 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 203011, gadget_id = 70220032, pos = { x = 1249.107, y = 292.633, z = 1470.047 }, rot = { x = 0.000, y = 181.489, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 203012, gadget_id = 70690010, pos = { x = 1236.723, y = 299.318, z = 1475.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 203013, gadget_id = 70360046, pos = { x = 1247.990, y = 313.282, z = 1486.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 203014, gadget_id = 70220032, pos = { x = 1225.744, y = 300.932, z = 1465.145 }, rot = { x = 0.000, y = 70.017, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 203015, gadget_id = 70690010, pos = { x = 1247.879, y = 313.889, z = 1487.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 203016, gadget_id = 70690001, pos = { x = 1210.140, y = 359.040, z = 1491.940 }, rot = { x = 333.781, y = 284.327, z = 356.766 }, level = 19, area_id = 6 },
	{ config_id = 203017, gadget_id = 70690001, pos = { x = 1227.825, y = 351.901, z = 1488.729 }, rot = { x = 332.145, y = 279.438, z = 357.281 }, level = 19, area_id = 6 },
	{ config_id = 203018, gadget_id = 70690001, pos = { x = 1239.062, y = 346.733, z = 1487.725 }, rot = { x = 330.011, y = 273.989, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 203020, gadget_id = 70900201, pos = { x = 1173.545, y = 371.304, z = 1503.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 203027, gadget_id = 70690010, pos = { x = 1249.481, y = 292.725, z = 1468.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 203029, gadget_id = 70900201, pos = { x = 1148.488, y = 351.052, z = 1523.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 203019, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1149.198, y = 349.617, z = 1524.233 }, area_id = 6 },
	{ config_id = 203028, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1173.331, y = 371.279, z = 1503.450 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1203019, name = "ENTER_REGION_203019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_203019", action = "action_EVENT_ENTER_REGION_203019", trigger_count = 0, tag = "666" },
	{ config_id = 1203021, name = "GADGET_CREATE_203021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_203021", action = "action_EVENT_GADGET_CREATE_203021", trigger_count = 0 },
	{ config_id = 1203022, name = "CHALLENGE_FAIL_203022", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_203022", trigger_count = 0 },
	{ config_id = 1203023, name = "CHALLENGE_SUCCESS_203023", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_203023", trigger_count = 0 },
	{ config_id = 1203024, name = "SELECT_OPTION_203024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_203024", action = "action_EVENT_SELECT_OPTION_203024", trigger_count = 0 },
	{ config_id = 1203025, name = "GADGET_STATE_CHANGE_203025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_203025", action = "action_EVENT_GADGET_STATE_CHANGE_203025", trigger_count = 0 },
	{ config_id = 1203026, name = "GADGET_STATE_CHANGE_203026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_203026", action = "action_EVENT_GADGET_STATE_CHANGE_203026", trigger_count = 0 },
	{ config_id = 1203028, name = "ENTER_REGION_203028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_203028", action = "action_EVENT_ENTER_REGION_203028", trigger_count = 0 },
	{ config_id = 1203030, name = "GADGET_CREATE_203030", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_203030", action = "action_EVENT_GADGET_CREATE_203030", trigger_count = 0 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 10,
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
		gadgets = { 203003, 203004 },
		regions = { },
		triggers = { "SELECT_OPTION_203024", "GADGET_CREATE_203030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 203002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 203003, 203005, 203006, 203007, 203009, 203010, 203011, 203013, 203014, 203020 },
		regions = { 203028 },
		triggers = { "GADGET_CREATE_203021", "GADGET_STATE_CHANGE_203025", "GADGET_STATE_CHANGE_203026", "ENTER_REGION_203028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 203002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 203003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 203005, 203006, 203007, 203008, 203009, 203010, 203011, 203013, 203014, 203020 },
		regions = { 203028 },
		triggers = { "GADGET_STATE_CHANGE_203025", "GADGET_STATE_CHANGE_203026", "ENTER_REGION_203028" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 203005, 203006, 203007, 203009, 203010, 203011, 203012, 203013, 203014, 203015, 203016, 203017, 203018, 203020, 203027 },
		regions = { 203028 },
		triggers = { "GADGET_STATE_CHANGE_203025", "GADGET_STATE_CHANGE_203026", "ENTER_REGION_203028" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 203029 },
		regions = { 203019 },
		triggers = { "ENTER_REGION_203019" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_FAIL_203022", "CHALLENGE_SUCCESS_203023" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 203003 },
		regions = { },
		triggers = { },
		npcs = { 203001 },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_203019(context, evt)
	if evt.param1 ~= 203019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_203019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7101319_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101203, 4)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101203, 6)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101203, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_203021(context, evt)
	if 203005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_203021(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101203, 9)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为135的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 135, 60, 4, 666, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（1173，371，1503），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1173, y=371, z=1503}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_203022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133101203, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 203003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 203003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_203023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7101319_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 改变指定group组133101205中， configid为205002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133101205, 205002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101203, 3)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101203, 8)
	
	-- 将configid为 203003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 203003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133101203, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_203024(context, evt)
	-- 判断是gadgetid 203003 option_id 11
	if 203003 ~= evt.param1 then
		return false	
	end
	
	if 11 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_203024(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101203, 3)
	
	-- 将configid为 203003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 203003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133101203 ；指定config：203003；物件身上指定option：11；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133101203, 203003, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_203025(context, evt)
	if 203011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_203025(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101203, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_203026(context, evt)
	if 203014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_203026(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101203, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_203028(context, evt)
	if evt.param1 ~= 203028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_203028(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101203, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101203, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_203030(context, evt)
	if 203004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_203030(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133101203, 203003, {11}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end