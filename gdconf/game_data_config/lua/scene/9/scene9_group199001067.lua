-- 基础信息
local base_info = {
	group_id = 199001067
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
	{ config_id = 67001, gadget_id = 70360001, pos = { x = 134.940, y = 120.000, z = 414.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	{ config_id = 67002, shape = RegionShape.SPHERE, radius = 50, pos = { x = 279.430, y = 120.000, z = 503.309 }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1067002, name = "ENTER_REGION_67002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_67002" }
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
		gadgets = { 67001 },
		regions = { 67002 },
		triggers = { "ENTER_REGION_67002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_67002(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1015 ) and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.GetPlayerVehicleType(context, context.uid) == 2 then
		ScriptLib.ShowReminderRadius(context, 1111181, { x = 279, y = 120, z = 503}, 50)
		
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 257,y = 142,z = 446}, duration = 3, is_force = false, is_broadcast = false, is_recover_keep_current = true, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =true, is_change_play_mode = true, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end