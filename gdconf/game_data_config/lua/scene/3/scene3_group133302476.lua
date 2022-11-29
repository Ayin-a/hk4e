-- 基础信息
local base_info = {
	group_id = 133302476
}

-- Trigger变量
local defs = {
	gadget_id = 476004
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
	{ config_id = 476003, gadget_id = 70310200, pos = { x = -834.955, y = 190.457, z = 2552.715 }, rot = { x = 0.000, y = 338.991, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 476004, gadget_id = 70211101, pos = { x = -845.321, y = 193.013, z = 2570.208 }, rot = { x = 3.538, y = 158.925, z = 1.931 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 476014, gadget_id = 70310198, pos = { x = -832.812, y = 180.940, z = 2533.617 }, rot = { x = 0.000, y = 112.458, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 476001, shape = RegionShape.SPHERE, radius = 2, pos = { x = -832.812, y = 180.940, z = 2533.617 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1476001, name = "ENTER_REGION_476001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_476001" },
	{ config_id = 1476009, name = "GADGET_STATE_CHANGE_476009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_476009", action = "action_EVENT_GADGET_STATE_CHANGE_476009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
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
		gadgets = { 476003, 476014 },
		regions = { 476001 },
		triggers = { "ENTER_REGION_476001", "GADGET_STATE_CHANGE_476009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_476001(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-834.9553, y=190.4573, z=2552.715}，持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-834.9553, y=190.4573, z=2552.715}
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
function condition_EVENT_GADGET_STATE_CHANGE_476009(context, evt)
	if 476003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_476009(context, evt)
	-- 创建id为476004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 476004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end