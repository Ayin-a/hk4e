-- 基础信息
local base_info = {
	group_id = 133315007
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
	{ config_id = 7003, npc_id = 20765, pos = { x = 179.985, y = 286.586, z = 2849.975 }, rot = { x = 0.000, y = 188.496, z = 0.000 }, area_id = 20 }
}

-- 装置
gadgets = {
	{ config_id = 7001, gadget_id = 70310214, pos = { x = 90.678, y = 269.736, z = 2993.644 }, rot = { x = 289.052, y = 279.404, z = 165.194 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 7002, gadget_id = 70710821, pos = { x = 182.637, y = 280.934, z = 2846.091 }, rot = { x = 311.313, y = 337.203, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 7004, gadget_id = 70210102, pos = { x = 182.619, y = 280.947, z = 2846.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 20 },
	{ config_id = 7005, gadget_id = 70210102, pos = { x = 177.377, y = 281.083, z = 2847.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 20 },
	{ config_id = 7008, gadget_id = 70360001, pos = { x = 87.696, y = 270.172, z = 2992.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 7009, gadget_id = 70360001, pos = { x = 182.640, y = 281.244, z = 2846.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 7010, gadget_id = 70360001, pos = { x = 182.955, y = 281.153, z = 2846.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 7013, gadget_id = 70310148, pos = { x = 88.847, y = 270.771, z = 2993.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 7007, shape = RegionShape.SPHERE, radius = 50, pos = { x = 81.875, y = 247.131, z = 2985.889 }, area_id = 20 }
}

-- 触发器
triggers = {
	-- 保底
	{ config_id = 1007006, name = "GADGET_STATE_CHANGE_7006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7006", action = "action_EVENT_GADGET_STATE_CHANGE_7006", trigger_count = 0 },
	{ config_id = 1007007, name = "ENTER_REGION_7007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_7007" },
	{ config_id = 1007011, name = "GADGET_STATE_CHANGE_7011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7011", action = "action_EVENT_GADGET_STATE_CHANGE_7011" },
	{ config_id = 1007012, name = "GADGET_STATE_CHANGE_7012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7012", action = "action_EVENT_GADGET_STATE_CHANGE_7012" }
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
		gadgets = { 7001, 7002, 7008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_7006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 7002, 7004, 7005, 7009, 7010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_7011", "GADGET_STATE_CHANGE_7012" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 7002 },
		regions = { },
		triggers = { },
		npcs = { 7003 },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 7007 },
		triggers = { "ENTER_REGION_7007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7006(context, evt)
	if 7001 ~= evt.param2 or GadgetState.GatherDrop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7006(context, evt)
	-- 将configid为 7008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133315007, EntityType.GADGET, 7013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_7007(context, evt)
	-- 调用提示id为 33150002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33150002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（95，270，2995），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=95, y=270, z=2995}
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
function condition_EVENT_GADGET_STATE_CHANGE_7011(context, evt)
	if 7004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7011(context, evt)
	-- 将configid为 7009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7012(context, evt)
	if 7005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7012(context, evt)
	-- 将configid为 7010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end