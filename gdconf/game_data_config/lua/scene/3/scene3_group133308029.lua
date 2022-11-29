-- 基础信息
local base_info = {
	group_id = 133308029
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
	{ config_id = 29001, gadget_id = 70220103, pos = { x = -1658.929, y = 312.389, z = 4273.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 29003, gadget_id = 70220103, pos = { x = -1676.555, y = 305.910, z = 4308.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 29004, gadget_id = 70220103, pos = { x = -1672.280, y = 286.301, z = 4055.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 29005, gadget_id = 70220103, pos = { x = -1679.816, y = 298.935, z = 4090.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 29006, gadget_id = 70220103, pos = { x = -1681.255, y = 310.456, z = 4125.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 29007, gadget_id = 70220103, pos = { x = -1686.514, y = 313.573, z = 4164.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 29008, gadget_id = 70220103, pos = { x = -1676.172, y = 312.891, z = 4199.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 29009, gadget_id = 70220103, pos = { x = -1670.921, y = 312.056, z = 4237.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 29002, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1673.216, y = 275.941, z = 4020.222 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1029002, name = "ENTER_REGION_29002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_29002", action = "action_EVENT_ENTER_REGION_29002" }
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
		gadgets = { 29001, 29003, 29004, 29005, 29006, 29007, 29008, 29009 },
		regions = { 29002 },
		triggers = { "ENTER_REGION_29002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_29002(context, evt)
	if evt.param1 ~= 29002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_29002(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1672.28, y=286.3014, z=4055.147}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1672.28, y=286.3014, z=4055.147}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end