-- 基础信息
local base_info = {
	group_id = 133303555
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
	{ config_id = 555001, gadget_id = 70330197, pos = { x = -1466.069, y = 207.457, z = 3498.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	-- 大角度勾爪有预期
	{ config_id = 555002, gadget_id = 70220103, pos = { x = -1468.826, y = 235.155, z = 3476.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	-- 保底用爬树
	{ config_id = 555006, gadget_id = 70290507, pos = { x = -1462.871, y = 223.849, z = 3462.214 }, rot = { x = 72.852, y = 180.000, z = 226.667 }, level = 30, area_id = 23 },
	-- 保底用爬树
	{ config_id = 555007, gadget_id = 70290507, pos = { x = -1462.098, y = 234.904, z = 3460.334 }, rot = { x = 72.852, y = 180.000, z = 226.667 }, level = 30, area_id = 23 },
	-- 保底用爬树
	{ config_id = 555008, gadget_id = 70290507, pos = { x = -1464.151, y = 243.375, z = 3456.591 }, rot = { x = 72.853, y = 180.000, z = 226.667 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 555004, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1466.463, y = 218.148, z = 3498.417 }, area_id = 23 },
	{ config_id = 555005, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1472.230, y = 254.367, z = 3450.009 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1555004, name = "ENTER_REGION_555004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_555004", action = "action_EVENT_ENTER_REGION_555004" },
	{ config_id = 1555005, name = "ENTER_REGION_555005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_555005", action = "action_EVENT_ENTER_REGION_555005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 555003, gadget_id = 70220103, pos = { x = -1471.536, y = 251.677, z = 3449.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
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
		gadgets = { 555001, 555006, 555007, 555008 },
		regions = { 555004 },
		triggers = { "ENTER_REGION_555004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 555002 },
		regions = { 555005 },
		triggers = { "ENTER_REGION_555005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_555004(context, evt)
	if evt.param1 ~= 555004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_555004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303555, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-1468.826, y=235.1552, z=3476.25}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1468.826, y=235.1552, z=3476.25}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_555005(context, evt)
	if evt.param1 ~= 555005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_555005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303555, 2)
	
	return 0
end