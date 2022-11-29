-- 基础信息
local base_info = {
	group_id = 133102790
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 790001, monster_id = 21011201, pos = { x = 1427.121, y = 220.965, z = 532.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_id = 1000100, pose_id = 9010, area_id = 5 },
	{ config_id = 790002, monster_id = 21011201, pos = { x = 1424.665, y = 220.916, z = 536.958 }, rot = { x = 0.000, y = 113.957, z = 0.000 }, level = 18, drop_id = 1000100, pose_id = 9010, area_id = 5 },
	{ config_id = 790003, monster_id = 21010901, pos = { x = 1476.904, y = 219.103, z = 543.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_id = 1000100, pose_id = 32, area_id = 5 },
	{ config_id = 790004, monster_id = 21030101, pos = { x = 1472.632, y = 218.807, z = 553.459 }, rot = { x = 0.000, y = 124.126, z = 0.000 }, level = 18, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 790005, monster_id = 21020301, pos = { x = 1548.369, y = 226.671, z = 568.373 }, rot = { x = 0.000, y = 172.957, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 790006, monster_id = 21030401, pos = { x = 1545.559, y = 226.671, z = 563.173 }, rot = { x = 0.000, y = 24.116, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 790007, monster_id = 21020501, pos = { x = 1476.405, y = 215.150, z = 658.368 }, rot = { x = 0.000, y = 271.088, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 790008, monster_id = 21010701, pos = { x = 1473.992, y = 215.324, z = 660.498 }, rot = { x = 0.000, y = 263.555, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 790009, monster_id = 21010701, pos = { x = 1473.987, y = 215.275, z = 656.091 }, rot = { x = 0.000, y = 263.555, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 790022, monster_id = 21010701, pos = { x = 1429.605, y = 209.100, z = 669.328 }, rot = { x = 0.000, y = 83.832, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 790023, monster_id = 21010701, pos = { x = 1426.281, y = 208.257, z = 670.400 }, rot = { x = 358.873, y = 91.805, z = 0.388 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 790024, monster_id = 21011001, pos = { x = 1477.566, y = 222.813, z = 640.332 }, rot = { x = 0.000, y = 44.005, z = 0.000 }, level = 18, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 5 },
	{ config_id = 790025, monster_id = 21010201, pos = { x = 1489.448, y = 217.801, z = 643.922 }, rot = { x = 0.000, y = 161.453, z = 0.000 }, level = 18, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 790026, monster_id = 21010601, pos = { x = 1493.666, y = 217.919, z = 624.676 }, rot = { x = 0.000, y = 254.895, z = 0.000 }, level = 18, drop_id = 1000100, pose_id = 9011, area_id = 5 },
	{ config_id = 790030, monster_id = 21010201, pos = { x = 1490.319, y = 218.233, z = 626.896 }, rot = { x = 0.000, y = 136.431, z = 0.000 }, level = 18, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 790010, gadget_id = 70210102, pos = { x = 1427.479, y = 221.079, z = 535.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 5 },
	{ config_id = 790012, gadget_id = 70210102, pos = { x = 1504.417, y = 220.581, z = 566.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 5 },
	{ config_id = 790014, gadget_id = 70290001, pos = { x = 1480.966, y = 219.963, z = 548.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 790027, gadget_id = 70500000, pos = { x = 1480.742, y = 220.038, z = 548.029 }, rot = { x = 358.291, y = 359.739, z = 17.355 }, level = 18, point_type = 3002, owner = 790014, area_id = 5 },
	{ config_id = 790028, gadget_id = 70500000, pos = { x = 1480.901, y = 220.818, z = 548.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 790014, area_id = 5 },
	{ config_id = 790029, gadget_id = 70500000, pos = { x = 1480.404, y = 219.911, z = 548.891 }, rot = { x = 2.500, y = 0.471, z = 21.338 }, level = 18, point_type = 3002, owner = 790014, area_id = 5 },
	{ config_id = 790031, gadget_id = 70210102, pos = { x = 1478.684, y = 219.411, z = 548.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 790016, shape = RegionShape.SPHERE, radius = 25.3, pos = { x = 1538.346, y = 225.534, z = 571.225 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1790011, name = "GADGET_STATE_CHANGE_790011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_790011", action = "action_EVENT_GADGET_STATE_CHANGE_790011" },
	{ config_id = 1790013, name = "GADGET_STATE_CHANGE_790013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_790013", action = "action_EVENT_GADGET_STATE_CHANGE_790013" },
	{ config_id = 1790015, name = "GADGET_STATE_CHANGE_790015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_790015", action = "action_EVENT_GADGET_STATE_CHANGE_790015" },
	{ config_id = 1790016, name = "ENTER_REGION_790016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_790016", action = "action_EVENT_ENTER_REGION_790016" },
	{ config_id = 1790017, name = "VARIABLE_CHANGE_790017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_790017", action = "action_EVENT_VARIABLE_CHANGE_790017" },
	{ config_id = 1790018, name = "ANY_MONSTER_DIE_790018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_790018", action = "action_EVENT_ANY_MONSTER_DIE_790018" },
	{ config_id = 1790019, name = "ANY_MONSTER_DIE_790019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_790019", action = "action_EVENT_ANY_MONSTER_DIE_790019" },
	{ config_id = 1790021, name = "ANY_MONSTER_DIE_790021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_790021", action = "action_EVENT_ANY_MONSTER_DIE_790021" }
}

-- 变量
variables = {
	{ config_id = 1, name = "guard", value = 0, no_refresh = false }
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
		monsters = { 790001, 790002, 790003, 790004 },
		gadgets = { 790010, 790012, 790014, 790027, 790028, 790029, 790031 },
		regions = { 790016 },
		triggers = { "GADGET_STATE_CHANGE_790011", "GADGET_STATE_CHANGE_790013", "GADGET_STATE_CHANGE_790015", "ENTER_REGION_790016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 790007, 790008, 790009, 790022, 790023 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_790021" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 790005, 790006, 790024, 790025, 790026, 790030 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_790017", "ANY_MONSTER_DIE_790018", "ANY_MONSTER_DIE_790019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_790011(context, evt)
	if 790031 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_790011(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1478,y=219,z=549}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110165, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_790013(context, evt)
	if 790010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_790013(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1427,y=221,z=535}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110164, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_790015(context, evt)
	if 790012 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_790015(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1498,y=219,z=570}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110166, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_790016(context, evt)
	if evt.param1 ~= 790016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_790016(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1538,y=225,z=571}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110167, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 790010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 790011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 790012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331027901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_790017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"guard"为2
	if ScriptLib.GetGroupVariableValue(context, "guard") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_790017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331027902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_790018(context, evt)
	--判断死亡怪物的configid是否为 790006
	if evt.param1 ~= 790006 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_790018(context, evt)
	-- 针对当前group内变量名为 "guard" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "guard", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_790019(context, evt)
	--判断死亡怪物的configid是否为 790005
	if evt.param1 ~= 790005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_790019(context, evt)
	-- 针对当前group内变量名为 "guard" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "guard", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_790021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_790021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331027903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end