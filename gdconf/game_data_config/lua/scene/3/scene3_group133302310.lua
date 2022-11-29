-- 基础信息
local base_info = {
	group_id = 133302310
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
	{ config_id = 310001, gadget_id = 70220103, pos = { x = -859.833, y = 164.162, z = 2235.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 310003, gadget_id = 70220103, pos = { x = -830.973, y = 175.078, z = 2270.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 310004, gadget_id = 70220103, pos = { x = -834.431, y = 198.125, z = 2288.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 310005, gadget_id = 70220103, pos = { x = -795.543, y = 165.910, z = 2375.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 310006, gadget_id = 70220103, pos = { x = -804.185, y = 175.014, z = 2338.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 310007, gadget_id = 70220103, pos = { x = -826.320, y = 195.253, z = 2299.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 310008, gadget_id = 70220103, pos = { x = -849.082, y = 158.847, z = 2308.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 310009, gadget_id = 70220103, pos = { x = -823.848, y = 193.544, z = 2299.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 310010, gadget_id = 70220103, pos = { x = -837.388, y = 147.684, z = 2390.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 310011, gadget_id = 70220103, pos = { x = -803.933, y = 164.307, z = 2427.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 310012, gadget_id = 70220103, pos = { x = -832.174, y = 151.979, z = 2412.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 310013, gadget_id = 70220103, pos = { x = -827.848, y = 216.616, z = 2470.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 310014, gadget_id = 70220103, pos = { x = -829.994, y = 193.293, z = 2437.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 310002, shape = RegionShape.SPHERE, radius = 15, pos = { x = -855.558, y = 159.834, z = 2253.135 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1310002, name = "ENTER_REGION_310002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_310002" }
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
		gadgets = { 310001, 310003, 310004, 310005, 310006, 310007, 310008, 310009, 310010, 310011, 310012, 310013, 310014 },
		regions = { 310002 },
		triggers = { "ENTER_REGION_310002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_310002(context, evt)
	-- 触发镜头注目，注目位置为坐标（-830，175，2270），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-830, y=175, z=2270}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end