-- 基础信息
local base_info = {
	group_id = 133315224
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
	{ config_id = 224001, gadget_id = 70900050, pos = { x = 151.852, y = 107.472, z = 2887.816 }, rot = { x = 0.000, y = 285.820, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 224002, gadget_id = 70310216, pos = { x = 151.205, y = 107.045, z = 2887.424 }, rot = { x = 0.000, y = 305.138, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 224003, gadget_id = 70290517, pos = { x = 170.050, y = 105.207, z = 2890.168 }, rot = { x = 11.844, y = 61.948, z = 184.530 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1224004, name = "GADGET_STATE_CHANGE_224004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_224004", action = "action_EVENT_GADGET_STATE_CHANGE_224004" }
}

-- 点位
points = {
	{ config_id = 224006, pos = { x = 166.783, y = 108.832, z = 2889.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 224005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 151.710, y = 108.079, z = 2885.748 }, area_id = 20 }
	},
	triggers = {
		{ config_id = 1224005, name = "ENTER_REGION_224005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_224005", action = "action_EVENT_ENTER_REGION_224005" }
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
		gadgets = { 224001, 224002, 224003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_224004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_224004(context, evt)
	if 224001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_224004(context, evt)
	-- 将configid为 224003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 224003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "go" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "go", 1, 133315223) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=166.7826, y=108.8322, z=2889.301}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=166.7826, y=108.8322, z=2889.301}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end