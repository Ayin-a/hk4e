-- 基础信息
local base_info = {
	group_id = 133101095
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 95001, monster_id = 21010601, pos = { x = 1622.153, y = 224.355, z = 1267.562 }, rot = { x = 0.000, y = 237.648, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 95002, monster_id = 21010201, pos = { x = 1573.815, y = 224.976, z = 1244.069 }, rot = { x = 0.000, y = 83.462, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 95003, monster_id = 21010201, pos = { x = 1572.364, y = 224.902, z = 1245.904 }, rot = { x = 0.000, y = 83.462, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 95005, monster_id = 21010601, pos = { x = 1623.335, y = 224.298, z = 1266.486 }, rot = { x = 0.000, y = 240.230, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 95006, monster_id = 21010201, pos = { x = 1625.495, y = 224.289, z = 1263.772 }, rot = { x = 0.000, y = 240.011, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 95019, monster_id = 21010301, pos = { x = 1574.402, y = 224.964, z = 1247.486 }, rot = { x = 0.000, y = 84.119, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 95020, monster_id = 21010301, pos = { x = 1575.565, y = 224.989, z = 1245.142 }, rot = { x = 0.000, y = 84.119, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 95021, monster_id = 21010701, pos = { x = 1574.205, y = 225.100, z = 1250.249 }, rot = { x = 0.000, y = 84.119, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 95023, monster_id = 21010201, pos = { x = 1573.361, y = 224.992, z = 1248.804 }, rot = { x = 0.000, y = 83.462, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 95024, monster_id = 21010101, pos = { x = 1574.924, y = 224.990, z = 1248.218 }, rot = { x = 0.000, y = 83.462, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 95025, monster_id = 21010101, pos = { x = 1575.226, y = 224.979, z = 1245.422 }, rot = { x = 0.000, y = 83.462, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 95026, monster_id = 21010201, pos = { x = 1623.971, y = 224.267, z = 1265.115 }, rot = { x = 0.000, y = 243.754, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 95004, gadget_id = 70220010, pos = { x = 1605.050, y = 225.371, z = 1257.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 95007, gadget_id = 70350036, pos = { x = 1600.828, y = 225.641, z = 1251.345 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 95008, gadget_id = 70300118, pos = { x = 1600.834, y = 227.223, z = 1251.328 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 95009, gadget_id = 70350023, pos = { x = 1600.828, y = 225.294, z = 1251.345 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 95028, gadget_id = 70220010, pos = { x = 1596.281, y = 225.373, z = 1246.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 95029, gadget_id = 70220005, pos = { x = 1586.802, y = 225.279, z = 1244.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1095010, name = "ANY_MONSTER_DIE_95010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_95010", action = "action_EVENT_ANY_MONSTER_DIE_95010", trigger_count = 0 },
	{ config_id = 1095011, name = "ANY_MONSTER_DIE_95011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_95011", action = "action_EVENT_ANY_MONSTER_DIE_95011", trigger_count = 0 },
	{ config_id = 1095012, name = "GADGET_CREATE_95012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_95012", action = "action_EVENT_GADGET_CREATE_95012", trigger_count = 0 },
	{ config_id = 1095013, name = "ANY_MONSTER_DIE_95013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_95013", trigger_count = 0 },
	{ config_id = 1095014, name = "ANY_MONSTER_DIE_95014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_95014", action = "action_EVENT_ANY_MONSTER_DIE_95014", trigger_count = 0 },
	{ config_id = 1095015, name = "SELECT_OPTION_95015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_95015", action = "action_EVENT_SELECT_OPTION_95015", trigger_count = 0 },
	{ config_id = 1095016, name = "CHALLENGE_SUCCESS_95016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_95016", trigger_count = 0 },
	{ config_id = 1095017, name = "CHALLENGE_FAIL_95017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_95017", trigger_count = 0 },
	{ config_id = 1095018, name = "ANY_MONSTER_LIVE_95018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_95018", action = "action_EVENT_ANY_MONSTER_LIVE_95018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
	{ config_id = 2, name = "hasFinished", value = 0, no_refresh = false }
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
		gadgets = { 95009 },
		regions = { },
		triggers = { "GADGET_CREATE_95012", "ANY_MONSTER_DIE_95013", "SELECT_OPTION_95015", "CHALLENGE_SUCCESS_95016", "CHALLENGE_FAIL_95017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 95002, 95003, 95023, 95024, 95025 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_95010", "ANY_MONSTER_LIVE_95018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 95019, 95020, 95021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_95011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 95001, 95005, 95006, 95026 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_95014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 95007 },
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
function condition_EVENT_ANY_MONSTER_DIE_95010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1600, y=225, z=1251}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1600,y=225,z=1251}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101095, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_95011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95011(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1600, y=225, z=1251}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1600,y=225,z=1251}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101095, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_95012(context, evt)
	if 95009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_95012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133101095, 95009, {2902}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95013(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_95014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95014(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_95015(context, evt)
	-- 判断是gadgetid 95009 option_id 2902
	if 95009 ~= evt.param1 then
		return false	
	end
	
	if 2902 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_95015(context, evt)
	-- 删除指定group： 133101095 ；指定config：95009；物件身上指定option：2902；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133101095, 95009, 2902) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 95009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101095, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_95016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 5)
	
	-- 将configid为 95009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95009, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95028 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95029 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_95017(context, evt)
	-- 将configid为 95009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95009, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133101095, 95009, {2902}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95028 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95029 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_95018(context, evt)
	if 95002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_95018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101095, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133101095, 12, 95007, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 创建id为95004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 95004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为95028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 95028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为95029的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 95029 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end