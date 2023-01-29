-- 基础信息
local base_info = {
	group_id = 199004216
}

-- Trigger变量
local defs = {
	duration = 20,
	group_id = 199004216
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
	{ config_id = 216001, gadget_id = 70211111, pos = { x = -325.742, y = 130.162, z = -611.345 }, rot = { x = 0.000, y = 53.870, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 216002, gadget_id = 70360001, pos = { x = -294.996, y = 123.722, z = -644.091 }, rot = { x = 0.000, y = 140.559, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 216003, gadget_id = 70350083, pos = { x = -294.996, y = 123.722, z = -644.091 }, rot = { x = 0.000, y = 140.559, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216004, gadget_id = 70360094, pos = { x = -337.277, y = 131.187, z = -590.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216005, gadget_id = 70290150, pos = { x = -308.075, y = 128.850, z = -632.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216006, gadget_id = 70290150, pos = { x = -308.904, y = 130.857, z = -623.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216007, gadget_id = 70290150, pos = { x = -322.253, y = 130.992, z = -620.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216008, gadget_id = 70290150, pos = { x = -319.897, y = 131.459, z = -610.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216009, gadget_id = 70360094, pos = { x = -333.353, y = 132.128, z = -606.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216010, gadget_id = 70360094, pos = { x = -329.118, y = 131.753, z = -600.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216011, gadget_id = 70360094, pos = { x = -340.159, y = 132.960, z = -598.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216017, gadget_id = 70350083, pos = { x = -352.414, y = 126.217, z = -581.039 }, rot = { x = 0.000, y = 140.559, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216027, gadget_id = 70360001, pos = { x = -352.414, y = 126.217, z = -581.039 }, rot = { x = 0.000, y = 140.559, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216037, gadget_id = 70350083, pos = { x = -294.996, y = 123.722, z = -644.091 }, rot = { x = 0.000, y = 140.559, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 400 },
	{ config_id = 216038, gadget_id = 70350083, pos = { x = -352.414, y = 126.217, z = -581.039 }, rot = { x = 0.000, y = 140.559, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 400 },
	{ config_id = 216042, gadget_id = 70360001, pos = { x = -327.091, y = 130.620, z = -607.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216049, gadget_id = 70350083, pos = { x = -352.414, y = 126.217, z = -581.039 }, rot = { x = 0.000, y = 140.559, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216050, gadget_id = 70360001, pos = { x = -352.414, y = 126.217, z = -581.039 }, rot = { x = 0.000, y = 140.559, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216051, gadget_id = 70360001, pos = { x = -294.996, y = 123.722, z = -644.091 }, rot = { x = 0.000, y = 140.559, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216052, gadget_id = 70350083, pos = { x = -294.996, y = 123.722, z = -644.091 }, rot = { x = 0.000, y = 140.559, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 216053, gadget_id = 70350083, pos = { x = -294.996, y = 123.722, z = -644.091 }, rot = { x = 0.000, y = 140.559, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 400 },
	{ config_id = 216054, gadget_id = 70350083, pos = { x = -352.414, y = 126.217, z = -581.039 }, rot = { x = 0.000, y = 140.559, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1216012, name = "CHALLENGE_SUCCESS_216012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_216012", trigger_count = 0 },
	{ config_id = 1216013, name = "CHALLENGE_FAIL_216013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_216013", trigger_count = 0 },
	{ config_id = 1216014, name = "GADGET_STATE_CHANGE_216014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_216014", trigger_count = 0 },
	{ config_id = 1216015, name = "ANY_GADGET_DIE_216015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1216016, name = "CHALLENGE_SUCCESS_216016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_216016", trigger_count = 0 },
	{ config_id = 1216018, name = "VARIABLE_CHANGE_216018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_216018", action = "action_EVENT_VARIABLE_CHANGE_216018", trigger_count = 0 },
	{ config_id = 1216019, name = "GADGET_CREATE_216019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_216019", action = "action_EVENT_GADGET_CREATE_216019", trigger_count = 0 },
	{ config_id = 1216020, name = "SELECT_OPTION_216020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_216020", action = "action_EVENT_SELECT_OPTION_216020", trigger_count = 0 },
	{ config_id = 1216021, name = "CHALLENGE_FAIL_216021", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_216021", trigger_count = 0 },
	{ config_id = 1216022, name = "GADGET_STATE_CHANGE_216022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_216022", trigger_count = 0 },
	{ config_id = 1216023, name = "ANY_GADGET_DIE_216023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1216024, name = "LEVEL_TAG_CHANGE_216024", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_216024", trigger_count = 0 },
	{ config_id = 1216025, name = "GADGET_CREATE_216025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_216025", action = "action_EVENT_GADGET_CREATE_216025", trigger_count = 0 },
	{ config_id = 1216026, name = "SELECT_OPTION_216026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_216026", action = "action_EVENT_SELECT_OPTION_216026", trigger_count = 0 },
	{ config_id = 1216028, name = "CHALLENGE_SUCCESS_216028", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_216028", trigger_count = 0 },
	{ config_id = 1216029, name = "CHALLENGE_FAIL_216029", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_216029", trigger_count = 0 },
	{ config_id = 1216030, name = "GADGET_STATE_CHANGE_216030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_216030", trigger_count = 0 },
	{ config_id = 1216031, name = "ANY_GADGET_DIE_216031", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	-- remove-5
	{ config_id = 1216032, name = "LEVEL_TAG_CHANGE_216032", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_216032", trigger_count = 0 },
	{ config_id = 1216033, name = "GADGET_CREATE_216033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_216033", action = "action_EVENT_GADGET_CREATE_216033", trigger_count = 0 },
	{ config_id = 1216034, name = "SELECT_OPTION_216034", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_216034", action = "action_EVENT_SELECT_OPTION_216034", trigger_count = 0 },
	{ config_id = 1216035, name = "GADGET_CREATE_216035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_216035", action = "action_EVENT_GADGET_CREATE_216035", trigger_count = 0 },
	{ config_id = 1216036, name = "SELECT_OPTION_216036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_216036", action = "action_EVENT_SELECT_OPTION_216036", trigger_count = 0 },
	{ config_id = 1216039, name = "LEVEL_TAG_CHANGE_216039", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_216039", trigger_count = 0 },
	{ config_id = 1216040, name = "GROUP_LOAD_216040", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_216040", trigger_count = 0 },
	{ config_id = 1216041, name = "GADGET_CREATE_216041", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_216041", trigger_count = 0 },
	-- remove-6
	{ config_id = 1216043, name = "LEVEL_TAG_CHANGE_216043", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_216043", trigger_count = 0 },
	{ config_id = 1216044, name = "GROUP_LOAD_216044", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_216044", trigger_count = 0 },
	-- remove-4
	{ config_id = 1216045, name = "LEVEL_TAG_CHANGE_216045", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_216045", trigger_count = 0 },
	-- remove-9
	{ config_id = 1216046, name = "LEVEL_TAG_CHANGE_216046", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_216046", trigger_count = 0 },
	-- remove-8
	{ config_id = 1216047, name = "LEVEL_TAG_CHANGE_216047", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_216047", trigger_count = 0 },
	-- remove-7
	{ config_id = 1216048, name = "LEVEL_TAG_CHANGE_216048", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_216048", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true },
	{ config_id = 2, name = "talk", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 216042 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_216018", "LEVEL_TAG_CHANGE_216024", "LEVEL_TAG_CHANGE_216032", "LEVEL_TAG_CHANGE_216043", "GROUP_LOAD_216044", "LEVEL_TAG_CHANGE_216045" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 216004, 216005, 216006, 216007, 216008, 216009, 216010, 216011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 216001 },
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_216039", "GROUP_LOAD_216040", "GADGET_CREATE_216041", "LEVEL_TAG_CHANGE_216046", "LEVEL_TAG_CHANGE_216047", "LEVEL_TAG_CHANGE_216048" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 216002, 216003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_216012", "CHALLENGE_FAIL_216013", "GADGET_STATE_CHANGE_216014", "ANY_GADGET_DIE_216015", "GADGET_CREATE_216019", "SELECT_OPTION_216020" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 216017, 216027 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_216016", "CHALLENGE_FAIL_216021", "GADGET_STATE_CHANGE_216022", "ANY_GADGET_DIE_216023", "GADGET_CREATE_216025", "SELECT_OPTION_216026" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 216049, 216050, 216051, 216052 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_216028", "CHALLENGE_FAIL_216029", "GADGET_STATE_CHANGE_216030", "ANY_GADGET_DIE_216031", "GADGET_CREATE_216033", "SELECT_OPTION_216034", "GADGET_CREATE_216035", "SELECT_OPTION_216036" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 216037 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 216038 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 216053, 216054 },
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
function action_EVENT_CHALLENGE_SUCCESS_216012(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 199004216, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199004216, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 216003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_216013(context, evt)
	-- 针对当前group内变量名为 "talk" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "talk", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004216, 2)
	
	-- 将configid为 216003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为216002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 216002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_216014(context, evt)
	if evt.param2 == 216003 and evt.param1 == 201 then
		ScriptLib.ActiveChallenge(context, 666, 2030, defs.duration, 2, 218, 8)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		ScriptLib.MarkPlayerAction(context, 3002, 1, 1)
		
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = -323.5,y = 131.4594,z = -611.4}, duration = 2, is_force = false, is_broadcast = false, is_recover_keep_current = true, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =true, is_change_play_mode = true, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_216016(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 199004216, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199004216, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 216017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_216018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"talk"为3
	if ScriptLib.GetGroupVariableValue(context, "talk") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_216018(context, evt)
	-- 将本组内变量名为 "talk" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "talk", 0, 199004216) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 调用提示id为 1111359 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111359) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_216019(context, evt)
	if 216002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_216019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199004216, 216002, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_216020(context, evt)
	-- 判断是gadgetid 216002 option_id 177
	if 216002 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_216020(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 216002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 216003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_216021(context, evt)
	-- 针对当前group内变量名为 "talk" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "talk", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004216, 2)
	
	-- 将configid为 216017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为216027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 216027 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_216022(context, evt)
	if evt.param2 == 216017 and evt.param1 == 201 then
		ScriptLib.ActiveChallenge(context, 666, 2030, defs.duration, 2, 218, 8)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		ScriptLib.MarkPlayerAction(context, 3002, 1, 1)
		
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = -323.5,y = 131.4594,z = -611.4}, duration = 2, is_force = false, is_broadcast = false, is_recover_keep_current = true, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =true, is_change_play_mode = true, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_216024(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.CheckSceneTag(context, 9,1023 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 6)
	else
		if ScriptLib.CheckSceneTag(context, 9,1022 ) then
			if evt.param1 == 9 or evt.param1 == 11 then
			else
				ScriptLib.AddExtraGroupSuite(context, 0, 5)
			end
		end
		
		if ScriptLib.CheckSceneTag(context, 9,1023 ) then
			if evt.param1 == 7 or evt.param1 == 13 then
			else
				ScriptLib.AddExtraGroupSuite(context, 0, 4)
			end
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_216025(context, evt)
	if 216027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_216025(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199004216, 216027, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_216026(context, evt)
	-- 判断是gadgetid 216027 option_id 177
	if 216027 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_216026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 216027 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 216017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_216028(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 199004216, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199004216, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 216049 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216049, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 216052 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216052, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_216029(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "talk" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "talk", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004216, 2)
	
	-- 将configid为 216052 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216052, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 216049 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216049, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为216050的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 216050 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为216051的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 216051 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_216030(context, evt)
	if evt.param2 == 216049 and evt.param1 == 201 and ScriptLib.GetGroupVariableValue(context, "temp") == 0 then
		ScriptLib.SetGroupVariableValue(context, "temp", 1)
		
		ScriptLib.SetGadgetStateByConfigId(context,216052, GadgetState.GearStart)
		
		ScriptLib.ActiveChallenge(context, 666, 2030, defs.duration, 2, 218, 8)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		ScriptLib.MarkPlayerAction(context, 3002, 1, 1)
		
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = -323.5,y = 131.4594,z = -611.4}, duration = 2, is_force = false, is_broadcast = false, is_recover_keep_current = true, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =true, is_change_play_mode = true, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	if evt.param2 == 216052 and evt.param1 == 201 and ScriptLib.GetGroupVariableValue(context, "temp") == 0 then
		ScriptLib.SetGroupVariableValue(context, "temp", 1)
		
		ScriptLib.SetGadgetStateByConfigId(context,216049, GadgetState.GearStart)
		
		ScriptLib.ActiveChallenge(context, 666, 2030, defs.duration, 2, 218, 8)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		ScriptLib.MarkPlayerAction(context, 3002, 1, 1)
		
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = -323.5,y = 131.4594,z = -611.4}, duration = 2, is_force = false, is_broadcast = false, is_recover_keep_current = true, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =true, is_change_play_mode = true, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_216032(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1022 ) then
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004216, 5)
	end
	
	if ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.CheckSceneTag(context, 9,1023 ) then
		ScriptLib.RemoveExtraGroupSuite(context, 199004216, 5)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_216033(context, evt)
	if 216050 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_216033(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199004216, 216050, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_216034(context, evt)
	-- 判断是gadgetid 216050 option_id 177
	if 216050 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_216034(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 216050 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 216051 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 216049 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216049, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_216035(context, evt)
	if 216051 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_216035(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199004216, 216051, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_216036(context, evt)
	-- 判断是gadgetid 216051 option_id 177
	if 216051 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_216036(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 216051 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 216050 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 216052 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216052, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_216039(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.CheckSceneTag(context, 9,1023 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 9)
	else
		if ScriptLib.CheckSceneTag(context, 9,1022 ) then
			ScriptLib.AddExtraGroupSuite(context, 0, 8)
		end
		
		if ScriptLib.CheckSceneTag(context, 9,1023 ) then
			ScriptLib.AddExtraGroupSuite(context, 0, 7)
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_216040(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.CheckSceneTag(context, 9,1023 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 9)
	else
		if ScriptLib.CheckSceneTag(context, 9,1022 ) then
			ScriptLib.AddExtraGroupSuite(context, 0, 8)
		end
		
		if ScriptLib.CheckSceneTag(context, 9,1023 ) then
			ScriptLib.AddExtraGroupSuite(context, 0, 7)
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_CREATE_216041(context, evt)
	if evt.param1 == 216001 then
		if ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.CheckSceneTag(context, 9,1023 ) then
			ScriptLib.AddExtraGroupSuite(context, 0, 9)
			
			ScriptLib.RemoveExtraGroupSuite(context, 199004216, 4)
			
			ScriptLib.RemoveExtraGroupSuite(context, 199004216, 5)
			
			ScriptLib.RemoveExtraGroupSuite(context, 199004216, 6)
		else
			if ScriptLib.CheckSceneTag(context, 9,1022 ) then
				ScriptLib.AddExtraGroupSuite(context, 0, 8)
				
				ScriptLib.RemoveExtraGroupSuite(context, 199004216, 6)
				
				ScriptLib.RemoveExtraGroupSuite(context, 199004216, 5)
				
				ScriptLib.RemoveExtraGroupSuite(context, 199004216, 4)
			end
			
			if ScriptLib.CheckSceneTag(context, 9,1023 ) then
				ScriptLib.AddExtraGroupSuite(context, 0, 7)
				
				ScriptLib.RemoveExtraGroupSuite(context, 199004216, 6)
				
				ScriptLib.RemoveExtraGroupSuite(context, 199004216, 5)
				
				ScriptLib.RemoveExtraGroupSuite(context, 199004216, 4)
			end
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_216043(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.CheckSceneTag(context, 9,1023 ) then
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004216, 6)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_216044(context, evt)
	ScriptLib.SetGroupVariableValue(context, "temp", 0)
	
	if ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.CheckSceneTag(context, 9,1023 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 6)
	else
		if ScriptLib.CheckSceneTag(context, 9,1022 ) then
			ScriptLib.AddExtraGroupSuite(context, 0, 5)
		end
		
		if ScriptLib.CheckSceneTag(context, 9,1023 ) then
			ScriptLib.AddExtraGroupSuite(context, 0, 4)
		end
	end
	
	ScriptLib.RemoveExtraGroupSuite(context, 199004216, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_216045(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1023 ) then
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004216, 4)
	end
	
	if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1022 ) then
		ScriptLib.RemoveExtraGroupSuite(context, 199004216, 4)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_216046(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.CheckSceneTag(context, 9,1023 ) then
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004216, 9)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_216047(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1022 ) then
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004216, 8)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_216048(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1023 ) then
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004216, 7)
	end
	
	return 0
end