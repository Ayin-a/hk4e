-- 基础信息
local base_info = {
	group_id = 133108124
}

-- Trigger变量
local defs = {
	challenge_1_duration = 50,
	challenge_2_duration = 40,
	challenge_3_duration = 30,
	group_id = 133108124,
	father_quest = 21016,
	region = 62013,
	gadget_chest_1 = 124002,
	gadget_chest_2 = 117003,
	gadget_chest_3 = 124003,
	challenge_id_no_record = 184,
	challenge_id_have_record = 168,
	source_2 = "2101602",
	source_4 = "2101604",
	source_6 = "2101606",
	source_8 = "2101608"
}

-- DEFS_MISCS
defs.quest_1_id = defs.father_quest.."02"



defs.quest_2_id = defs.father_quest.."04"



defs.quest_3_id = defs.father_quest.."06"



defs.quest_4_id = defs.father_quest.."08"



defs.quest_1_success = defs.group_id.."0101"



defs.quest_1_fail = defs.group_id.."0102"



defs.quest_2_success = defs.group_id.."0201"



defs.quest_2_fail = defs.group_id.."0202"



defs.quest_3_success = defs.group_id.."0301"



defs.quest_3_fail = defs.group_id.."0302"



defs.quest_4_success = defs.group_id.."0401"



defs.quest_4_fail = defs.group_id.."0402"

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
	{ config_id = 124017, npc_id = 20113, pos = { x = -299.962, y = 200.559, z = -789.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7 }
}

-- 装置
gadgets = {
	{ config_id = 124001, gadget_id = 70690001, pos = { x = -354.940, y = 243.945, z = -713.952 }, rot = { x = 0.000, y = 287.741, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 124002, gadget_id = 70211101, pos = { x = -377.527, y = 200.206, z = -651.792 }, rot = { x = 358.313, y = 352.191, z = 7.416 }, level = 26, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	-- 限时到达开关
	{ config_id = 124003, gadget_id = 70360092, pos = { x = -300.121, y = 199.734, z = -789.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 124004, gadget_id = 70360024, pos = { x = -322.322, y = 232.698, z = -730.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 124005, gadget_id = 70360046, pos = { x = -327.203, y = 257.645, z = -725.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 124006, gadget_id = 70360025, pos = { x = -393.819, y = 235.072, z = -708.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 124007, gadget_id = 70900201, pos = { x = -393.378, y = 234.940, z = -708.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 124008, gadget_id = 70360046, pos = { x = -333.954, y = 254.368, z = -721.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 124009, gadget_id = 70360046, pos = { x = -340.244, y = 246.117, z = -718.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 124010, gadget_id = 70690006, pos = { x = -334.040, y = 255.137, z = -721.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 124011, gadget_id = 70690001, pos = { x = -366.315, y = 242.446, z = -710.447 }, rot = { x = 0.000, y = 286.625, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 124012, gadget_id = 70900201, pos = { x = -322.272, y = 232.702, z = -730.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 124014, gadget_id = 70900201, pos = { x = -374.675, y = 200.418, z = -653.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 124022, gadget_id = 70360025, pos = { x = -374.594, y = 200.416, z = -653.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 124023, gadget_id = 70360092, pos = { x = -300.117, y = 199.767, z = -789.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 124024, gadget_id = 70360001, pos = { x = -299.980, y = 200.573, z = -789.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 124025, gadget_id = 70690006, pos = { x = -321.928, y = 232.417, z = -731.673 }, rot = { x = 6.016, y = 6.373, z = 0.281 }, level = 32, area_id = 7 },
	{ config_id = 124028, gadget_id = 70360001, pos = { x = -300.216, y = 200.580, z = -789.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 124031, gadget_id = 70360001, pos = { x = -374.522, y = 200.418, z = -653.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 124016, shape = RegionShape.SPHERE, radius = 5, pos = { x = -322.839, y = 232.175, z = -730.812 }, area_id = 7 },
	{ config_id = 124020, shape = RegionShape.SPHERE, radius = 5, pos = { x = -392.971, y = 234.849, z = -708.063 }, area_id = 7 },
	{ config_id = 124026, shape = RegionShape.SPHERE, radius = 5, pos = { x = -375.166, y = 200.403, z = -653.333 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1124013, name = "GADGET_STATE_CHANGE_124013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_124013", action = "action_EVENT_GADGET_STATE_CHANGE_124013" },
	{ config_id = 1124015, name = "CHALLENGE_FAIL_124015", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_124015", trigger_count = 0 },
	{ config_id = 1124016, name = "ENTER_REGION_124016", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_124016", action = "action_EVENT_ENTER_REGION_124016", trigger_count = 0 },
	{ config_id = 1124018, name = "GADGET_CREATE_124018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_124018", action = "action_EVENT_GADGET_CREATE_124018" },
	{ config_id = 1124019, name = "SELECT_OPTION_124019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_124019", action = "action_EVENT_SELECT_OPTION_124019" },
	{ config_id = 1124020, name = "ENTER_REGION_124020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_124020", action = "action_EVENT_ENTER_REGION_124020", tag = "999" },
	{ config_id = 1124021, name = "CHALLENGE_SUCCESS_124021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_124021" },
	{ config_id = 1124026, name = "ENTER_REGION_124026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_124026", action = "action_EVENT_ENTER_REGION_124026", tag = "555" },
	{ config_id = 1124027, name = "GADGET_CREATE_124027", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_124027" },
	{ config_id = 1124029, name = "GADGET_CREATE_124029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_124029", action = "action_EVENT_GADGET_CREATE_124029", trigger_count = 0 },
	{ config_id = 1124030, name = "GADGET_STATE_CHANGE_124030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_124030", action = "action_EVENT_GADGET_STATE_CHANGE_124030", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Challenge_Flag", value = 0, no_refresh = false },
	{ config_id = 2, name = "change_num", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 124003, 124024 },
		regions = { },
		triggers = { "GADGET_CREATE_124018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 124004, 124012 },
		regions = { 124016 },
		triggers = { "ENTER_REGION_124016", "GADGET_CREATE_124027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 124001, 124005, 124006, 124007, 124008, 124009, 124010, 124011, 124025 },
		regions = { 124020 },
		triggers = { "ENTER_REGION_124020" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 124002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_124030" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 124023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 124003, 124028 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_124013", "SELECT_OPTION_124019", "GADGET_CREATE_124029" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 124031 },
		regions = { 124026 },
		triggers = { "ENTER_REGION_124026" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 124014, 124022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_FAIL_124015", "CHALLENGE_SUCCESS_124021" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 124003 },
		regions = { },
		triggers = { },
		npcs = { 124017 },
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
function condition_EVENT_GADGET_STATE_CHANGE_124013(context, evt)
	if 124003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_124013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108124, 2)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108124, 9)
	
	-- 创建编号为888（该挑战的识别id),挑战内容为127的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 127, 120, 4, 555, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_124015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108124, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 124003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_124016(context, evt)
	if evt.param1 ~= 124016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_124016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108124, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108124, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_124018(context, evt)
	if 124024 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"change_num"为0
	if ScriptLib.GetGroupVariableValue(context, "change_num") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_124018(context, evt)
	-- 将configid为 124003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为888（该挑战的识别id),挑战内容为127的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 127, 120, 4, 555, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108124, 9)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108124, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_124019(context, evt)
	-- 判断是gadgetid 124003 option_id 10
	if 124003 ~= evt.param1 then
		return false	
	end
	
	if 10 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_124019(context, evt)
	-- 删除指定group： 133108124 ；指定config：124003；物件身上指定option：10；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108124, 124003, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 124003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_124020(context, evt)
	if evt.param1 ~= 124020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_124020(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108126, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108124, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108124, 8)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108124, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_124021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7101006_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108124, 3)
	
	-- 改变指定group组133108126中， configid为126011的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133108126, 126011, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_124026(context, evt)
	if evt.param1 ~= 124026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_124026(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108124, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108124, 8)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7101006_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "change_num" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change_num", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_CREATE_124027(context, evt)
	-- 触发镜头注目，注目位置为坐标（-322，232，-731），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-322, y=232, z=-731}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_124029(context, evt)
	if 124028 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"change_num"为0
	if ScriptLib.GetGroupVariableValue(context, "change_num") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_124029(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108124, 124003, {10}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_124030(context, evt)
	if 124002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_124030(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108124, suite = 11 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end