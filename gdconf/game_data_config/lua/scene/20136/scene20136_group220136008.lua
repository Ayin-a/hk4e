-- 基础信息
local base_info = {
	group_id = 220136008
}

-- DEFS_MISCS
local        defs = {
	is_movable = 1,
	--连线形态
	patterns = 
	{
			--形态1
			[1] = {
				[8001] = {connect =8004 , point_array = 8, point_id = {1}} ,
			[8002] = {connect =8006 , point_array = 8, point_id = {2}} ,
			[8003] = {connect =8002 , point_array = 8, point_id = {3}} ,
			[8004] = {connect =8003, point_array = 8, point_id = {4}} ,
			[8005] = {connect =8006, point_array = 8, point_id = {5}} ,
			[8006] = {connect =8005, point_array = 8, point_id = {6}} ,
			
			},
			--形态2
			[2] = {
				[8001] = {connect =8004 , point_array = 0, point_id = {0}} ,
			[8002] = {connect =8006 , point_array = 0, point_id = {0}} ,
			[8003] = {connect =8002 , point_array = 8, point_id = {1}} ,
			[8004] = {connect =8003, point_array = 0, point_id = {0}} ,
			[8005] = {connect =8006, point_array = 0, point_id = {0}} ,
			[8006] = {connect =8005, point_array = 0, point_id = {0}} ,
			
			},
			[3] = {
				[8001] = {connect =8004 , point_array = 0, point_id = {0}} ,
			[8002] = {connect =8006 , point_array = 0, point_id = {0}} ,
			[8003] = {connect =8002 , point_array = 8, point_id = {2}} ,
			[8004] = {connect =8003, point_array = 0, point_id = {0}} ,
			[8005] = {connect =8006, point_array = 0, point_id = {0}} ,
			[8006] = {connect =8005, point_array = 0, point_id = {0}} ,
			
			},
			[4] = {
				[8001] = {connect =8004 , point_array = 0, point_id = {0}} ,
			[8002] = {connect =8006 , point_array = 0, point_id = {0}} ,
			[8003] = {connect =8002 , point_array = 8, point_id = {3}} ,
			[8004] = {connect =8003, point_array = 0, point_id = {0}} ,
			[8005] = {connect =8006, point_array = 0, point_id = {0}} ,
			[8006] = {connect =8005, point_array = 0, point_id = {0}} ,
			
			},
			[5] = {
				[8001] = {connect =8004 , point_array = 0, point_id = {0}} ,
			[8002] = {connect =8006 , point_array = 0, point_id = {0}} ,
			[8003] = {connect =8002 , point_array = 8, point_id = {4}} ,
			[8004] = {connect =8003, point_array = 0, point_id = {0}} ,
			[8005] = {connect =8006, point_array = 0, point_id = {0}} ,
			[8006] = {connect =8005, point_array = 0, point_id = {0}} ,
			
			},
			[6] = {
				[8001] = {connect =8004 , point_array = 0, point_id = {0}} ,
			[8002] = {connect =8006 , point_array = 0, point_id = {0}} ,
			[8003] = {connect =8002 , point_array = 8, point_id = {5}} ,
			[8004] = {connect =8003, point_array = 0, point_id = {0}} ,
			[8005] = {connect =8006, point_array = 0, point_id = {0}} ,
			[8006] = {connect =8005, point_array = 0, point_id = {0}} ,
			
			},
			[7] = {
				[8001] = {connect =8004 , point_array = 0, point_id = {0}} ,
			[8002] = {connect =8006 , point_array = 0, point_id = {0}} ,
			[8003] = {connect =8002 , point_array = 8, point_id = {6}} ,
			[8004] = {connect =8003, point_array = 0, point_id = {0}} ,
			[8005] = {connect =8006, point_array = 0, point_id = {0}} ,
			[8006] = {connect =8005, point_array = 0, point_id = {0}} ,
			
			},
			[8] = {
				[8001] = {connect =8004 , point_array = 0, point_id = {0}} ,
			[8002] = {connect =8006 , point_array = 0, point_id = {0}} ,
			[8003] = {connect =8002 , point_array = 8, point_id = {7}} ,
			[8004] = {connect =8003, point_array = 0, point_id = {0}} ,
			[8005] = {connect =8006, point_array = 0, point_id = {0}} ,
			[8006] = {connect =8005, point_array = 0, point_id = {0}} ,
			
			},
			[9]= {
				[8001] = {connect =8004 , point_array = 0, point_id = {0}} ,
			[8002] = {connect =8006 , point_array = 0, point_id = {0}} ,
			[8003] = {connect =8002 , point_array = 8, point_id = {8}} ,
			[8004] = {connect =8003, point_array = 0, point_id = {0}} ,
			[8005] = {connect =8006, point_array = 0, point_id = {0}} ,
			[8006] = {connect =8005, point_array = 0, point_id = {0}} ,
			
			},
			[10] = {
				[8001] = {connect =8004 , point_array = 0, point_id = {0}} ,
			[8002] = {connect =8006 , point_array = 0, point_id = {0}} ,
			[8003] = {connect =8002 , point_array = 8, point_id = {9}} ,
			[8004] = {connect =8003, point_array = 0, point_id = {0}} ,
			[8005] = {connect =8006, point_array = 0, point_id = {0}} ,
			[8006] = {connect =8005, point_array = 0, point_id = {0}} ,
			
			},
			
	}

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
	[8001] = { config_id = 8001, gadget_id = 70310231, pos = { x = 215.097, y = 50.907, z = 632.168 }, rot = { x = 0.000, y = 0.000, z = 41.662 }, level = 1, persistent = true, is_use_point_array = true },
	[8002] = { config_id = 8002, gadget_id = 70310231, pos = { x = 210.124, y = 46.482, z = 642.019 }, rot = { x = 0.000, y = 0.000, z = 41.662 }, level = 1, persistent = true, is_use_point_array = true },
	[8003] = { config_id = 8003, gadget_id = 70310231, pos = { x = 213.581, y = 49.558, z = 629.633 }, rot = { x = 0.000, y = 0.000, z = 41.662 }, level = 1, persistent = true, is_use_point_array = true },
	[8004] = { config_id = 8004, gadget_id = 70310231, pos = { x = 211.247, y = 47.481, z = 629.311 }, rot = { x = 0.000, y = 0.000, z = 41.662 }, level = 1, persistent = true, is_use_point_array = true },
	[8005] = { config_id = 8005, gadget_id = 70310231, pos = { x = 203.572, y = 40.652, z = 629.491 }, rot = { x = 0.000, y = 0.000, z = 41.662 }, level = 1, persistent = true, is_use_point_array = true },
	[8006] = { config_id = 8006, gadget_id = 70310231, pos = { x = 203.505, y = 40.592, z = 641.963 }, rot = { x = 0.000, y = 0.000, z = 41.662 }, level = 1, persistent = true, is_use_point_array = true },
	[8007] = { config_id = 8007, gadget_id = 70310388, pos = { x = 284.763, y = 0.000, z = 635.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[8008] = { config_id = 8008, gadget_id = 70310389, pos = { x = 208.680, y = 45.197, z = 635.696 }, rot = { x = 0.000, y = 0.000, z = 41.662 }, level = 1 },
	-- 上
	[8009] = { config_id = 8009, gadget_id = 70310436, pos = { x = 278.367, y = 0.000, z = 635.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 左
	[8010] = { config_id = 8010, gadget_id = 70310436, pos = { x = 284.973, y = 0.000, z = 627.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true },
	-- 右
	[8011] = { config_id = 8011, gadget_id = 70310436, pos = { x = 284.973, y = 0.000, z = 643.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true },
	-- 下
	[8012] = { config_id = 8012, gadget_id = 70310436, pos = { x = 291.971, y = 0.000, z = 635.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true },
	[8014] = { config_id = 8014, gadget_id = 70310439, pos = { x = 257.735, y = 0.000, z = 633.710 }, rot = { x = 0.000, y = 84.129, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true }
}

-- 区域
regions = {
	[8015] = { config_id = 8015, shape = RegionShape.SPHERE, radius = 5, pos = { x = 257.735, y = 0.000, z = 633.710 } }
}

-- 触发器
triggers = {
	{ config_id = 1008015, name = "ENTER_REGION_8015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8015", action = "action_EVENT_ENTER_REGION_8015", trigger_count = 0 },
	{ config_id = 1008016, name = "GADGET_STATE_CHANGE_8016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8016", action = "action_EVENT_GADGET_STATE_CHANGE_8016", trigger_count = 0 },
	{ config_id = 1008017, name = "GADGET_STATE_CHANGE_8017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8017", action = "action_EVENT_GADGET_STATE_CHANGE_8017", trigger_count = 0 },
	{ config_id = 1008018, name = "GADGET_STATE_CHANGE_8018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8018", action = "action_EVENT_GADGET_STATE_CHANGE_8018", trigger_count = 0 },
	{ config_id = 1008019, name = "GADGET_STATE_CHANGE_8019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8019", action = "action_EVENT_GADGET_STATE_CHANGE_8019", trigger_count = 0 },
	-- 踩上
	{ config_id = 1008020, name = "GADGET_STATE_CHANGE_8020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8020", action = "action_EVENT_GADGET_STATE_CHANGE_8020", trigger_count = 0 },
	-- 踩左
	{ config_id = 1008021, name = "GADGET_STATE_CHANGE_8021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8021", action = "action_EVENT_GADGET_STATE_CHANGE_8021", trigger_count = 0 },
	-- 踩右
	{ config_id = 1008022, name = "GADGET_STATE_CHANGE_8022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8022", action = "action_EVENT_GADGET_STATE_CHANGE_8022", trigger_count = 0 },
	-- 踩下
	{ config_id = 1008023, name = "GADGET_STATE_CHANGE_8023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8023", action = "action_EVENT_GADGET_STATE_CHANGE_8023", trigger_count = 0 },
	{ config_id = 1008025, name = "PLATFORM_REACH_POINT_8025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8025", action = "action_EVENT_PLATFORM_REACH_POINT_8025", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "curpoint", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 8013, gadget_id = 70211021, pos = { x = 266.928, y = 0.000, z = 634.394 }, rot = { x = 0.000, y = 266.530, z = 0.000 }, level = 16, drop_tag = "战斗高级群岛", isOneoff = true, persistent = true }
	},
	triggers = {
		{ config_id = 1008024, name = "VARIABLE_CHANGE_8024", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8024", action = "action_EVENT_VARIABLE_CHANGE_8024", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		gadgets = { 8001, 8002, 8003, 8004, 8005, 8006, 8007, 8008, 8009, 8010, 8011, 8012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_8016", "GADGET_STATE_CHANGE_8017", "GADGET_STATE_CHANGE_8018", "GADGET_STATE_CHANGE_8019", "GADGET_STATE_CHANGE_8020", "GADGET_STATE_CHANGE_8021", "GADGET_STATE_CHANGE_8022", "GADGET_STATE_CHANGE_8023", "PLATFORM_REACH_POINT_8025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 8014 },
		regions = { 8015 },
		triggers = { "ENTER_REGION_8015" },
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
function condition_EVENT_ENTER_REGION_8015(context, evt)
	if evt.param1 ~= 8015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "dreamback2") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8016(context, evt)
	if 8009 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8016(context, evt)
	-- 将configid为 8009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8017(context, evt)
	if 8010 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8017(context, evt)
	-- 将configid为 8010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8018(context, evt)
	if 8011 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8018(context, evt)
	-- 将configid为 8011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8019(context, evt)
	if 8012 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8019(context, evt)
	-- 将configid为 8012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8020(context, evt)
	if 8009 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8020(context, evt)
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 4 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 2) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 1)
	
	end
	
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 5 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 3) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 2)
	
	end
	
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 6 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 4) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 3)
	
	end
	
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 7 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 5) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 4)
	
	end
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 8 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 6) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 5)
	
	end
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 9 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 7) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 6)
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8021(context, evt)
	if 8010 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8021(context, evt)
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 2 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 2) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 1)
	
	end
	
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 3 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 3) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 2)
	
	end
	
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 5 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 5) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 4)
	
	end
	
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 6 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 6) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 5)
	
	end
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 8 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 8) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 7)
	
	end
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 9then
	ScriptLib.SetGroupVariableValue(context, "pattern", 9) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 8)
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8022(context, evt)
	if 8011 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8022(context, evt)
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 1 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 3) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 2)
	
	end
	
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 2 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 4) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 3)
	
	end
	
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 4 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 6) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 5)
	
	end
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 5 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 7) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 6)
	
	end
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 7 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 9) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 8)
	
	end
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 8 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 10) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 9)
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8023(context, evt)
	if 8012 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8023(context, evt)
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 1 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 5) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 4)
	
	end
	
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 2 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 6) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 5)
	
	end
	
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 3 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 7) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 6)
	
	end
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 4 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 8) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 7)
	
	end
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 5 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 9) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 8)
	
	end
	if ScriptLib.GetGroupVariableValue(context,"curpoint") == 6 then
	ScriptLib.SetGroupVariableValue(context, "pattern", 10) 
	
	ScriptLib.SetGroupVariableValue(context, "curpoint", 9)
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_8025(context, evt)
	-- 判断是gadgetid 为 8003的移动平台，是否到达了8 的点集中的 5 点
	
	if 8003 ~= evt.param1 then
	  return false
	end
	
	if 8 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_8025(context, evt)
	-- 触发镜头注目，注目位置为坐标（257，0，633），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=257, y=0, z=633}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136008, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 220136008, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V2_8/ConstellationPattern"