-- 基础信息
local base_info = {
	group_id = 177005020
}

-- Trigger变量
local defs = {
	pt1 = 700500029
}

-- DEFS_MISCS
local stair_mode = { 
        [20004] = { 0, 202 },  
        [20013] = { 0, 201 }
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
	[20001] = { config_id = 20001, gadget_id = 70330176, pos = { x = 389.336, y = 250.722, z = -263.713 }, rot = { x = 0.000, y = 32.984, z = 0.000 }, level = 1, persistent = true, area_id = 210 },
	[20002] = { config_id = 20002, gadget_id = 70330155, pos = { x = 389.403, y = 254.872, z = -263.945 }, rot = { x = 0.000, y = 168.964, z = 0.000 }, level = 1, persistent = true, area_id = 210 },
	[20003] = { config_id = 20003, gadget_id = 70211160, pos = { x = 401.506, y = 230.190, z = -296.364 }, rot = { x = 0.000, y = 326.122, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", isOneoff = true, persistent = true, autopick = true, area_id = 210 },
	[20004] = { config_id = 20004, gadget_id = 70330187, pos = { x = 386.905, y = 218.836, z = -273.233 }, rot = { x = 0.000, y = 147.651, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true, area_id = 210 },
	[20006] = { config_id = 20006, gadget_id = 70690011, pos = { x = 396.096, y = 187.951, z = -275.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	[20007] = { config_id = 20007, gadget_id = 70330144, pos = { x = 389.903, y = 215.321, z = -265.099 }, rot = { x = 0.000, y = 328.028, z = 0.000 }, level = 36, route_id = 700500042, area_id = 210 },
	[20009] = { config_id = 20009, gadget_id = 70290275, pos = { x = 363.828, y = 231.394, z = -287.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	[20010] = { config_id = 20010, gadget_id = 70330144, pos = { x = 383.665, y = 216.127, z = -268.380 }, rot = { x = 0.000, y = 328.028, z = 0.000 }, level = 36, area_id = 210 },
	[20011] = { config_id = 20011, gadget_id = 70330177, pos = { x = 401.596, y = 227.506, z = -296.345 }, rot = { x = 0.000, y = 326.515, z = 0.000 }, level = 36, area_id = 210 },
	[20012] = { config_id = 20012, gadget_id = 70330144, pos = { x = 363.821, y = 227.539, z = -287.987 }, rot = { x = 0.000, y = 326.515, z = 0.000 }, level = 36, area_id = 210 },
	[20013] = { config_id = 20013, gadget_id = 70330187, pos = { x = 366.673, y = 242.140, z = -248.356 }, rot = { x = 0.000, y = 214.474, z = 0.000 }, level = 36, start_route = false, is_use_point_array = true, area_id = 210 },
	[20019] = { config_id = 20019, gadget_id = 70900039, pos = { x = 396.096, y = 187.951, z = -275.349 }, rot = { x = 0.000, y = 322.078, z = 0.000 }, level = 36, area_id = 210 },
	[20022] = { config_id = 20022, gadget_id = 70330177, pos = { x = 351.262, y = 250.722, z = -270.857 }, rot = { x = 0.000, y = 33.566, z = 0.000 }, level = 36, area_id = 210 },
	[20023] = { config_id = 20023, gadget_id = 70211160, pos = { x = 351.308, y = 253.407, z = -270.916 }, rot = { x = 0.000, y = 32.949, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", isOneoff = true, persistent = true, autopick = true, area_id = 210 },
	[20036] = { config_id = 20036, gadget_id = 70330191, pos = { x = 384.270, y = 262.128, z = -244.451 }, rot = { x = 65.666, y = 325.143, z = 341.963 }, level = 36, area_id = 210 },
	[20044] = { config_id = 20044, gadget_id = 70330191, pos = { x = 392.684, y = 260.971, z = -283.420 }, rot = { x = 296.687, y = 44.117, z = 135.206 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
	-- 任务引导
	[20005] = { config_id = 20005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 389.336, y = 250.722, z = -263.713 }, area_id = 210 },
	-- 奇点
	[20014] = { config_id = 20014, shape = RegionShape.SPHERE, radius = 2, pos = { x = 363.828, y = 231.394, z = -287.971 }, area_id = 210 },
	[20015] = { config_id = 20015, shape = RegionShape.SPHERE, radius = 1, pos = { x = 386.896, y = 220.100, z = -273.247 }, area_id = 210 },
	[20016] = { config_id = 20016, shape = RegionShape.SPHERE, radius = 1, pos = { x = 366.655, y = 243.389, z = -248.405 }, area_id = 210 },
	-- 创建主力物件群
	[20043] = { config_id = 20043, shape = RegionShape.SPHERE, radius = 3, pos = { x = 389.895, y = 217.390, z = -265.047 }, area_id = 210 }
}

-- 触发器
triggers = {
	-- 任务引导
	{ config_id = 1020005, name = "ENTER_REGION_20005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20005", action = "action_EVENT_ENTER_REGION_20005", trigger_count = 0 },
	-- 点亮光线装置
	{ config_id = 1020008, name = "GADGET_STATE_CHANGE_20008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_20008", action = "action_EVENT_GADGET_STATE_CHANGE_20008", trigger_count = 0 },
	-- 奇点
	{ config_id = 1020014, name = "ENTER_REGION_20014", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_20014", action = "action_EVENT_ENTER_REGION_20014", trigger_count = 0 },
	{ config_id = 1020015, name = "ENTER_REGION_20015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20015", action = "action_EVENT_ENTER_REGION_20015", trigger_count = 0 },
	{ config_id = 1020016, name = "ENTER_REGION_20016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20016", action = "action_EVENT_ENTER_REGION_20016", trigger_count = 0 },
	-- 创建初始风场
	{ config_id = 1020041, name = "GADGET_STATE_CHANGE_20041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_20041", action = "action_EVENT_GADGET_STATE_CHANGE_20041", trigger_count = 0 },
	-- 创建主力物件群
	{ config_id = 1020043, name = "ENTER_REGION_20043", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20043", action = "action_EVENT_ENTER_REGION_20043", trigger_count = 0 }
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
	end_suite = 5,
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
		gadgets = { 20001, 20002, 20007, 20019 },
		regions = { 20005, 20043 },
		triggers = { "ENTER_REGION_20005", "GADGET_STATE_CHANGE_20008", "GADGET_STATE_CHANGE_20041", "ENTER_REGION_20043" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 光线,
		monsters = { },
		gadgets = { 20003, 20004, 20009, 20010, 20011, 20012, 20013, 20022, 20023 },
		regions = { 20014, 20015, 20016 },
		triggers = { "ENTER_REGION_20014", "ENTER_REGION_20015", "ENTER_REGION_20016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 20036, 20044 },
		regions = { },
		triggers = { },
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
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 20001, 20002, 20007, 20019, 20036, 20044 },
		regions = { 20043 },
		triggers = { "GADGET_STATE_CHANGE_20041", "ENTER_REGION_20043" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_20005(context, evt)
	if evt.param1 ~= 20005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400512001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_20008(context, evt)
	-- 检测config_id为20002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 20002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_20008(context, evt)
	-- 将configid为 20001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177005020, 3)
	
	-- 触发镜头注目，注目位置为坐标（389.4032，257.8723，-263.713），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=389.4032, y=257.8723, z=-263.713}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400510701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177005020, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_20014(context, evt)
	if evt.param1 ~= 20014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20014(context, evt)
	TeleportAction(context,defs.pt1,{1,2,3,4})
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_20015(context, evt)
	if evt.param1 ~= 20015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20015(context, evt)
	-- 显示id为162的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,162,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_20016(context, evt)
	if evt.param1 ~= 20016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20016(context, evt)
	-- 显示id为162的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,162,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_20041(context, evt)
	-- 检测config_id为20019的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 20019 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_20041(context, evt)
	-- 创建id为20006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 20006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_20043(context, evt)
	if evt.param1 ~= 20043 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20043(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177005020, 2)
	
	return 0
end

require "V2_5/DarkStair"