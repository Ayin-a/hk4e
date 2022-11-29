-- 基础信息
local base_info = {
	group_id = 133303165
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
	{ config_id = 165001, gadget_id = 70330197, pos = { x = -1329.247, y = 165.113, z = 3354.895 }, rot = { x = 0.000, y = 162.096, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 165002, gadget_id = 70330197, pos = { x = -1361.708, y = 168.726, z = 3344.259 }, rot = { x = 351.204, y = 181.459, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 165003, gadget_id = 70330197, pos = { x = -1387.414, y = 184.670, z = 3345.399 }, rot = { x = 343.108, y = 179.381, z = 357.747 }, level = 30, area_id = 23 },
	{ config_id = 165004, gadget_id = 70330197, pos = { x = -1348.414, y = 184.702, z = 3346.801 }, rot = { x = 1.645, y = 288.130, z = 347.651 }, level = 30, area_id = 23 },
	{ config_id = 165005, gadget_id = 70330197, pos = { x = -1369.402, y = 195.242, z = 3335.992 }, rot = { x = 347.137, y = 157.201, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 165006, gadget_id = 70330197, pos = { x = -1331.334, y = 209.704, z = 3327.552 }, rot = { x = 347.376, y = 228.919, z = 359.951 }, level = 30, area_id = 23 },
	{ config_id = 165007, gadget_id = 70330197, pos = { x = -1354.436, y = 208.772, z = 3332.537 }, rot = { x = 352.442, y = 200.145, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 165008, gadget_id = 70330197, pos = { x = -1341.649, y = 235.401, z = 3313.514 }, rot = { x = 0.000, y = 238.892, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 165009, gadget_id = 70330197, pos = { x = -1351.144, y = 260.507, z = 3312.618 }, rot = { x = 0.000, y = 359.472, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 165011, gadget_id = 70220103, pos = { x = -1340.805, y = 281.935, z = 3297.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 165012, gadget_id = 70220103, pos = { x = -1333.356, y = 294.208, z = 3267.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 165010, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1351.144, y = 272.313, z = 3312.618 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1165010, name = "ENTER_REGION_165010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_165010", action = "action_EVENT_ENTER_REGION_165010" }
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
		gadgets = { 165001, 165002, 165003, 165004, 165005, 165006, 165007, 165008, 165009 },
		regions = { 165010 },
		triggers = { "ENTER_REGION_165010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 165011, 165012 },
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
function condition_EVENT_ENTER_REGION_165010(context, evt)
	if evt.param1 ~= 165010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_165010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303165, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-1340.805, y=281.9348, z=3297.909}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1340.805, y=281.9348, z=3297.909}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end