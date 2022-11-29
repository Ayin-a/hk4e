-- 基础信息
local base_info = {
	group_id = 133106229
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 229002, monster_id = 22010201, pos = { x = -448.271, y = 188.237, z = 1198.333 }, rot = { x = 0.000, y = 60.456, z = 0.000 }, level = 32, drop_tag = "深渊法师", pose_id = 9013, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 229001, gadget_id = 70900051, pos = { x = -516.147, y = 182.861, z = 1158.467 }, rot = { x = 0.000, y = 332.484, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 8 },
	{ config_id = 229004, gadget_id = 70900051, pos = { x = -446.533, y = 188.228, z = 1199.356 }, rot = { x = 0.000, y = 329.952, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 8 },
	{ config_id = 229005, gadget_id = 70690006, pos = { x = -486.800, y = 179.681, z = 1175.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 229007, gadget_id = 70360097, pos = { x = -486.572, y = 196.512, z = 1175.617 }, rot = { x = 0.000, y = 53.398, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 229009, gadget_id = 70220032, pos = { x = -472.862, y = 181.499, z = 1139.800 }, rot = { x = 0.000, y = 161.374, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 229010, gadget_id = 70900051, pos = { x = -485.880, y = 196.938, z = 1176.177 }, rot = { x = 0.000, y = 59.311, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 8 },
	{ config_id = 229011, gadget_id = 70900051, pos = { x = -469.021, y = 180.836, z = 1147.453 }, rot = { x = 0.000, y = 281.162, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 8 },
	{ config_id = 229012, gadget_id = 70900051, pos = { x = -501.866, y = 180.952, z = 1203.189 }, rot = { x = 359.243, y = 23.069, z = 5.469 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 8 },
	{ config_id = 229013, gadget_id = 70360005, pos = { x = -494.768, y = 180.791, z = 1209.592 }, rot = { x = 0.000, y = 197.403, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 229014, gadget_id = 70360005, pos = { x = -504.951, y = 181.115, z = 1211.511 }, rot = { x = 1.779, y = 247.100, z = 4.805 }, level = 32, area_id = 8 },
	{ config_id = 229018, gadget_id = 70211121, pos = { x = -449.415, y = 188.237, z = 1197.691 }, rot = { x = 0.000, y = 239.421, z = 0.000 }, level = 26, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 229019, gadget_id = 70211111, pos = { x = -446.516, y = 188.237, z = 1196.533 }, rot = { x = 0.000, y = 242.616, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 229020, gadget_id = 70211111, pos = { x = -449.116, y = 188.237, z = 1200.558 }, rot = { x = 0.000, y = 238.313, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 229029, gadget_id = 70310001, pos = { x = -461.664, y = 182.034, z = 1163.500 }, rot = { x = 355.311, y = 0.852, z = 358.850 }, level = 32, state = GadgetState.GearStart, area_id = 8 },
	{ config_id = 229032, gadget_id = 70310001, pos = { x = -507.879, y = 181.079, z = 1214.177 }, rot = { x = 4.748, y = 0.618, z = 2.950 }, level = 32, state = GadgetState.GearStart, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1229003, name = "ANY_MONSTER_DIE_229003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_229003", action = "action_EVENT_ANY_MONSTER_DIE_229003" },
	{ config_id = 1229008, name = "GROUP_LOAD_229008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_229008", trigger_count = 0 },
	{ config_id = 1229015, name = "GADGET_STATE_CHANGE_229015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229015", action = "action_EVENT_GADGET_STATE_CHANGE_229015" },
	{ config_id = 1229016, name = "GADGET_STATE_CHANGE_229016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229016", action = "action_EVENT_GADGET_STATE_CHANGE_229016" },
	{ config_id = 1229017, name = "GADGET_STATE_CHANGE_229017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229017", action = "action_EVENT_GADGET_STATE_CHANGE_229017" },
	{ config_id = 1229021, name = "GADGET_STATE_CHANGE_229021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229021", action = "action_EVENT_GADGET_STATE_CHANGE_229021", trigger_count = 0 },
	{ config_id = 1229022, name = "GADGET_STATE_CHANGE_229022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229022", action = "action_EVENT_GADGET_STATE_CHANGE_229022", trigger_count = 0 },
	{ config_id = 1229023, name = "GADGET_STATE_CHANGE_229023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229023", action = "action_EVENT_GADGET_STATE_CHANGE_229023", trigger_count = 0 },
	{ config_id = 1229024, name = "GADGET_STATE_CHANGE_229024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229024", action = "action_EVENT_GADGET_STATE_CHANGE_229024", trigger_count = 0 },
	{ config_id = 1229025, name = "VARIABLE_CHANGE_229025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_229025", action = "action_EVENT_VARIABLE_CHANGE_229025" },
	{ config_id = 1229026, name = "GADGET_STATE_CHANGE_229026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229026", action = "action_EVENT_GADGET_STATE_CHANGE_229026" },
	{ config_id = 1229027, name = "GADGET_STATE_CHANGE_229027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229027", action = "action_EVENT_GADGET_STATE_CHANGE_229027" },
	{ config_id = 1229028, name = "VARIABLE_CHANGE_229028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_229028", action = "action_EVENT_VARIABLE_CHANGE_229028" },
	{ config_id = 1229030, name = "GADGET_STATE_CHANGE_229030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229030", action = "action_EVENT_GADGET_STATE_CHANGE_229030", trigger_count = 0 },
	{ config_id = 1229031, name = "GADGET_STATE_CHANGE_229031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229031", action = "action_EVENT_GADGET_STATE_CHANGE_229031", trigger_count = 0 },
	{ config_id = 1229033, name = "GADGET_STATE_CHANGE_229033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229033", action = "action_EVENT_GADGET_STATE_CHANGE_229033" },
	{ config_id = 1229034, name = "GADGET_CREATE_229034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_229034", action = "action_EVENT_GADGET_CREATE_229034" },
	{ config_id = 1229035, name = "GADGET_CREATE_229035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_229035", action = "action_EVENT_GADGET_CREATE_229035" },
	{ config_id = 1229036, name = "GADGET_CREATE_229036", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_229036", action = "action_EVENT_GADGET_CREATE_229036" },
	{ config_id = 1229037, name = "VARIABLE_CHANGE_229037", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_229037", action = "action_EVENT_VARIABLE_CHANGE_229037" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true },
	{ config_id = 2, name = "ison", value = 0, no_refresh = true },
	{ config_id = 3, name = "windon", value = 0, no_refresh = true },
	{ config_id = 4, name = "start2", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 229006, gadget_id = 70310013, pos = { x = -486.572, y = 196.512, z = 1175.617 }, rot = { x = 0.000, y = 53.398, z = 0.000 }, level = 32, area_id = 8 }
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
		monsters = { 229002 },
		gadgets = { 229001, 229004, 229007, 229009, 229010, 229011, 229012, 229013, 229014, 229029, 229032 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_229003", "GROUP_LOAD_229008", "GADGET_STATE_CHANGE_229015", "GADGET_STATE_CHANGE_229016", "GADGET_STATE_CHANGE_229017", "GADGET_STATE_CHANGE_229021", "GADGET_STATE_CHANGE_229022", "GADGET_STATE_CHANGE_229023", "GADGET_STATE_CHANGE_229024", "VARIABLE_CHANGE_229025", "GADGET_STATE_CHANGE_229026", "GADGET_STATE_CHANGE_229027", "VARIABLE_CHANGE_229028", "GADGET_STATE_CHANGE_229030", "GADGET_STATE_CHANGE_229031", "GADGET_STATE_CHANGE_229033", "GADGET_CREATE_229034", "GADGET_CREATE_229035", "GADGET_CREATE_229036", "VARIABLE_CHANGE_229037" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_229003(context, evt)
	if 229002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_229003(context, evt)
	-- 将configid为 229004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_229008(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133106229, 229004) == GadgetState.GearStop and ScriptLib.GetGroupMonsterCount(context) == 0 then
		 ScriptLib.SetGroupGadgetStateByConfigId(context, 133106229, 229004, GadgetState.Default)
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229015(context, evt)
	if 229001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229015(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229016(context, evt)
	if 229012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229016(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229017(context, evt)
	if 229010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229017(context, evt)
	-- 创建id为229018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 229018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为229019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 229019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为229020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 229020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229021(context, evt)
	if 229013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229021(context, evt)
	-- 针对当前group内变量名为 "ison" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229022(context, evt)
	if 229014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229022(context, evt)
	-- 针对当前group内变量名为 "ison" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229023(context, evt)
	-- 检测config_id为229013的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 229013 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229023(context, evt)
	-- 针对当前group内变量名为 "ison" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ison", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229024(context, evt)
	-- 检测config_id为229014的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 229014 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229024(context, evt)
	-- 针对当前group内变量名为 "ison" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ison", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_229025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ison"为2
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_229025(context, evt)
	-- 将configid为 229012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229026(context, evt)
	if 229004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229026(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "start2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229027(context, evt)
	if 229011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229027(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_229028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start"为4
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_229028(context, evt)
	-- 创建id为229005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 229005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 229010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-485，190，1176），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-485, y=190, z=1176}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229030(context, evt)
	if 229009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"windon"为0
	if ScriptLib.GetGroupVariableValue(context, "windon") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229030(context, evt)
	-- 将configid为 229011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229031(context, evt)
	-- 检测config_id为229009的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 229009 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	-- 判断变量"windon"为0
	if ScriptLib.GetGroupVariableValue(context, "windon") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229031(context, evt)
	-- 将configid为 229011 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229011, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229033(context, evt)
	if 229011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229033(context, evt)
	-- 将本组内变量名为 "windon" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "windon", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_229034(context, evt)
	if 229001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_229034(context, evt)
	-- 针对当前group内变量名为 "start2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_229035(context, evt)
	if 229012 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_229035(context, evt)
	-- 针对当前group内变量名为 "start2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_229036(context, evt)
	if 229011 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_229036(context, evt)
	-- 针对当前group内变量名为 "start2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_229037(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start2"为4
	if ScriptLib.GetGroupVariableValue(context, "start2") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_229037(context, evt)
	-- 创建id为229005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 229005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 229010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end