-- 基础信息
local base_info = {
	group_id = 133002392
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 392005, monster_id = 25010301, pos = { x = 2160.692, y = 213.432, z = -583.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9003, area_id = 3 },
	{ config_id = 392006, monster_id = 25010301, pos = { x = 2139.490, y = 213.309, z = -586.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9002, area_id = 3 },
	{ config_id = 392007, monster_id = 25010501, pos = { x = 2142.238, y = 215.337, z = -570.263 }, rot = { x = 0.000, y = 111.300, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 4, area_id = 3 },
	{ config_id = 392008, monster_id = 25010501, pos = { x = 2132.791, y = 214.749, z = -580.101 }, rot = { x = 0.000, y = 99.602, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 392009, monster_id = 25030301, pos = { x = 2149.856, y = 213.449, z = -577.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 392010, monster_id = 25010701, pos = { x = 2149.227, y = 213.138, z = -565.966 }, rot = { x = 0.000, y = 150.392, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9005, area_id = 3 },
	{ config_id = 392011, monster_id = 25070101, pos = { x = 2167.824, y = 209.910, z = -557.397 }, rot = { x = 0.000, y = 203.923, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 392012, monster_id = 25030201, pos = { x = 2134.086, y = 214.681, z = -578.022 }, rot = { x = 359.944, y = 81.603, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 392001, gadget_id = 70300093, pos = { x = 2144.832, y = 214.719, z = -567.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 392002, gadget_id = 70300105, pos = { x = 2152.552, y = 212.901, z = -562.478 }, rot = { x = 0.000, y = 275.982, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 392003, gadget_id = 70310001, pos = { x = 2159.486, y = 212.979, z = -567.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 392004, gadget_id = 70310001, pos = { x = 2139.088, y = 216.156, z = -569.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1392013, name = "ANY_MONSTER_DIE_392013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_392013", action = "action_EVENT_ANY_MONSTER_DIE_392013" },
	{ config_id = 1392014, name = "ANY_MONSTER_DIE_392014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_392014", action = "action_EVENT_ANY_MONSTER_DIE_392014" },
	{ config_id = 1392015, name = "VARIABLE_CHANGE_392015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_392015", action = "action_EVENT_VARIABLE_CHANGE_392015" },
	{ config_id = 1392016, name = "ANY_MONSTER_DIE_392016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_392016", action = "action_EVENT_ANY_MONSTER_DIE_392016" },
	{ config_id = 1392017, name = "ANY_MONSTER_DIE_392017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_392017", action = "action_EVENT_ANY_MONSTER_DIE_392017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "thiefNum", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 392005, 392006, 392007, 392009, 392010 },
		gadgets = { 392001, 392002, 392003, 392004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_392013", "ANY_MONSTER_DIE_392014", "VARIABLE_CHANGE_392015", "ANY_MONSTER_DIE_392016", "ANY_MONSTER_DIE_392017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 392008, 392011, 392012 },
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
function condition_EVENT_ANY_MONSTER_DIE_392013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_392013(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2145,y=214,z=-575}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2145, y=214, z=-575}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002392, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_392014(context, evt)
	if 392008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_392014(context, evt)
	-- 针对当前group内变量名为 "thiefNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "thiefNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_392015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"thiefNum"为3
	if ScriptLib.GetGroupVariableValue(context, "thiefNum") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_392015(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2148,y=213,z=-574}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110163, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330023921") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_392016(context, evt)
	if 392011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_392016(context, evt)
	-- 针对当前group内变量名为 "thiefNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "thiefNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_392017(context, evt)
	if 392012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_392017(context, evt)
	-- 针对当前group内变量名为 "thiefNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "thiefNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end