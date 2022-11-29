-- 基础信息
local base_info = {
	group_id = 133303445
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 445003
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
	[445001] = { config_id = 445001, gadget_id = 70330229, pos = { x = -1932.622, y = 12.664, z = 3210.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[445002] = { config_id = 445002, gadget_id = 70330251, pos = { x = -1929.564, y = 20.711, z = 3226.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[445003] = { config_id = 445003, gadget_id = 70220103, pos = { x = -1929.564, y = 20.711, z = 3226.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[445004] = { config_id = 445004, gadget_id = 70220103, pos = { x = -1916.113, y = 22.777, z = 3253.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[445006] = { config_id = 445006, gadget_id = 70220103, pos = { x = -1898.196, y = 17.040, z = 3276.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[445007] = { config_id = 445007, gadget_id = 70220103, pos = { x = -1873.820, y = 10.447, z = 3289.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[445008] = { config_id = 445008, gadget_id = 70220103, pos = { x = -1846.937, y = 4.164, z = 3300.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1445005, name = "GADGET_STATE_CHANGE_445005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_445005", action = "action_EVENT_GADGET_STATE_CHANGE_445005" }
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
		gadgets = { 445001, 445002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_445005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 445003, 445004, 445006, 445007, 445008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_445005(context, evt)
	if 445001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_445005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303445, 2)
	
	-- 触发镜头注目，注目位置为坐标（-1929.564，20.71062，3226.338），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1929.564, y=20.71062, z=3226.338}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_0/HookLook"