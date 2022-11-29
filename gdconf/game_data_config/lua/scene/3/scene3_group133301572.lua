-- 基础信息
local base_info = {
	group_id = 133301572
}

-- Trigger变量
local defs = {
	point_camera = 572005,
	gadget_lookEntity = 572006,
	look_duration = 2
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,
    blend_duration = 0.05,
    is_force_walk = false,
    is_allow_input = false,
    delay = 0,
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
	[572001] = { config_id = 572001, gadget_id = 70290544, pos = { x = -561.636, y = -34.095, z = 3826.464 }, rot = { x = 0.000, y = 81.934, z = 0.000 }, level = 33, persistent = true, area_id = 25 },
	[572002] = { config_id = 572002, gadget_id = 70290544, pos = { x = -619.201, y = -38.575, z = 3769.133 }, rot = { x = 0.000, y = 47.158, z = 0.000 }, level = 33, persistent = true, area_id = 25 },
	[572003] = { config_id = 572003, gadget_id = 70320004, pos = { x = -568.388, y = -38.299, z = 3819.648 }, rot = { x = 0.000, y = 246.954, z = 0.000 }, level = 33, persistent = true, area_id = 25 },
	[572006] = { config_id = 572006, gadget_id = 70360129, pos = { x = -619.994, y = -41.584, z = 3766.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 第一个门操作台开
	{ config_id = 1572004, name = "GADGET_STATE_CHANGE_572004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_572004", action = "action_EVENT_GADGET_STATE_CHANGE_572004" },
	-- 保底
	{ config_id = 1572008, name = "GROUP_LOAD_572008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_572008", action = "action_EVENT_GROUP_LOAD_572008", trigger_count = 0 }
}

-- 点位
points = {
	[572005] = { config_id = 572005, pos = { x = -614.492, y = -40.695, z = 3803.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 25 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1572007, name = "GADGET_STATE_CHANGE_572007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_572007", action = "action_EVENT_GADGET_STATE_CHANGE_572007" }
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
		gadgets = { 572001, 572002, 572003, 572006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_572004", "GROUP_LOAD_572008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_572004(context, evt)
	if 572003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_572004(context, evt)
	-- 将configid为 572001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 572001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-563.531, y=-37.57143, z=3824.91}，持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-563.531, y=-37.57143, z=3824.91}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_572008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133301572, 572003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_572008(context, evt)
	-- 将configid为 572001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 572001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/CameraLook"
require "V3_0/DeathFieldStandard"