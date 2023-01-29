-- 基础信息
local base_info = {
	group_id = 220140013
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
	{ config_id = 13004, gadget_id = 70690001, pos = { x = 100.084, y = 94.557, z = 786.746 }, rot = { x = 331.405, y = 339.667, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 13005, gadget_id = 70690001, pos = { x = 96.835, y = 98.106, z = 795.512 }, rot = { x = 333.395, y = 339.667, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 13006, gadget_id = 70310297, pos = { x = 25.500, y = 80.600, z = 667.000 }, rot = { x = 332.800, y = 330.000, z = 304.000 }, level = 1, isOneoff = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 13007, gadget_id = 70690001, pos = { x = 93.586, y = 101.656, z = 804.279 }, rot = { x = 333.979, y = 336.090, z = 0.887 }, level = 1, persistent = true },
	{ config_id = 13008, gadget_id = 70310297, pos = { x = 116.150, y = 93.352, z = 700.720 }, rot = { x = 319.836, y = 56.101, z = 328.138 }, level = 1, isOneoff = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 13009, gadget_id = 70310296, pos = { x = 107.610, y = 68.913, z = 700.179 }, rot = { x = 0.270, y = 30.516, z = 1.388 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 13010, gadget_id = 70310296, pos = { x = 12.490, y = 67.430, z = 647.950 }, rot = { x = 357.919, y = 289.065, z = 357.131 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 13012, gadget_id = 70380298, pos = { x = 44.270, y = 85.000, z = 605.720 }, rot = { x = 0.000, y = 292.846, z = 0.000 }, level = 1 },
	{ config_id = 13013, gadget_id = 70690001, pos = { x = 90.338, y = 105.205, z = 813.045 }, rot = { x = 333.767, y = 339.667, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 13014, gadget_id = 70310297, pos = { x = 92.700, y = 75.700, z = 733.190 }, rot = { x = 343.360, y = 282.736, z = 283.730 }, level = 1, isOneoff = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 13015, gadget_id = 70310296, pos = { x = 102.422, y = 68.531, z = 743.746 }, rot = { x = 0.879, y = 283.192, z = 0.836 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 13016, gadget_id = 70690001, pos = { x = 87.089, y = 108.754, z = 821.811 }, rot = { x = 333.685, y = 335.433, z = 1.971 }, level = 1, persistent = true },
	{ config_id = 13017, gadget_id = 70690001, pos = { x = 83.841, y = 112.303, z = 830.578 }, rot = { x = 358.459, y = 353.899, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 13018, gadget_id = 70690029, pos = { x = 99.988, y = 76.835, z = 779.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 13019, gadget_id = 70690001, pos = { x = 82.794, y = 112.568, z = 840.372 }, rot = { x = 358.459, y = 353.899, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 13020, gadget_id = 70690029, pos = { x = 83.714, y = 94.823, z = 851.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 13029, gadget_id = 70310296, pos = { x = 52.220, y = 98.795, z = 977.082 }, rot = { x = 353.671, y = 304.964, z = 5.137 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 13030, gadget_id = 70310296, pos = { x = 89.390, y = 96.820, z = 978.089 }, rot = { x = 18.777, y = 128.700, z = 345.032 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- 区域
regions = {
	{ config_id = 13002, shape = RegionShape.SPHERE, radius = 10, pos = { x = 44.679, y = 84.590, z = 598.078 } }
}

-- 触发器
triggers = {
	{ config_id = 1013001, name = "QUEST_FINISH_13001", event = EventType.EVENT_QUEST_FINISH, source = "4006716", condition = "", action = "action_EVENT_QUEST_FINISH_13001", trigger_count = 0 },
	{ config_id = 1013002, name = "ENTER_REGION_13002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13002", action = "action_EVENT_ENTER_REGION_13002", trigger_count = 0 },
	{ config_id = 1013003, name = "QUEST_FINISH_13003", event = EventType.EVENT_QUEST_FINISH, source = "4006710", condition = "", action = "action_EVENT_QUEST_FINISH_13003", trigger_count = 0 },
	{ config_id = 1013011, name = "GROUP_LOAD_13011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_13011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		gadgets = { 13006, 13008, 13012, 13014 },
		regions = { 13002 },
		triggers = { "QUEST_FINISH_13001", "ENTER_REGION_13002", "QUEST_FINISH_13003", "GROUP_LOAD_13011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 13009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 13015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 13004, 13005, 13007, 13013, 13016, 13017, 13018, 13019, 13020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 13029, 13030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 13010 },
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

-- 触发操作
function action_EVENT_QUEST_FINISH_13001(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140013, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13002(context, evt)
	if evt.param1 ~= 13002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"plat"为8
	if ScriptLib.GetGroupVariableValueByGroup(context, "plat", 220140004) ~= 8 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13002(context, evt)
	-- 将本组内变量名为 "plat" 的变量设置为 9
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "plat", 9, 220140004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "temp" 的变量设置为 6
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 13006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为13010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 13010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_13003(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140013, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_13011(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 2 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 3 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 4 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 5)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 6 then
		ScriptLib.AddExtraGroupSuite(context, 0, 6)
	end
	
	return 0
end