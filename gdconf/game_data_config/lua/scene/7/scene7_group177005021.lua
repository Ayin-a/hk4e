-- 基础信息
local base_info = {
	group_id = 177005021
}

-- Trigger变量
local defs = {
	pt1 = 700500032,
	pt2 = 700500033
}

-- DEFS_MISCS
local stair_mode = { 
        [21021] = { 0, 202 },  
        [21028] = { 0, 201 }
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
	[21001] = { config_id = 21001, gadget_id = 70330176, pos = { x = -162.782, y = 296.406, z = 236.298 }, rot = { x = 0.000, y = 138.324, z = 0.000 }, level = 1, area_id = 210 },
	[21002] = { config_id = 21002, gadget_id = 70330155, pos = { x = -162.633, y = 299.728, z = 236.268 }, rot = { x = 0.000, y = 274.628, z = 0.000 }, level = 1, persistent = true, area_id = 210 },
	[21003] = { config_id = 21003, gadget_id = 70330177, pos = { x = -171.396, y = 271.278, z = 240.485 }, rot = { x = 0.000, y = 241.403, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true, area_id = 210 },
	[21004] = { config_id = 21004, gadget_id = 70211160, pos = { x = -240.794, y = 284.046, z = 273.498 }, rot = { x = 0.000, y = 104.070, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", isOneoff = true, persistent = true, autopick = true, area_id = 210 },
	[21006] = { config_id = 21006, gadget_id = 70290275, pos = { x = -169.776, y = 229.776, z = 229.607 }, rot = { x = 0.000, y = 332.198, z = 0.000 }, level = 36, area_id = 210 },
	[21007] = { config_id = 21007, gadget_id = 70330144, pos = { x = -184.464, y = 271.978, z = 264.472 }, rot = { x = 0.000, y = 285.115, z = 0.000 }, level = 36, route_id = 700500038, area_id = 210 },
	[21010] = { config_id = 21010, gadget_id = 70290275, pos = { x = -172.890, y = 295.504, z = 226.380 }, rot = { x = 0.000, y = 332.198, z = 0.000 }, level = 36, area_id = 210 },
	[21014] = { config_id = 21014, gadget_id = 70330144, pos = { x = -195.592, y = 271.978, z = 267.615 }, rot = { x = 0.000, y = 285.336, z = 0.000 }, level = 36, route_id = 700500039, area_id = 210 },
	[21016] = { config_id = 21016, gadget_id = 70330144, pos = { x = -190.055, y = 271.978, z = 266.045 }, rot = { x = 0.000, y = 285.336, z = 0.000 }, level = 36, start_route = false, area_id = 210 },
	[21021] = { config_id = 21021, gadget_id = 70330187, pos = { x = -214.500, y = 273.272, z = 266.222 }, rot = { x = 0.000, y = 195.254, z = 0.000 }, level = 36, start_route = false, is_use_point_array = true, area_id = 210 },
	[21022] = { config_id = 21022, gadget_id = 70330177, pos = { x = -240.882, y = 281.367, z = 273.486 }, rot = { x = 0.000, y = 15.493, z = 0.000 }, level = 36, start_route = false, area_id = 210 },
	[21025] = { config_id = 21025, gadget_id = 70330144, pos = { x = -221.756, y = 281.841, z = 239.801 }, rot = { x = 0.000, y = 285.336, z = 0.000 }, level = 36, route_id = 700500040, area_id = 210 },
	[21028] = { config_id = 21028, gadget_id = 70330187, pos = { x = -199.150, y = 283.200, z = 233.516 }, rot = { x = 0.000, y = 194.876, z = 0.000 }, level = 36, start_route = false, is_use_point_array = true, area_id = 210 },
	[21029] = { config_id = 21029, gadget_id = 70330177, pos = { x = -206.215, y = 291.926, z = 207.176 }, rot = { x = 0.000, y = 285.336, z = 0.000 }, level = 36, start_route = false, area_id = 210 },
	[21030] = { config_id = 21030, gadget_id = 70211160, pos = { x = -206.248, y = 294.605, z = 207.244 }, rot = { x = 0.000, y = 15.096, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", isOneoff = true, persistent = true, autopick = true, area_id = 210 },
	[21031] = { config_id = 21031, gadget_id = 70330144, pos = { x = -172.670, y = 291.735, z = 226.466 }, rot = { x = 0.000, y = 285.336, z = 0.000 }, level = 36, start_route = false, area_id = 210 },
	[21055] = { config_id = 21055, gadget_id = 70330191, pos = { x = -146.451, y = 307.134, z = 235.954 }, rot = { x = 48.399, y = 36.107, z = 317.409 }, level = 36, area_id = 210 },
	[21056] = { config_id = 21056, gadget_id = 70330191, pos = { x = -180.624, y = 310.303, z = 236.847 }, rot = { x = 303.045, y = 44.056, z = 227.639 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
	-- 引导
	[21005] = { config_id = 21005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -162.782, y = 296.406, z = 236.298 }, area_id = 210 },
	-- 初始奇点
	[21009] = { config_id = 21009, shape = RegionShape.SPHERE, radius = 2, pos = { x = -169.776, y = 229.776, z = 229.607 }, area_id = 210 },
	-- 最终奇点
	[21011] = { config_id = 21011, shape = RegionShape.SPHERE, radius = 2, pos = { x = -172.890, y = 295.504, z = 226.380 }, area_id = 210 },
	[21012] = { config_id = 21012, shape = RegionShape.SPHERE, radius = 1, pos = { x = -214.502, y = 274.536, z = 266.208 }, area_id = 210 },
	[21013] = { config_id = 21013, shape = RegionShape.SPHERE, radius = 1, pos = { x = -199.144, y = 284.447, z = 233.482 }, area_id = 210 }
}

-- 触发器
triggers = {
	-- 引导
	{ config_id = 1021005, name = "ENTER_REGION_21005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21005", action = "action_EVENT_ENTER_REGION_21005", trigger_count = 0 },
	-- 点亮光线装置
	{ config_id = 1021008, name = "GADGET_STATE_CHANGE_21008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_21008", action = "action_EVENT_GADGET_STATE_CHANGE_21008", trigger_count = 0 },
	-- 初始奇点
	{ config_id = 1021009, name = "ENTER_REGION_21009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21009", action = "action_EVENT_ENTER_REGION_21009", trigger_count = 0 },
	-- 最终奇点
	{ config_id = 1021011, name = "ENTER_REGION_21011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21011", action = "action_EVENT_ENTER_REGION_21011", trigger_count = 0 },
	{ config_id = 1021012, name = "ENTER_REGION_21012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21012", action = "action_EVENT_ENTER_REGION_21012", trigger_count = 0 },
	{ config_id = 1021013, name = "ENTER_REGION_21013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21013", action = "action_EVENT_ENTER_REGION_21013", trigger_count = 0 }
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
	suite = 3,
	end_suite = 4,
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
		gadgets = { 21001, 21002, 21003, 21004, 21006, 21007, 21010, 21014, 21016, 21021, 21022, 21025, 21028, 21029, 21030, 21031 },
		regions = { 21005, 21009, 21011, 21012, 21013 },
		triggers = { "ENTER_REGION_21005", "GADGET_STATE_CHANGE_21008", "ENTER_REGION_21009", "ENTER_REGION_21011", "ENTER_REGION_21012", "ENTER_REGION_21013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 21055, 21056 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 存档,
		monsters = { },
		gadgets = { 21001, 21002, 21003, 21004, 21006, 21007, 21010, 21014, 21016, 21021, 21022, 21025, 21028, 21029, 21030, 21031, 21055, 21056 },
		regions = { 21009, 21011 },
		triggers = { "ENTER_REGION_21009", "ENTER_REGION_21011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_21005(context, evt)
	if evt.param1 ~= 21005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400512001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_21008(context, evt)
	-- 检测config_id为21002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 21002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_21008(context, evt)
	-- 将configid为 21001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177005021, 2)
	
	-- 触发镜头注目，注目位置为坐标（-162.3586，302.7277，236.3788），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-162.3586, y=302.7277, z=236.3788}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400510801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177005021, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_21009(context, evt)
	if evt.param1 ~= 21009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21009(context, evt)
	TeleportAction(context,defs.pt1,{1,2,3})
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_21011(context, evt)
	if evt.param1 ~= 21011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21011(context, evt)
	TeleportAction(context,defs.pt2,{1,2,3,4})
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_21012(context, evt)
	if evt.param1 ~= 21012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21012(context, evt)
	-- 显示id为162的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,162,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_21013(context, evt)
	if evt.param1 ~= 21013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21013(context, evt)
	-- 显示id为162的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,162,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

require "V2_5/DarkStair"