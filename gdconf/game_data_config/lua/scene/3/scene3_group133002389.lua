-- 基础信息
local base_info = {
	group_id = 133002389
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 389001, monster_id = 21010901, pos = { x = 1737.118, y = 239.843, z = -626.473 }, rot = { x = 0.000, y = 318.292, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 3 },
	{ config_id = 389002, monster_id = 21020201, pos = { x = 1727.041, y = 232.373, z = -643.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, affix = { 1006, 1018 }, isElite = true, pose_id = 401, area_id = 3 },
	{ config_id = 389003, monster_id = 21030101, pos = { x = 1739.052, y = 233.731, z = -642.684 }, rot = { x = 0.000, y = 292.089, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 389004, monster_id = 21010301, pos = { x = 1719.963, y = 231.972, z = -623.167 }, rot = { x = 0.000, y = 66.993, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9013, area_id = 3 },
	{ config_id = 389005, monster_id = 21010301, pos = { x = 1725.462, y = 231.465, z = -623.281 }, rot = { x = 0.000, y = 293.951, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9013, area_id = 3 },
	{ config_id = 389013, monster_id = 21010201, pos = { x = 1716.948, y = 231.700, z = -632.798 }, rot = { x = 0.000, y = 7.453, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 389014, monster_id = 20010901, pos = { x = 1721.067, y = 232.081, z = -616.468 }, rot = { x = 0.000, y = 184.704, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 389017, monster_id = 20011101, pos = { x = 1719.097, y = 234.948, z = -650.401 }, rot = { x = 0.000, y = 337.973, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 389018, monster_id = 20010801, pos = { x = 1721.726, y = 232.049, z = -613.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 389019, monster_id = 20011001, pos = { x = 1718.755, y = 235.274, z = -651.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 389006, gadget_id = 70300093, pos = { x = 1721.644, y = 232.562, z = -643.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 389007, gadget_id = 70300093, pos = { x = 1735.534, y = 233.710, z = -645.100 }, rot = { x = 0.000, y = 139.405, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 389008, gadget_id = 70300089, pos = { x = 1742.821, y = 234.578, z = -640.503 }, rot = { x = 0.000, y = 150.137, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 389009, gadget_id = 70220013, pos = { x = 1714.663, y = 232.160, z = -633.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 389010, gadget_id = 70220013, pos = { x = 1714.681, y = 232.036, z = -630.899 }, rot = { x = 6.338, y = 36.326, z = 351.461 }, level = 10, drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 389011, gadget_id = 70220014, pos = { x = 1714.705, y = 232.083, z = -629.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 389012, gadget_id = 70220014, pos = { x = 1714.086, y = 232.319, z = -628.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 389024, gadget_id = 70300093, pos = { x = 1722.348, y = 231.789, z = -622.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 389026, gadget_id = 70300093, pos = { x = 1722.348, y = 231.789, z = -622.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 389027, gadget_id = 70300093, pos = { x = 1735.534, y = 233.710, z = -645.100 }, rot = { x = 0.000, y = 139.405, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 389028, gadget_id = 70300093, pos = { x = 1721.644, y = 232.562, z = -643.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1389015, name = "VARIABLE_CHANGE_389015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_389015", action = "" },
	{ config_id = 1389016, name = "ANY_MONSTER_DIE_389016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_389016", action = "action_EVENT_ANY_MONSTER_DIE_389016" },
	{ config_id = 1389020, name = "ANY_MONSTER_DIE_389020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_389020", action = "action_EVENT_ANY_MONSTER_DIE_389020" },
	{ config_id = 1389021, name = "ANY_MONSTER_DIE_389021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_389021", action = "action_EVENT_ANY_MONSTER_DIE_389021" },
	{ config_id = 1389022, name = "ANY_MONSTER_DIE_389022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_389022", action = "action_EVENT_ANY_MONSTER_DIE_389022" },
	{ config_id = 1389023, name = "ANY_MONSTER_DIE_389023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_389023", action = "action_EVENT_ANY_MONSTER_DIE_389023" },
	{ config_id = 1389025, name = "ANY_MONSTER_DIE_389025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_389025", action = "action_EVENT_ANY_MONSTER_DIE_389025" }
}

-- 变量
variables = {
	{ config_id = 1, name = "slimeNum", value = 0, no_refresh = false }
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
		monsters = { 389001, 389002, 389003, 389004, 389005, 389013 },
		gadgets = { 389006, 389007, 389008, 389009, 389010, 389011, 389012, 389024 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_389015", "ANY_MONSTER_DIE_389016", "ANY_MONSTER_DIE_389020", "ANY_MONSTER_DIE_389021", "ANY_MONSTER_DIE_389022", "ANY_MONSTER_DIE_389023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 389014, 389017, 389018, 389019 },
		gadgets = { 389026, 389027, 389028 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_389025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_389015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"slimeNum"为4
	if ScriptLib.GetGroupVariableValue(context, "slimeNum") ~= 4 then
			return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_389016(context, evt)
	if 389017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_389016(context, evt)
	-- 针对当前group内变量名为 "slimeNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "slimeNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_389020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_389020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330023891") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1729,y=231,z=-636}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110155, pos, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_389021(context, evt)
	if 389014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_389021(context, evt)
	-- 针对当前group内变量名为 "slimeNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "slimeNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_389022(context, evt)
	if 389019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_389022(context, evt)
	-- 针对当前group内变量名为 "slimeNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "slimeNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_389023(context, evt)
	if 389018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_389023(context, evt)
	-- 针对当前group内变量名为 "slimeNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "slimeNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_389025(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_389025(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330023892") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end