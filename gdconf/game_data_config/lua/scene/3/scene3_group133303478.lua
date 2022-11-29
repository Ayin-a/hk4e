-- 基础信息
local base_info = {
	group_id = 133303478
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
	{ config_id = 478001, gadget_id = 70290485, pos = { x = -1107.813, y = 173.052, z = 3699.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478002, gadget_id = 70310199, pos = { x = -1102.679, y = 174.992, z = 3709.446 }, rot = { x = 0.000, y = 164.722, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478004, gadget_id = 70310201, pos = { x = -1115.632, y = 192.235, z = 3751.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478005, gadget_id = 70310201, pos = { x = -1059.021, y = 193.143, z = 3760.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478006, gadget_id = 70310201, pos = { x = -1109.238, y = 212.956, z = 3656.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478007, gadget_id = 70330255, pos = { x = -1102.810, y = 179.094, z = 3718.945 }, rot = { x = 339.178, y = 341.900, z = 357.019 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478008, gadget_id = 70330255, pos = { x = -1111.238, y = 188.260, z = 3742.352 }, rot = { x = 346.511, y = 329.134, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478009, gadget_id = 70330255, pos = { x = -1080.956, y = 175.925, z = 3710.612 }, rot = { x = 341.619, y = 34.893, z = 356.456 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478010, gadget_id = 70330255, pos = { x = -1064.456, y = 186.634, z = 3735.090 }, rot = { x = 0.000, y = 13.561, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478011, gadget_id = 70330255, pos = { x = -1102.895, y = 175.756, z = 3695.069 }, rot = { x = 322.752, y = 196.162, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478012, gadget_id = 70330255, pos = { x = -1108.018, y = 187.978, z = 3685.678 }, rot = { x = 322.752, y = 196.162, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478014, gadget_id = 70330219, pos = { x = -1116.115, y = 190.651, z = 3752.303 }, rot = { x = 2.556, y = 64.162, z = 338.628 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478015, gadget_id = 70330219, pos = { x = -1059.051, y = 191.774, z = 3760.274 }, rot = { x = 344.195, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478016, gadget_id = 70220103, pos = { x = -1109.905, y = 209.904, z = 3667.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478017, gadget_id = 70330255, pos = { x = -1111.003, y = 209.497, z = 3669.345 }, rot = { x = 342.450, y = 174.056, z = 11.463 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478018, gadget_id = 70211122, pos = { x = -1107.813, y = 173.052, z = 3699.369 }, rot = { x = 25.954, y = 4.127, z = 356.786 }, level = 26, drop_tag = "解谜高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 478021, gadget_id = 70220103, pos = { x = -1107.970, y = 190.441, z = 3685.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 演奏草种子刷到suite2
	{ config_id = 1478003, name = "GADGET_STATE_CHANGE_478003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_478003", action = "action_EVENT_GADGET_STATE_CHANGE_478003", trigger_count = 0 },
	-- 全解收尾
	{ config_id = 1478013, name = "GADGET_STATE_CHANGE_478013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_478013", action = "action_EVENT_GADGET_STATE_CHANGE_478013" },
	-- 石中植物破坏创生织梦网
	{ config_id = 1478019, name = "ANY_GADGET_DIE_478019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_478019", action = "action_EVENT_ANY_GADGET_DIE_478019", trigger_count = 0 },
	-- 石中植物破坏创生织梦网
	{ config_id = 1478020, name = "ANY_GADGET_DIE_478020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_478020", action = "action_EVENT_ANY_GADGET_DIE_478020", trigger_count = 0 },
	-- 石中植物破坏创生织梦网
	{ config_id = 1478022, name = "GROUP_LOAD_478022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_478022", action = "action_EVENT_GROUP_LOAD_478022", trigger_count = 0 },
	-- 石中植物破坏创生织梦网
	{ config_id = 1478023, name = "GROUP_LOAD_478023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_478023", action = "action_EVENT_GROUP_LOAD_478023", trigger_count = 0 },
	-- 全解保底
	{ config_id = 1478024, name = "GROUP_LOAD_478024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_478024", action = "action_EVENT_GROUP_LOAD_478024", trigger_count = 0 },
	-- group刷新后保留大草种子枝条开启
	{ config_id = 1478025, name = "GROUP_REFRESH_478025", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_478025", action = "action_EVENT_GROUP_REFRESH_478025" }
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
		gadgets = { 478001, 478002, 478018 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_478003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 478001, 478002, 478006, 478007, 478008, 478009, 478010, 478011, 478012, 478014, 478015, 478016, 478017, 478018, 478021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_478013", "ANY_GADGET_DIE_478019", "ANY_GADGET_DIE_478020", "GROUP_LOAD_478022", "GROUP_LOAD_478023", "GROUP_LOAD_478024", "GROUP_REFRESH_478025" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 478007, 478008, 478009, 478010, 478011, 478012, 478016, 478017, 478021 },
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
function condition_EVENT_GADGET_STATE_CHANGE_478003(context, evt)
	if 478002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_478003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303478, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_478013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303478, 478004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303478, 478005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303478, 478006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_478013(context, evt)
	-- 将configid为 478001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 478001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 478018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 478018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303478, 3)
	
	-- 触发镜头注目，注目位置为坐标{x=-1107.813, y=173.0522, z=3699.369}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1107.813, y=173.0522, z=3699.369}
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
function condition_EVENT_ANY_GADGET_DIE_478019(context, evt)
	if 478014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_478019(context, evt)
	-- 创建id为478004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 478004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_478020(context, evt)
	if 478015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_478020(context, evt)
	-- 创建id为478005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 478005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_478022(context, evt)
	-- 如果478014不存在返回True，否则返回False
	if ScriptLib.CheckIsInGroup(context, 0, 478014) ~= false then
	        return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_478022(context, evt)
	-- 创建id为478004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 478004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_478023(context, evt)
	-- 如果478014不存在返回True，否则返回False
	if ScriptLib.CheckIsInGroup(context, 0, 478015) ~= false then
	        return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_478023(context, evt)
	-- 创建id为478005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 478005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_478024(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303478, 478004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303478, 478005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303478, 478006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_478024(context, evt)
	-- 将configid为 478001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 478001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 478018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 478018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303478, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_478025(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133303478, 478002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_478025(context, evt)
	-- 将configid为 478002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 478002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end