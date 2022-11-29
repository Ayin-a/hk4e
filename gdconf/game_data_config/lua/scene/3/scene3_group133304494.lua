-- 基础信息
local base_info = {
	group_id = 133304494
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 494007, monster_id = 26090901, pos = { x = -1397.129, y = 217.948, z = 3073.144 }, rot = { x = 0.000, y = 30.302, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 21 },
	{ config_id = 494008, monster_id = 26090901, pos = { x = -1398.772, y = 218.171, z = 3075.065 }, rot = { x = 0.000, y = 50.431, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 494001, gadget_id = 70330238, pos = { x = -1389.332, y = 214.709, z = 3080.424 }, rot = { x = 0.000, y = 100.204, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, area_id = 21 },
	{ config_id = 494002, gadget_id = 70290558, pos = { x = -1399.064, y = 218.408, z = 3072.929 }, rot = { x = 0.000, y = 116.071, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 },
	{ config_id = 494006, gadget_id = 70217020, pos = { x = -1398.468, y = 218.206, z = 3073.453 }, rot = { x = 0.000, y = 258.566, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 删除执行
	{ config_id = 1494003, name = "GADGET_STATE_CHANGE_494003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_494003", action = "action_EVENT_GADGET_STATE_CHANGE_494003", trigger_count = 0 },
	{ config_id = 1494005, name = "GADGET_STATE_CHANGE_494005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_494005", action = "action_EVENT_GADGET_STATE_CHANGE_494005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1494004, name = "GROUP_LOAD_494004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_494004", action = "action_EVENT_GROUP_LOAD_494004", trigger_count = 0 }
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
		gadgets = { 494001, 494002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_494003", "GADGET_STATE_CHANGE_494005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_GADGET_STATE_CHANGE_494003(context, evt)
	if 494001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_494003(context, evt)
	-- 创建id为494006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 494006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 494007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 494008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_494005(context, evt)
	if 494001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_494005(context, evt)
	-- 触发镜头注目，注目位置为坐标（-1399，219.5，3072），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1399, y=219.5, z=3072}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end