-- 基础信息
local base_info = {
	group_id = 133008479
}

-- Trigger变量
local defs = {
	duration = 180,
	kill_sum = 14,
	group_id = 133008479,
	gadget_controller_id = 479004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 479001, monster_id = 21011301, pos = { x = 941.691, y = 286.943, z = -931.835 }, rot = { x = 0.000, y = 207.382, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 479009, monster_id = 21010901, pos = { x = 937.808, y = 286.781, z = -937.219 }, rot = { x = 0.000, y = 175.228, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 479011, monster_id = 21010901, pos = { x = 962.499, y = 286.603, z = -947.198 }, rot = { x = 0.000, y = 277.882, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 479012, monster_id = 21010901, pos = { x = 959.600, y = 286.522, z = -953.154 }, rot = { x = 0.000, y = 304.295, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 479013, monster_id = 21030501, pos = { x = 965.601, y = 286.836, z = -951.648 }, rot = { x = 0.000, y = 273.252, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 479014, monster_id = 21030501, pos = { x = 929.696, y = 286.464, z = -954.237 }, rot = { x = 0.000, y = 22.246, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 479015, monster_id = 21010901, pos = { x = 931.066, y = 286.705, z = -957.394 }, rot = { x = 0.000, y = 77.998, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 479016, monster_id = 21010901, pos = { x = 922.438, y = 286.569, z = -955.478 }, rot = { x = 0.000, y = 34.909, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 479018, monster_id = 21010901, pos = { x = 933.915, y = 287.002, z = -934.191 }, rot = { x = 0.000, y = 100.297, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 479019, monster_id = 21010901, pos = { x = 962.851, y = 287.151, z = -953.298 }, rot = { x = 0.000, y = 304.295, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 479029, monster_id = 21030501, pos = { x = 923.798, y = 286.483, z = -959.064 }, rot = { x = 0.000, y = 22.246, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 479031, monster_id = 22010201, pos = { x = 941.705, y = 286.280, z = -952.133 }, rot = { x = 0.000, y = 317.125, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 479032, monster_id = 22010201, pos = { x = 937.698, y = 286.280, z = -942.305 }, rot = { x = 0.000, y = 214.036, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 479034, monster_id = 22010201, pos = { x = 935.444, y = 286.365, z = -951.092 }, rot = { x = 0.000, y = 49.175, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 479002, gadget_id = 70350082, pos = { x = 937.837, y = 286.431, z = -947.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 479003, gadget_id = 70211145, pos = { x = 935.686, y = 286.399, z = -949.352 }, rot = { x = 0.000, y = 27.083, z = 0.000 }, level = 26, drop_tag = "雪山玉髓高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 },
	{ config_id = 479004, gadget_id = 70360001, pos = { x = 937.827, y = 286.900, z = -947.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 479020, gadget_id = 70360132, pos = { x = 936.595, y = 286.997, z = -935.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 479021, gadget_id = 70360132, pos = { x = 961.737, y = 286.648, z = -949.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 479027, gadget_id = 70360132, pos = { x = 925.862, y = 286.502, z = -956.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1479005, name = "CHALLENGE_SUCCESS_479005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_479005" },
	{ config_id = 1479006, name = "CHALLENGE_FAIL_479006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_479006", trigger_count = 0 },
	{ config_id = 1479007, name = "GADGET_CREATE_479007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_479007", action = "action_EVENT_GADGET_CREATE_479007", trigger_count = 0 },
	{ config_id = 1479008, name = "SELECT_OPTION_479008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_479008", action = "action_EVENT_SELECT_OPTION_479008", trigger_count = 0 },
	{ config_id = 1479010, name = "ANY_MONSTER_DIE_479010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_479010", action = "action_EVENT_ANY_MONSTER_DIE_479010", trigger_count = 0 },
	{ config_id = 1479017, name = "ANY_MONSTER_DIE_479017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_479017", action = "action_EVENT_ANY_MONSTER_DIE_479017", trigger_count = 0 },
	{ config_id = 1479022, name = "GROUP_LOAD_479022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_479022", action = "action_EVENT_GROUP_LOAD_479022", trigger_count = 0 },
	{ config_id = 1479030, name = "ANY_MONSTER_DIE_479030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_479030", action = "action_EVENT_ANY_MONSTER_DIE_479030", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 479002, 479004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_479005", "CHALLENGE_FAIL_479006", "GADGET_CREATE_479007", "SELECT_OPTION_479008", "GROUP_LOAD_479022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 479001, 479009, 479018 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_479010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 479011, 479012, 479013, 479019 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_479017" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 479014, 479015, 479016, 479029 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_479030" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 479020, 479021, 479027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 479031, 479032, 479034 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_479005(context, evt)
	-- 将configid为 479002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 479002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为479003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 479003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 6)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 触发镜头注目，注目位置为坐标（976，292，-937），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=976, y=292, z=-937}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133008039, monsters = {}, gadgets = {39004} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133008156, monsters = {}, gadgets = {156011} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_479006(context, evt)
	-- 将configid为 479002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 479002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为479004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 479004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 6)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_479007(context, evt)
	if 479004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_479007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008479, 479004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_479008(context, evt)
	-- 判断是gadgetid 479004 option_id 177
	if 479004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_479008(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 添加suite5的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 5)
	
	-- 调用提示id为 400012 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400012) then
		return -1
	end
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 479002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_479010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_479010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008479, 3)
	
	-- 调用提示id为 400013 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_479017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_479017(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008479, 4)
	
	-- 调用提示id为 400014 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_479022(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133008479, 479002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_479022(context, evt)
	-- 将configid为 479002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 479002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为479004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 479004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 6)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_479030(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_479030(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008479, 6)
	
	-- 调用提示id为 400015 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008479, 4)
	
	return 0
end