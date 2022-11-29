-- 基础信息
local base_info = {
	group_id = 199003149
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 149008, monster_id = 28030103, pos = { x = -757.464, y = 130.884, z = -34.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 403 },
	{ config_id = 149009, monster_id = 28020307, pos = { x = -753.486, y = 130.807, z = -32.741 }, rot = { x = 0.000, y = 10.490, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 403 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 149001, gadget_id = 70360005, pos = { x = -757.628, y = 130.795, z = -34.938 }, rot = { x = 1.441, y = 355.322, z = 340.815 }, level = 20, area_id = 403 },
	{ config_id = 149002, gadget_id = 70360005, pos = { x = -751.127, y = 130.745, z = -26.192 }, rot = { x = 358.510, y = 353.436, z = 10.129 }, level = 20, area_id = 403 },
	{ config_id = 149003, gadget_id = 70360358, pos = { x = -753.486, y = 130.807, z = -32.741 }, rot = { x = 0.000, y = 355.283, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 149004, gadget_id = 70360005, pos = { x = -753.581, y = 130.625, z = -32.895 }, rot = { x = 2.946, y = 357.674, z = 8.736 }, level = 20, area_id = 403 },
	{ config_id = 149005, gadget_id = 70360358, pos = { x = -757.447, y = 130.979, z = -34.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 149006, gadget_id = 70211002, pos = { x = -743.006, y = 132.019, z = -25.174 }, rot = { x = 0.000, y = 221.106, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1149007, name = "GADGET_STATE_CHANGE_149007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149007", action = "action_EVENT_GADGET_STATE_CHANGE_149007", trigger_count = 0 },
	{ config_id = 1149010, name = "GADGET_STATE_CHANGE_149010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149010", action = "action_EVENT_GADGET_STATE_CHANGE_149010", trigger_count = 0 },
	{ config_id = 1149013, name = "GROUP_LOAD_149013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_149013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1149011, name = "GROUP_LOAD_149011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_149011", trigger_count = 0 },
		{ config_id = 1149012, name = "GROUP_REFRESH_149012", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_149012", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 2,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 149001, state = 0 },
			{ config_id = 149002, state = 0 },
			{ config_id = 149004, state = 0 },
			{ config_id = 149006, state = 101 }
		},
		monsters = {
			{ config_id = 149008 },
			{ config_id = 149009 }
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_149007", "GADGET_STATE_CHANGE_149010", "GROUP_LOAD_149013" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "finish", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 149001, state = 201 },
			{ config_id = 149002, state = 0 },
			{ config_id = 149003, state = 201, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 149004, state = 201 },
			{ config_id = 149005, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 149006, state = 101 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_149007", "GADGET_STATE_CHANGE_149010", "GROUP_LOAD_149013" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "finish", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "finish", value = 1, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_149007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003149, 149002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003149, 149001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003149, 149004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149007(context, evt)
	-- 将configid为 149006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_149010(context, evt)
	if 149006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199003149, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_149013(context, evt)
	 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003149) == 0 then
	if ScriptLib.GetGroupVariableValueByGroup(context, "weather", 199003100) == 1 then
	 ScriptLib.GoToFlowSuite(context, 199003149, 2)
		  else
			 ScriptLib.GoToFlowSuite(context, 199003149, 1)
			end
	else 
	  ScriptLib.GoToFlowSuite(context, 199003149, 3)
	end	  
	return 0
end