-- 基础信息
local base_info = {
	group_id = 133308726
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
	{ config_id = 726001, gadget_id = 70360001, pos = { x = -1375.144, y = 66.093, z = 4980.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 726003, gadget_id = 70300104, pos = { x = -1371.107, y = 67.473, z = 4978.106 }, rot = { x = 5.634, y = 22.402, z = 2.317 }, level = 1, area_id = 32 },
	{ config_id = 726004, gadget_id = 70310004, pos = { x = -1373.523, y = 66.293, z = 4981.852 }, rot = { x = 1.682, y = 351.899, z = 8.057 }, level = 1, area_id = 32 },
	{ config_id = 726005, gadget_id = 71700434, pos = { x = -1370.193, y = 66.653, z = 4983.833 }, rot = { x = 0.000, y = 0.000, z = 14.843 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 726002, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1375.728, y = 65.461, z = 4984.215 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1726002, name = "ENTER_REGION_726002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_726002" }
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
		gadgets = { 726001, 726003, 726004, 726005 },
		regions = { 726002 },
		triggers = { "ENTER_REGION_726002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_726002(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1345.304, y=55.1987, z=5038.848}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1345.304, y=55.1987, z=5038.848}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end