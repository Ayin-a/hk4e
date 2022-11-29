-- 基础信息
local base_info = {
	group_id = 133315010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10009, monster_id = 28020201, pos = { x = 349.183, y = 183.300, z = 2254.851 }, rot = { x = 0.000, y = 326.351, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 20 },
	{ config_id = 10010, monster_id = 28050106, pos = { x = 350.809, y = 182.663, z = 2263.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
	{ config_id = 10011, monster_id = 28050106, pos = { x = 348.238, y = 182.685, z = 2259.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
	{ config_id = 10012, monster_id = 28050106, pos = { x = 350.450, y = 182.752, z = 2259.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
	{ config_id = 10013, monster_id = 28020314, pos = { x = 334.701, y = 183.203, z = 2260.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 20 }
}

-- NPC
npcs = {
	{ config_id = 10001, npc_id = 20766, pos = { x = 351.334, y = 182.782, z = 2258.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
}

-- 装置
gadgets = {
	{ config_id = 10002, gadget_id = 70290503, pos = { x = 351.938, y = 182.749, z = 2257.988 }, rot = { x = 0.000, y = 311.052, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 10003, gadget_id = 70290503, pos = { x = 351.703, y = 182.682, z = 2258.618 }, rot = { x = 0.000, y = 249.255, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 10004, gadget_id = 70290503, pos = { x = 351.295, y = 182.702, z = 2257.154 }, rot = { x = 0.000, y = 343.228, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 10005, gadget_id = 70360001, pos = { x = 347.847, y = 182.500, z = 2265.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010006, name = "GADGET_CREATE_10006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10006", action = "action_EVENT_GADGET_CREATE_10006" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 10005 },
		regions = { },
		triggers = { "GADGET_CREATE_10006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 10009, 10010, 10011, 10012, 10013 },
		gadgets = { 10002, 10003, 10004 },
		regions = { },
		triggers = { },
		npcs = { 10001 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_10006(context, evt)
	if 10005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10006(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=351.3341, y=182.7819, z=2258.009}，持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=351.3341, y=182.7819, z=2258.009}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end