-- 基础信息
local base_info = {
	group_id = 111101094
}

-- DEFS_MISCS
local defs = {
	RevivePoint = {pos = {x=2153.553, y= 217.2468, z=-1402.285},
                   radius = 2, rot = {x=0, y=196.7968, z=0}},
	group_id = 111101094
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[94006] = { config_id = 94006, monster_id = 21010701, pos = { x = 2195.709, y = 212.353, z = -1478.690 }, rot = { x = 12.865, y = 279.999, z = 2.543 }, level = 1, drop_tag = "丘丘人", affix = { 1403, 1405, 1407 }, isElite = true },
	[94008] = { config_id = 94008, monster_id = 21011002, pos = { x = 2184.225, y = 212.768, z = -1477.651 }, rot = { x = 0.000, y = 96.705, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1403, 1407, 1405 }, isElite = true, pose_id = 32 },
	[94009] = { config_id = 94009, monster_id = 21020101, pos = { x = 2189.752, y = 212.660, z = -1483.322 }, rot = { x = 0.000, y = 268.578, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1403, 1407, 1405 }, isElite = true, pose_id = 401 },
	[94014] = { config_id = 94014, monster_id = 21030203, pos = { x = 2193.244, y = 212.782, z = -1485.749 }, rot = { x = 12.865, y = 284.567, z = 2.543 }, level = 1, drop_tag = "丘丘萨满", affix = { 1403, 1405, 1407 }, isElite = true },
	[94015] = { config_id = 94015, monster_id = 21010501, pos = { x = 2173.595, y = 221.599, z = -1482.334 }, rot = { x = 0.000, y = 2.726, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1403, 1407, 1405 }, isElite = true, pose_id = 32 },
	[94039] = { config_id = 94039, monster_id = 21010301, pos = { x = 2179.654, y = 213.788, z = -1480.410 }, rot = { x = 0.000, y = 331.378, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1403, 1407, 1405 }, isElite = true },
	[94040] = { config_id = 94040, monster_id = 21010301, pos = { x = 2191.115, y = 212.501, z = -1472.931 }, rot = { x = 0.000, y = 239.426, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1403, 1407, 1405 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[94023] = { config_id = 94023, gadget_id = 70360166, pos = { x = 2209.820, y = 213.800, z = -1487.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true },
	[94024] = { config_id = 94024, gadget_id = 70360166, pos = { x = 2195.732, y = 212.329, z = -1472.175 }, rot = { x = 0.000, y = 249.449, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true },
	[94093] = { config_id = 94093, gadget_id = 70360025, pos = { x = 2162.032, y = 221.631, z = -1384.395 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1 },
	[94094] = { config_id = 94094, gadget_id = 70350085, pos = { x = 2162.032, y = 222.507, z = -1384.395 }, rot = { x = 0.000, y = 349.859, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 进入区域后-开启挑战
	[94041] = { config_id = 94041, shape = RegionShape.SPHERE, radius = 80, pos = { x = 2211.472, y = 213.802, z = -1481.959 } },
	-- 结束挑战
	[94095] = { config_id = 94095, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2162.032, y = 221.166, z = -1384.395 } }
}

-- 触发器
triggers = {
	{ config_id = 1094020, name = "GADGET_STATE_CHANGE_94020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_94020", action = "action_EVENT_GADGET_STATE_CHANGE_94020", trigger_count = 0 },
	-- 进入区域后-开启挑战
	{ config_id = 1094041, name = "ENTER_REGION_94041", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_94041", action = "action_EVENT_ENTER_REGION_94041", trigger_count = 0 },
	{ config_id = 1094042, name = "ANY_GADGET_DIE_94042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_94042", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1094043, name = "ANY_GADGET_DIE_94043", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_94043", action = "", trigger_count = 0, tag = "998" },
	{ config_id = 1094044, name = "CHALLENGE_SUCCESS_94044", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_94044", trigger_count = 0 },
	{ config_id = 1094045, name = "CHALLENGE_FAIL_94045", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_94045", trigger_count = 0 },
	{ config_id = 1094046, name = "GADGET_STATE_CHANGE_94046", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_94046", action = "action_EVENT_GADGET_STATE_CHANGE_94046", trigger_count = 0 },
	{ config_id = 1094047, name = "MONSTER_BATTLE_94047", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_94047" },
	-- 结束挑战
	{ config_id = 1094095, name = "ENTER_REGION_94095", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_94095", action = "action_EVENT_ENTER_REGION_94095", trigger_count = 0, tag = "999" },
	{ config_id = 1094097, name = "CHALLENGE_SUCCESS_94097", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_94097", trigger_count = 0 }
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
	end_suite = 3,
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
		monsters = { 94009, 94015, 94039, 94040 },
		gadgets = { 94023, 94024 },
		regions = { 94041 },
		triggers = { "GADGET_STATE_CHANGE_94020", "ENTER_REGION_94041", "ANY_GADGET_DIE_94042", "ANY_GADGET_DIE_94043", "CHALLENGE_SUCCESS_94044", "CHALLENGE_FAIL_94045", "GADGET_STATE_CHANGE_94046", "MONSTER_BATTLE_94047", "CHALLENGE_SUCCESS_94097" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 撤离目标组,
		monsters = { },
		gadgets = { 94093, 94094 },
		regions = { 94095 },
		triggers = { "ENTER_REGION_94095" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = 埋伏怪物组,
		monsters = { 94006, 94008, 94014 },
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
function condition_EVENT_GADGET_STATE_CHANGE_94020(context, evt)
	-- 检测config_id为94023的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 94023 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_94020(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2209.82,y=213.8002,z=-1487.222}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400032, pos, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_94041(context, evt)
	if evt.param1 ~= 94041 then return false end
	
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
function action_EVENT_ENTER_REGION_94041(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 64, 600, {success=200, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 65, {2,998,2}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_94042(context, evt)
	if 94023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_94043(context, evt)
	if 94024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_94044(context, evt)
	ScriptLib.AttachChildChallenge(context, 100, 1002, 66, {4,999,1}, {},{success=100,fail=100})
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_94045(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_94046(context, evt)
	-- 检测config_id为94024的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 94024 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_94046(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2195.732,y=212.3285,z=-1472.175}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400032, pos, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_94047(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101094, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_94095(context, evt)
	if evt.param1 ~= 94095 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_94095(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94093 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94094 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_94097(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 111101094, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end