-- 基础信息
local base_info = {
	group_id = 133223065
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65005, monster_id = 24010101, pos = { x = -5937.125, y = 169.694, z = -2684.560 }, rot = { x = 0.000, y = 18.258, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 100, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 65001, gadget_id = 70360079, pos = { x = -5930.495, y = 175.300, z = -2672.809 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 65002, gadget_id = 70350081, pos = { x = -5931.455, y = 165.622, z = -2660.285 }, rot = { x = 0.000, y = 348.740, z = 0.000 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 65008, gadget_id = 70211111, pos = { x = -5922.426, y = 165.833, z = -2659.702 }, rot = { x = 0.000, y = 32.825, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 65006, shape = RegionShape.SPHERE, radius = 9, pos = { x = -5927.195, y = 168.258, z = -2670.585 }, area_id = 18 }
}

-- 触发器
triggers = {
	-- 操作台开门
	{ config_id = 1065003, name = "SELECT_OPTION_65003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_65003", action = "action_EVENT_SELECT_OPTION_65003" },
	-- 门加保底
	{ config_id = 1065004, name = "GADGET_CREATE_65004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_65004", action = "action_EVENT_GADGET_CREATE_65004", trigger_count = 0 },
	{ config_id = 1065006, name = "ENTER_REGION_65006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65006", action = "action_EVENT_ENTER_REGION_65006" },
	-- 初始化机关
	{ config_id = 1065010, name = "GADGET_CREATE_65010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_65010", action = "action_EVENT_GADGET_CREATE_65010", trigger_count = 0 },
	-- 开始，刷新宝箱
	{ config_id = 1065011, name = "VARIABLE_CHANGE_65011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_65011", action = "action_EVENT_VARIABLE_CHANGE_65011" },
	{ config_id = 1065015, name = "GROUP_LOAD_65015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_65015", action = "action_EVENT_GROUP_LOAD_65015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true },
	{ config_id = 2, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 65007, monster_id = 24020301, pos = { x = -5923.932, y = 165.635, z = -2654.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 7, area_id = 18 },
		{ config_id = 65012, monster_id = 24020301, pos = { x = -5915.577, y = 165.597, z = -2659.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 7, area_id = 18 }
	},
	triggers = {
		{ config_id = 1065009, name = "ANY_MONSTER_DIE_65009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65009", action = "action_EVENT_ANY_MONSTER_DIE_65009" },
		{ config_id = 1065013, name = "GADGET_STATE_CHANGE_65013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65013", action = "action_EVENT_GADGET_STATE_CHANGE_65013" },
		{ config_id = 1065014, name = "VARIABLE_CHANGE_65014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_65014", action = "action_EVENT_VARIABLE_CHANGE_65014" }
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
		gadgets = { 65001, 65002 },
		regions = { },
		triggers = { "SELECT_OPTION_65003", "GADGET_CREATE_65004", "GADGET_CREATE_65010", "VARIABLE_CHANGE_65011", "GROUP_LOAD_65015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 65008 },
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
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 65006 },
		triggers = { "ENTER_REGION_65006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_65003(context, evt)
	-- 判断是gadgetid 65002 option_id 24
	if 65002 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_65003(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133223065 ；指定config：65002；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223065, 65002, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 65002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 65001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223065, 4)
	
	-- 触发镜头注目，注目位置为坐标（-5930.495，175.3，-2672.809），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-5930.495, y=175.3, z=-2672.809}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_65004(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133223065, 65001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_65004(context, evt)
	-- 将configid为 65001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65006(context, evt)
	if evt.param1 ~= 65006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 65005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 通知groupid为133223065中,configid为：65005的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 65005, 133223065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_65010(context, evt)
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	if 65002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_65010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223065, 65002, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65011(context, evt)
	-- 将configid为 65002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223065, 65002, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223065, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_65015(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_65015(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223065, 4)
	
	return 0
end