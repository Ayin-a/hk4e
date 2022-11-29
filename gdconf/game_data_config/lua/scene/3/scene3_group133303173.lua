-- 基础信息
local base_info = {
	group_id = 133303173
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 173003, gadget_id = 70360005, pos = { x = -1179.519, y = 236.822, z = 2921.410 }, rot = { x = 14.191, y = 2.013, z = 348.042 }, level = 19, area_id = 21 },
	{ config_id = 173004, gadget_id = 70710126, pos = { x = -1149.268, y = 239.300, z = 2956.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 21 },
	{ config_id = 173005, gadget_id = 70350085, pos = { x = -1149.268, y = 239.300, z = 2956.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 21 },
	{ config_id = 173006, gadget_id = 70350085, pos = { x = -1178.997, y = 236.400, z = 2922.350 }, rot = { x = 0.000, y = 299.294, z = 342.770 }, level = 19, area_id = 21 },
	{ config_id = 173007, gadget_id = 70710126, pos = { x = -1260.761, y = 195.209, z = 2990.731 }, rot = { x = 0.000, y = 325.738, z = 0.000 }, level = 18, area_id = 21 },
	{ config_id = 173008, gadget_id = 70350085, pos = { x = -1260.761, y = 195.209, z = 2990.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 21 },
	{ config_id = 173009, gadget_id = 70360025, pos = { x = -1299.191, y = 199.770, z = 3167.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 23 },
	{ config_id = 173010, gadget_id = 70350085, pos = { x = -1302.020, y = 217.197, z = 2994.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 21 },
	{ config_id = 173011, gadget_id = 70710126, pos = { x = -1302.020, y = 217.197, z = 2994.069 }, rot = { x = 0.000, y = 325.738, z = 0.000 }, level = 18, area_id = 21 },
	{ config_id = 173012, gadget_id = 70350085, pos = { x = -1319.227, y = 215.805, z = 3062.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 21 },
	{ config_id = 173013, gadget_id = 70710126, pos = { x = -1319.227, y = 215.805, z = 3062.021 }, rot = { x = 0.000, y = 325.738, z = 0.000 }, level = 18, area_id = 21 },
	{ config_id = 173014, gadget_id = 70350085, pos = { x = -1299.191, y = 199.493, z = 3167.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 23 },
	{ config_id = 173024, gadget_id = 70220103, pos = { x = -1154.819, y = 243.727, z = 2949.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 173025, gadget_id = 70220103, pos = { x = -1309.220, y = 219.936, z = 3039.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 173026, gadget_id = 70330197, pos = { x = -1290.820, y = 186.946, z = 2994.252 }, rot = { x = 0.000, y = 277.191, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 173027, gadget_id = 70330197, pos = { x = -1291.440, y = 187.930, z = 2992.237 }, rot = { x = 0.000, y = 324.292, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 173028, gadget_id = 70330197, pos = { x = -1289.544, y = 187.171, z = 2992.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 173029, gadget_id = 70220103, pos = { x = -1291.524, y = 220.244, z = 2990.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 173030, gadget_id = 70220103, pos = { x = -1185.065, y = 224.915, z = 2972.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 173031, gadget_id = 70220103, pos = { x = -1320.984, y = 206.613, z = 3113.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 173032, gadget_id = 70220103, pos = { x = -1302.715, y = 202.916, z = 3160.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 173033, gadget_id = 70220103, pos = { x = -1234.891, y = 211.636, z = 2980.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 173015, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1319.227, y = 215.805, z = 3062.021 }, area_id = 21 },
	{ config_id = 173017, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1149.268, y = 239.300, z = 2956.619 }, area_id = 21 },
	{ config_id = 173021, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1260.761, y = 195.209, z = 2990.731 }, area_id = 21 },
	{ config_id = 173022, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1302.020, y = 217.197, z = 2994.069 }, area_id = 21 },
	{ config_id = 173023, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1299.191, y = 199.493, z = 3167.018 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1173015, name = "ENTER_REGION_173015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_173015", action = "action_EVENT_ENTER_REGION_173015", tag = "666" },
	{ config_id = 1173017, name = "ENTER_REGION_173017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_173017", action = "action_EVENT_ENTER_REGION_173017", tag = "666" },
	{ config_id = 1173018, name = "CHALLENGE_SUCCESS_173018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_173018", trigger_count = 0 },
	{ config_id = 1173019, name = "CHALLENGE_FAIL_173019", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_173019", trigger_count = 0 },
	{ config_id = 1173020, name = "GADGET_STATE_CHANGE_173020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_173020", action = "action_EVENT_GADGET_STATE_CHANGE_173020", trigger_count = 0 },
	{ config_id = 1173021, name = "ENTER_REGION_173021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_173021", action = "action_EVENT_ENTER_REGION_173021", tag = "666" },
	{ config_id = 1173022, name = "ENTER_REGION_173022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_173022", action = "action_EVENT_ENTER_REGION_173022", tag = "666" },
	{ config_id = 1173023, name = "ENTER_REGION_173023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_173023", action = "", tag = "666" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 173001, gadget_id = 70710126, pos = { x = -1171.873, y = 221.859, z = 3014.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 23 },
		{ config_id = 173002, gadget_id = 70350085, pos = { x = -1171.873, y = 221.859, z = 3014.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 23 }
	},
	regions = {
		{ config_id = 173016, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1171.873, y = 221.859, z = 3014.890 }, area_id = 23 }
	},
	triggers = {
		{ config_id = 1173016, name = "ENTER_REGION_173016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_173016", action = "action_EVENT_ENTER_REGION_173016", tag = "666" }
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
		-- description = ,
		monsters = { },
		gadgets = { 173003, 173006, 173026, 173027, 173028, 173033 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_173018", "CHALLENGE_FAIL_173019", "GADGET_STATE_CHANGE_173020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 173004, 173005, 173024 },
		regions = { 173017 },
		triggers = { "ENTER_REGION_173017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 173007, 173008, 173030 },
		regions = { 173021 },
		triggers = { "ENTER_REGION_173021" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 173010, 173011, 173029 },
		regions = { 173022 },
		triggers = { "ENTER_REGION_173022" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 173012, 173013, 173025 },
		regions = { 173015 },
		triggers = { "ENTER_REGION_173015" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 173009, 173014, 173031, 173032 },
		regions = { 173023 },
		triggers = { "ENTER_REGION_173023" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
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
function condition_EVENT_ENTER_REGION_173015(context, evt)
	if evt.param1 ~= 173015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_173015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 173013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 173012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303173, 6)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303173, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_173017(context, evt)
	if evt.param1 ~= 173017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_173017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 173004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 173005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303173, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303173, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_173018(context, evt)
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 173006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303173, 6)
	
	-- 将configid为 173003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 173003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303173, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_173019(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303173, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_173020(context, evt)
	if 173003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_173020(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303173, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 173006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建编号为888（该挑战的识别id),挑战内容为241的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 241, 90, 4, 666, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将本组内变量名为 "hasFinished" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_173021(context, evt)
	if evt.param1 ~= 173021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_173021(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 173007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 173008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303173, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303173, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_173022(context, evt)
	if evt.param1 ~= 173022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_173022(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 173011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 173010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303173, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303173, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_173023(context, evt)
	if evt.param1 ~= 173023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end