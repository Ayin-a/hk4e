-- 基础信息
local base_info = {
	group_id = 133315134
}

-- Trigger变量
local defs = {
	point_sum = 12,
	route_2 = 331500039,
	gadget_seelie = 134002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 134003, gadget_id = 70220103, pos = { x = 480.714, y = 149.174, z = 2353.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 134004, gadget_id = 70220103, pos = { x = 508.322, y = 133.794, z = 2365.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 134008, gadget_id = 70310216, pos = { x = 461.239, y = 154.834, z = 2339.115 }, rot = { x = 0.000, y = 226.883, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 134001, shape = RegionShape.SPHERE, radius = 12, pos = { x = 433.194, y = 154.628, z = 2328.206 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1134001, name = "ENTER_REGION_134001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134001", action = "action_EVENT_ENTER_REGION_134001" },
	{ config_id = 1134009, name = "ANY_GADGET_DIE_134009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_134009", action = "action_EVENT_ANY_GADGET_DIE_134009", trigger_count = 0 },
	{ config_id = 1134010, name = "QUEST_START_134010", event = EventType.EVENT_QUEST_START, source = "7306641", condition = "", action = "action_EVENT_QUEST_START_134010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "find", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 134002, gadget_id = 70710010, pos = { x = 406.111, y = 163.628, z = 2333.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500040, area_id = 20 }
	},
	regions = {
		{ config_id = 134007, shape = RegionShape.SPHERE, radius = 12, pos = { x = 406.172, y = 163.628, z = 2332.973 }, area_id = 20 }
	},
	triggers = {
		{ config_id = 1134005, name = "PLATFORM_REACH_POINT_134005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_134005", action = "action_EVENT_PLATFORM_REACH_POINT_134005", trigger_count = 0 },
		{ config_id = 1134006, name = "AVATAR_NEAR_PLATFORM_134006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_134006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_134006", trigger_count = 0 },
		{ config_id = 1134007, name = "ENTER_REGION_134007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134007", action = "action_EVENT_ENTER_REGION_134007", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 134008 },
		regions = { 134001 },
		triggers = { "ENTER_REGION_134001", "ANY_GADGET_DIE_134009", "QUEST_START_134010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 134003, 134004, 134008 },
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
function condition_EVENT_ENTER_REGION_134001(context, evt)
	if evt.param1 ~= 134001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断是区域134001
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 134001 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_134001(context, evt)
	-- 调用提示id为 7306605 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306605) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=462.8523, y=151.8553, z=2314.824}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=462.8523, y=151.8553, z=2314.824}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_134009(context, evt)
	if 134008 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"find"为1
	if ScriptLib.GetGroupVariableValue(context, "find") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_134009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315134, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_134010(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315134, 2)
	
	return 0
end