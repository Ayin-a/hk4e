-- 基础信息
local base_info = {
	group_id = 133303059
}

-- Trigger变量
local defs = {
	fquestid = 73111
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
	{ config_id = 59001, gadget_id = 70330229, pos = { x = -1457.316, y = 280.328, z = 3889.484 }, rot = { x = 348.579, y = 0.809, z = 355.461 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	{ config_id = 59002, gadget_id = 70330251, pos = { x = -1439.556, y = 281.572, z = 3898.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	{ config_id = 59003, gadget_id = 70220103, pos = { x = -1320.698, y = 304.489, z = 3873.345 }, rot = { x = 0.000, y = 334.063, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 59004, gadget_id = 70220103, pos = { x = -1313.474, y = 298.311, z = 3902.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 59005, gadget_id = 70330229, pos = { x = -1178.552, y = 271.611, z = 3985.797 }, rot = { x = 17.411, y = 163.422, z = 340.530 }, level = 30, persistent = true, mark_flag = 5, area_id = 23 },
	{ config_id = 59006, gadget_id = 70330251, pos = { x = -1197.939, y = 263.347, z = 3963.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 5, area_id = 23 },
	{ config_id = 59007, gadget_id = 70220103, pos = { x = -1293.787, y = 296.792, z = 3928.614 }, rot = { x = 0.000, y = 5.505, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 59008, gadget_id = 70220103, pos = { x = -1263.617, y = 293.830, z = 3941.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 59009, gadget_id = 70220103, pos = { x = -1230.841, y = 282.350, z = 3956.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 59011, gadget_id = 70220103, pos = { x = -1340.027, y = 298.237, z = 3895.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 59012, gadget_id = 70220103, pos = { x = -1363.017, y = 301.922, z = 3909.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 59018, gadget_id = 70220103, pos = { x = -1396.426, y = 300.541, z = 3902.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 59019, gadget_id = 70220103, pos = { x = -1415.793, y = 291.270, z = 3899.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 59020, gadget_id = 70220103, pos = { x = -1439.556, y = 281.572, z = 3898.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 59021, gadget_id = 70220103, pos = { x = -1197.939, y = 263.347, z = 3963.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	-- 观察到任一黑烟后
	{ config_id = 59014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1320.630, y = 299.930, z = 3873.210 }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 勾爪创建，发射器201
	{ config_id = 1059010, name = "GADGET_CREATE_59010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_59010", action = "action_EVENT_GADGET_CREATE_59010", trigger_count = 0 },
	{ config_id = 1059013, name = "GADGET_STATE_CHANGE_59013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59013", action = "action_EVENT_GADGET_STATE_CHANGE_59013" },
	-- 观察到任一黑烟后
	{ config_id = 1059014, name = "ENTER_REGION_59014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59014", action = "action_EVENT_ENTER_REGION_59014", trigger_count = 0 },
	{ config_id = 1059015, name = "GADGET_STATE_CHANGE_59015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59015", action = "action_EVENT_GADGET_STATE_CHANGE_59015" },
	{ config_id = 1059016, name = "GROUP_LOAD_59016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_59016", action = "action_EVENT_GROUP_LOAD_59016", trigger_count = 0 },
	{ config_id = 1059017, name = "GROUP_LOAD_59017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_59017", action = "action_EVENT_GROUP_LOAD_59017", trigger_count = 0 },
	-- 勾爪创建，发射器201
	{ config_id = 1059022, name = "GADGET_CREATE_59022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_59022", action = "action_EVENT_GADGET_CREATE_59022", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "first", value = 0, no_refresh = true },
	{ config_id = 2, name = "second", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 5,
	end_suite = 1,
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
		gadgets = { },
		regions = { 59014 },
		triggers = { "ENTER_REGION_59014", "GROUP_LOAD_59016", "GROUP_LOAD_59017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 59003, 59004, 59007, 59008, 59009, 59011, 59012, 59018, 59019, 59020, 59021 },
		regions = { },
		triggers = { "GADGET_CREATE_59010", "GADGET_CREATE_59022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 59001, 59002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_59013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 59005, 59006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_59015" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
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
function condition_EVENT_GADGET_CREATE_59010(context, evt)
	if 59003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_59010(context, evt)
	-- 将configid为 59001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 59001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59013(context, evt)
	if 59001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303059, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-1439.556, y=281.5717, z=3898.089}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1439.556, y=281.5717, z=3898.089}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59014(context, evt)
	if evt.param1 ~= 59014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,defs.fquestid*100+3)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState == 3 then
	   return true
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,defs.fquestid*100+5)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState == 3 then
	   return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_59014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303059, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59015(context, evt)
	if 59005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303059, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-1197.939, y=263.3465, z=3963.803}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1197.939, y=263.3465, z=3963.803}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_59016(context, evt)
	-- 判断变量"first"为1
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_59016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303059, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_59017(context, evt)
	-- 判断变量"second"为1
	if ScriptLib.GetGroupVariableValue(context, "second") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_59017(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303059, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_59022(context, evt)
	if 59003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_59022(context, evt)
	-- 将configid为 59005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 59005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end