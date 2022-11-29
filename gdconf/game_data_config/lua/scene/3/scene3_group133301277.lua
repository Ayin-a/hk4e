-- 基础信息
local base_info = {
	group_id = 133301277
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
	{ config_id = 277002, gadget_id = 70360001, pos = { x = -241.533, y = 238.713, z = 3473.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 277003, gadget_id = 70360001, pos = { x = -239.349, y = 238.311, z = 3476.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 277005, gadget_id = 70360001, pos = { x = -270.560, y = 193.485, z = 3228.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 277008, gadget_id = 70360001, pos = { x = -270.560, y = 193.485, z = 3228.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 277001, shape = RegionShape.SPHERE, radius = 8, pos = { x = -237.988, y = 238.742, z = 3469.479 }, area_id = 29 },
	{ config_id = 277004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -238.026, y = 238.733, z = 3469.584 }, area_id = 29 },
	-- 8
	{ config_id = 277007, shape = RegionShape.SPHERE, radius = 8, pos = { x = -279.134, y = 196.371, z = 3236.810 }, area_id = 22 },
	{ config_id = 277009, shape = RegionShape.SPHERE, radius = 13, pos = { x = -285.390, y = 192.296, z = 3224.464 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1277001, name = "ENTER_REGION_277001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_277001" },
	{ config_id = 1277004, name = "ENTER_REGION_277004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_277004" },
	-- 8
	{ config_id = 1277007, name = "ENTER_REGION_277007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_277007", action = "action_EVENT_ENTER_REGION_277007" },
	{ config_id = 1277009, name = "ENTER_REGION_277009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_277009", action = "action_EVENT_ENTER_REGION_277009", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 277002 },
		regions = { 277001 },
		triggers = { "ENTER_REGION_277001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 277003 },
		regions = { 277004 },
		triggers = { "ENTER_REGION_277004" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 277005, 277008 },
		regions = { 277007, 277009 },
		triggers = { "ENTER_REGION_277007", "ENTER_REGION_277009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_277001(context, evt)
	-- 将configid为 277002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 277002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_277004(context, evt)
	-- 将configid为 277003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 277003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_277007(context, evt)
	if evt.param1 ~= 277007 then return false end
	
	-- 判断是区域277007
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 277007 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_277007(context, evt)
	-- 调用提示id为 33010072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-288.6656, y=193.9757, z=3218.984}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-288.6656, y=193.9757, z=3218.984}
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
function condition_EVENT_ENTER_REGION_277009(context, evt)
	if evt.param1 ~= 277009 then return false end
	
	-- 判断是区域277009
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 277009 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_277009(context, evt)
	-- 将configid为 277005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 277005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end