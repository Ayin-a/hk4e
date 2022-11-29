-- 基础信息
local base_info = {
	group_id = 133308439
}

-- DEFS_MISCS
local HourGlass_ConfigIDList = {439001}

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
	{ config_id = 439001, gadget_id = 70330355, pos = { x = -1465.385, y = 30.495, z = 4647.675 }, rot = { x = 0.000, y = 280.333, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 439002, gadget_id = 70220103, pos = { x = -1492.040, y = 37.007, z = 4631.544 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 439003, gadget_id = 70220103, pos = { x = -1512.673, y = 45.937, z = 4612.838 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 439004, gadget_id = 70220103, pos = { x = -1529.931, y = 55.590, z = 4587.012 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 439005, gadget_id = 70220103, pos = { x = -1542.189, y = 66.997, z = 4569.043 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 439008, gadget_id = 70220103, pos = { x = -1571.597, y = 85.156, z = 4561.555 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 439009, gadget_id = 70220103, pos = { x = -1591.433, y = 99.228, z = 4544.890 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 439010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1458.638, y = 30.331, z = 4647.129 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1439006, name = "VARIABLE_CHANGE_439006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_439006", action = "action_EVENT_VARIABLE_CHANGE_439006", trigger_count = 0 },
	{ config_id = 1439007, name = "VARIABLE_CHANGE_439007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_439007", action = "action_EVENT_VARIABLE_CHANGE_439007", trigger_count = 0 },
	{ config_id = 1439010, name = "ENTER_REGION_439010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_439010", action = "action_EVENT_ENTER_REGION_439010" }
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
		gadgets = { 439001 },
		regions = { 439010 },
		triggers = { "VARIABLE_CHANGE_439006", "VARIABLE_CHANGE_439007", "ENTER_REGION_439010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 439002, 439003, 439004, 439005, 439008, 439009 },
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
function condition_EVENT_VARIABLE_CHANGE_439006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InTime"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InTime") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_439006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308439, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-1492.04, y=37.00696, z=4631.544}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1492.04, y=37.00696, z=4631.544}
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
function condition_EVENT_VARIABLE_CHANGE_439007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InTime"为0
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InTime") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_439007(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308439, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_439010(context, evt)
	if evt.param1 ~= 439010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_439010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Desert_HourGlass"