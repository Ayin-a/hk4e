-- 基础信息
local base_info = {
	group_id = 133105903
}

-- Trigger变量
local defs = {
	duration = 70,
	group_id = 133105903
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
	{ config_id = 903002, gadget_id = 70690001, pos = { x = 1111.074, y = 454.281, z = -701.184 }, rot = { x = 321.790, y = 83.224, z = 3.250 }, level = 35, area_id = 10 },
	{ config_id = 903003, gadget_id = 70690001, pos = { x = 1120.266, y = 458.179, z = -700.278 }, rot = { x = 332.777, y = 80.857, z = 86.339 }, level = 35, area_id = 10 },
	{ config_id = 903004, gadget_id = 70690001, pos = { x = 1100.888, y = 449.066, z = -702.399 }, rot = { x = 325.341, y = 83.528, z = 2.738 }, level = 35, area_id = 10 },
	{ config_id = 903005, gadget_id = 70690001, pos = { x = 1091.640, y = 443.460, z = -703.250 }, rot = { x = 312.545, y = 64.169, z = 14.125 }, level = 35, area_id = 10 },
	{ config_id = 903007, gadget_id = 70690001, pos = { x = 1037.939, y = 396.038, z = -679.551 }, rot = { x = 298.580, y = 150.353, z = 349.962 }, level = 35, area_id = 10 },
	{ config_id = 903011, gadget_id = 70360095, pos = { x = 1080.283, y = 430.420, z = -708.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500100, area_id = 10 },
	{ config_id = 903012, gadget_id = 70690001, pos = { x = 1044.805, y = 400.422, z = -689.694 }, rot = { x = 336.734, y = 146.856, z = 4.756 }, level = 35, area_id = 10 },
	{ config_id = 903013, gadget_id = 70690001, pos = { x = 1010.201, y = 363.784, z = -641.793 }, rot = { x = 63.418, y = 326.994, z = 17.452 }, level = 35, area_id = 10 },
	{ config_id = 903018, gadget_id = 70360024, pos = { x = 1052.386, y = 405.606, z = -704.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 903021, gadget_id = 70690001, pos = { x = 1017.125, y = 372.367, z = -649.113 }, rot = { x = 41.729, y = 322.745, z = 0.000 }, level = 35, area_id = 10 },
	{ config_id = 903022, gadget_id = 70360095, pos = { x = 1086.878, y = 435.737, z = -704.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500101, area_id = 10 },
	{ config_id = 903024, gadget_id = 70360024, pos = { x = 1028.888, y = 381.329, z = -663.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 903026, gadget_id = 70360024, pos = { x = 994.719, y = 342.114, z = -626.479 }, rot = { x = 0.000, y = 319.065, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 903027, gadget_id = 70360025, pos = { x = 972.962, y = 341.088, z = -602.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 903032, gadget_id = 70900201, pos = { x = 1052.386, y = 406.353, z = -704.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 903033, gadget_id = 70900201, pos = { x = 1028.888, y = 382.079, z = -663.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 903034, gadget_id = 70900201, pos = { x = 994.719, y = 342.927, z = -626.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 903035, gadget_id = 70900201, pos = { x = 972.962, y = 341.088, z = -602.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 903036, gadget_id = 70360095, pos = { x = 1072.992, y = 418.357, z = -707.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500102, area_id = 10 },
	{ config_id = 903037, gadget_id = 70690014, pos = { x = 1032.532, y = 389.600, z = -671.441 }, rot = { x = 0.000, y = 335.269, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 903038, gadget_id = 70360093, pos = { x = 1030.749, y = 385.844, z = -669.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 903039, gadget_id = 70360093, pos = { x = 1027.106, y = 387.077, z = -675.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 903040, gadget_id = 70360093, pos = { x = 1036.354, y = 386.472, z = -665.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 903041, gadget_id = 70360093, pos = { x = 1000.870, y = 349.148, z = -631.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500105, area_id = 10 },
	{ config_id = 903042, gadget_id = 70360095, pos = { x = 996.380, y = 347.547, z = -636.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500103, area_id = 10 },
	{ config_id = 903043, gadget_id = 70360095, pos = { x = 1003.949, y = 347.290, z = -625.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500104, area_id = 10 },
	{ config_id = 903044, gadget_id = 70360095, pos = { x = 1076.990, y = 423.508, z = -707.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500106, area_id = 10 },
	{ config_id = 903045, gadget_id = 70690014, pos = { x = 1004.458, y = 352.410, z = -636.955 }, rot = { x = 0.000, y = 307.556, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 903029, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 973.090, y = 341.088, z = -602.640 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1903014, name = "QUEST_FINISH_903014", event = EventType.EVENT_QUEST_FINISH, source = "1104305", condition = "", action = "action_EVENT_QUEST_FINISH_903014", trigger_count = 0 },
	{ config_id = 1903023, name = "GADGET_STATE_CHANGE_903023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_903023", action = "action_EVENT_GADGET_STATE_CHANGE_903023", trigger_count = 0 },
	{ config_id = 1903025, name = "GADGET_STATE_CHANGE_903025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_903025", action = "action_EVENT_GADGET_STATE_CHANGE_903025", trigger_count = 0 },
	{ config_id = 1903028, name = "GADGET_STATE_CHANGE_903028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_903028", action = "action_EVENT_GADGET_STATE_CHANGE_903028", trigger_count = 0 },
	{ config_id = 1903029, name = "ENTER_REGION_903029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_903029", action = "action_EVENT_ENTER_REGION_903029", trigger_count = 0, tag = "1024" },
	{ config_id = 1903030, name = "CHALLENGE_FAIL_903030", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_903030", trigger_count = 0 },
	{ config_id = 1903031, name = "CHALLENGE_SUCCESS_903031", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_903031", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 903002, 903003, 903004, 903005, 903011, 903022, 903036, 903044 },
		regions = { },
		triggers = { "QUEST_FINISH_903014", "CHALLENGE_FAIL_903030", "CHALLENGE_SUCCESS_903031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 903018, 903032 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_903023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 903007, 903012, 903024, 903033, 903037, 903038, 903039, 903040 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_903025" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 903013, 903021, 903026, 903034, 903041, 903042, 903043, 903045 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_903028" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 903027, 903035 },
		regions = { 903029 },
		triggers = { "ENTER_REGION_903029" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_903014(context, evt)
	-- 184号挑战,duration内到达目的地
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 184, defs.duration, 4, 1024, 1) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_903023(context, evt)
	if 903018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_903023(context, evt)
	-- 创建id为903024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 903024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105903, 3)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 903032 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_903025(context, evt)
	if 903024 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_903025(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105903, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 903033 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_903028(context, evt)
	if 903026 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_903028(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105903, 5)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 903034 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_903029(context, evt)
	if evt.param1 ~= 903029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_903029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 903027 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 903035 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_903030(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331059032") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_903031(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331059031") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end