-- 基础信息
local base_info = {
	group_id = 133220213
}

-- DEFS_MISCS
local defs = {
	group_id = 133220213
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[213001] = { config_id = 213001, monster_id = 21011601, pos = { x = -2823.267, y = 223.668, z = -4397.806 }, rot = { x = 0.000, y = 125.501, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 11 },
	[213002] = { config_id = 213002, monster_id = 21020701, pos = { x = -2829.321, y = 223.609, z = -4404.234 }, rot = { x = 0.000, y = 19.472, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 11 },
	[213004] = { config_id = 213004, monster_id = 21010501, pos = { x = -2818.708, y = 227.114, z = -4388.167 }, rot = { x = 0.000, y = 2.726, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 32, area_id = 11 },
	[213005] = { config_id = 213005, monster_id = 21010301, pos = { x = -2809.675, y = 224.089, z = -4402.596 }, rot = { x = 0.000, y = 18.313, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 11 },
	[213006] = { config_id = 213006, monster_id = 21010301, pos = { x = -2812.737, y = 221.436, z = -4384.764 }, rot = { x = 0.000, y = 15.155, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 11 },
	[213007] = { config_id = 213007, monster_id = 21010601, pos = { x = -2814.109, y = 224.830, z = -4408.095 }, rot = { x = 0.000, y = 341.417, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[213008] = { config_id = 213008, gadget_id = 70360166, pos = { x = -2824.321, y = 224.843, z = -4411.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 11 },
	[213009] = { config_id = 213009, gadget_id = 70360166, pos = { x = -2829.627, y = 223.228, z = -4395.733 }, rot = { x = 0.000, y = 249.449, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 11 },
	[213010] = { config_id = 213010, gadget_id = 70360025, pos = { x = -2783.240, y = 224.199, z = -4389.730 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1, area_id = 11 },
	[213011] = { config_id = 213011, gadget_id = 70350085, pos = { x = -2783.240, y = 225.310, z = -4389.730 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1, area_id = 11 },
	[213022] = { config_id = 213022, gadget_id = 70300090, pos = { x = -2818.690, y = 221.611, z = -4388.238 }, rot = { x = 0.000, y = 4.444, z = 0.000 }, level = 1, area_id = 11 },
	[213023] = { config_id = 213023, gadget_id = 70300091, pos = { x = -2828.973, y = 223.189, z = -4394.112 }, rot = { x = 0.000, y = 15.217, z = 0.000 }, level = 1, area_id = 11 },
	[213024] = { config_id = 213024, gadget_id = 70310009, pos = { x = -2832.175, y = 223.246, z = -4400.862 }, rot = { x = 0.000, y = 343.209, z = 0.000 }, level = 1, area_id = 11 },
	[213025] = { config_id = 213025, gadget_id = 70300089, pos = { x = -2824.620, y = 224.843, z = -4411.425 }, rot = { x = 0.000, y = 282.212, z = 0.000 }, level = 1, area_id = 11 },
	[213028] = { config_id = 213028, gadget_id = 70220025, pos = { x = -2824.206, y = 224.843, z = -4410.872 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[213033] = { config_id = 213033, gadget_id = 70300086, pos = { x = -2828.938, y = 223.188, z = -4394.032 }, rot = { x = 0.000, y = 15.217, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	-- 进入区域后-开启挑战
	[213012] = { config_id = 213012, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2816.233, y = 223.646, z = -4404.843 }, area_id = 11 },
	-- 结束挑战
	[213017] = { config_id = 213017, shape = RegionShape.SPHERE, radius = 2, pos = { x = -2783.240, y = 224.050, z = -4389.730 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 进入区域后-开启挑战
	{ config_id = 1213012, name = "ENTER_REGION_213012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_213012", action = "action_EVENT_ENTER_REGION_213012", trigger_count = 0 },
	{ config_id = 1213013, name = "ANY_GADGET_DIE_213013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_213013", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1213014, name = "ANY_GADGET_DIE_213014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_213014", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1213015, name = "CHALLENGE_SUCCESS_213015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_213015", trigger_count = 0 },
	{ config_id = 1213016, name = "CHALLENGE_FAIL_213016", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "condition_EVENT_CHALLENGE_FAIL_213016", action = "action_EVENT_CHALLENGE_FAIL_213016", trigger_count = 0 },
	-- 结束挑战
	{ config_id = 1213017, name = "ENTER_REGION_213017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_213017", action = "action_EVENT_ENTER_REGION_213017", trigger_count = 0, tag = "999" },
	{ config_id = 1213018, name = "CHALLENGE_SUCCESS_213018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_213018", trigger_count = 0 },
	{ config_id = 1213021, name = "MONSTER_BATTLE_213021", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_213021", action = "action_EVENT_MONSTER_BATTLE_213021" },
	-- group加载时重置
	{ config_id = 1213031, name = "GROUP_LOAD_213031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_213031", action = "action_EVENT_GROUP_LOAD_213031", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 213026, gadget_id = 70220065, pos = { x = -2831.177, y = 223.185, z = -4396.247 }, rot = { x = 0.000, y = 307.360, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 213027, gadget_id = 70220066, pos = { x = -2826.182, y = 224.843, z = -4409.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 213030, gadget_id = 70220067, pos = { x = -2825.707, y = 224.843, z = -4408.248 }, rot = { x = 0.000, y = 306.536, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 213032, gadget_id = 70220066, pos = { x = -2826.521, y = 224.843, z = -4410.415 }, rot = { x = 0.000, y = 351.880, z = 0.000 }, level = 1, area_id = 11 }
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
		monsters = { 213004, 213005, 213006 },
		gadgets = { 213008, 213009, 213022, 213023, 213024, 213025, 213028, 213033 },
		regions = { 213012 },
		triggers = { "ENTER_REGION_213012", "ANY_GADGET_DIE_213013", "ANY_GADGET_DIE_213014", "CHALLENGE_SUCCESS_213015", "CHALLENGE_FAIL_213016", "CHALLENGE_SUCCESS_213018", "MONSTER_BATTLE_213021", "GROUP_LOAD_213031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 撤离目标组,
		monsters = { },
		gadgets = { 213010, 213011 },
		regions = { 213017 },
		triggers = { "ENTER_REGION_213017" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = 埋伏怪物组,
		monsters = { 213001, 213002, 213007 },
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
function condition_EVENT_ENTER_REGION_213012(context, evt)
	if evt.param1 ~= 213012 then return false end
	
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
function action_EVENT_ENTER_REGION_213012(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 64, 999999, {success=200, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 65, {2,998,2}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_213013(context, evt)
	if 213008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_213014(context, evt)
	if 213009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_213015(context, evt)
	ScriptLib.AttachChildChallenge(context, 100, 1002, 66, {4,999,1}, {},{success=100,fail=100})
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_FAIL_213016(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_213016(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_213017(context, evt)
	if evt.param1 ~= 213017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_213017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 213010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 213011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_213018(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220213, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_213021(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_213021(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2823.962,y=225.1474,z=-4410.838}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400055, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220213, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_213031(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_213031(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end