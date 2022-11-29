-- 基础信息
local base_info = {
	group_id = 133220156
}

-- DEFS_MISCS
local defs = {
	group_id = 133220156
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[156001] = { config_id = 156001, monster_id = 25080101, pos = { x = -1858.986, y = 206.307, z = -4207.213 }, rot = { x = 0.000, y = 82.896, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 11 },
	[156002] = { config_id = 156002, monster_id = 25080101, pos = { x = -1843.972, y = 205.902, z = -4214.491 }, rot = { x = 0.000, y = 257.279, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 1004, area_id = 11 },
	[156003] = { config_id = 156003, monster_id = 25080301, pos = { x = -1868.603, y = 204.779, z = -4192.307 }, rot = { x = 0.000, y = 7.422, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 11 },
	[156004] = { config_id = 156004, monster_id = 25080101, pos = { x = -1885.433, y = 200.908, z = -4211.890 }, rot = { x = 0.000, y = 2.726, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 11 },
	[156005] = { config_id = 156005, monster_id = 25080301, pos = { x = -1844.466, y = 210.308, z = -4195.545 }, rot = { x = 0.000, y = 66.261, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[156008] = { config_id = 156008, gadget_id = 70360166, pos = { x = -1853.379, y = 208.791, z = -4204.499 }, rot = { x = 0.000, y = 330.678, z = 0.000 }, level = 5, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 11 },
	[156009] = { config_id = 156009, gadget_id = 70360166, pos = { x = -1861.462, y = 207.980, z = -4186.533 }, rot = { x = 0.000, y = 200.692, z = 0.000 }, level = 5, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 11 },
	[156010] = { config_id = 156010, gadget_id = 70360025, pos = { x = -1914.462, y = 200.081, z = -4244.830 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 5, area_id = 11 },
	[156011] = { config_id = 156011, gadget_id = 70350085, pos = { x = -1914.462, y = 200.081, z = -4244.830 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 5, area_id = 11 },
	[156019] = { config_id = 156019, gadget_id = 70290196, pos = { x = -1851.811, y = 202.683, z = -4196.936 }, rot = { x = 0.000, y = 330.678, z = 0.000 }, level = 5, area_id = 11 },
	[156023] = { config_id = 156023, gadget_id = 70300094, pos = { x = -1853.471, y = 207.386, z = -4205.735 }, rot = { x = 0.000, y = 346.208, z = 0.000 }, level = 27, area_id = 11 },
	[156030] = { config_id = 156030, gadget_id = 70300092, pos = { x = -1862.652, y = 207.150, z = -4188.058 }, rot = { x = 0.000, y = 320.319, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	-- 进入区域后-开启挑战
	[156012] = { config_id = 156012, shape = RegionShape.SPHERE, radius = 80, pos = { x = -1851.576, y = 206.670, z = -4206.200 }, area_id = 11 },
	-- 结束挑战
	[156017] = { config_id = 156017, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1914.462, y = 200.081, z = -4244.830 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1156007, name = "GROUP_LOAD_156007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_156007", action = "action_EVENT_GROUP_LOAD_156007", trigger_count = 0 },
	-- 进入区域后-开启挑战
	{ config_id = 1156012, name = "ENTER_REGION_156012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_156012", action = "action_EVENT_ENTER_REGION_156012", trigger_count = 0 },
	{ config_id = 1156013, name = "ANY_GADGET_DIE_156013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_156013", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1156014, name = "ANY_GADGET_DIE_156014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_156014", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1156015, name = "CHALLENGE_SUCCESS_156015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_156015", trigger_count = 0 },
	{ config_id = 1156016, name = "CHALLENGE_FAIL_156016", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_156016", trigger_count = 0 },
	-- 结束挑战
	{ config_id = 1156017, name = "ENTER_REGION_156017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_156017", action = "action_EVENT_ENTER_REGION_156017", trigger_count = 0, tag = "999" },
	{ config_id = 1156018, name = "CHALLENGE_SUCCESS_156018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_156018", trigger_count = 0 },
	{ config_id = 1156021, name = "MONSTER_BATTLE_156021", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_156021", action = "action_EVENT_MONSTER_BATTLE_156021" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 156006, gadget_id = 70900205, pos = { x = -1851.811, y = 202.683, z = -4196.936 }, rot = { x = 0.000, y = 330.678, z = 0.000 }, level = 5, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 11 },
		{ config_id = 156024, gadget_id = 70220048, pos = { x = -1851.050, y = 206.151, z = -4209.703 }, rot = { x = 0.000, y = 74.127, z = 0.000 }, level = 27, area_id = 11 }
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
		monsters = { 156002, 156004, 156005 },
		gadgets = { 156008, 156009, 156019, 156023, 156030 },
		regions = { 156012 },
		triggers = { "GROUP_LOAD_156007", "ENTER_REGION_156012", "ANY_GADGET_DIE_156013", "ANY_GADGET_DIE_156014", "CHALLENGE_SUCCESS_156015", "CHALLENGE_FAIL_156016", "CHALLENGE_SUCCESS_156018", "MONSTER_BATTLE_156021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 撤离目标组,
		monsters = { },
		gadgets = { 156010, 156011 },
		regions = { 156017 },
		triggers = { "ENTER_REGION_156017" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = 埋伏怪物组,
		monsters = { 156001, 156003 },
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
function condition_EVENT_GROUP_LOAD_156007(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_156007(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_156012(context, evt)
	if evt.param1 ~= 156012 then return false end
	
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
function action_EVENT_ENTER_REGION_156012(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 64, 999999, {success=200, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 65, {2,998,2}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_156013(context, evt)
	if 156008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_156014(context, evt)
	if 156009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_156015(context, evt)
	ScriptLib.AttachChildChallenge(context, 100, 1002, 66, {4,999,1}, {},{success=100,fail=100})
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_156016(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_156017(context, evt)
	if evt.param1 ~= 156017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_156017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 156010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 156011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_156018(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220156, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_156021(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_156021(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1853.379,y=208.7912,z=-4204.499}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400055, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220156, 3)
	
	return 0
end