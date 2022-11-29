-- 基础信息
local base_info = {
	group_id = 133303062
}

-- Trigger变量
local defs = {
	fquestid = 73112
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
	{ config_id = 62001, gadget_id = 70330229, pos = { x = -1196.712, y = 263.193, z = 3270.600 }, rot = { x = 17.441, y = 0.797, z = 5.191 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	{ config_id = 62002, gadget_id = 70330251, pos = { x = -1187.817, y = 268.154, z = 3323.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	-- start
	{ config_id = 62003, gadget_id = 70220103, pos = { x = -1282.246, y = 288.056, z = 3560.021 }, rot = { x = 0.000, y = 357.106, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 62004, gadget_id = 70220103, pos = { x = -1283.371, y = 287.334, z = 3526.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 62005, gadget_id = 70330229, pos = { x = -1340.432, y = 235.702, z = 3308.833 }, rot = { x = 0.000, y = 331.026, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, area_id = 23 },
	{ config_id = 62006, gadget_id = 70330251, pos = { x = -1314.938, y = 243.199, z = 3308.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 5, area_id = 23 },
	{ config_id = 62007, gadget_id = 70220103, pos = { x = -1284.357, y = 287.334, z = 3491.570 }, rot = { x = 0.000, y = 5.505, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 62008, gadget_id = 70220103, pos = { x = -1285.518, y = 287.334, z = 3456.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 62009, gadget_id = 70220103, pos = { x = -1286.827, y = 287.334, z = 3420.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 62010, gadget_id = 70220103, pos = { x = -1268.227, y = 287.334, z = 3390.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 62011, gadget_id = 70220103, pos = { x = -1241.743, y = 281.566, z = 3367.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 62012, gadget_id = 70220103, pos = { x = -1214.965, y = 274.867, z = 3345.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 1尾巴起飞点
	{ config_id = 62018, gadget_id = 70220103, pos = { x = -1187.817, y = 268.154, z = 3323.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 1落点
	{ config_id = 62019, gadget_id = 70220103, pos = { x = -1166.155, y = 266.886, z = 3317.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 62020, gadget_id = 70220103, pos = { x = -1304.929, y = 287.824, z = 3389.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 62021, gadget_id = 70220103, pos = { x = -1308.537, y = 270.920, z = 3359.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 2落点
	{ config_id = 62022, gadget_id = 70220103, pos = { x = -1314.938, y = 243.199, z = 3308.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 2尾巴起飞点
	{ config_id = 62023, gadget_id = 70220103, pos = { x = -1312.353, y = 254.365, z = 3328.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 2落点e
	{ config_id = 62024, gadget_id = 70220103, pos = { x = -1324.774, y = 236.989, z = 3288.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	-- 观察到任一黑烟后
	{ config_id = 62014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1283.063, y = 283.933, z = 3560.689 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1062013, name = "GADGET_STATE_CHANGE_62013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62013", action = "action_EVENT_GADGET_STATE_CHANGE_62013" },
	-- 观察到任一黑烟后
	{ config_id = 1062014, name = "ENTER_REGION_62014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_62014", action = "action_EVENT_ENTER_REGION_62014", trigger_count = 0 },
	{ config_id = 1062015, name = "GADGET_STATE_CHANGE_62015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62015", action = "action_EVENT_GADGET_STATE_CHANGE_62015" },
	{ config_id = 1062016, name = "GROUP_LOAD_62016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_62016", action = "action_EVENT_GROUP_LOAD_62016", trigger_count = 0 },
	{ config_id = 1062017, name = "GROUP_LOAD_62017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_62017", action = "action_EVENT_GROUP_LOAD_62017", trigger_count = 0 },
	-- 勾爪创建，发射器201
	{ config_id = 1062025, name = "GADGET_CREATE_62025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_62025", action = "action_EVENT_GADGET_CREATE_62025", trigger_count = 0 },
	-- 勾爪创建，发射器201
	{ config_id = 1062026, name = "GADGET_CREATE_62026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_62026", action = "action_EVENT_GADGET_CREATE_62026", trigger_count = 0 }
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
		regions = { 62014 },
		triggers = { "ENTER_REGION_62014", "GROUP_LOAD_62016", "GROUP_LOAD_62017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 62003, 62004, 62007, 62008, 62009, 62010, 62011, 62012, 62018, 62019, 62020, 62021, 62022, 62023, 62024 },
		regions = { },
		triggers = { "GADGET_CREATE_62025", "GADGET_CREATE_62026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 62001, 62002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_62013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 62005, 62006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_62015" },
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
function condition_EVENT_GADGET_STATE_CHANGE_62013(context, evt)
	if 62001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303062, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-1187.817, y=268.154, z=3323.198}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1187.817, y=268.154, z=3323.198}
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
function condition_EVENT_ENTER_REGION_62014(context, evt)
	if evt.param1 ~= 62014 then return false end
	
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
function action_EVENT_ENTER_REGION_62014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303062, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62015(context, evt)
	if 62005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303062, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-1314.938, y=243.1991, z=3308.813}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1314.938, y=243.1991, z=3308.813}
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
function condition_EVENT_GROUP_LOAD_62016(context, evt)
	-- 判断变量"first"为1
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_62016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303062, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_62017(context, evt)
	-- 判断变量"second"为1
	if ScriptLib.GetGroupVariableValue(context, "second") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_62017(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303062, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_62025(context, evt)
	if 62003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_62025(context, evt)
	-- 将configid为 62001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 62001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_62026(context, evt)
	if 62003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_62026(context, evt)
	-- 将configid为 62005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 62005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end