-- 基础信息
local base_info = {
	group_id = 133303452
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 452003
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
	[452001] = { config_id = 452001, gadget_id = 70330229, pos = { x = -1928.767, y = 18.072, z = 3186.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[452002] = { config_id = 452002, gadget_id = 70330251, pos = { x = -1916.061, y = 24.675, z = 3190.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[452003] = { config_id = 452003, gadget_id = 70220103, pos = { x = -1916.061, y = 24.675, z = 3190.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[452004] = { config_id = 452004, gadget_id = 70220103, pos = { x = -1901.687, y = 35.396, z = 3193.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[452006] = { config_id = 452006, gadget_id = 70220103, pos = { x = -1898.278, y = 51.939, z = 3193.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1452005, name = "GADGET_STATE_CHANGE_452005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_452005", action = "action_EVENT_GADGET_STATE_CHANGE_452005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 452007, gadget_id = 70220103, pos = { x = -1873.059, y = 63.853, z = 3187.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
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
		gadgets = { 452001, 452002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_452005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 452003, 452004, 452006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_452005(context, evt)
	if 452001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_452005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303452, 2)
	
	-- 触发镜头注目，注目位置为坐标（-1916.286，19.73657，3204.258），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1916.286, y=19.73657, z=3204.258}
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