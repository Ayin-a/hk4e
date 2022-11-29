-- 基础信息
local base_info = {
	group_id = 220119005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 25080301, pos = { x = -21.766, y = -10.806, z = -14.837 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, pose_id = 1003 },
	{ config_id = 5002, monster_id = 25080101, pos = { x = -16.507, y = -10.801, z = -8.279 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 1003 },
	{ config_id = 5003, monster_id = 25080101, pos = { x = -11.924, y = -10.810, z = -20.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1003 },
	{ config_id = 5004, monster_id = 25080201, pos = { x = -16.870, y = -10.810, z = -21.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 5005, monster_id = 25080201, pos = { x = -12.593, y = -10.810, z = -8.698 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5006, gadget_id = 70290137, pos = { x = -4.599, y = -10.600, z = -0.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5008, gadget_id = 70360287, pos = { x = 20.208, y = -10.951, z = 15.531 }, rot = { x = 0.000, y = 269.643, z = 0.000 }, level = 1 },
	{ config_id = 5013, gadget_id = 70290136, pos = { x = -30.528, y = -10.310, z = -13.809 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5014, gadget_id = 70211012, pos = { x = -17.327, y = -10.810, z = -14.814 }, rot = { x = 0.000, y = 89.535, z = 0.000 }, level = 1, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 5015, gadget_id = 70360001, pos = { x = -30.626, y = -8.964, z = -13.628 }, rot = { x = 0.000, y = 91.855, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2.361, y = -9.555, z = -15.139 } }
}

-- 触发器
triggers = {
	{ config_id = 1005007, name = "ANY_MONSTER_DIE_5007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5007", action = "action_EVENT_ANY_MONSTER_DIE_5007" },
	{ config_id = 1005009, name = "ENTER_REGION_5009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5009", action = "action_EVENT_ENTER_REGION_5009" },
	{ config_id = 1005010, name = "GADGET_CREATE_5010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5010", action = "action_EVENT_GADGET_CREATE_5010" },
	{ config_id = 1005011, name = "SELECT_OPTION_5011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5011", action = "action_EVENT_SELECT_OPTION_5011" },
	{ config_id = 1005012, name = "GADGET_CREATE_5012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5012", action = "action_EVENT_GADGET_CREATE_5012" },
	{ config_id = 1005016, name = "SELECT_OPTION_5016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5016", action = "action_EVENT_SELECT_OPTION_5016" }
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
		monsters = { 5001, 5002, 5003, 5004, 5005 },
		gadgets = { 5006, 5008, 5013, 5014, 5015 },
		regions = { 5009 },
		triggers = { "ANY_MONSTER_DIE_5007", "ENTER_REGION_5009", "GADGET_CREATE_5010", "SELECT_OPTION_5011", "GADGET_CREATE_5012", "SELECT_OPTION_5016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220119013, suite = 12 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 触发镜头注目，注目位置为坐标（-4，-10，0），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-4, y=-10, z=0}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将configid为 5006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5009(context, evt)
	if evt.param1 ~= 5009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5009(context, evt)
	-- 通知groupid为220119005中,configid为：5001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 5001, 220119005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_5010(context, evt)
	if 5008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5011(context, evt)
	-- 判断是gadgetid 5008 option_id 1
	if 5008 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5011(context, evt)
	-- 将configid为 5008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220119005 ；指定config：5008；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220119005, 5008, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220119013, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_5012(context, evt)
	if 5015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {72}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5016(context, evt)
	-- 判断是gadgetid 5015 option_id 72
	if 5015 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5016(context, evt)
	-- 将configid为 5013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220119005 ；指定config：5015；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220119005, 5015, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end