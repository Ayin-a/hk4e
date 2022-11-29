-- 基础信息
local base_info = {
	group_id = 133212175
}

-- DEFS_MISCS
local defs = {
	group_id = 133212175
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[175001] = { config_id = 175001, monster_id = 23010601, pos = { x = -3866.870, y = 201.374, z = -2060.055 }, rot = { x = 0.000, y = 13.459, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 13 },
	[175003] = { config_id = 175003, monster_id = 23010301, pos = { x = -3857.389, y = 200.556, z = -2049.560 }, rot = { x = 0.000, y = 277.444, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 13 },
	[175004] = { config_id = 175004, monster_id = 23010501, pos = { x = -3854.098, y = 200.000, z = -2033.830 }, rot = { x = 0.000, y = 65.239, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 9001, area_id = 13 },
	[175005] = { config_id = 175005, monster_id = 23010401, pos = { x = -3868.667, y = 200.856, z = -2050.840 }, rot = { x = 0.000, y = 198.603, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[175007] = { config_id = 175007, gadget_id = 70290196, pos = { x = -3863.010, y = 197.134, z = -2056.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 13 },
	[175008] = { config_id = 175008, gadget_id = 70360166, pos = { x = -3854.542, y = 201.642, z = -2052.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 13 },
	[175009] = { config_id = 175009, gadget_id = 70360166, pos = { x = -3866.169, y = 201.309, z = -2041.284 }, rot = { x = 0.000, y = 249.449, z = 0.000 }, level = 5, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 13 },
	[175010] = { config_id = 175010, gadget_id = 70360025, pos = { x = -3828.230, y = 201.071, z = -2100.712 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 5, area_id = 13 },
	[175011] = { config_id = 175011, gadget_id = 70350085, pos = { x = -3828.230, y = 201.921, z = -2100.712 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 5, area_id = 13 }
}

-- 区域
regions = {
	-- 进入区域后-开启挑战
	[175012] = { config_id = 175012, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3865.647, y = 200.988, z = -2054.466 }, area_id = 13 },
	-- 结束挑战
	[175017] = { config_id = 175017, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3828.230, y = 200.917, z = -2100.712 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1175006, name = "GROUP_LOAD_175006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_175006", action = "action_EVENT_GROUP_LOAD_175006", trigger_count = 0 },
	-- 进入区域后-开启挑战
	{ config_id = 1175012, name = "ENTER_REGION_175012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_175012", action = "action_EVENT_ENTER_REGION_175012", trigger_count = 0 },
	{ config_id = 1175013, name = "ANY_GADGET_DIE_175013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_175013", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1175014, name = "ANY_GADGET_DIE_175014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_175014", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1175015, name = "CHALLENGE_SUCCESS_175015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_175015", trigger_count = 0 },
	{ config_id = 1175016, name = "CHALLENGE_FAIL_175016", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_175016", trigger_count = 0 },
	-- 结束挑战
	{ config_id = 1175017, name = "ENTER_REGION_175017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_175017", action = "action_EVENT_ENTER_REGION_175017", trigger_count = 0, tag = "999" },
	{ config_id = 1175018, name = "CHALLENGE_SUCCESS_175018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_175018", trigger_count = 0 },
	{ config_id = 1175021, name = "MONSTER_BATTLE_175021", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_175021", action = "action_EVENT_MONSTER_BATTLE_175021" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 175002, gadget_id = 70900205, pos = { x = -3863.010, y = 197.134, z = -2056.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 13 }
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
		monsters = { 175004, 175005 },
		gadgets = { 175007, 175008, 175009 },
		regions = { 175012 },
		triggers = { "GROUP_LOAD_175006", "ENTER_REGION_175012", "ANY_GADGET_DIE_175013", "ANY_GADGET_DIE_175014", "CHALLENGE_SUCCESS_175015", "CHALLENGE_FAIL_175016", "CHALLENGE_SUCCESS_175018", "MONSTER_BATTLE_175021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 撤离目标组,
		monsters = { },
		gadgets = { 175010, 175011 },
		regions = { 175017 },
		triggers = { "ENTER_REGION_175017" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = 埋伏怪物组,
		monsters = { 175001, 175003 },
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
function condition_EVENT_GROUP_LOAD_175006(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_175006(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_175012(context, evt)
	if evt.param1 ~= 175012 then return false end
	
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
function action_EVENT_ENTER_REGION_175012(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 64, 999999, {success=200, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 65, {2,998,2}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_175013(context, evt)
	if 175008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_175014(context, evt)
	if 175009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_175015(context, evt)
	ScriptLib.AttachChildChallenge(context, 100, 1002, 66, {4,999,1}, {},{success=100,fail=100})
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	ScriptLib.PrintContextLog(context, "## Challenge1 Finished!! Add Suite3 ")
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_175016(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.PrintContextLog(context, "## ChallengeFailed!! Refresh Group to Suite1 ")
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_175017(context, evt)
	if evt.param1 ~= 175017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_175017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 175010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 175011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_175018(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212175, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_175021(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_175021(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3854.542,y=201.642,z=-2052.516}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400055, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212175, 3)
	
	return 0
end