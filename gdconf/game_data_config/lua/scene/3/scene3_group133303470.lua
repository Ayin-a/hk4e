-- 基础信息
local base_info = {
	group_id = 133303470
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
	{ config_id = 470001, gadget_id = 70330197, pos = { x = -1708.345, y = 223.067, z = 3148.307 }, rot = { x = 353.561, y = 211.378, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 470002, gadget_id = 70330197, pos = { x = -1701.541, y = 255.357, z = 3149.280 }, rot = { x = 350.276, y = 211.378, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 470003, gadget_id = 70330197, pos = { x = -1723.944, y = 271.519, z = 3141.686 }, rot = { x = 0.000, y = 211.378, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 470004, gadget_id = 70330197, pos = { x = -1742.691, y = 209.292, z = 3106.032 }, rot = { x = 0.000, y = 211.378, z = 352.622 }, level = 30, area_id = 23 },
	{ config_id = 470005, gadget_id = 70220103, pos = { x = -1726.157, y = 226.328, z = 3144.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 470007, gadget_id = 70290507, pos = { x = -1709.588, y = 237.914, z = 3144.948 }, rot = { x = 70.124, y = 180.000, z = 180.000 }, level = 30, area_id = 23 },
	{ config_id = 470008, gadget_id = 70290507, pos = { x = -1711.599, y = 248.746, z = 3147.369 }, rot = { x = 70.124, y = 180.000, z = 180.000 }, level = 30, area_id = 23 },
	{ config_id = 470009, gadget_id = 70290507, pos = { x = -1716.902, y = 264.966, z = 3145.235 }, rot = { x = 70.124, y = 180.000, z = 180.000 }, level = 30, area_id = 23 },
	{ config_id = 470010, gadget_id = 70220103, pos = { x = -1729.692, y = 273.885, z = 3146.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 470011, gadget_id = 70220103, pos = { x = -1738.200, y = 219.171, z = 3118.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 470006, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1742.846, y = 220.307, z = 3105.789 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1470006, name = "ENTER_REGION_470006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_470006", action = "action_EVENT_ENTER_REGION_470006" }
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
		gadgets = { 470001, 470002, 470003, 470004, 470005, 470007, 470008, 470009, 470010, 470011 },
		regions = { 470006 },
		triggers = { "ENTER_REGION_470006" },
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
function condition_EVENT_ENTER_REGION_470006(context, evt)
	if evt.param1 ~= 470006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_470006(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1738.2, y=219.1708, z=3118.321}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1738.2, y=219.1708, z=3118.321}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end