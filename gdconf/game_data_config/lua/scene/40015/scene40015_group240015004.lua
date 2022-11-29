-- 基础信息
local base_info = {
	group_id = 240015004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 25010401, pos = { x = -140.639, y = 37.226, z = 86.125 }, rot = { x = 0.000, y = 159.014, z = 0.000 }, level = 1 },
	{ config_id = 4002, monster_id = 25010601, pos = { x = -131.547, y = 37.213, z = 86.156 }, rot = { x = 0.000, y = 200.832, z = 0.000 }, level = 1 },
	{ config_id = 4003, monster_id = 25010201, pos = { x = -143.491, y = 37.234, z = 78.105 }, rot = { x = 0.000, y = 198.371, z = 0.000 }, level = 1 },
	{ config_id = 4004, monster_id = 25010701, pos = { x = -131.261, y = 37.217, z = 79.654 }, rot = { x = 0.000, y = 192.568, z = 0.000 }, level = 1 },
	{ config_id = 4005, monster_id = 25010401, pos = { x = -144.780, y = 37.220, z = 85.153 }, rot = { x = 0.000, y = 125.521, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4009, gadget_id = 70350070, pos = { x = -116.620, y = 33.180, z = 39.140 }, rot = { x = 294.700, y = 308.808, z = 178.700 }, level = 1 },
	{ config_id = 4013, gadget_id = 70211012, pos = { x = -136.566, y = 37.225, z = 92.537 }, rot = { x = 0.000, y = 180.920, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 4014, gadget_id = 70360002, pos = { x = -136.568, y = 37.367, z = 102.430 }, rot = { x = 0.000, y = 178.765, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 4015, gadget_id = 70350072, pos = { x = -126.481, y = 39.680, z = 105.403 }, rot = { x = 281.340, y = 72.541, z = 182.299 }, level = 1 },
	{ config_id = 4016, gadget_id = 70350070, pos = { x = -119.400, y = 44.010, z = 123.390 }, rot = { x = 282.700, y = 349.531, z = 179.640 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 4008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -102.373, y = 33.260, z = 25.670 } }
}

-- 触发器
triggers = {
	{ config_id = 1004008, name = "ENTER_REGION_4008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4008", action = "action_EVENT_ENTER_REGION_4008" },
	{ config_id = 1004010, name = "ANY_MONSTER_DIE_4010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4010", action = "action_EVENT_ANY_MONSTER_DIE_4010" },
	{ config_id = 1004011, name = "GADGET_STATE_CHANGE_4011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4011", action = "action_EVENT_GADGET_STATE_CHANGE_4011" },
	{ config_id = 1004012, name = "SELECT_OPTION_4012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4012", action = "action_EVENT_SELECT_OPTION_4012" }
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
		monsters = { 4001, 4002, 4003, 4004, 4005 },
		gadgets = { 4009, 4013, 4014, 4015, 4016 },
		regions = { 4008 },
		triggers = { "ENTER_REGION_4008", "ANY_MONSTER_DIE_4010", "GADGET_STATE_CHANGE_4011", "SELECT_OPTION_4012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_4008(context, evt)
	if evt.param1 ~= 4008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4008(context, evt)
	-- 将configid为 4009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4010(context, evt)
	-- 将configid为 4014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-136，37，102），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-136, y=37, z=102}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4011(context, evt)
	if 4014 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240015004, 4014, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4012(context, evt)
	-- 判断是gadgetid 4014 option_id 7
	if 4014 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4012(context, evt)
	-- 删除指定group： 240015004 ；指定config：4014；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240015004, 4014, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 4014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240015011, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240015011, 2)
	
	-- 触发镜头注目，注目位置为坐标（-116，41，107），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-116, y=41, z=107}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将configid为 4015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end