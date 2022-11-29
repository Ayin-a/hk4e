-- 基础信息
local base_info = {
	group_id = 133220157
}

-- DEFS_MISCS
local defs = {
	group_id = 133220157
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[157001] = { config_id = 157001, monster_id = 25080201, pos = { x = -1847.360, y = 204.694, z = -4227.062 }, rot = { x = 0.000, y = 318.591, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 11 },
	[157002] = { config_id = 157002, monster_id = 25080101, pos = { x = -1850.920, y = 205.917, z = -4218.067 }, rot = { x = 0.000, y = 174.995, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 11 },
	[157003] = { config_id = 157003, monster_id = 25080201, pos = { x = -1860.091, y = 204.407, z = -4228.609 }, rot = { x = 0.000, y = 189.985, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 11 },
	[157004] = { config_id = 157004, monster_id = 25080301, pos = { x = -1863.083, y = 207.140, z = -4184.492 }, rot = { x = 0.000, y = 293.985, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 11 },
	[157005] = { config_id = 157005, monster_id = 25080301, pos = { x = -1843.306, y = 210.280, z = -4195.647 }, rot = { x = 0.000, y = 109.347, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[157006] = { config_id = 157006, gadget_id = 70360166, pos = { x = -1871.093, y = 211.804, z = -4228.955 }, rot = { x = 0.000, y = 5.872, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 11 },
	[157007] = { config_id = 157007, gadget_id = 70360166, pos = { x = -1843.072, y = 205.795, z = -4215.575 }, rot = { x = 0.000, y = 230.125, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 11 },
	[157008] = { config_id = 157008, gadget_id = 70360025, pos = { x = -1914.408, y = 200.083, z = -4244.886 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 27, area_id = 11 },
	[157009] = { config_id = 157009, gadget_id = 70350085, pos = { x = -1914.408, y = 200.083, z = -4244.886 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 27, area_id = 11 },
	[157011] = { config_id = 157011, gadget_id = 70300094, pos = { x = -1843.330, y = 205.813, z = -4216.446 }, rot = { x = 0.000, y = 139.918, z = 0.000 }, level = 27, area_id = 11 },
	[157013] = { config_id = 157013, gadget_id = 70290196, pos = { x = -1870.502, y = 211.804, z = -4217.598 }, rot = { x = 0.000, y = 5.872, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	-- 进入区域后-开启挑战
	[157021] = { config_id = 157021, shape = RegionShape.SPHERE, radius = 80, pos = { x = -1850.726, y = 206.109, z = -4210.283 }, area_id = 11 },
	-- 结束挑战
	[157026] = { config_id = 157026, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1914.408, y = 200.083, z = -4244.886 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1157012, name = "GROUP_LOAD_157012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_157012", action = "action_EVENT_GROUP_LOAD_157012", trigger_count = 0 },
	-- 进入区域后-开启挑战
	{ config_id = 1157021, name = "ENTER_REGION_157021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157021", action = "action_EVENT_ENTER_REGION_157021", trigger_count = 0 },
	{ config_id = 1157022, name = "ANY_GADGET_DIE_157022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_157022", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1157023, name = "ANY_GADGET_DIE_157023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_157023", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1157024, name = "CHALLENGE_SUCCESS_157024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_157024", trigger_count = 0 },
	{ config_id = 1157025, name = "CHALLENGE_FAIL_157025", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_157025", trigger_count = 0 },
	-- 结束挑战
	{ config_id = 1157026, name = "ENTER_REGION_157026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157026", action = "action_EVENT_ENTER_REGION_157026", trigger_count = 0, tag = "999" },
	{ config_id = 1157027, name = "CHALLENGE_SUCCESS_157027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_157027", trigger_count = 0 },
	{ config_id = 1157030, name = "MONSTER_BATTLE_157030", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_157030", action = "action_EVENT_MONSTER_BATTLE_157030" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 157010, gadget_id = 70900205, pos = { x = -1870.502, y = 211.804, z = -4217.598 }, rot = { x = 0.000, y = 5.872, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 11 }
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
		monsters = { 157002, 157004, 157005 },
		gadgets = { 157006, 157007, 157011, 157013 },
		regions = { 157021 },
		triggers = { "GROUP_LOAD_157012", "ENTER_REGION_157021", "ANY_GADGET_DIE_157022", "ANY_GADGET_DIE_157023", "CHALLENGE_SUCCESS_157024", "CHALLENGE_FAIL_157025", "CHALLENGE_SUCCESS_157027", "MONSTER_BATTLE_157030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 撤离目标组,
		monsters = { },
		gadgets = { 157008, 157009 },
		regions = { 157026 },
		triggers = { "ENTER_REGION_157026" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = 埋伏怪物组,
		monsters = { 157001, 157003 },
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
function condition_EVENT_GROUP_LOAD_157012(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_157012(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157021(context, evt)
	if evt.param1 ~= 157021 then return false end
	
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
function action_EVENT_ENTER_REGION_157021(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 64, 999999, {success=200, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 65, {2,998,2}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_157022(context, evt)
	if 157006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_157023(context, evt)
	if 157007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_157024(context, evt)
	ScriptLib.AttachChildChallenge(context, 100, 1002, 66, {4,999,1}, {},{success=100,fail=100})
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_157025(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157026(context, evt)
	if evt.param1 ~= 157026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_157027(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220157, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_157030(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_157030(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1871.093,y=211.8035,z=-4228.955}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400055, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220157, 3)
	
	return 0
end