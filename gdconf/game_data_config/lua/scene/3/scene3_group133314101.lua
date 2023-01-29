-- 基础信息
local base_info = {
	group_id = 133314101
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 101005, monster_id = 26100401, pos = { x = -997.843, y = -153.277, z = 5001.479 }, rot = { x = 0.000, y = 260.821, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", pose_id = 1, area_id = 32 },
	{ config_id = 101007, monster_id = 28060401, pos = { x = -1011.337, y = -153.321, z = 4997.598 }, rot = { x = 0.000, y = 89.553, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 101001, gadget_id = 70330416, pos = { x = -983.607, y = -148.381, z = 4991.660 }, rot = { x = 0.000, y = 295.643, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 101003, gadget_id = 70330333, pos = { x = -1005.300, y = -153.600, z = 5001.659 }, rot = { x = 0.000, y = 160.819, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 101004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1005.307, y = -153.283, z = 5001.497 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 开门保底
	{ config_id = 1101002, name = "GROUP_LOAD_101002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_101002", action = "action_EVENT_GROUP_LOAD_101002", trigger_count = 0 },
	{ config_id = 1101004, name = "ENTER_REGION_101004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_101004", action = "action_EVENT_ENTER_REGION_101004" },
	{ config_id = 1101006, name = "ANY_MONSTER_DIE_101006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_101006", action = "action_EVENT_ANY_MONSTER_DIE_101006", trigger_count = 0 },
	{ config_id = 1101008, name = "SELECT_OPTION_101008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_101008", action = "action_EVENT_SELECT_OPTION_101008", trigger_count = 0 },
	-- 踩圈保底
	{ config_id = 1101009, name = "GROUP_LOAD_101009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_101009", action = "action_EVENT_GROUP_LOAD_101009", trigger_count = 0 },
	-- 打怪保底
	{ config_id = 1101010, name = "GROUP_LOAD_101010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_101010", action = "action_EVENT_GROUP_LOAD_101010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "phase", value = 0, no_refresh = true }
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
		gadgets = { 101001, 101003 },
		regions = { 101004 },
		triggers = { "GROUP_LOAD_101002", "ENTER_REGION_101004", "GROUP_LOAD_101009", "GROUP_LOAD_101010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 101005, 101007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_101006", "SELECT_OPTION_101008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_101002(context, evt)
	-- 判断变量"phase"为3
	if ScriptLib.GetGroupVariableValue(context, "phase") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_101002(context, evt)
	-- 将configid为 101001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_101004(context, evt)
	if evt.param1 ~= 101004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_101004(context, evt)
	-- 将本组内变量名为 "phase" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "phase", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314101, 2)
	
	-- 将configid为 101003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_101006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133314101) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_101006(context, evt)
	-- 将本组内变量名为 "phase" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "phase", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 101003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314101, 101003, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_101008(context, evt)
	-- 判断是gadgetid 101003 option_id 7
	if 101003 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_101008(context, evt)
	-- 将本组内变量名为 "phase" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "phase", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133314101 ；指定config：101003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314101, 101003, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 101001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 101003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-983.6068, y=-148.3808, z=4991.66}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-983.6068, y=-148.3808, z=4991.66}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_101009(context, evt)
	-- 判断变量"phase"为1
	if ScriptLib.GetGroupVariableValue(context, "phase") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_101009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314101, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_101010(context, evt)
	-- 判断变量"phase"为2
	if ScriptLib.GetGroupVariableValue(context, "phase") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_101010(context, evt)
	-- 将configid为 101003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314101, 101003, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end