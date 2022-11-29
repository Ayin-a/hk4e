-- 基础信息
local base_info = {
	group_id = 133213158
}

-- DEFS_MISCS
local defs = {
	group_id = 133213158
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[158001] = { config_id = 158001, monster_id = 25070101, pos = { x = -3564.003, y = 200.262, z = -3449.628 }, rot = { x = 352.518, y = 317.966, z = 359.076 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 12 },
	[158002] = { config_id = 158002, monster_id = 25010201, pos = { x = -3560.071, y = 200.262, z = -3449.209 }, rot = { x = 0.000, y = 347.833, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, pose_id = 9005, area_id = 12 },
	[158003] = { config_id = 158003, monster_id = 25060101, pos = { x = -3576.743, y = 200.262, z = -3443.562 }, rot = { x = 0.000, y = 99.353, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 12 },
	[158004] = { config_id = 158004, monster_id = 25010201, pos = { x = -3580.734, y = 200.274, z = -3413.265 }, rot = { x = 0.000, y = 83.436, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 12 },
	[158005] = { config_id = 158005, monster_id = 25010201, pos = { x = -3570.633, y = 200.325, z = -3439.376 }, rot = { x = 0.000, y = 93.791, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 12 },
	[158007] = { config_id = 158007, monster_id = 25070101, pos = { x = -3569.851, y = 200.262, z = -3449.155 }, rot = { x = 0.000, y = 276.765, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 12 },
	[158035] = { config_id = 158035, monster_id = 25010701, pos = { x = -3565.113, y = 200.279, z = -3431.064 }, rot = { x = 0.000, y = 130.355, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[158008] = { config_id = 158008, gadget_id = 70360166, pos = { x = -3574.421, y = 200.452, z = -3450.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 12 },
	[158009] = { config_id = 158009, gadget_id = 70360166, pos = { x = -3560.863, y = 201.475, z = -3432.656 }, rot = { x = 0.000, y = 249.449, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 12 },
	[158010] = { config_id = 158010, gadget_id = 70360025, pos = { x = -3585.262, y = 200.363, z = -3375.931 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1, area_id = 12 },
	[158011] = { config_id = 158011, gadget_id = 70350085, pos = { x = -3585.262, y = 201.076, z = -3375.931 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1, area_id = 12 },
	[158019] = { config_id = 158019, gadget_id = 70290196, pos = { x = -3574.421, y = 195.418, z = -3450.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	[158022] = { config_id = 158022, gadget_id = 70300094, pos = { x = -3559.538, y = 200.269, z = -3432.949 }, rot = { x = 0.000, y = 343.832, z = 0.000 }, level = 1, area_id = 12 },
	[158025] = { config_id = 158025, gadget_id = 70310009, pos = { x = -3581.860, y = 200.307, z = -3446.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 12 }
}

-- 区域
regions = {
	-- 进入区域后-开启挑战
	[158012] = { config_id = 158012, shape = RegionShape.SPHERE, radius = 80, pos = { x = -3567.860, y = 202.984, z = -3414.706 }, area_id = 12 },
	-- 结束挑战
	[158017] = { config_id = 158017, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3585.262, y = 200.255, z = -3375.931 }, area_id = 12 }
}

-- 触发器
triggers = {
	-- 进入区域后-开启挑战
	{ config_id = 1158012, name = "ENTER_REGION_158012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_158012", action = "action_EVENT_ENTER_REGION_158012", trigger_count = 0 },
	{ config_id = 1158013, name = "ANY_GADGET_DIE_158013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_158013", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1158014, name = "ANY_GADGET_DIE_158014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_158014", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1158015, name = "CHALLENGE_SUCCESS_158015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_158015", trigger_count = 0 },
	{ config_id = 1158016, name = "CHALLENGE_FAIL_158016", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_158016", trigger_count = 0 },
	-- 结束挑战
	{ config_id = 1158017, name = "ENTER_REGION_158017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_158017", action = "action_EVENT_ENTER_REGION_158017", trigger_count = 0, tag = "999" },
	{ config_id = 1158018, name = "CHALLENGE_SUCCESS_158018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_158018", trigger_count = 0 },
	{ config_id = 1158021, name = "MONSTER_BATTLE_158021", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_158021", action = "action_EVENT_MONSTER_BATTLE_158021" },
	{ config_id = 1158023, name = "GROUP_LOAD_158023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_158023", action = "action_EVENT_GROUP_LOAD_158023", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 158006, gadget_id = 70900205, pos = { x = -3574.421, y = 195.418, z = -3450.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 12 }
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
		monsters = { 158002, 158004, 158005 },
		gadgets = { 158008, 158009, 158019, 158022, 158025 },
		regions = { 158012 },
		triggers = { "ENTER_REGION_158012", "ANY_GADGET_DIE_158013", "ANY_GADGET_DIE_158014", "CHALLENGE_SUCCESS_158015", "CHALLENGE_FAIL_158016", "CHALLENGE_SUCCESS_158018", "MONSTER_BATTLE_158021", "GROUP_LOAD_158023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 撤离目标组,
		monsters = { },
		gadgets = { 158010, 158011 },
		regions = { 158017 },
		triggers = { "ENTER_REGION_158017" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = 埋伏怪物组,
		monsters = { 158001, 158003, 158007, 158035 },
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
function condition_EVENT_ENTER_REGION_158012(context, evt)
	if evt.param1 ~= 158012 then return false end
	
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
function action_EVENT_ENTER_REGION_158012(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 64, 999999, {success=200, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 65, {2,998,2}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_158013(context, evt)
	if 158008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_158014(context, evt)
	if 158009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_158015(context, evt)
	ScriptLib.AttachChildChallenge(context, 100, 1002, 66, {4,999,1}, {},{success=100,fail=100})
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_158016(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.PrintContextLog(context, "Challenge Failed！Refresh Group to suite1")
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_158017(context, evt)
	if evt.param1 ~= 158017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_158017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 158010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 158011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_158018(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213158, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_158021(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_158021(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3574.421,y=200.4517,z=-3450.327}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400055, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213158, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_158023(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_158023(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end