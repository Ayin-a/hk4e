-- 基础信息
local base_info = {
	group_id = 199004032
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
	{ config_id = 32002, gadget_id = 70360001, pos = { x = -197.352, y = 120.000, z = -506.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
	{ config_id = 32001, shape = RegionShape.SPHERE, radius = 150, pos = { x = -156.514, y = 120.000, z = -466.779 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1032001, name = "ENTER_REGION_32001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_32001" }
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
		gadgets = { 32002 },
		regions = { 32001 },
		triggers = { "ENTER_REGION_32001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_32001(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1021 ) and ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.GetPlayerVehicleType(context, context.uid) == 2 then
		ScriptLib.ShowReminderRadius(context, 1111174, { x = -156, y = 120, z = -466}, 150)
		
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = -341,y = 163,z = -629}, duration = 3, is_force = false, is_broadcast = false, is_recover_keep_current = true, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =true, is_change_play_mode = true, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end