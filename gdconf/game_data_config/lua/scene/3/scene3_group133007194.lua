-- 基础信息
local base_info = {
	group_id = 133007194
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
	{ config_id = 700, gadget_id = 70900039, pos = { x = 2478.283, y = 245.734, z = 466.346 }, rot = { x = 0.000, y = 3.615, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 194001, gadget_id = 70690006, pos = { x = 2477.236, y = 245.734, z = 452.879 }, rot = { x = 0.000, y = 123.459, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 194002, gadget_id = 70690006, pos = { x = 2476.083, y = 263.670, z = 438.799 }, rot = { x = 0.000, y = 150.016, z = 0.000 }, level = 23, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000226, name = "GADGET_STATE_CHANGE_226", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_226", action = "action_EVENT_GADGET_STATE_CHANGE_226", trigger_count = 0, tlog_tag = "风龙_194_风场机关2_触发" }
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
		gadgets = { 700 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_226" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 700, 194001, 194002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_226(context, evt)
	if 700 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_226(context, evt)
	-- 触发镜头注目，注目位置为坐标（2477，245，452），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2477, y=245, z=452}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007194, 2)
	
	return 0
end