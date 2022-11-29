-- 基础信息
local base_info = {
	group_id = 133008656
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
}

-- 区域
regions = {
	{ config_id = 656001, shape = RegionShape.SPHERE, radius = 12, pos = { x = 1597.613, y = 286.391, z = -1115.820 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1656001, name = "ENTER_REGION_656001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_656001", action = "action_EVENT_ENTER_REGION_656001", trigger_count = 0 }
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
		regions = { 656001 },
		triggers = { "ENTER_REGION_656001" },
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
function condition_EVENT_ENTER_REGION_656001(context, evt)
	if evt.param1 ~= 656001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_656001(context, evt)
	-- 触发镜头注目，注目位置为坐标（1595，287，-1114），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1595, y=287, z=-1114}
	  local pos_follow = {x=-1, y=1, z=-3}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = true,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end