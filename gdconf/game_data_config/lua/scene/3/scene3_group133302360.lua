-- 基础信息
local base_info = {
	group_id = 133302360
}

-- Trigger变量
local defs = {
	gadget_id = 360004
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
	{ config_id = 360002, gadget_id = 70900050, pos = { x = -140.070, y = 200.558, z = 2650.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 360003, gadget_id = 70900050, pos = { x = -106.837, y = 200.836, z = 2626.778 }, rot = { x = 354.580, y = 355.285, z = 10.176 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 360004, gadget_id = 70211112, pos = { x = -127.678, y = 201.456, z = 2647.638 }, rot = { x = 0.000, y = 201.840, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestLocked, showcutscene = true, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 360006, gadget_id = 70310198, pos = { x = -100.239, y = 203.352, z = 2584.190 }, rot = { x = 0.000, y = 14.248, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 20 },
	{ config_id = 360007, gadget_id = 70330216, pos = { x = -124.943, y = 201.430, z = 2646.136 }, rot = { x = 3.238, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 360008, gadget_id = 70330199, pos = { x = -100.452, y = 203.513, z = 2583.606 }, rot = { x = 15.595, y = 6.817, z = 1.084 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
	{ config_id = 360009, gadget_id = 70330216, pos = { x = -130.805, y = 201.479, z = 2648.573 }, rot = { x = 11.557, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 360011, gadget_id = 70330218, pos = { x = -106.165, y = 200.279, z = 2627.632 }, rot = { x = 0.000, y = 43.376, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 360013, gadget_id = 70220103, pos = { x = -96.423, y = 204.309, z = 2592.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 360014, gadget_id = 70220103, pos = { x = -99.972, y = 206.499, z = 2619.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 360015, gadget_id = 70220103, pos = { x = -183.090, y = 209.949, z = 2614.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 360016, gadget_id = 70220103, pos = { x = -173.151, y = 206.566, z = 2695.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 360017, gadget_id = 70220103, pos = { x = -149.373, y = 234.090, z = 2705.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1360005, name = "GADGET_STATE_CHANGE_360005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_360005", action = "action_EVENT_GADGET_STATE_CHANGE_360005" },
	{ config_id = 1360010, name = "GADGET_STATE_CHANGE_360010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_360010", action = "action_EVENT_GADGET_STATE_CHANGE_360010", trigger_count = 0 },
	{ config_id = 1360012, name = "ANY_GADGET_DIE_360012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360012", action = "action_EVENT_ANY_GADGET_DIE_360012" },
	{ config_id = 1360018, name = "GADGET_STATE_CHANGE_360018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_360018", action = "action_EVENT_GADGET_STATE_CHANGE_360018", trigger_count = 0 },
	{ config_id = 1360019, name = "GROUP_LOAD_360019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_360019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 360001, gadget_id = 70900050, pos = { x = -71.557, y = 205.059, z = 2585.763 }, rot = { x = 14.174, y = 0.862, z = 6.923 }, level = 27, persistent = true, area_id = 20 }
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
		gadgets = { 360002, 360004, 360006, 360007, 360008, 360009, 360011, 360013, 360014, 360015, 360016, 360017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_360005", "GADGET_STATE_CHANGE_360010", "ANY_GADGET_DIE_360012", "GADGET_STATE_CHANGE_360018", "GROUP_LOAD_360019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_GADGET_STATE_CHANGE_360005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302360, 360002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302360, 360003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_360005(context, evt)
	-- 将configid为 360004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_360010(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 360008 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_360010(context, evt)
	-- 将configid为 360006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360012(context, evt)
	if 360011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360012(context, evt)
	-- 创建id为360003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 360003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_360018(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 360008 ~= evt.param2 then
		return false
	end
	if 3<1 or 3>3 then
	  return false
	end
	if 3 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 3 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 3 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_360018(context, evt)
	-- 将configid为 360006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_360019(context, evt)
	-- 将configid为 360006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end