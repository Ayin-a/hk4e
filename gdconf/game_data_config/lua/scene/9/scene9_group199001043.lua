-- 基础信息
local base_info = {
	group_id = 199001043
}

-- DEFS_MISCS
local	defs = {

		--左右旋转的SelectOptionID
		selectID_horizon = 54,

		--上下俯仰的SelectOptionID
		selectID_vertical = 55,



		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {

			
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
	-- 小花-
	[43001] = { config_id = 43001, gadget_id = 70310170, pos = { x = 228.876, y = 146.817, z = 347.818 }, rot = { x = 325.751, y = 255.769, z = 347.245 }, level = 20, area_id = 402 },
	-- 小花-
	[43002] = { config_id = 43002, gadget_id = 70310170, pos = { x = 267.359, y = 120.523, z = 364.819 }, rot = { x = 0.014, y = 241.000, z = 348.952 }, level = 20, area_id = 402 },
	-- 小花-
	[43003] = { config_id = 43003, gadget_id = 70310170, pos = { x = 261.091, y = 120.522, z = 361.345 }, rot = { x = 358.527, y = 241.291, z = 349.102 }, level = 20, area_id = 402 },
	-- 小花-
	[43004] = { config_id = 43004, gadget_id = 70310170, pos = { x = 254.409, y = 121.009, z = 357.756 }, rot = { x = 349.359, y = 271.613, z = 347.381 }, level = 20, area_id = 402 },
	-- 小花-
	[43006] = { config_id = 43006, gadget_id = 70310170, pos = { x = 246.885, y = 122.423, z = 357.968 }, rot = { x = 343.780, y = 272.912, z = 347.079 }, level = 20, area_id = 402 },
	[43007] = { config_id = 43007, gadget_id = 70310171, pos = { x = 269.330, y = 120.617, z = 365.165 }, rot = { x = 0.000, y = 57.047, z = 0.000 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
	-- 小花-
	[43008] = { config_id = 43008, gadget_id = 70310170, pos = { x = 239.835, y = 124.477, z = 358.326 }, rot = { x = 352.973, y = 194.027, z = 12.554 }, level = 20, area_id = 402 },
	-- 小花-
	[43010] = { config_id = 43010, gadget_id = 70310170, pos = { x = 238.513, y = 125.876, z = 352.602 }, rot = { x = 313.442, y = 203.588, z = 7.841 }, level = 20, area_id = 402 },
	-- 小花-
	[43011] = { config_id = 43011, gadget_id = 70310170, pos = { x = 237.039, y = 130.556, z = 348.709 }, rot = { x = 318.105, y = 169.798, z = 16.096 }, level = 20, area_id = 402 },
	-- 小花-
	[43012] = { config_id = 43012, gadget_id = 70310170, pos = { x = 238.277, y = 135.517, z = 343.509 }, rot = { x = 327.793, y = 184.697, z = 357.523 }, level = 20, area_id = 402 },
	-- 小花-
	[43013] = { config_id = 43013, gadget_id = 70310170, pos = { x = 237.647, y = 138.382, z = 339.855 }, rot = { x = 327.687, y = 294.582, z = 327.866 }, level = 20, area_id = 402 },
	-- 小花-
	[43014] = { config_id = 43014, gadget_id = 70310170, pos = { x = 233.525, y = 141.503, z = 342.634 }, rot = { x = 317.053, y = 303.239, z = 357.001 }, level = 20, area_id = 402 },
	-- 小花-
	[43015] = { config_id = 43015, gadget_id = 70310170, pos = { x = 230.147, y = 146.087, z = 344.447 }, rot = { x = 354.920, y = 328.921, z = 333.849 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1043005, name = "GADGET_STATE_CHANGE_43005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_43005", action = "action_EVENT_GADGET_STATE_CHANGE_43005" }
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
		gadgets = { 43001, 43002, 43003, 43004, 43006, 43007, 43008, 43010, 43011, 43012, 43013, 43014, 43015 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_43005" },
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
function condition_EVENT_GADGET_STATE_CHANGE_43005(context, evt)
	if 43007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_43005(context, evt)
	-- 触发镜头注目，注目位置为坐标（225，164，347），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=225, y=164, z=347}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 10,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V2_8/TransferFlower"