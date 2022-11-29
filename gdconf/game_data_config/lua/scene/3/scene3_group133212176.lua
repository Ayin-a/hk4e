-- 基础信息
local base_info = {
	group_id = 133212176
}

-- DEFS_MISCS
local defs = {
	group_id = 133212176
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[176002] = { config_id = 176002, monster_id = 23010501, pos = { x = -3866.833, y = 201.286, z = -2058.673 }, rot = { x = 0.000, y = 35.401, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 13 },
	[176003] = { config_id = 176003, monster_id = 23010401, pos = { x = -3857.390, y = 200.556, z = -2049.561 }, rot = { x = 0.000, y = 277.444, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 13 },
	[176018] = { config_id = 176018, monster_id = 23010601, pos = { x = -3862.579, y = 200.494, z = -2039.838 }, rot = { x = 0.000, y = 18.122, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 9001, area_id = 13 },
	[176025] = { config_id = 176025, monster_id = 23010601, pos = { x = -3869.617, y = 200.312, z = -2044.900 }, rot = { x = 0.000, y = 132.591, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[176006] = { config_id = 176006, gadget_id = 70360166, pos = { x = -3855.552, y = 200.628, z = -2053.307 }, rot = { x = 0.000, y = 269.635, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 13 },
	[176007] = { config_id = 176007, gadget_id = 70360166, pos = { x = -3869.877, y = 202.130, z = -2053.673 }, rot = { x = 0.000, y = 249.449, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 13 },
	[176008] = { config_id = 176008, gadget_id = 70360025, pos = { x = -3828.230, y = 200.793, z = -2100.712 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 27, area_id = 13 },
	[176009] = { config_id = 176009, gadget_id = 70350085, pos = { x = -3828.230, y = 200.793, z = -2100.712 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 27, area_id = 13 },
	[176017] = { config_id = 176017, gadget_id = 70290196, pos = { x = -3866.614, y = 196.263, z = -2057.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	[176020] = { config_id = 176020, gadget_id = 70300094, pos = { x = -3855.966, y = 200.599, z = -2052.346 }, rot = { x = 0.000, y = 85.316, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
	-- 进入区域后-开启挑战
	[176010] = { config_id = 176010, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3864.155, y = 200.884, z = -2053.683 }, area_id = 13 },
	-- 结束挑战
	[176015] = { config_id = 176015, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3828.230, y = 200.793, z = -2100.712 }, area_id = 13 }
}

-- 触发器
triggers = {
	-- 进入区域后-开启挑战
	{ config_id = 1176010, name = "ENTER_REGION_176010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_176010", action = "action_EVENT_ENTER_REGION_176010", trigger_count = 0 },
	{ config_id = 1176011, name = "ANY_GADGET_DIE_176011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_176011", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1176012, name = "ANY_GADGET_DIE_176012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_176012", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1176013, name = "CHALLENGE_SUCCESS_176013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_176013", trigger_count = 0 },
	{ config_id = 1176014, name = "CHALLENGE_FAIL_176014", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_176014", trigger_count = 0 },
	-- 结束挑战
	{ config_id = 1176015, name = "ENTER_REGION_176015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_176015", action = "action_EVENT_ENTER_REGION_176015", trigger_count = 0, tag = "999" },
	{ config_id = 1176016, name = "CHALLENGE_SUCCESS_176016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_176016", trigger_count = 0 },
	{ config_id = 1176019, name = "MONSTER_BATTLE_176019", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_176019", action = "action_EVENT_MONSTER_BATTLE_176019" },
	{ config_id = 1176024, name = "GROUP_LOAD_176024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_176024", action = "action_EVENT_GROUP_LOAD_176024", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 176004, monster_id = 23010101, pos = { x = -3862.579, y = 200.494, z = -2039.838 }, rot = { x = 0.000, y = 18.122, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 9001, area_id = 13 },
		{ config_id = 176005, monster_id = 23010201, pos = { x = -3869.617, y = 200.312, z = -2044.900 }, rot = { x = 0.000, y = 132.591, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 13 }
	},
	gadgets = {
		{ config_id = 176001, gadget_id = 70900205, pos = { x = -3866.614, y = 196.263, z = -2057.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 13 },
		{ config_id = 176021, gadget_id = 70220063, pos = { x = -3853.257, y = 200.598, z = -2052.489 }, rot = { x = 0.000, y = 269.635, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 176022, gadget_id = 70220063, pos = { x = -3853.250, y = 200.591, z = -2051.751 }, rot = { x = 0.000, y = 269.635, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 176023, gadget_id = 70220063, pos = { x = -3853.450, y = 200.605, z = -2053.101 }, rot = { x = 0.000, y = 269.635, z = 0.000 }, level = 27, area_id = 13 }
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
		monsters = { 176002, 176018 },
		gadgets = { 176006, 176007, 176017, 176020 },
		regions = { 176010 },
		triggers = { "ENTER_REGION_176010", "ANY_GADGET_DIE_176011", "ANY_GADGET_DIE_176012", "CHALLENGE_SUCCESS_176013", "CHALLENGE_FAIL_176014", "CHALLENGE_SUCCESS_176016", "MONSTER_BATTLE_176019", "GROUP_LOAD_176024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 撤离目标组,
		monsters = { },
		gadgets = { 176008, 176009 },
		regions = { 176015 },
		triggers = { "ENTER_REGION_176015" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = 埋伏怪物组,
		monsters = { 176003, 176025 },
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
function condition_EVENT_ENTER_REGION_176010(context, evt)
	if evt.param1 ~= 176010 then return false end
	
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
function action_EVENT_ENTER_REGION_176010(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 64, 999999, {success=200, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 65, {2,998,2}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_176011(context, evt)
	if 176006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_176012(context, evt)
	if 176007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_176013(context, evt)
	ScriptLib.AttachChildChallenge(context, 100, 1002, 66, {4,999,1}, {},{success=100,fail=100})
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	ScriptLib.PrintContextLog(context, "## Challenge1 Finished!! Add Suite3 ")
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_176014(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.PrintContextLog(context, "## ChallengeFailed!! Refresh Group to Suite1 ")
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_176015(context, evt)
	if evt.param1 ~= 176015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_176015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 176008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 176009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_176016(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212176, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_176019(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_176019(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3845.062,y=200.6539,z=-2041.606}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400055, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212176, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_176024(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_176024(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end