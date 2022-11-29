-- 基础信息
local base_info = {
	group_id = 133222338
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 338001, monster_id = 21020801, pos = { x = -4867.363, y = 202.349, z = -4777.115 }, rot = { x = 0.000, y = 266.015, z = 0.000 }, level = 30, drop_tag = "丘丘岩盔王", area_id = 14 },
	{ config_id = 338002, monster_id = 22010401, pos = { x = -4862.560, y = 208.888, z = -4778.367 }, rot = { x = 0.000, y = 283.929, z = 0.000 }, level = 30, drop_tag = "深渊法师", pose_id = 9013, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 338004, gadget_id = 70900008, pos = { x = -4872.167, y = 201.996, z = -4784.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
	{ config_id = 338005, gadget_id = 70900008, pos = { x = -4870.775, y = 201.924, z = -4770.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
	{ config_id = 338006, gadget_id = 70900008, pos = { x = -4861.160, y = 202.203, z = -4775.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
	{ config_id = 338007, gadget_id = 70300085, pos = { x = -4867.078, y = 201.889, z = -4777.163 }, rot = { x = 0.000, y = 43.424, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 338008, gadget_id = 70211031, pos = { x = -4866.977, y = 202.324, z = -4777.190 }, rot = { x = 0.293, y = 265.348, z = 358.806 }, level = 26, drop_tag = "战斗超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 338009, gadget_id = 70300107, pos = { x = -4866.853, y = 202.263, z = -4777.157 }, rot = { x = 0.070, y = 0.000, z = 0.300 }, level = 30, isOneoff = true, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1338010, name = "VARIABLE_CHANGE_338010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_338010", action = "action_EVENT_VARIABLE_CHANGE_338010", trigger_count = 0 },
	{ config_id = 1338011, name = "VARIABLE_CHANGE_338011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_338011", action = "action_EVENT_VARIABLE_CHANGE_338011", trigger_count = 0 },
	{ config_id = 1338012, name = "VARIABLE_CHANGE_338012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_338012", action = "action_EVENT_VARIABLE_CHANGE_338012", trigger_count = 0 },
	{ config_id = 1338013, name = "GROUP_LOAD_338013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_338013", action = "action_EVENT_GROUP_LOAD_338013", trigger_count = 0 },
	{ config_id = 1338014, name = "GROUP_LOAD_338014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_338014", action = "action_EVENT_GROUP_LOAD_338014", trigger_count = 0 },
	{ config_id = 1338015, name = "GROUP_LOAD_338015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_338015", action = "action_EVENT_GROUP_LOAD_338015", trigger_count = 0 },
	{ config_id = 1338016, name = "GADGET_STATE_CHANGE_338016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_338016", action = "action_EVENT_GADGET_STATE_CHANGE_338016", trigger_count = 0 },
	{ config_id = 1338017, name = "GADGET_STATE_CHANGE_338017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_338017", action = "action_EVENT_GADGET_STATE_CHANGE_338017", trigger_count = 0 },
	{ config_id = 1338018, name = "ANY_MONSTER_DIE_338018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_338018", action = "action_EVENT_ANY_MONSTER_DIE_338018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlock1", value = 0, no_refresh = true },
	{ config_id = 2, name = "unlock2", value = 0, no_refresh = true },
	{ config_id = 3, name = "unlock3", value = 0, no_refresh = true },
	{ config_id = 4, name = "win", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 338003, gadget_id = 70210117, pos = { x = -4867.006, y = 190.782, z = -4777.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
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
		monsters = { 338002 },
		gadgets = { 338004, 338005, 338006, 338007, 338009 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_338010", "VARIABLE_CHANGE_338011", "VARIABLE_CHANGE_338012", "GROUP_LOAD_338013", "GROUP_LOAD_338014", "GROUP_LOAD_338015", "GADGET_STATE_CHANGE_338016", "GADGET_STATE_CHANGE_338017", "ANY_MONSTER_DIE_338018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_338010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock1"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock1") ~= 1 then
			return false
	end
	
	-- 判断变量"win"为0
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_338010(context, evt)
	-- 将configid为 338004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 338004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_338011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock2"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock2") ~= 1 then
			return false
	end
	
	-- 判断变量"win"为0
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_338011(context, evt)
	-- 将configid为 338005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 338005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_338012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock3"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock3") ~= 1 then
			return false
	end
	
	-- 判断变量"win"为0
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_338012(context, evt)
	-- 将configid为 338006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 338006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_338013(context, evt)
	-- 判断变量"unlock1"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock1") ~= 1 then
			return false
	end
	
	-- 判断变量"win"为0
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_338013(context, evt)
	-- 将configid为 338004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 338004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_338014(context, evt)
	-- 判断变量"unlock2"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock2") ~= 1 then
			return false
	end
	
	-- 判断变量"win"为0
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_338014(context, evt)
	-- 将configid为 338005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 338005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_338015(context, evt)
	-- 判断变量"unlock3"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock3") ~= 1 then
			return false
	end
	
	-- 判断变量"win"为0
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_338015(context, evt)
	-- 将configid为 338006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 338006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_338016(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222338, 338004) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222338, 338005) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222338, 338006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_338016(context, evt)
	-- 将configid为 338009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 338009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_338017(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222338, 338004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222338, 338005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222338, 338006) then
		return false
	end
	
	-- 判断变量"win"为0
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_338017(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 338001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-4867.274，204.4273，-4776.902），持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-4867.274, y=204.4273, z=-4776.902}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133222338, EntityType.GADGET, 338009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_338018(context, evt)
	--判断死亡怪物的configid是否为 338001
	if evt.param1 ~= 338001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_338018(context, evt)
	-- 创建id为338008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 338008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end