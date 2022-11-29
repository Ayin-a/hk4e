-- 基础信息
local base_info = {
	group_id = 133302130
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
	{ config_id = 130001, gadget_id = 70230112, pos = { x = -21.226, y = 274.236, z = 2977.241 }, rot = { x = 356.625, y = 8.583, z = 111.311 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 130002, gadget_id = 70230113, pos = { x = -21.262, y = 274.152, z = 2976.037 }, rot = { x = 24.278, y = 307.385, z = 70.157 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 130003, gadget_id = 70230113, pos = { x = -21.296, y = 273.887, z = 2974.897 }, rot = { x = 21.372, y = 300.496, z = 68.648 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 130004, gadget_id = 70330197, pos = { x = -19.456, y = 274.270, z = 2983.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 130005, gadget_id = 70211101, pos = { x = -21.075, y = 274.014, z = 2978.971 }, rot = { x = 0.000, y = 7.491, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 130011, gadget_id = 70220103, pos = { x = -8.630, y = 340.390, z = 2984.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 130012, gadget_id = 70220103, pos = { x = -14.125, y = 305.156, z = 2978.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 130013, gadget_id = 70230113, pos = { x = -21.722, y = 273.781, z = 2974.700 }, rot = { x = 21.847, y = 256.035, z = 56.251 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 130015, gadget_id = 70230113, pos = { x = -21.075, y = 273.896, z = 2974.687 }, rot = { x = 17.886, y = 348.919, z = 79.651 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 130016, gadget_id = 70320004, pos = { x = -16.817, y = 274.525, z = 2983.191 }, rot = { x = 355.427, y = 117.135, z = 356.346 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 130017, gadget_id = 70220103, pos = { x = -16.589, y = 375.825, z = 2990.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 130019, shape = RegionShape.SPHERE, radius = 2, pos = { x = -16.589, y = 376.592, z = 2990.772 }, area_id = 20 }
}

-- 触发器
triggers = {
	-- 删除勾爪
	{ config_id = 1130007, name = "GROUP_LOAD_130007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_130007", action = "action_EVENT_GROUP_LOAD_130007", trigger_count = 0 },
	{ config_id = 1130008, name = "GROUP_LOAD_130008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_130008", action = "action_EVENT_GROUP_LOAD_130008", trigger_count = 0 },
	{ config_id = 1130010, name = "GADGET_STATE_CHANGE_130010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130010", action = "action_EVENT_GADGET_STATE_CHANGE_130010", trigger_count = 0 },
	{ config_id = 1130019, name = "ENTER_REGION_130019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_130019" }
}

-- 变量
variables = {
	{ config_id = 2, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 130014, gadget_id = 70290501, pos = { x = -16.589, y = 376.592, z = 2990.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
	},
	triggers = {
		{ config_id = 1130006, name = "ANY_GADGET_DIE_130006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_130006", action = "action_EVENT_ANY_GADGET_DIE_130006" }
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
	end_suite = 2,
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
		gadgets = { 130001, 130002, 130003, 130004, 130013, 130015, 130016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_130010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 130001, 130002, 130003, 130004, 130011, 130012, 130013, 130015, 130017 },
		regions = { 130019 },
		triggers = { "GROUP_LOAD_130007", "GROUP_LOAD_130008", "ENTER_REGION_130019" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_130007(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_130007(context, evt)
	-- 创建id为130011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 130011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为130012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 130012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为130017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 130017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_130008(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_130008(context, evt)
	-- 改变指定group组133302065中， configid为65012的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133302065, 65012, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建id为130005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 130005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130010(context, evt)
	if 130016 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130010(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302130, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-16.58881, y=375.8253, z=2990.772}，持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-16.58881, y=375.8253, z=2990.772}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_130019(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为130005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 130005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 改变指定group组133302065中， configid为65012的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133302065, 65012, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "paimon1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "paimon1", 1, 133302487) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 130001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 130002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 130003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 130013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 130015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end