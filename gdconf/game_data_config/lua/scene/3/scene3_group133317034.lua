-- 基础信息
local base_info = {
	group_id = 133317034
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 34003
}

-- DEFS_MISCS
local RequireSuite = {1}

local HookLookPlay = {
    HookPoint = defs.gadget_LookHookCid,
    Duration = 3,
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
	[34001] = { config_id = 34001, gadget_id = 70330229, pos = { x = 530.880, y = 221.005, z = 5722.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 30 },
	[34002] = { config_id = 34002, gadget_id = 70330251, pos = { x = 551.122, y = 235.041, z = 5729.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 30 },
	[34003] = { config_id = 34003, gadget_id = 70220103, pos = { x = 551.122, y = 235.041, z = 5729.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 30 },
	[34004] = { config_id = 34004, gadget_id = 70220103, pos = { x = 568.534, y = 243.234, z = 5739.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 30 },
	[34006] = { config_id = 34006, gadget_id = 70220103, pos = { x = 591.062, y = 249.942, z = 5748.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	[34007] = { config_id = 34007, gadget_id = 70220103, pos = { x = 606.411, y = 264.657, z = 5755.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	[34008] = { config_id = 34008, gadget_id = 70220103, pos = { x = 633.697, y = 258.435, z = 5720.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	[34009] = { config_id = 34009, gadget_id = 70220103, pos = { x = 631.362, y = 261.633, z = 5702.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	[34010] = { config_id = 34010, gadget_id = 70220103, pos = { x = 630.991, y = 268.296, z = 5681.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	[34011] = { config_id = 34011, gadget_id = 70220103, pos = { x = 620.106, y = 275.612, z = 5674.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	[34012] = { config_id = 34012, gadget_id = 70220103, pos = { x = 612.363, y = 273.222, z = 5693.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	[34013] = { config_id = 34013, gadget_id = 70220103, pos = { x = 605.093, y = 267.476, z = 5722.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	[34014] = { config_id = 34014, gadget_id = 70220103, pos = { x = 577.252, y = 273.621, z = 5730.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	[34015] = { config_id = 34015, gadget_id = 70220103, pos = { x = 563.528, y = 278.835, z = 5707.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	[34016] = { config_id = 34016, gadget_id = 70220103, pos = { x = 535.968, y = 275.642, z = 5705.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	[34017] = { config_id = 34017, gadget_id = 70220103, pos = { x = 579.426, y = 283.257, z = 5677.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	[34018] = { config_id = 34018, gadget_id = 70220103, pos = { x = 594.677, y = 287.925, z = 5681.629 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	[34019] = { config_id = 34019, gadget_id = 70220103, pos = { x = 606.438, y = 291.338, z = 5696.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	[34020] = { config_id = 34020, gadget_id = 70220103, pos = { x = 609.384, y = 295.373, z = 5709.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034005, name = "GADGET_STATE_CHANGE_34005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_34005", action = "action_EVENT_GADGET_STATE_CHANGE_34005" }
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
		gadgets = { 34001, 34002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_34005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 34003, 34004, 34006, 34007, 34008, 34009, 34010, 34011, 34012, 34013, 34014, 34015, 34016, 34017, 34018, 34019, 34020 },
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
function condition_EVENT_GADGET_STATE_CHANGE_34005(context, evt)
	if 34001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_34005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133317034, 2)
	
	-- 触发镜头注目，注目位置为坐标（552.02，233，5717.98），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=552.02, y=233, z=5717.98}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_0/HookLook"