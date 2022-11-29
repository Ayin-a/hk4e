-- 基础信息
local base_info = {
	group_id = 133212178
}

-- DEFS_MISCS
local defs = {
	group_id = 133212178
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[178001] = { config_id = 178001, monster_id = 25100101, pos = { x = -3451.384, y = 200.626, z = -2622.277 }, rot = { x = 0.000, y = 50.291, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 13 },
	[178002] = { config_id = 178002, monster_id = 25080101, pos = { x = -3478.702, y = 200.388, z = -2613.356 }, rot = { x = 0.000, y = 31.470, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 13 },
	[178003] = { config_id = 178003, monster_id = 25080301, pos = { x = -3437.762, y = 201.668, z = -2646.750 }, rot = { x = 0.000, y = 221.390, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 13 },
	[178004] = { config_id = 178004, monster_id = 25080201, pos = { x = -3446.587, y = 200.515, z = -2653.200 }, rot = { x = 0.000, y = 171.195, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[178005] = { config_id = 178005, gadget_id = 70300094, pos = { x = -3487.685, y = 206.909, z = -2636.458 }, rot = { x = 0.000, y = 76.946, z = 0.000 }, level = 1, area_id = 13 },
	[178006] = { config_id = 178006, gadget_id = 70360166, pos = { x = -3487.832, y = 206.780, z = -2635.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 13 },
	[178007] = { config_id = 178007, gadget_id = 70360166, pos = { x = -3460.032, y = 201.535, z = -2639.418 }, rot = { x = 0.000, y = 249.449, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 13 },
	[178008] = { config_id = 178008, gadget_id = 70360025, pos = { x = -3494.704, y = 200.628, z = -2578.326 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 27, area_id = 13 },
	[178009] = { config_id = 178009, gadget_id = 70350085, pos = { x = -3494.704, y = 201.042, z = -2578.326 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 27, area_id = 13 },
	[178017] = { config_id = 178017, gadget_id = 70290196, pos = { x = -3441.189, y = 198.601, z = -2636.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, area_id = 13 }
}

-- 区域
regions = {
	-- 进入区域后-开启挑战
	[178010] = { config_id = 178010, shape = RegionShape.SPHERE, radius = 80, pos = { x = -3454.516, y = 200.215, z = -2635.648 }, area_id = 13 },
	-- 结束挑战
	[178015] = { config_id = 178015, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3494.704, y = 200.628, z = -2578.326 }, area_id = 13 }
}

-- 触发器
triggers = {
	-- 进入区域后-开启挑战
	{ config_id = 1178010, name = "ENTER_REGION_178010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_178010", action = "action_EVENT_ENTER_REGION_178010", trigger_count = 0 },
	{ config_id = 1178011, name = "ANY_GADGET_DIE_178011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_178011", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1178012, name = "ANY_GADGET_DIE_178012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_178012", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1178013, name = "CHALLENGE_SUCCESS_178013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_178013", trigger_count = 0 },
	{ config_id = 1178014, name = "CHALLENGE_FAIL_178014", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_178014", trigger_count = 0 },
	-- 结束挑战
	{ config_id = 1178015, name = "ENTER_REGION_178015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_178015", action = "action_EVENT_ENTER_REGION_178015", trigger_count = 0, tag = "999" },
	{ config_id = 1178016, name = "CHALLENGE_SUCCESS_178016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_178016", trigger_count = 0 },
	{ config_id = 1178019, name = "MONSTER_BATTLE_178019", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_178019", action = "action_EVENT_MONSTER_BATTLE_178019" },
	{ config_id = 1178025, name = "GROUP_LOAD_178025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_178025", action = "action_EVENT_GROUP_LOAD_178025", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 178020, gadget_id = 70220063, pos = { x = -3487.351, y = 206.822, z = -2635.346 }, rot = { x = 0.000, y = 248.215, z = 0.000 }, level = 1, area_id = 13 },
		{ config_id = 178021, gadget_id = 70220063, pos = { x = -3487.204, y = 207.585, z = -2641.777 }, rot = { x = 0.000, y = 139.064, z = 0.000 }, level = 1, area_id = 13 },
		{ config_id = 178022, gadget_id = 70220063, pos = { x = -3487.904, y = 206.863, z = -2634.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
		{ config_id = 178023, gadget_id = 70220048, pos = { x = -3487.498, y = 207.435, z = -2643.114 }, rot = { x = 0.000, y = 341.738, z = 0.000 }, level = 1, area_id = 13 },
		{ config_id = 178024, gadget_id = 70900205, pos = { x = -3441.189, y = 198.601, z = -2636.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 13 }
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
		monsters = { 178002, 178004 },
		gadgets = { 178005, 178006, 178007, 178017 },
		regions = { 178010 },
		triggers = { "ENTER_REGION_178010", "ANY_GADGET_DIE_178011", "ANY_GADGET_DIE_178012", "CHALLENGE_SUCCESS_178013", "CHALLENGE_FAIL_178014", "CHALLENGE_SUCCESS_178016", "MONSTER_BATTLE_178019", "GROUP_LOAD_178025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 撤离目标组,
		monsters = { },
		gadgets = { 178008, 178009 },
		regions = { 178015 },
		triggers = { "ENTER_REGION_178015" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = 埋伏怪物组,
		monsters = { 178001, 178003 },
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
function condition_EVENT_ENTER_REGION_178010(context, evt)
	if evt.param1 ~= 178010 then return false end
	
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
function action_EVENT_ENTER_REGION_178010(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 64, 999999, {success=200, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 65, {2,998,2}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_178011(context, evt)
	if 178006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_178012(context, evt)
	if 178007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_178013(context, evt)
	ScriptLib.AttachChildChallenge(context, 100, 1002, 66, {4,999,1}, {},{success=100,fail=100})
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_178014(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_178015(context, evt)
	if evt.param1 ~= 178015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_178015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 178008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 178009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_178016(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212178, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_178019(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_178019(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3487.832,y=206.7804,z=-2635.503}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400055, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212178, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_178025(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_178025(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end