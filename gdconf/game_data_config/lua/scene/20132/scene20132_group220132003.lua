-- 基础信息
local base_info = {
	group_id = 220132003
}

-- Trigger变量
local defs = {
	groupID = 220132003,
	gadget_teleport = 3004,
	pointarray_move = 1
}

-- DEFS_MISCS
function TeleportAction(context,pointarray_id,routelist) 
ScriptLib.MoveAvatarByPointArrayWithTemplate(context,context.uid,pointarray_id, routelist, 300 , {speed=10}) 
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21020201, pos = { x = 424.354, y = 22.708, z = 601.507 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 1, pose_id = 401 },
	{ config_id = 3002, monster_id = 21010101, pos = { x = 439.400, y = 22.773, z = 599.788 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, pose_id = 9015 },
	{ config_id = 3003, monster_id = 21010201, pos = { x = 426.275, y = 22.808, z = 592.160 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1 },
	{ config_id = 3020, monster_id = 21011001, pos = { x = 435.009, y = 22.705, z = 603.708 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3035, monster_id = 21010101, pos = { x = 423.378, y = 22.419, z = 599.585 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3036, monster_id = 21010101, pos = { x = 425.146, y = 22.879, z = 595.126 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3038, monster_id = 21020201, pos = { x = 435.348, y = 22.661, z = 593.638 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3039, monster_id = 21011001, pos = { x = 436.751, y = 22.929, z = 604.601 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3040, monster_id = 21010901, pos = { x = 434.005, y = 22.759, z = 607.161 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3042, monster_id = 21030201, pos = { x = 430.456, y = 22.859, z = 599.215 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3004, gadget_id = 70290486, pos = { x = 430.368, y = 23.983, z = 599.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3006, gadget_id = 70290508, pos = { x = 379.325, y = 75.063, z = 503.612 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3009, gadget_id = 70290528, pos = { x = 422.590, y = 85.760, z = 484.240 }, rot = { x = 0.000, y = 92.586, z = 0.000 }, level = 1 },
	{ config_id = 3010, gadget_id = 70290480, pos = { x = 429.341, y = 40.142, z = 492.065 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, route_id = 2 },
	{ config_id = 3011, gadget_id = 70360001, pos = { x = 379.337, y = 75.620, z = 503.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70290487, pos = { x = 379.551, y = 74.985, z = 498.926 }, rot = { x = 357.858, y = 69.904, z = 4.336 }, level = 1 },
	{ config_id = 3014, gadget_id = 70290487, pos = { x = 383.075, y = 74.933, z = 503.332 }, rot = { x = 356.787, y = 10.240, z = 1.056 }, level = 1 },
	{ config_id = 3017, gadget_id = 70220103, pos = { x = 409.728, y = 82.980, z = 488.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3018, gadget_id = 70220013, pos = { x = 431.252, y = 22.552, z = 610.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3019, gadget_id = 70220013, pos = { x = 429.316, y = 22.364, z = 613.052 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1 },
	{ config_id = 3021, gadget_id = 70310226, pos = { x = 433.899, y = 82.691, z = 596.756 }, rot = { x = 0.000, y = 205.000, z = 0.000 }, level = 1 },
	{ config_id = 3022, gadget_id = 70220013, pos = { x = 424.213, y = 22.642, z = 610.620 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1 },
	{ config_id = 3023, gadget_id = 70220026, pos = { x = 424.561, y = 22.682, z = 608.124 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1 },
	{ config_id = 3024, gadget_id = 70220013, pos = { x = 442.757, y = 22.607, z = 600.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3025, gadget_id = 70220026, pos = { x = 441.754, y = 22.631, z = 598.524 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1 },
	{ config_id = 3026, gadget_id = 70310226, pos = { x = 419.735, y = 120.000, z = 565.958 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1 },
	{ config_id = 3030, gadget_id = 70310226, pos = { x = 382.000, y = 123.000, z = 525.000 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 1 },
	{ config_id = 3031, gadget_id = 70310226, pos = { x = 380.000, y = 122.000, z = 504.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3032, gadget_id = 70290577, pos = { x = 423.312, y = 42.828, z = 487.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3034, gadget_id = 70211012, pos = { x = 427.558, y = 22.623, z = 609.567 }, rot = { x = 5.000, y = 0.000, z = 355.000 }, level = 1, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 3037, gadget_id = 70310226, pos = { x = 372.265, y = 76.052, z = 502.684 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, level = 1 },
	{ config_id = 3043, gadget_id = 70300088, pos = { x = 437.728, y = 22.551, z = 607.017 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1 },
	{ config_id = 3044, gadget_id = 70220014, pos = { x = 424.601, y = 22.715, z = 590.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3045, gadget_id = 70220014, pos = { x = 424.759, y = 22.627, z = 589.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3012, shape = RegionShape.SPHERE, radius = 2, pos = { x = 430.368, y = 23.983, z = 599.534 } },
	{ config_id = 3016, shape = RegionShape.SPHERE, radius = 5, pos = { x = 373.808, y = 75.627, z = 502.614 } },
	{ config_id = 3027, shape = RegionShape.SPHERE, radius = 5, pos = { x = 433.899, y = 82.691, z = 596.756 } },
	{ config_id = 3028, shape = RegionShape.SPHERE, radius = 5, pos = { x = 419.735, y = 120.000, z = 565.958 } },
	{ config_id = 3029, shape = RegionShape.SPHERE, radius = 5, pos = { x = 382.000, y = 123.000, z = 525.000 } },
	{ config_id = 3033, shape = RegionShape.SPHERE, radius = 5, pos = { x = 380.000, y = 122.000, z = 504.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1003005, name = "ANY_MONSTER_DIE_3005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3005", action = "action_EVENT_ANY_MONSTER_DIE_3005" },
	{ config_id = 1003007, name = "GADGET_CREATE_3007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3007", action = "action_EVENT_GADGET_CREATE_3007" },
	{ config_id = 1003008, name = "SELECT_OPTION_3008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3008", action = "action_EVENT_SELECT_OPTION_3008" },
	{ config_id = 1003012, name = "ENTER_REGION_3012", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_3012", action = "action_EVENT_ENTER_REGION_3012", trigger_count = 0 },
	{ config_id = 1003016, name = "ENTER_REGION_3016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3016", action = "action_EVENT_ENTER_REGION_3016", trigger_count = 0 },
	{ config_id = 1003027, name = "ENTER_REGION_3027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3027", action = "action_EVENT_ENTER_REGION_3027", trigger_count = 0 },
	{ config_id = 1003028, name = "ENTER_REGION_3028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3028", action = "action_EVENT_ENTER_REGION_3028", trigger_count = 0 },
	{ config_id = 1003029, name = "ENTER_REGION_3029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3029", action = "action_EVENT_ENTER_REGION_3029", trigger_count = 0 },
	{ config_id = 1003033, name = "ENTER_REGION_3033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3033", action = "action_EVENT_ENTER_REGION_3033", trigger_count = 0 },
	{ config_id = 1003041, name = "ANY_MONSTER_DIE_3041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3041", action = "action_EVENT_ANY_MONSTER_DIE_3041" },
	{ config_id = 1003046, name = "TIMER_EVENT_3046", event = EventType.EVENT_TIMER_EVENT, source = "1", condition = "", action = "action_EVENT_TIMER_EVENT_3046" }
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
		monsters = { 3001, 3002, 3003, 3020, 3042 },
		gadgets = { 3006, 3009, 3010, 3011, 3013, 3014, 3018, 3019, 3022, 3023, 3024, 3025, 3032, 3034, 3043, 3044, 3045 },
		regions = { 3016 },
		triggers = { "GADGET_CREATE_3007", "SELECT_OPTION_3008", "ENTER_REGION_3016", "ANY_MONSTER_DIE_3041" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3004 },
		regions = { 3027, 3028, 3029, 3033 },
		triggers = { "ENTER_REGION_3027", "ENTER_REGION_3028", "ENTER_REGION_3029", "ENTER_REGION_3033" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 3017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 3035, 3036, 3038, 3039, 3040 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3005", "TIMER_EVENT_3046" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 3012 },
		triggers = { "ENTER_REGION_3012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3005(context, evt)
	-- 延迟2秒后,向groupId为：220132003的对象,请求一次调用,并将string参数："1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220132003, "1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220132003, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132009, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 3034 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3034, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3007(context, evt)
	if 3011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220132003, 3011, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3008(context, evt)
	-- 判断是gadgetid 3011 option_id 68
	if 3011 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3008(context, evt)
	-- 将configid为 3006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220132003 ；指定config：3011；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220132003, 3011, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220132003, 3)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132009, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "KeyFlower" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "KeyFlower", 1, 220132011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "KeyCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "KeyCount", 1, 220132011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3012(context, evt)
	if evt.param1 ~= 3012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3012(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	TeleportAction(context,defs.pointarray_move,{1,2,3,4,5,6})
	
	-- 创建id为3021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3016(context, evt)
	if evt.param1 ~= 3016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3016(context, evt)
	-- 将configid为 3013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	 
	
	-- 将configid为 3004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end
	
	-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220132003, EntityType.GADGET, 3037 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3027(context, evt)
	if evt.param1 ~= 3027 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3027(context, evt)
	-- 创建id为3026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3026 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（391.4243，75.18393，505.376），持续时间为16秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=391.4243, y=75.18393, z=505.376}
	  local pos_follow = {x=0.05, y=-0.65, z=-5}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 16, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220132003, EntityType.GADGET, 3021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3028(context, evt)
	if evt.param1 ~= 3028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3028(context, evt)
	-- 创建id为3030的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3030 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220132003, EntityType.GADGET, 3026 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3029(context, evt)
	if evt.param1 ~= 3029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3029(context, evt)
	-- 创建id为3031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3031 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220132003, EntityType.GADGET, 3030 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3033(context, evt)
	if evt.param1 ~= 3033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3033(context, evt)
	-- 创建id为3037的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3037 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220132003, EntityType.GADGET, 3031 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3041(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3041(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220132003, 4)
	
	-- 调用提示id为 400070 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3046(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220132003, 5)
	
	return 0
end