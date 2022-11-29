-- 基础信息
local base_info = {
	group_id = 133103311
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 311001, monster_id = 21010301, pos = { x = 896.732, y = 268.694, z = 1578.950 }, rot = { x = 0.000, y = 0.275, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 311002, monster_id = 21010201, pos = { x = 895.416, y = 269.416, z = 1577.561 }, rot = { x = 0.000, y = 5.502, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 311004, monster_id = 21030401, pos = { x = 882.438, y = 261.361, z = 1606.757 }, rot = { x = 0.000, y = 124.458, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 311005, monster_id = 21011201, pos = { x = 883.723, y = 261.927, z = 1602.990 }, rot = { x = 0.000, y = 106.107, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 311006, monster_id = 21011201, pos = { x = 887.353, y = 261.768, z = 1610.236 }, rot = { x = 0.000, y = 168.363, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 311019, monster_id = 21010601, pos = { x = 895.152, y = 269.480, z = 1577.474 }, rot = { x = 0.000, y = 0.275, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 311020, monster_id = 21010601, pos = { x = 896.564, y = 269.325, z = 1577.467 }, rot = { x = 0.000, y = 0.275, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 311021, monster_id = 21010301, pos = { x = 894.748, y = 268.772, z = 1579.685 }, rot = { x = 0.000, y = 0.275, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 311023, monster_id = 21010201, pos = { x = 896.325, y = 268.463, z = 1579.556 }, rot = { x = 0.000, y = 5.502, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 311024, monster_id = 21010201, pos = { x = 897.047, y = 269.375, z = 1577.404 }, rot = { x = 0.000, y = 5.502, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 311025, monster_id = 21010701, pos = { x = 894.942, y = 268.572, z = 1579.991 }, rot = { x = 0.000, y = 5.502, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 311026, monster_id = 21011201, pos = { x = 884.650, y = 261.664, z = 1606.486 }, rot = { x = 0.000, y = 130.694, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 311007, gadget_id = 70350036, pos = { x = 896.228, y = 262.897, z = 1598.143 }, rot = { x = 0.000, y = 312.306, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 311008, gadget_id = 70300118, pos = { x = 896.090, y = 264.755, z = 1598.224 }, rot = { x = 7.534, y = 296.041, z = 356.759 }, level = 1, area_id = 6 },
	{ config_id = 311009, gadget_id = 70350023, pos = { x = 896.253, y = 262.917, z = 1597.985 }, rot = { x = 9.306, y = 312.115, z = 357.658 }, level = 1, persistent = true, area_id = 6 },
	{ config_id = 311027, gadget_id = 70220005, pos = { x = 889.317, y = 264.611, z = 1592.567 }, rot = { x = 21.812, y = 357.666, z = 351.704 }, level = 1, area_id = 6 },
	{ config_id = 311028, gadget_id = 70220010, pos = { x = 903.089, y = 263.256, z = 1595.602 }, rot = { x = 1.721, y = 359.122, z = 355.508 }, level = 1, area_id = 6 },
	{ config_id = 311029, gadget_id = 70220005, pos = { x = 897.060, y = 262.229, z = 1603.479 }, rot = { x = 9.580, y = 1.025, z = 9.787 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1311010, name = "ANY_MONSTER_DIE_311010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_311010", action = "action_EVENT_ANY_MONSTER_DIE_311010", trigger_count = 0 },
	{ config_id = 1311011, name = "ANY_MONSTER_DIE_311011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_311011", action = "action_EVENT_ANY_MONSTER_DIE_311011", trigger_count = 0 },
	{ config_id = 1311012, name = "GADGET_CREATE_311012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_311012", action = "action_EVENT_GADGET_CREATE_311012", trigger_count = 0 },
	{ config_id = 1311013, name = "ANY_MONSTER_DIE_311013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_311013", trigger_count = 0 },
	{ config_id = 1311014, name = "ANY_MONSTER_DIE_311014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_311014", action = "action_EVENT_ANY_MONSTER_DIE_311014", trigger_count = 0 },
	{ config_id = 1311015, name = "SELECT_OPTION_311015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_311015", action = "action_EVENT_SELECT_OPTION_311015", trigger_count = 0 },
	{ config_id = 1311016, name = "CHALLENGE_SUCCESS_311016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_311016", trigger_count = 0 },
	{ config_id = 1311017, name = "CHALLENGE_FAIL_311017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_311017", trigger_count = 0 },
	{ config_id = 1311018, name = "ANY_MONSTER_LIVE_311018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_311018", action = "action_EVENT_ANY_MONSTER_LIVE_311018", trigger_count = 0 }
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
		gadgets = { 311009 },
		regions = { },
		triggers = { "GADGET_CREATE_311012", "ANY_MONSTER_DIE_311013", "SELECT_OPTION_311015", "CHALLENGE_SUCCESS_311016", "CHALLENGE_FAIL_311017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 311002, 311023, 311024, 311025 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_311010", "ANY_MONSTER_LIVE_311018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 311001, 311019, 311020, 311021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_311011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 311004, 311005, 311006, 311026 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_311014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 311007 },
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
function condition_EVENT_ANY_MONSTER_DIE_311010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_311010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=896, y=262, z=1598}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=896,y=262,z=1598}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103311, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_311011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_311011(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=896, y=262, z=1598}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=896,y=262,z=1598}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103311, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_311012(context, evt)
	if 311009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_311012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103311, 311009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_311013(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_311014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_311014(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_311015(context, evt)
	-- 判断是gadgetid 311009 option_id 7
	if 311009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_311015(context, evt)
	-- 将configid为 311009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103311, 2)
	
	-- 删除指定group： 133103311 ；指定config：311009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103311, 311009, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_311016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 3)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133103311, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 5)
	
	-- 将configid为 311009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311009, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311027 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311028 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311029 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_311017(context, evt)
	-- 将configid为 311009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311009, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 3)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133103311, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103311, 311009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311027 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311028 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311029 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_311018(context, evt)
	if 311002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_311018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103311, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133103311, 12, 311007, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 创建id为311027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 311027 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为311028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 311028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为311029的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 311029 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end