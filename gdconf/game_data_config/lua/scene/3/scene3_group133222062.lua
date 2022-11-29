-- 基础信息
local base_info = {
	group_id = 133222062
}

-- DEFS_MISCS
local defs = {
	group_id = 133222062
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[62001] = { config_id = 62001, monster_id = 25010301, pos = { x = -4229.489, y = 200.547, z = -4326.102 }, rot = { x = 0.000, y = 290.103, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 },
	[62002] = { config_id = 62002, monster_id = 25010201, pos = { x = -4217.074, y = 200.053, z = -4324.756 }, rot = { x = 0.000, y = 268.578, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 },
	[62003] = { config_id = 62003, monster_id = 25010501, pos = { x = -4241.147, y = 200.339, z = -4348.499 }, rot = { x = 0.000, y = 324.158, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 },
	[62004] = { config_id = 62004, monster_id = 25010201, pos = { x = -4235.725, y = 200.238, z = -4344.124 }, rot = { x = 0.000, y = 142.431, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 9006, area_id = 14 },
	[62005] = { config_id = 62005, monster_id = 25010701, pos = { x = -4235.062, y = 200.002, z = -4345.992 }, rot = { x = 0.000, y = 331.378, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 9009, area_id = 14 },
	[62006] = { config_id = 62006, monster_id = 25010601, pos = { x = -4237.322, y = 200.000, z = -4333.366 }, rot = { x = 0.000, y = 83.628, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 },
	[62007] = { config_id = 62007, monster_id = 25030301, pos = { x = -4239.864, y = 200.547, z = -4321.008 }, rot = { x = 0.000, y = 98.794, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[62008] = { config_id = 62008, gadget_id = 70360166, pos = { x = -4235.555, y = 200.765, z = -4311.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 14 },
	[62009] = { config_id = 62009, gadget_id = 70360166, pos = { x = -4248.271, y = 201.461, z = -4349.075 }, rot = { x = 0.000, y = 249.449, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 14 },
	[62010] = { config_id = 62010, gadget_id = 70360025, pos = { x = -4180.586, y = 200.459, z = -4319.146 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1, area_id = 14 },
	[62011] = { config_id = 62011, gadget_id = 70350085, pos = { x = -4180.586, y = 201.538, z = -4319.146 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1, area_id = 14 },
	[62012] = { config_id = 62012, gadget_id = 70290196, pos = { x = -4285.965, y = 212.154, z = -4229.198 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1, area_id = 14 }
}

-- 区域
regions = {
	-- 进入区域后-开启挑战
	[62013] = { config_id = 62013, shape = RegionShape.SPHERE, radius = 80, pos = { x = -4236.525, y = 200.113, z = -4326.762 }, area_id = 14 },
	-- 结束挑战
	[62018] = { config_id = 62018, shape = RegionShape.SPHERE, radius = 2, pos = { x = -4180.586, y = 200.022, z = -4319.146 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- 进入区域后-开启挑战
	{ config_id = 1062013, name = "ENTER_REGION_62013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_62013", action = "action_EVENT_ENTER_REGION_62013", trigger_count = 0 },
	{ config_id = 1062014, name = "ANY_GADGET_DIE_62014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_62014", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1062015, name = "ANY_GADGET_DIE_62015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_62015", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1062016, name = "CHALLENGE_SUCCESS_62016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_62016", trigger_count = 0 },
	{ config_id = 1062017, name = "CHALLENGE_FAIL_62017", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_62017", trigger_count = 0 },
	-- 结束挑战
	{ config_id = 1062018, name = "ENTER_REGION_62018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_62018", action = "action_EVENT_ENTER_REGION_62018", trigger_count = 0, tag = "999" },
	{ config_id = 1062019, name = "CHALLENGE_SUCCESS_62019", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_62019", trigger_count = 0 },
	{ config_id = 1062020, name = "MONSTER_BATTLE_62020", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_62020" },
	-- 进入区域后-开启挑战
	{ config_id = 1062021, name = "GROUP_LOAD_62021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_62021", action = "action_EVENT_GROUP_LOAD_62021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = true }
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
		monsters = { 62002, 62004, 62005 },
		gadgets = { 62008, 62009, 62012 },
		regions = { 62013 },
		triggers = { "ENTER_REGION_62013", "ANY_GADGET_DIE_62014", "ANY_GADGET_DIE_62015", "CHALLENGE_SUCCESS_62016", "CHALLENGE_FAIL_62017", "CHALLENGE_SUCCESS_62019", "MONSTER_BATTLE_62020", "GROUP_LOAD_62021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 撤离目标组,
		monsters = { },
		gadgets = { 62010, 62011 },
		regions = { 62018 },
		triggers = { "ENTER_REGION_62018" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = 埋伏怪物组,
		monsters = { 62001, 62003, 62006, 62007 },
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
function condition_EVENT_ENTER_REGION_62013(context, evt)
	if evt.param1 ~= 62013 then return false end
	
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
function action_EVENT_ENTER_REGION_62013(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 64, 999999, {success=200, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 65, {2,998,2}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_62014(context, evt)
	if 62008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_62015(context, evt)
	if 62009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_62016(context, evt)
	ScriptLib.AttachChildChallenge(context, 100, 1002, 66, {4,999,1}, {},{success=100,fail=100})
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_62017(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_62018(context, evt)
	if evt.param1 ~= 62018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_62018(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 62010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 62011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_62019(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133222062, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_62020(context, evt)
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
	    ScriptLib.AddExtraGroupSuite(context, 133222062, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_62021(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_62021(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end