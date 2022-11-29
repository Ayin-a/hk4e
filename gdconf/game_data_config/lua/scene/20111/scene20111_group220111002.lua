-- 基础信息
local base_info = {
	group_id = 220111002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 25050301, pos = { x = 69.964, y = 0.280, z = 91.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2002, monster_id = 25050301, pos = { x = 66.128, y = 0.280, z = 92.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2005, gadget_id = 70900393, pos = { x = 73.029, y = 0.200, z = 117.010 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2006, gadget_id = 70900393, pos = { x = 73.029, y = 0.200, z = 111.074 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2007, gadget_id = 70900393, pos = { x = 24.360, y = 1.119, z = 80.617 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2008, gadget_id = 70900393, pos = { x = 13.403, y = 1.119, z = 80.617 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2009, gadget_id = 70900393, pos = { x = 23.036, y = 1.797, z = 75.624 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2010, gadget_id = 70900393, pos = { x = 15.363, y = 1.775, z = 75.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2011, gadget_id = 70900393, pos = { x = 4.658, y = 12.507, z = 72.890 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2012, gadget_id = 70900393, pos = { x = 0.734, y = 12.551, z = 117.288 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2013, gadget_id = 70900393, pos = { x = 7.254, y = 12.551, z = 117.600 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2014, gadget_id = 70900393, pos = { x = 4.846, y = 1.857, z = 61.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2015, gadget_id = 70900393, pos = { x = 53.025, y = 25.549, z = 97.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2016, gadget_id = 70900393, pos = { x = 41.696, y = 25.552, z = 91.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2017, gadget_id = 70900393, pos = { x = 41.693, y = 25.563, z = 96.339 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2018, gadget_id = 70900393, pos = { x = 26.514, y = 27.807, z = 81.221 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2019, gadget_id = 70900393, pos = { x = 21.665, y = 27.807, z = 81.221 }, rot = { x = 0.000, y = 170.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2020, gadget_id = 70900393, pos = { x = 7.980, y = 25.928, z = 91.264 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2021, gadget_id = 70900393, pos = { x = 7.980, y = 25.928, z = 97.028 }, rot = { x = 0.000, y = 350.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2022, gadget_id = 70900393, pos = { x = 2.115, y = 0.900, z = 143.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2023, gadget_id = 70900393, pos = { x = 6.395, y = 0.900, z = 143.766 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2024, gadget_id = 70900393, pos = { x = 27.060, y = -7.496, z = 133.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2025, gadget_id = 70900393, pos = { x = 27.060, y = -7.496, z = 141.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 2003, shape = RegionShape.CUBIC, size = { x = 7.000, y = 10.000, z = 10.000 }, pos = { x = 38.345, y = 5.869, z = 83.892 } },
	{ config_id = 2004, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 68.073, y = 2.143, z = 113.252 } },
	{ config_id = 2026, shape = RegionShape.SPHERE, radius = 5, pos = { x = 53.792, y = 18.606, z = 139.357 } }
}

-- 触发器
triggers = {
	{ config_id = 1002003, name = "ENTER_REGION_2003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2003", action = "action_EVENT_ENTER_REGION_2003" },
	{ config_id = 1002004, name = "ENTER_REGION_2004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2004", action = "action_EVENT_ENTER_REGION_2004" },
	{ config_id = 1002026, name = "ENTER_REGION_2026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2026", action = "action_EVENT_ENTER_REGION_2026" }
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
		monsters = { 2001, 2002 },
		gadgets = { 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2022, 2023, 2024, 2025 },
		regions = { 2003, 2004, 2026 },
		triggers = { "ENTER_REGION_2003", "ENTER_REGION_2004", "ENTER_REGION_2026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2015, 2016, 2017, 2018, 2019, 2020, 2021 },
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
function condition_EVENT_ENTER_REGION_2003(context, evt)
	if evt.param1 ~= 2003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2003(context, evt)
	-- 触发镜头注目，注目位置为坐标（32.6，6.2，126.6），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=32.6, y=6.2, z=126.6}
	  local pos_follow = {x=0, y=0.5, z=-0.5}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 201110101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2004(context, evt)
	if evt.param1 ~= 2004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2004(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 1)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2026(context, evt)
	if evt.param1 ~= 2026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2026(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111002, 2)
	
	return 0
end