-- 基础信息
local base_info = {
	group_id = 133304499
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 499012, monster_id = 26010101, pos = { x = -1455.796, y = 206.975, z = 2523.533 }, rot = { x = 0.000, y = 112.469, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	{ config_id = 499013, monster_id = 26010101, pos = { x = -1480.836, y = 209.554, z = 2522.682 }, rot = { x = 0.000, y = 90.882, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	{ config_id = 499015, monster_id = 26010101, pos = { x = -1505.633, y = 210.348, z = 2535.727 }, rot = { x = 0.000, y = 43.829, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 499001, gadget_id = 70310198, pos = { x = -1418.226, y = 204.181, z = 2519.936 }, rot = { x = 13.401, y = 224.813, z = 12.511 }, level = 30, area_id = 21 },
	{ config_id = 499002, gadget_id = 70310200, pos = { x = -1418.138, y = 206.529, z = 2522.655 }, rot = { x = 0.000, y = 44.041, z = 0.000 }, level = 30, area_id = 21 },
	-- 1号移动
	{ config_id = 499003, gadget_id = 70290531, pos = { x = -1421.325, y = 205.736, z = 2521.588 }, rot = { x = 0.000, y = 351.075, z = 0.000 }, level = 30, route_id = 330400088, area_id = 21 },
	{ config_id = 499004, gadget_id = 70211150, pos = { x = -1508.465, y = 209.995, z = 2532.343 }, rot = { x = 356.556, y = 93.983, z = 357.970 }, level = 26, chest_drop_id = 21910044, drop_count = 1, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 21 },
	-- 2号移动
	{ config_id = 499005, gadget_id = 70290531, pos = { x = -1451.057, y = 208.044, z = 2525.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330400089, area_id = 21 },
	-- 3号移动
	{ config_id = 499006, gadget_id = 70290531, pos = { x = -1478.974, y = 210.543, z = 2519.235 }, rot = { x = 0.000, y = 60.975, z = 0.000 }, level = 30, route_id = 330400090, area_id = 21 },
	{ config_id = 499014, gadget_id = 70310198, pos = { x = -1476.812, y = 209.579, z = 2527.615 }, rot = { x = 9.492, y = 184.962, z = 1.358 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1499007, name = "ANY_MONSTER_DIE_499007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_499007", action = "action_EVENT_ANY_MONSTER_DIE_499007", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1499008, name = "GADGET_STATE_CHANGE_499008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499008", action = "action_EVENT_GADGET_STATE_CHANGE_499008", trigger_count = 0 },
	{ config_id = 1499009, name = "ANY_MONSTER_DIE_499009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_499009", action = "action_EVENT_ANY_MONSTER_DIE_499009", trigger_count = 0 },
	{ config_id = 1499010, name = "ANY_MONSTER_DIE_499010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_499010", action = "action_EVENT_ANY_MONSTER_DIE_499010", trigger_count = 0 },
	{ config_id = 1499011, name = "GADGET_STATE_CHANGE_499011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499011", action = "action_EVENT_GADGET_STATE_CHANGE_499011", trigger_count = 0 },
	{ config_id = 1499016, name = "GADGET_STATE_CHANGE_499016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499016", action = "action_EVENT_GADGET_STATE_CHANGE_499016", trigger_count = 0 },
	{ config_id = 1499017, name = "GADGET_STATE_CHANGE_499017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499017", action = "action_EVENT_GADGET_STATE_CHANGE_499017", trigger_count = 0 }
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
	io_type = 1,
	suite = 1,
	end_suite = 3,
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
			{ config_id = 499001, state = 0 },
			{ config_id = 499002, state = 0 },
			{ config_id = 499014, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_499008" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 499003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_499011" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 499001, state = 0 },
			{ config_id = 499002, state = 201 },
			{ config_id = 499004, state = 0 },
			{ config_id = 499014, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 499005, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_499016" },
		npcs = { },
		variables = {
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 499006, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_499017" },
		npcs = { },
		variables = {
		}
	},
	[6] = {
		gadgets = {
		},
		monsters = {
			{ config_id = 499012 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_499007" },
		npcs = { },
		variables = {
		}
	},
	[7] = {
		gadgets = {
		},
		monsters = {
			{ config_id = 499013 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_499009" },
		npcs = { },
		variables = {
		}
	},
	[8] = {
		gadgets = {
		},
		monsters = {
			{ config_id = 499015 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_499010" },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_499007(context, evt)
	--判断死亡怪物的configid是否为 499012
	if evt.param1 ~= 499012 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_499007(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304499, 4, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_499008(context, evt)
	if 499002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499008(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304499, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30006, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_499009(context, evt)
	--判断死亡怪物的configid是否为 499013
	if evt.param1 ~= 499013 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_499009(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304499, 5, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_499010(context, evt)
	--判断死亡怪物的configid是否为 499015
	if evt.param1 ~= 499015 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_499010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133304499, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_499011(context, evt)
	if 499003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499011(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304499, 6, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_499016(context, evt)
	if 499005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499016(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304499, 7, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_499017(context, evt)
	if 499006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499017(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304499, 8, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end