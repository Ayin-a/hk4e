-- 基础信息
local base_info = {
	group_id = 133220214
}

-- DEFS_MISCS
local defs = {
	group_id = 133220214
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[214002] = { config_id = 214002, monster_id = 22010401, pos = { x = -2809.100, y = 222.968, z = -4389.533 }, rot = { x = 0.000, y = 191.929, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 9013, area_id = 11 },
	[214003] = { config_id = 214003, monster_id = 21020201, pos = { x = -2821.187, y = 223.893, z = -4404.793 }, rot = { x = 0.000, y = 25.110, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 11 },
	[214004] = { config_id = 214004, monster_id = 21010501, pos = { x = -2810.590, y = 225.208, z = -4411.652 }, rot = { x = 0.000, y = 263.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 32, area_id = 11 },
	[214005] = { config_id = 214005, monster_id = 21010301, pos = { x = -2810.195, y = 224.119, z = -4403.239 }, rot = { x = 0.000, y = 351.083, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 11 },
	[214006] = { config_id = 214006, monster_id = 21010301, pos = { x = -2811.410, y = 222.771, z = -4393.738 }, rot = { x = 0.000, y = 7.957, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 9012, area_id = 11 },
	[214007] = { config_id = 214007, monster_id = 21011001, pos = { x = -2824.726, y = 223.622, z = -4398.218 }, rot = { x = 0.000, y = 153.933, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 32, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[214008] = { config_id = 214008, gadget_id = 70360166, pos = { x = -2817.112, y = 225.132, z = -4413.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 11 },
	[214009] = { config_id = 214009, gadget_id = 70360166, pos = { x = -2829.986, y = 223.694, z = -4405.582 }, rot = { x = 0.000, y = 249.449, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 11 },
	[214010] = { config_id = 214010, gadget_id = 70360025, pos = { x = -2783.216, y = 224.326, z = -4389.408 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1, area_id = 11 },
	[214011] = { config_id = 214011, gadget_id = 70350085, pos = { x = -2783.216, y = 225.055, z = -4389.408 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1, area_id = 11 },
	[214015] = { config_id = 214015, gadget_id = 70300089, pos = { x = -2817.268, y = 225.069, z = -4412.438 }, rot = { x = 0.000, y = 270.044, z = 0.000 }, level = 1, area_id = 11 },
	[214018] = { config_id = 214018, gadget_id = 70220025, pos = { x = -2823.338, y = 224.843, z = -4410.275 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[214019] = { config_id = 214019, gadget_id = 70300107, pos = { x = -2810.466, y = 222.814, z = -4391.672 }, rot = { x = 0.000, y = 349.384, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 },
	[214035] = { config_id = 214035, gadget_id = 70300089, pos = { x = -2830.280, y = 223.586, z = -4404.768 }, rot = { x = 0.000, y = 270.044, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	-- 进入区域后-开启挑战
	[214024] = { config_id = 214024, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2815.732, y = 223.746, z = -4405.073 }, area_id = 11 },
	-- 结束挑战
	[214029] = { config_id = 214029, shape = RegionShape.SPHERE, radius = 2, pos = { x = -2783.216, y = 224.105, z = -4389.408 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1214001, name = "GROUP_LOAD_214001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_214001", action = "action_EVENT_GROUP_LOAD_214001", trigger_count = 0 },
	-- 进入区域后-开启挑战
	{ config_id = 1214024, name = "ENTER_REGION_214024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_214024", action = "action_EVENT_ENTER_REGION_214024", trigger_count = 0 },
	{ config_id = 1214025, name = "ANY_GADGET_DIE_214025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214025", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1214026, name = "ANY_GADGET_DIE_214026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214026", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1214027, name = "CHALLENGE_SUCCESS_214027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_214027", trigger_count = 0 },
	{ config_id = 1214028, name = "CHALLENGE_FAIL_214028", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_214028", trigger_count = 0 },
	-- 结束挑战
	{ config_id = 1214029, name = "ENTER_REGION_214029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_214029", action = "action_EVENT_ENTER_REGION_214029", trigger_count = 0, tag = "999" },
	{ config_id = 1214030, name = "CHALLENGE_SUCCESS_214030", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_214030", trigger_count = 0 },
	{ config_id = 1214033, name = "MONSTER_BATTLE_214033", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_214033", action = "action_EVENT_MONSTER_BATTLE_214033" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 214012, gadget_id = 70220066, pos = { x = -2826.109, y = 224.843, z = -4408.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 214014, gadget_id = 70220066, pos = { x = -2826.524, y = 224.843, z = -4409.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 214016, gadget_id = 70220065, pos = { x = -2818.018, y = 225.205, z = -4414.558 }, rot = { x = 0.000, y = 307.360, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 214020, gadget_id = 70220067, pos = { x = -2829.986, y = 223.814, z = -4407.288 }, rot = { x = 0.000, y = 306.536, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 214021, gadget_id = 70220066, pos = { x = -2818.704, y = 225.094, z = -4413.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 214037, gadget_id = 70220065, pos = { x = -2832.606, y = 223.387, z = -4405.183 }, rot = { x = 0.000, y = 263.089, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 214038, gadget_id = 70220066, pos = { x = -2831.625, y = 223.613, z = -4407.236 }, rot = { x = 0.000, y = 263.089, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 214039, gadget_id = 70220066, pos = { x = -2831.109, y = 223.720, z = -4408.055 }, rot = { x = 0.000, y = 263.089, z = 0.000 }, level = 1, area_id = 11 }
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
		monsters = { 214002, 214005, 214006 },
		gadgets = { 214008, 214009, 214015, 214018, 214019, 214035 },
		regions = { 214024 },
		triggers = { "GROUP_LOAD_214001", "ENTER_REGION_214024", "ANY_GADGET_DIE_214025", "ANY_GADGET_DIE_214026", "CHALLENGE_SUCCESS_214027", "CHALLENGE_FAIL_214028", "CHALLENGE_SUCCESS_214030", "MONSTER_BATTLE_214033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 撤离目标组,
		monsters = { },
		gadgets = { 214010, 214011 },
		regions = { 214029 },
		triggers = { "ENTER_REGION_214029" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = 埋伏怪物组,
		monsters = { 214003, 214004, 214007 },
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
function condition_EVENT_GROUP_LOAD_214001(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_214001(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_214024(context, evt)
	if evt.param1 ~= 214024 then return false end
	
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
function action_EVENT_ENTER_REGION_214024(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 64, 999999, {success=200, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 65, {2,998,2}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214025(context, evt)
	if 214008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214026(context, evt)
	if 214009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_214027(context, evt)
	ScriptLib.AttachChildChallenge(context, 100, 1002, 66, {4,999,1}, {},{success=100,fail=100})
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_214028(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_214029(context, evt)
	if evt.param1 ~= 214029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_214029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 214010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 214011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_214030(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220214, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_214033(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_214033(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2817.075,y=224.9596,z=-4412.117}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400055, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220214, 3)
	
	return 0
end