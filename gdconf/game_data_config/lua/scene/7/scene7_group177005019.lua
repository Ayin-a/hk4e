-- 基础信息
local base_info = {
	group_id = 177005019
}

-- Trigger变量
local defs = {
	pt1 = 700500024
}

-- DEFS_MISCS
local stair_mode = { 
        [19014] = { 0, 201 },  
        [19007] = { 0, 202 }
}

function TeleportAction(context,pointarray_id,routelist)
	
	--context, uid, pointarrayid, pointindex, speed, SFX
	ScriptLib.MoveAvatarByPointArray(context, context.uid, pointarray_id, routelist, {speed=10}, "{\"MarkType\":2,\"IgnoreCollisionWhenEnter\":true}") 
end

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
	[19001] = { config_id = 19001, gadget_id = 70330176, pos = { x = 525.658, y = 273.772, z = 612.979 }, rot = { x = 0.000, y = 351.212, z = 0.000 }, level = 1, persistent = true, area_id = 210 },
	[19002] = { config_id = 19002, gadget_id = 70330155, pos = { x = 525.525, y = 277.844, z = 612.686 }, rot = { x = 0.000, y = 37.577, z = 0.000 }, level = 1, persistent = true, area_id = 210 },
	[19004] = { config_id = 19004, gadget_id = 70330177, pos = { x = 523.708, y = 210.731, z = 613.487 }, rot = { x = 0.000, y = 75.573, z = 0.000 }, level = 1, route_id = 700500027, area_id = 210 },
	[19005] = { config_id = 19005, gadget_id = 70211160, pos = { x = 508.335, y = 260.564, z = 623.945 }, rot = { x = 0.000, y = 211.983, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", isOneoff = true, persistent = true, autopick = true, area_id = 210 },
	[19007] = { config_id = 19007, gadget_id = 70330187, pos = { x = 523.026, y = 259.270, z = 581.971 }, rot = { x = 0.000, y = 122.542, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true, area_id = 210 },
	[19008] = { config_id = 19008, gadget_id = 70330177, pos = { x = 508.187, y = 257.882, z = 623.786 }, rot = { x = 0.000, y = 303.095, z = 0.000 }, level = 36, start_route = false, area_id = 210 },
	[19009] = { config_id = 19009, gadget_id = 70330144, pos = { x = 499.684, y = 220.767, z = 627.051 }, rot = { x = 0.000, y = 300.513, z = 0.000 }, level = 36, area_id = 210 },
	[19010] = { config_id = 19010, gadget_id = 70330144, pos = { x = 496.693, y = 221.849, z = 621.555 }, rot = { x = 0.000, y = 300.513, z = 0.000 }, level = 36, area_id = 210 },
	[19011] = { config_id = 19011, gadget_id = 70330144, pos = { x = 493.377, y = 223.131, z = 615.931 }, rot = { x = 0.000, y = 300.513, z = 0.000 }, level = 36, area_id = 210 },
	[19012] = { config_id = 19012, gadget_id = 70330144, pos = { x = 490.352, y = 224.420, z = 610.627 }, rot = { x = 0.000, y = 300.513, z = 0.000 }, level = 36, area_id = 210 },
	[19013] = { config_id = 19013, gadget_id = 70330177, pos = { x = 486.955, y = 224.491, z = 604.848 }, rot = { x = 0.000, y = 255.381, z = 0.000 }, level = 36, route_id = 700500026, area_id = 210 },
	[19014] = { config_id = 19014, gadget_id = 70330187, pos = { x = 493.427, y = 249.178, z = 600.848 }, rot = { x = 0.000, y = 122.495, z = 0.000 }, level = 36, start_route = false, is_use_point_array = true, area_id = 210 },
	[19015] = { config_id = 19015, gadget_id = 70330144, pos = { x = 516.514, y = 257.881, z = 585.983 }, rot = { x = 0.000, y = 303.095, z = 0.000 }, level = 36, start_route = false, area_id = 210 },
	[19016] = { config_id = 19016, gadget_id = 70330144, pos = { x = 546.180, y = 267.894, z = 567.247 }, rot = { x = 0.000, y = 211.734, z = 0.000 }, level = 36, start_route = false, area_id = 210 },
	[19017] = { config_id = 19017, gadget_id = 70290275, pos = { x = 546.146, y = 271.592, z = 567.113 }, rot = { x = 0.000, y = 13.359, z = 0.000 }, level = 36, area_id = 210 },
	[19019] = { config_id = 19019, gadget_id = 70330191, pos = { x = 537.550, y = 287.206, z = 628.251 }, rot = { x = 8.111, y = 129.676, z = 255.305 }, level = 36, area_id = 210 },
	[19022] = { config_id = 19022, gadget_id = 70330177, pos = { x = 508.370, y = 267.894, z = 558.806 }, rot = { x = 0.000, y = 211.734, z = 0.000 }, level = 36, start_route = false, area_id = 210 },
	[19024] = { config_id = 19024, gadget_id = 70211160, pos = { x = 508.233, y = 270.579, z = 558.670 }, rot = { x = 0.000, y = 32.452, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", isOneoff = true, persistent = true, autopick = true, area_id = 210 },
	[19033] = { config_id = 19033, gadget_id = 70330191, pos = { x = 517.358, y = 289.207, z = 599.932 }, rot = { x = 346.831, y = 310.864, z = 52.419 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
	[19003] = { config_id = 19003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 526.029, y = 274.492, z = 613.181 }, area_id = 210 },
	-- 奇点
	[19018] = { config_id = 19018, shape = RegionShape.SPHERE, radius = 2, pos = { x = 546.146, y = 271.592, z = 567.113 }, area_id = 210 },
	[19020] = { config_id = 19020, shape = RegionShape.SPHERE, radius = 1, pos = { x = 523.021, y = 260.539, z = 581.987 }, area_id = 210 },
	[19021] = { config_id = 19021, shape = RegionShape.SPHERE, radius = 1, pos = { x = 493.437, y = 250.433, z = 600.826 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1019003, name = "ENTER_REGION_19003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19003", action = "action_EVENT_ENTER_REGION_19003", trigger_count = 0 },
	{ config_id = 1019006, name = "GADGET_STATE_CHANGE_19006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19006", action = "action_EVENT_GADGET_STATE_CHANGE_19006", trigger_count = 0 },
	-- 奇点
	{ config_id = 1019018, name = "ENTER_REGION_19018", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_19018", action = "action_EVENT_ENTER_REGION_19018", trigger_count = 0 },
	{ config_id = 1019020, name = "ENTER_REGION_19020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19020", action = "action_EVENT_ENTER_REGION_19020", trigger_count = 0 },
	{ config_id = 1019021, name = "ENTER_REGION_19021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19021", action = "action_EVENT_ENTER_REGION_19021", trigger_count = 0 }
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
	suite = 4,
	end_suite = 3,
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
		-- description = 光线装置平台,
		monsters = { },
		gadgets = { 19001, 19002, 19004, 19005, 19007, 19008, 19009, 19010, 19011, 19012, 19013, 19014, 19015, 19016, 19017, 19022, 19024 },
		regions = { 19003, 19018, 19020, 19021 },
		triggers = { "ENTER_REGION_19003", "GADGET_STATE_CHANGE_19006", "ENTER_REGION_19018", "ENTER_REGION_19020", "ENTER_REGION_19021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 光线,
		monsters = { },
		gadgets = { 19019, 19033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 存档,
		monsters = { },
		gadgets = { 19001, 19002, 19004, 19005, 19007, 19008, 19009, 19010, 19011, 19012, 19013, 19014, 19015, 19016, 19017, 19019, 19022, 19024, 19033 },
		regions = { 19018 },
		triggers = { "ENTER_REGION_19018" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
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
function condition_EVENT_ENTER_REGION_19003(context, evt)
	if evt.param1 ~= 19003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400512001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19006(context, evt)
	-- 检测config_id为19002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 19002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19006(context, evt)
	-- 将configid为 19001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177005019, 2)
	
	-- 触发镜头注目，注目位置为坐标（525.5248，278.7718，612.979），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=525.5248, y=278.7718, z=612.979}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400510601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177005019, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19018(context, evt)
	if evt.param1 ~= 19018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19018(context, evt)
	TeleportAction(context,defs.pt1,{1,2,3})
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19020(context, evt)
	if evt.param1 ~= 19020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19020(context, evt)
	-- 显示id为162的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,162,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19021(context, evt)
	if evt.param1 ~= 19021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19021(context, evt)
	-- 显示id为162的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,162,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

require "V2_5/DarkStair"