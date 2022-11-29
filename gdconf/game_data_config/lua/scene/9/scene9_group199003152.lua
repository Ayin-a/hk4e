-- 基础信息
local base_info = {
	group_id = 199003152
}

-- DEFS_MISCS
local        defs = {

        --连线形态
        patterns = 
        {
                --形态1
                [1] = 
                {
                       	[152001] = 152002,
                        	[152002] = 152003,
		[152003] = 152004,
[152004] = 152005,
[152005] = 152006,
[152006] = 152010,
[152010] = 0,

                                
                },
                --形态2
                [2] = 
                {
                       	[35001] = 35003,
                        	[35002] = 35004,
		[35003] = 35004,
                                [35004] = 35006,
                                [35005] = 35001,
                                [35006] = 35001,
                },
        }

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
	[152001] = { config_id = 152001, gadget_id = 70310179, pos = { x = -680.021, y = 136.385, z = -138.632 }, rot = { x = 0.000, y = 349.199, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[152002] = { config_id = 152002, gadget_id = 70310179, pos = { x = -665.477, y = 146.256, z = -159.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[152003] = { config_id = 152003, gadget_id = 70310179, pos = { x = -685.866, y = 149.567, z = -152.482 }, rot = { x = 0.000, y = 343.294, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[152004] = { config_id = 152004, gadget_id = 70310179, pos = { x = -697.564, y = 173.383, z = -155.993 }, rot = { x = 0.000, y = 343.294, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[152005] = { config_id = 152005, gadget_id = 70310179, pos = { x = -710.929, y = 153.478, z = -160.004 }, rot = { x = 0.000, y = 343.294, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[152006] = { config_id = 152006, gadget_id = 70310179, pos = { x = -718.741, y = 153.478, z = -162.349 }, rot = { x = 0.000, y = 343.294, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[152007] = { config_id = 152007, gadget_id = 70360006, pos = { x = -716.347, y = 133.210, z = -81.404 }, rot = { x = 7.543, y = 9.835, z = 8.489 }, level = 20, area_id = 403 },
	[152010] = { config_id = 152010, gadget_id = 70310179, pos = { x = -727.125, y = 131.402, z = -164.865 }, rot = { x = 0.000, y = 343.294, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[152011] = { config_id = 152011, gadget_id = 70310179, pos = { x = -707.558, y = 142.294, z = -141.498 }, rot = { x = 0.000, y = 343.294, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1152008, name = "GADGET_STATE_CHANGE_152008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_152008", action = "action_EVENT_GADGET_STATE_CHANGE_152008", trigger_count = 0 },
	{ config_id = 1152009, name = "GADGET_STATE_CHANGE_152009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_152009", action = "action_EVENT_GADGET_STATE_CHANGE_152009", trigger_count = 0 }
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
	suite = 2,
	end_suite = 1,
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
		gadgets = { 152001, 152002, 152003, 152004, 152005, 152006, 152010, 152011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 152007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_152008", "GADGET_STATE_CHANGE_152009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_152008(context, evt)
	if 152007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_152008(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003152, 1)
	
	-- 触发镜头注目，注目位置为坐标（-704，147，-149.5），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-704, y=147, z=-149.5}
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
function condition_EVENT_GADGET_STATE_CHANGE_152009(context, evt)
	if 152007 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_152009(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003152, 1)
	
	return 0
end

require "V2_8/ConstellationPattern"