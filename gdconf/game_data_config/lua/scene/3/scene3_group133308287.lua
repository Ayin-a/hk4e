-- 基础信息
local base_info = {
	group_id = 133308287
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
	{ config_id = 287001, gadget_id = 70300203, pos = { x = -1997.945, y = 300.028, z = 4113.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	{ config_id = 287002, gadget_id = 70350085, pos = { x = -1997.945, y = 301.040, z = 4113.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	{ config_id = 287003, gadget_id = 70950145, pos = { x = -1984.529, y = 295.708, z = 4122.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 287004, gadget_id = 70300203, pos = { x = -1993.544, y = 298.128, z = 4133.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	{ config_id = 287005, gadget_id = 70350085, pos = { x = -1993.544, y = 299.140, z = 4133.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	{ config_id = 287006, gadget_id = 70350085, pos = { x = -1982.611, y = 296.690, z = 4128.383 }, rot = { x = 0.000, y = 299.294, z = 0.000 }, level = 19, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	{ config_id = 287007, gadget_id = 70300203, pos = { x = -1985.138, y = 290.538, z = 4101.244 }, rot = { x = 0.000, y = 325.738, z = 0.000 }, level = 18, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	{ config_id = 287008, gadget_id = 70350085, pos = { x = -1985.138, y = 291.550, z = 4101.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	{ config_id = 287009, gadget_id = 70360025, pos = { x = -1983.568, y = 295.708, z = 4124.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 26 },
	{ config_id = 287010, gadget_id = 70350085, pos = { x = -1975.647, y = 293.605, z = 4116.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	{ config_id = 287011, gadget_id = 70300203, pos = { x = -1975.647, y = 292.592, z = 4116.271 }, rot = { x = 0.000, y = 325.738, z = 0.000 }, level = 18, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	{ config_id = 287012, gadget_id = 70350085, pos = { x = -1981.248, y = 296.690, z = 4136.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	{ config_id = 287013, gadget_id = 70300203, pos = { x = -1981.248, y = 295.678, z = 4136.007 }, rot = { x = 0.000, y = 325.738, z = 0.000 }, level = 18, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	{ config_id = 287014, gadget_id = 70350085, pos = { x = -1983.568, y = 296.720, z = 4124.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 287015, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1981.248, y = 295.678, z = 4136.007 }, area_id = 26 },
	{ config_id = 287016, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1997.945, y = 300.028, z = 4113.660 }, area_id = 26 },
	{ config_id = 287017, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1993.544, y = 298.128, z = 4133.899 }, area_id = 26 },
	{ config_id = 287020, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1982.605, y = 295.678, z = 4128.388 }, area_id = 26 },
	{ config_id = 287021, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1985.138, y = 290.538, z = 4101.244 }, area_id = 26 },
	{ config_id = 287022, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1975.647, y = 292.592, z = 4116.271 }, area_id = 26 },
	{ config_id = 287023, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1983.568, y = 295.708, z = 4124.094 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1287015, name = "ENTER_REGION_287015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_287015", action = "action_EVENT_ENTER_REGION_287015", tag = "666" },
	{ config_id = 1287016, name = "ENTER_REGION_287016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_287016", action = "action_EVENT_ENTER_REGION_287016", tag = "666" },
	{ config_id = 1287017, name = "ENTER_REGION_287017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_287017", action = "action_EVENT_ENTER_REGION_287017", tag = "666" },
	{ config_id = 1287018, name = "CHALLENGE_SUCCESS_287018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_287018", trigger_count = 0 },
	{ config_id = 1287019, name = "CHALLENGE_FAIL_287019", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_287019", trigger_count = 0 },
	{ config_id = 1287020, name = "ENTER_REGION_287020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_287020", action = "action_EVENT_ENTER_REGION_287020" },
	{ config_id = 1287021, name = "ENTER_REGION_287021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_287021", action = "action_EVENT_ENTER_REGION_287021", tag = "666" },
	{ config_id = 1287022, name = "ENTER_REGION_287022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_287022", action = "action_EVENT_ENTER_REGION_287022", tag = "666" },
	{ config_id = 1287023, name = "ENTER_REGION_287023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_287023", action = "", tag = "666" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
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
		gadgets = { 287003, 287006 },
		regions = { 287020 },
		triggers = { "CHALLENGE_SUCCESS_287018", "CHALLENGE_FAIL_287019", "ENTER_REGION_287020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 287004, 287005 },
		regions = { 287017 },
		triggers = { "ENTER_REGION_287017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 287001, 287002 },
		regions = { 287016 },
		triggers = { "ENTER_REGION_287016" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 287007, 287008 },
		regions = { 287021 },
		triggers = { "ENTER_REGION_287021" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 287010, 287011 },
		regions = { 287022 },
		triggers = { "ENTER_REGION_287022" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 287012, 287013 },
		regions = { 287015 },
		triggers = { "ENTER_REGION_287015" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 287009, 287014 },
		regions = { 287023 },
		triggers = { "ENTER_REGION_287023" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
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
function condition_EVENT_ENTER_REGION_287015(context, evt)
	if evt.param1 ~= 287015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_287015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308287, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308287, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_287016(context, evt)
	if evt.param1 ~= 287016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_287016(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308287, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308287, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_287017(context, evt)
	if evt.param1 ~= 287017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_287017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308287, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308287, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_287018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326707") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308287, 7)
	
	-- 将configid为 287003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133308287, 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_287019(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308287, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_287020(context, evt)
	if evt.param1 ~= 287020 then return false end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_287020(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308287, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建编号为888（该挑战的识别id),挑战内容为2010080的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 2010080, 120, 4, 666, 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_287021(context, evt)
	if evt.param1 ~= 287021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_287021(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308287, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308287, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_287022(context, evt)
	if evt.param1 ~= 287022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_287022(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308287, 6)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308287, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_287023(context, evt)
	if evt.param1 ~= 287023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end