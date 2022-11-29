-- 基础信息
local base_info = {
	group_id = 133213160
}

-- DEFS_MISCS
local defs = {
	group_id = 133213160
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[160001] = { config_id = 160001, monster_id = 25010301, pos = { x = -3571.801, y = 200.262, z = -3422.831 }, rot = { x = 0.000, y = 182.388, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 12 },
	[160002] = { config_id = 160002, monster_id = 25030201, pos = { x = -3581.832, y = 200.264, z = -3444.109 }, rot = { x = 0.000, y = 171.980, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, pose_id = 9002, area_id = 12 },
	[160003] = { config_id = 160003, monster_id = 25010401, pos = { x = -3584.349, y = 200.153, z = -3443.891 }, rot = { x = 0.000, y = 65.767, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 12 },
	[160004] = { config_id = 160004, monster_id = 25060101, pos = { x = -3574.186, y = 200.111, z = -3443.294 }, rot = { x = 0.000, y = 7.258, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 12 },
	[160005] = { config_id = 160005, monster_id = 25070101, pos = { x = -3579.947, y = 200.262, z = -3443.829 }, rot = { x = 0.000, y = 308.763, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 12 },
	[160006] = { config_id = 160006, monster_id = 25010501, pos = { x = -3570.784, y = 200.328, z = -3434.960 }, rot = { x = 0.000, y = 269.924, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 12 },
	[160007] = { config_id = 160007, monster_id = 25010701, pos = { x = -3579.361, y = 200.288, z = -3446.037 }, rot = { x = 0.000, y = 319.760, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, pose_id = 9005, area_id = 12 },
	[160008] = { config_id = 160008, monster_id = 25010601, pos = { x = -3583.449, y = 200.162, z = -3425.662 }, rot = { x = 0.000, y = 83.220, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[160009] = { config_id = 160009, gadget_id = 70360166, pos = { x = -3544.011, y = 202.358, z = -3433.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 12 },
	[160010] = { config_id = 160010, gadget_id = 70360166, pos = { x = -3562.155, y = 201.093, z = -3430.962 }, rot = { x = 0.000, y = 249.449, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 12 },
	[160011] = { config_id = 160011, gadget_id = 70360025, pos = { x = -3585.239, y = 200.385, z = -3375.979 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1, area_id = 12 },
	[160012] = { config_id = 160012, gadget_id = 70350085, pos = { x = -3585.239, y = 201.164, z = -3375.979 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1, area_id = 12 },
	[160014] = { config_id = 160014, gadget_id = 70310009, pos = { x = -3582.010, y = 200.290, z = -3445.749 }, rot = { x = 0.000, y = 5.282, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, state = GadgetState.GearStart, persistent = true, area_id = 12 },
	[160016] = { config_id = 160016, gadget_id = 70290196, pos = { x = -3560.458, y = 197.939, z = -3440.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
	-- 进入区域后-开启挑战
	[160027] = { config_id = 160027, shape = RegionShape.SPHERE, radius = 80, pos = { x = -3562.113, y = 200.262, z = -3441.506 }, area_id = 12 },
	-- 结束挑战
	[160032] = { config_id = 160032, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3585.239, y = 200.298, z = -3375.979 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1160015, name = "GROUP_LOAD_160015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_160015", action = "action_EVENT_GROUP_LOAD_160015", trigger_count = 0 },
	-- 进入区域后-开启挑战
	{ config_id = 1160027, name = "ENTER_REGION_160027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_160027", action = "action_EVENT_ENTER_REGION_160027", trigger_count = 0 },
	{ config_id = 1160028, name = "ANY_GADGET_DIE_160028", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_160028", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1160029, name = "ANY_GADGET_DIE_160029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_160029", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1160030, name = "CHALLENGE_SUCCESS_160030", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_160030", trigger_count = 0 },
	{ config_id = 1160031, name = "CHALLENGE_FAIL_160031", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_160031", trigger_count = 0 },
	-- 结束挑战
	{ config_id = 1160032, name = "ENTER_REGION_160032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_160032", action = "action_EVENT_ENTER_REGION_160032", trigger_count = 0, tag = "999" },
	{ config_id = 1160033, name = "CHALLENGE_SUCCESS_160033", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_160033", trigger_count = 0 },
	{ config_id = 1160036, name = "MONSTER_BATTLE_160036", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_160036", action = "action_EVENT_MONSTER_BATTLE_160036" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 160013, gadget_id = 70900205, pos = { x = -3560.458, y = 197.939, z = -3440.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 12 }
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
		monsters = { 160002, 160004, 160005, 160007 },
		gadgets = { 160009, 160010, 160014, 160016 },
		regions = { 160027 },
		triggers = { "GROUP_LOAD_160015", "ENTER_REGION_160027", "ANY_GADGET_DIE_160028", "ANY_GADGET_DIE_160029", "CHALLENGE_SUCCESS_160030", "CHALLENGE_FAIL_160031", "CHALLENGE_SUCCESS_160033", "MONSTER_BATTLE_160036" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 撤离目标组,
		monsters = { },
		gadgets = { 160011, 160012 },
		regions = { 160032 },
		triggers = { "ENTER_REGION_160032" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = 埋伏怪物组,
		monsters = { 160001, 160003, 160006, 160008 },
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
function condition_EVENT_GROUP_LOAD_160015(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_160015(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_160027(context, evt)
	if evt.param1 ~= 160027 then return false end
	
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
function action_EVENT_ENTER_REGION_160027(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 64, 999999, {success=200, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 65, {2,998,2}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_160028(context, evt)
	if 160009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_160029(context, evt)
	if 160010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_160030(context, evt)
	ScriptLib.AttachChildChallenge(context, 100, 1002, 66, {4,999,1}, {},{success=100,fail=100})
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_160031(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.PrintContextLog(context, "Challenge Failed！Refresh Group to suite1")
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_160032(context, evt)
	if evt.param1 ~= 160032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_160032(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 160011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 160012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_160033(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213160, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_160036(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_160036(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3544.011,y=202.3576,z=-3433.186}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400055, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213160, 3)
	
	return 0
end