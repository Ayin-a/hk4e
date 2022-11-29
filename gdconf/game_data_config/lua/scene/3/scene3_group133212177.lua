-- 基础信息
local base_info = {
	group_id = 133212177
}

-- DEFS_MISCS
local defs = {
	group_id = 133212177
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[177001] = { config_id = 177001, monster_id = 25080201, pos = { x = -3453.847, y = 200.607, z = -2649.060 }, rot = { x = 0.000, y = 13.459, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 13 },
	[177002] = { config_id = 177002, monster_id = 25080101, pos = { x = -3517.005, y = 200.334, z = -2634.544 }, rot = { x = 0.000, y = 31.470, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 13 },
	[177003] = { config_id = 177003, monster_id = 25080301, pos = { x = -3442.445, y = 202.150, z = -2619.273 }, rot = { x = 0.000, y = 221.390, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 13 },
	[177004] = { config_id = 177004, monster_id = 25080101, pos = { x = -3513.177, y = 200.067, z = -2668.526 }, rot = { x = 0.000, y = 114.484, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 13 },
	[177005] = { config_id = 177005, monster_id = 25080101, pos = { x = -3452.625, y = 200.186, z = -2606.636 }, rot = { x = 0.000, y = 198.603, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[177006] = { config_id = 177006, gadget_id = 70360166, pos = { x = -3454.699, y = 200.952, z = -2634.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 13 },
	[177007] = { config_id = 177007, gadget_id = 70360166, pos = { x = -3440.503, y = 202.659, z = -2638.165 }, rot = { x = 0.000, y = 249.449, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 13 },
	[177008] = { config_id = 177008, gadget_id = 70360025, pos = { x = -3494.990, y = 200.507, z = -2577.959 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 27, area_id = 13 },
	[177009] = { config_id = 177009, gadget_id = 70350085, pos = { x = -3494.990, y = 201.272, z = -2577.959 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 27, area_id = 13 },
	[177017] = { config_id = 177017, gadget_id = 70290196, pos = { x = -3456.527, y = 198.641, z = -2638.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
	-- 进入区域后-开启挑战
	[177010] = { config_id = 177010, shape = RegionShape.SPHERE, radius = 80, pos = { x = -3454.516, y = 200.215, z = -2635.648 }, area_id = 13 },
	-- 结束挑战
	[177015] = { config_id = 177015, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3494.990, y = 200.166, z = -2577.959 }, area_id = 13 }
}

-- 触发器
triggers = {
	-- 进入区域后-开启挑战
	{ config_id = 1177010, name = "ENTER_REGION_177010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_177010", action = "action_EVENT_ENTER_REGION_177010", trigger_count = 0 },
	{ config_id = 1177011, name = "ANY_GADGET_DIE_177011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_177011", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1177012, name = "ANY_GADGET_DIE_177012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_177012", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1177013, name = "CHALLENGE_SUCCESS_177013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_177013", trigger_count = 0 },
	{ config_id = 1177014, name = "CHALLENGE_FAIL_177014", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_177014", trigger_count = 0 },
	-- 结束挑战
	{ config_id = 1177015, name = "ENTER_REGION_177015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_177015", action = "action_EVENT_ENTER_REGION_177015", trigger_count = 0, tag = "999" },
	{ config_id = 1177016, name = "CHALLENGE_SUCCESS_177016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_177016", trigger_count = 0 },
	{ config_id = 1177019, name = "MONSTER_BATTLE_177019", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_177019", action = "action_EVENT_MONSTER_BATTLE_177019" },
	{ config_id = 1177021, name = "GROUP_LOAD_177021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_177021", action = "action_EVENT_GROUP_LOAD_177021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 177020, gadget_id = 70900205, pos = { x = -3456.527, y = 198.641, z = -2638.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 13 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 4,
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
		-- description = 常驻营地组,
		monsters = { 177002, 177004, 177005 },
		gadgets = { 177006, 177007, 177017 },
		regions = { 177010 },
		triggers = { "ENTER_REGION_177010", "ANY_GADGET_DIE_177011", "ANY_GADGET_DIE_177012", "CHALLENGE_SUCCESS_177013", "CHALLENGE_FAIL_177014", "CHALLENGE_SUCCESS_177016", "MONSTER_BATTLE_177019", "GROUP_LOAD_177021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 撤离目标组,
		monsters = { },
		gadgets = { 177008, 177009 },
		regions = { 177015 },
		triggers = { "ENTER_REGION_177015" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = 埋伏怪物组,
		monsters = { 177001, 177003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 0
	},
	{
		-- suite_id = 4,
		-- description = 挑战完成存档用,
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
function condition_EVENT_ENTER_REGION_177010(context, evt)
	if evt.param1 ~= 177010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasStarted"为0
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_177010(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 64, 999999, {success=200, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 65, {2,998,2}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_177011(context, evt)
	if 177006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_177012(context, evt)
	if 177007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_177013(context, evt)
	ScriptLib.AttachChildChallenge(context, 100, 1002, 66, {4,999,1}, {},{success=100,fail=100})
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_177014(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_177015(context, evt)
	if evt.param1 ~= 177015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_177015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 177008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 177009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_177016(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212177, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_177019(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_177019(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3454.699,y=200.9523,z=-2634.074}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400055, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212177, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_177021(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_177021(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end