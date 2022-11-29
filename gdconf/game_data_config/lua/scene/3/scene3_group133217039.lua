-- 基础信息
local base_info = {
	group_id = 133217039
}

-- DEFS_MISCS
local defs = {
	group_id = 133217039
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[39002] = { config_id = 39002, monster_id = 23010501, pos = { x = -4502.277, y = 200.689, z = -3772.343 }, rot = { x = 0.000, y = 49.974, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 },
	[39004] = { config_id = 39004, monster_id = 23010401, pos = { x = -4467.869, y = 200.679, z = -3760.100 }, rot = { x = 0.000, y = 274.231, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 },
	[39005] = { config_id = 39005, monster_id = 23010601, pos = { x = -4475.442, y = 200.944, z = -3771.290 }, rot = { x = 0.000, y = 337.246, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 },
	[39006] = { config_id = 39006, monster_id = 23010301, pos = { x = -4487.508, y = 200.000, z = -3760.809 }, rot = { x = 12.865, y = 134.128, z = 2.543 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[39008] = { config_id = 39008, gadget_id = 70360166, pos = { x = -4480.077, y = 201.173, z = -3773.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 14 },
	[39009] = { config_id = 39009, gadget_id = 70360166, pos = { x = -4464.394, y = 200.498, z = -3762.939 }, rot = { x = 0.000, y = 249.449, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 14 },
	[39010] = { config_id = 39010, gadget_id = 70360025, pos = { x = -4519.534, y = 204.502, z = -3800.289 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1, area_id = 14 },
	[39011] = { config_id = 39011, gadget_id = 70350085, pos = { x = -4519.534, y = 205.387, z = -3800.289 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1, area_id = 14 },
	[39012] = { config_id = 39012, gadget_id = 70290196, pos = { x = -4481.830, y = 197.507, z = -3766.423 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1, area_id = 14 }
}

-- 区域
regions = {
	-- 进入区域后-开启挑战
	[39013] = { config_id = 39013, shape = RegionShape.SPHERE, radius = 60, pos = { x = -4477.870, y = 200.137, z = -3763.899 }, area_id = 14 },
	-- 结束挑战
	[39018] = { config_id = 39018, shape = RegionShape.SPHERE, radius = 2, pos = { x = -4519.534, y = 204.502, z = -3800.289 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- 进入区域后-开启挑战
	{ config_id = 1039013, name = "ENTER_REGION_39013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_39013", action = "action_EVENT_ENTER_REGION_39013", trigger_count = 0 },
	{ config_id = 1039014, name = "ANY_GADGET_DIE_39014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_39014", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1039015, name = "ANY_GADGET_DIE_39015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_39015", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1039016, name = "CHALLENGE_SUCCESS_39016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_39016", trigger_count = 0 },
	{ config_id = 1039017, name = "CHALLENGE_FAIL_39017", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_39017", trigger_count = 0 },
	-- 结束挑战
	{ config_id = 1039018, name = "ENTER_REGION_39018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_39018", action = "action_EVENT_ENTER_REGION_39018", trigger_count = 0, tag = "999" },
	{ config_id = 1039019, name = "CHALLENGE_SUCCESS_39019", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_39019", trigger_count = 0 },
	{ config_id = 1039020, name = "MONSTER_BATTLE_39020", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_39020" },
	-- 进入区域后-开启挑战
	{ config_id = 1039021, name = "GROUP_LOAD_39021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_39021", action = "action_EVENT_GROUP_LOAD_39021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 39001, monster_id = 23010101, pos = { x = -4475.442, y = 200.944, z = -3771.290 }, rot = { x = 0.000, y = 337.246, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 },
		{ config_id = 39003, monster_id = 23010201, pos = { x = -4487.508, y = 200.000, z = -3760.809 }, rot = { x = 12.865, y = 134.128, z = 2.543 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 }
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
		monsters = { 39002, 39004 },
		gadgets = { 39008, 39009, 39012 },
		regions = { 39013 },
		triggers = { "ENTER_REGION_39013", "ANY_GADGET_DIE_39014", "ANY_GADGET_DIE_39015", "CHALLENGE_SUCCESS_39016", "CHALLENGE_FAIL_39017", "CHALLENGE_SUCCESS_39019", "MONSTER_BATTLE_39020", "GROUP_LOAD_39021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 撤离目标组,
		monsters = { },
		gadgets = { 39010, 39011 },
		regions = { 39018 },
		triggers = { "ENTER_REGION_39018" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = 埋伏怪物组,
		monsters = { 39005, 39006 },
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
function condition_EVENT_ENTER_REGION_39013(context, evt)
	if evt.param1 ~= 39013 then return false end
	
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
function action_EVENT_ENTER_REGION_39013(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 64, 999999, {success=200, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 65, {2,998,2}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_39014(context, evt)
	if 39008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_39015(context, evt)
	if 39009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_39016(context, evt)
	ScriptLib.AttachChildChallenge(context, 100, 1002, 66, {4,999,1}, {},{success=100,fail=100})
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_39017(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_39018(context, evt)
	if evt.param1 ~= 39018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_39018(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 39010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 39011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_39019(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133217039, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_39020(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 0, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=0,y=0,z=0}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400055, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217039, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_39021(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_39021(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end