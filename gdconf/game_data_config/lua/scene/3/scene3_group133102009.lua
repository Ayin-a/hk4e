-- 基础信息
local base_info = {
	group_id = 133102009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9002, monster_id = 21010701, pos = { x = 1773.145, y = 222.340, z = 842.727 }, rot = { x = 0.000, y = 321.300, z = 0.000 }, level = 18, drop_id = 1000100, affix = { 1008 }, area_id = 5 },
	{ config_id = 9006, monster_id = 21010601, pos = { x = 1754.719, y = 220.312, z = 870.547 }, rot = { x = 0.000, y = 17.077, z = 0.000 }, level = 18, drop_id = 1000100, affix = { 1008 }, pose_id = 9011, area_id = 5 },
	{ config_id = 9007, monster_id = 21010601, pos = { x = 1753.233, y = 220.518, z = 862.464 }, rot = { x = 0.000, y = 111.534, z = 0.000 }, level = 18, drop_id = 1000100, affix = { 1008 }, pose_id = 9011, area_id = 5 },
	{ config_id = 9008, monster_id = 21011001, pos = { x = 1769.701, y = 218.811, z = 861.592 }, rot = { x = 0.000, y = 161.348, z = 0.000 }, level = 18, drop_id = 1000100, affix = { 1008 }, pose_id = 32, area_id = 5 },
	{ config_id = 9009, monster_id = 21020201, pos = { x = 1750.356, y = 220.294, z = 868.375 }, rot = { x = 0.000, y = 125.970, z = 0.000 }, level = 18, drop_id = 1000100, affix = { 1008 }, pose_id = 401, area_id = 5 },
	{ config_id = 9024, monster_id = 21020301, pos = { x = 1740.524, y = 214.108, z = 835.559 }, rot = { x = 0.000, y = 21.430, z = 0.000 }, level = 18, drop_id = 1000100, affix = { 1008 }, isElite = true, area_id = 5 },
	{ config_id = 9025, monster_id = 21011201, pos = { x = 1739.544, y = 214.504, z = 832.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_id = 1000100, affix = { 1018 }, area_id = 5 },
	{ config_id = 9026, monster_id = 21011201, pos = { x = 1738.869, y = 214.299, z = 834.941 }, rot = { x = 0.000, y = 23.209, z = 0.000 }, level = 18, drop_id = 1000100, affix = { 1018 }, area_id = 5 },
	{ config_id = 9027, monster_id = 21010701, pos = { x = 1771.202, y = 222.363, z = 842.606 }, rot = { x = 0.000, y = 342.923, z = 0.000 }, level = 18, drop_id = 1000100, affix = { 1018 }, area_id = 5 },
	{ config_id = 9028, monster_id = 21010701, pos = { x = 1771.462, y = 220.539, z = 846.195 }, rot = { x = 0.000, y = 328.253, z = 0.000 }, level = 18, drop_id = 1000100, affix = { 1018 }, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9001, gadget_id = 70290017, pos = { x = 1755.093, y = 220.589, z = 873.456 }, rot = { x = 282.114, y = 254.124, z = 60.727 }, level = 18, area_id = 5 },
	{ config_id = 9004, gadget_id = 70290017, pos = { x = 1753.064, y = 220.588, z = 861.656 }, rot = { x = 274.010, y = 30.032, z = 262.150 }, level = 18, area_id = 5 },
	{ config_id = 9005, gadget_id = 70290017, pos = { x = 1737.922, y = 221.431, z = 873.958 }, rot = { x = 273.850, y = 74.389, z = 274.151 }, level = 18, area_id = 5 },
	{ config_id = 9011, gadget_id = 70210104, pos = { x = 1755.113, y = 220.609, z = 873.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 5 },
	{ config_id = 9012, gadget_id = 70300118, pos = { x = 1755.075, y = 220.484, z = 873.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 9013, gadget_id = 70210104, pos = { x = 1737.893, y = 221.432, z = 873.984 }, rot = { x = 359.241, y = 348.533, z = 359.868 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 5 },
	{ config_id = 9014, gadget_id = 70210104, pos = { x = 1753.033, y = 220.549, z = 861.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 5 },
	{ config_id = 9017, gadget_id = 70300118, pos = { x = 1753.069, y = 220.549, z = 861.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 9022, gadget_id = 70300118, pos = { x = 1737.913, y = 221.667, z = 873.948 }, rot = { x = 359.241, y = 348.533, z = 359.868 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 9003, shape = RegionShape.SPHERE, radius = 20.5, pos = { x = 1762.116, y = 217.918, z = 855.424 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1009003, name = "ENTER_REGION_9003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9003", action = "action_EVENT_ENTER_REGION_9003" },
	{ config_id = 1009010, name = "ANY_MONSTER_DIE_9010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9010", action = "action_EVENT_ANY_MONSTER_DIE_9010" },
	{ config_id = 1009015, name = "GADGET_STATE_CHANGE_9015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9015", action = "action_EVENT_GADGET_STATE_CHANGE_9015" },
	{ config_id = 1009016, name = "GADGET_STATE_CHANGE_9016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9016", action = "action_EVENT_GADGET_STATE_CHANGE_9016" },
	{ config_id = 1009018, name = "GADGET_STATE_CHANGE_9018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9018", action = "action_EVENT_GADGET_STATE_CHANGE_9018" },
	{ config_id = 1009019, name = "VARIABLE_CHANGE_9019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_9019", action = "action_EVENT_VARIABLE_CHANGE_9019" },
	{ config_id = 1009020, name = "VARIABLE_CHANGE_9020", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_9020", action = "action_EVENT_VARIABLE_CHANGE_9020" },
	{ config_id = 1009021, name = "VARIABLE_CHANGE_9021", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_9021", action = "action_EVENT_VARIABLE_CHANGE_9021" },
	{ config_id = 1009023, name = "ANY_MONSTER_DIE_9023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9023", action = "action_EVENT_ANY_MONSTER_DIE_9023" }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestnum", value = 0, no_refresh = false }
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
		monsters = { 9002, 9006, 9007, 9008, 9009 },
		gadgets = { },
		regions = { 9003 },
		triggers = { "ENTER_REGION_9003", "ANY_MONSTER_DIE_9010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 9001, 9004, 9005, 9011, 9012, 9013, 9014, 9017, 9022 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9015", "GADGET_STATE_CHANGE_9016", "GADGET_STATE_CHANGE_9018", "VARIABLE_CHANGE_9019", "VARIABLE_CHANGE_9020", "VARIABLE_CHANGE_9021" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 9024, 9025, 9026, 9027, 9028 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_9023" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_9003(context, evt)
	if evt.param1 ~= 9003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9003(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1762,y=217,z=855}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021001, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9010(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102009, 4)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1754,y=220,z=864}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1754, y=220, z=864}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9015(context, evt)
	if 9014 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9015(context, evt)
	-- 针对当前group内变量名为 "chestnum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "chestnum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102009, EntityType.GADGET, 9017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102009, EntityType.GADGET, 9004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9016(context, evt)
	if 9013 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9016(context, evt)
	-- 针对当前group内变量名为 "chestnum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "chestnum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102009, EntityType.GADGET, 9022 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102009, EntityType.GADGET, 9005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9018(context, evt)
	if 9011 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9018(context, evt)
	-- 针对当前group内变量名为 "chestnum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "chestnum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102009, EntityType.GADGET, 9012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102009, EntityType.GADGET, 9001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestnum"为3
	if ScriptLib.GetGroupVariableValue(context, "chestnum") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331020092") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1752,y=220,z=864}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021006, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestnum"为1
	if ScriptLib.GetGroupVariableValue(context, "chestnum") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9020(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1752,y=220,z=864}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestnum"为2
	if ScriptLib.GetGroupVariableValue(context, "chestnum") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9021(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1752,y=220,z=864}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021005, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9023(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331020091") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1754,y=220,z=864}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021003, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end