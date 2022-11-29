-- 基础信息
local base_info = {
	group_id = 133210514
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 514005, monster_id = 20050501, pos = { x = -3760.728, y = 149.445, z = -1137.604 }, rot = { x = 0.000, y = 112.187, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514006, monster_id = 20050701, pos = { x = -3759.460, y = 149.445, z = -1135.195 }, rot = { x = 0.000, y = 27.675, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514011, monster_id = 20050501, pos = { x = -3801.718, y = 149.430, z = -1091.094 }, rot = { x = 0.000, y = 194.650, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514012, monster_id = 20050701, pos = { x = -3800.560, y = 149.430, z = -1088.747 }, rot = { x = 0.000, y = 110.137, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514013, monster_id = 20050501, pos = { x = -3759.745, y = 149.430, z = -1093.611 }, rot = { x = 0.000, y = 194.650, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514014, monster_id = 20050201, pos = { x = -3760.172, y = 149.430, z = -1090.457 }, rot = { x = 0.000, y = 299.021, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514015, monster_id = 20050801, pos = { x = -3802.719, y = 149.436, z = -1132.530 }, rot = { x = 0.000, y = 194.650, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514016, monster_id = 20050401, pos = { x = -3803.146, y = 149.436, z = -1129.376 }, rot = { x = 0.000, y = 299.021, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514029, monster_id = 20050301, pos = { x = -3778.790, y = 148.676, z = -1137.038 }, rot = { x = 0.000, y = 75.185, z = 0.000 }, level = 28, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514030, monster_id = 20050301, pos = { x = -3757.179, y = 148.729, z = -1119.807 }, rot = { x = 0.000, y = 176.962, z = 0.000 }, level = 28, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514031, monster_id = 20050301, pos = { x = -3749.182, y = 148.823, z = -1121.787 }, rot = { x = 0.000, y = 202.649, z = 0.000 }, level = 28, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514041, monster_id = 20050501, pos = { x = -3760.728, y = 149.445, z = -1137.604 }, rot = { x = 0.000, y = 112.187, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514042, monster_id = 20050201, pos = { x = -3759.460, y = 149.445, z = -1135.195 }, rot = { x = 0.000, y = 27.675, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514043, monster_id = 20050301, pos = { x = -3778.915, y = 148.732, z = -1137.779 }, rot = { x = 0.000, y = 103.059, z = 0.000 }, level = 28, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514044, monster_id = 20050301, pos = { x = -3759.048, y = 148.763, z = -1118.735 }, rot = { x = 0.000, y = 170.630, z = 0.000 }, level = 28, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514045, monster_id = 20050301, pos = { x = -3749.923, y = 148.791, z = -1121.229 }, rot = { x = 0.000, y = 202.649, z = 0.000 }, level = 28, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514046, monster_id = 20050801, pos = { x = -3760.728, y = 149.445, z = -1137.604 }, rot = { x = 0.000, y = 112.187, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514047, monster_id = 20050401, pos = { x = -3759.460, y = 149.445, z = -1135.195 }, rot = { x = 0.000, y = 27.675, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514048, monster_id = 20050301, pos = { x = -3749.119, y = 148.753, z = -1120.893 }, rot = { x = 0.000, y = 212.881, z = 0.000 }, level = 28, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514049, monster_id = 20050301, pos = { x = -3778.528, y = 148.631, z = -1135.687 }, rot = { x = 0.000, y = 97.856, z = 0.000 }, level = 28, drop_id = 1000100, affix = { 5019 }, area_id = 17 },
	{ config_id = 514050, monster_id = 20050301, pos = { x = -3756.729, y = 148.701, z = -1119.247 }, rot = { x = 0.000, y = 182.414, z = 0.000 }, level = 28, drop_id = 1000100, affix = { 5019 }, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 第一个平台刷怪
	{ config_id = 1514001, name = "VARIABLE_CHANGE_514001", event = EventType.EVENT_VARIABLE_CHANGE, source = "ActiveCount1", condition = "condition_EVENT_VARIABLE_CHANGE_514001", action = "action_EVENT_VARIABLE_CHANGE_514001", trigger_count = 0 },
	-- 第二个平台刷怪
	{ config_id = 1514002, name = "VARIABLE_CHANGE_514002", event = EventType.EVENT_VARIABLE_CHANGE, source = "ActiveCount2", condition = "condition_EVENT_VARIABLE_CHANGE_514002", action = "action_EVENT_VARIABLE_CHANGE_514002", trigger_count = 0 },
	-- 第三个平台刷怪
	{ config_id = 1514003, name = "VARIABLE_CHANGE_514003", event = EventType.EVENT_VARIABLE_CHANGE, source = "ActiveCount3", condition = "condition_EVENT_VARIABLE_CHANGE_514003", action = "action_EVENT_VARIABLE_CHANGE_514003", trigger_count = 0 },
	-- 完成时
	{ config_id = 1514017, name = "VARIABLE_CHANGE_514017", event = EventType.EVENT_VARIABLE_CHANGE, source = "Success", condition = "condition_EVENT_VARIABLE_CHANGE_514017", action = "action_EVENT_VARIABLE_CHANGE_514017", trigger_count = 0 },
	-- 第一次刷怪时reminder
	{ config_id = 1514018, name = "VARIABLE_CHANGE_514018", event = EventType.EVENT_VARIABLE_CHANGE, source = "reminder", condition = "condition_EVENT_VARIABLE_CHANGE_514018", action = "action_EVENT_VARIABLE_CHANGE_514018", trigger_count = 0 },
	{ config_id = 1514028, name = "MONSTER_TIDE_DIE_514028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1111", condition = "condition_EVENT_MONSTER_TIDE_DIE_514028", action = "action_EVENT_MONSTER_TIDE_DIE_514028", trigger_count = 0 },
	{ config_id = 1514032, name = "ANY_MONSTER_DIE_514032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_514032", action = "action_EVENT_ANY_MONSTER_DIE_514032", trigger_count = 0 },
	{ config_id = 1514033, name = "ANY_MONSTER_DIE_514033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_514033", action = "action_EVENT_ANY_MONSTER_DIE_514033", trigger_count = 0 },
	{ config_id = 1514034, name = "VARIABLE_CHANGE_514034", event = EventType.EVENT_VARIABLE_CHANGE, source = "Monster1", condition = "condition_EVENT_VARIABLE_CHANGE_514034", action = "action_EVENT_VARIABLE_CHANGE_514034", trigger_count = 0 },
	{ config_id = 1514035, name = "ANY_MONSTER_DIE_514035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_514035", action = "action_EVENT_ANY_MONSTER_DIE_514035", trigger_count = 0 },
	{ config_id = 1514036, name = "ANY_MONSTER_DIE_514036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_514036", action = "action_EVENT_ANY_MONSTER_DIE_514036", trigger_count = 0 },
	{ config_id = 1514037, name = "VARIABLE_CHANGE_514037", event = EventType.EVENT_VARIABLE_CHANGE, source = "Monster2", condition = "condition_EVENT_VARIABLE_CHANGE_514037", action = "action_EVENT_VARIABLE_CHANGE_514037", trigger_count = 0 },
	{ config_id = 1514038, name = "ANY_MONSTER_DIE_514038", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_514038", action = "action_EVENT_ANY_MONSTER_DIE_514038", trigger_count = 0 },
	{ config_id = 1514039, name = "ANY_MONSTER_DIE_514039", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_514039", action = "action_EVENT_ANY_MONSTER_DIE_514039", trigger_count = 0 },
	{ config_id = 1514040, name = "VARIABLE_CHANGE_514040", event = EventType.EVENT_VARIABLE_CHANGE, source = "Monster3", condition = "condition_EVENT_VARIABLE_CHANGE_514040", action = "action_EVENT_VARIABLE_CHANGE_514040", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "ActiveCount1", value = 0, no_refresh = true },
	{ config_id = 2, name = "ActiveCount2", value = 0, no_refresh = true },
	{ config_id = 3, name = "ActiveCount3", value = 0, no_refresh = true },
	{ config_id = 4, name = "ActiveCount4", value = 0, no_refresh = true },
	{ config_id = 5, name = "Success", value = 0, no_refresh = true },
	{ config_id = 6, name = "reminder", value = 0, no_refresh = true },
	{ config_id = 7, name = "Monster1", value = 0, no_refresh = true },
	{ config_id = 8, name = "Monster2", value = 0, no_refresh = true },
	{ config_id = 9, name = "Monster3", value = 0, no_refresh = true }
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
	end_suite = 0,
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
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_514001", "VARIABLE_CHANGE_514002", "VARIABLE_CHANGE_514003", "VARIABLE_CHANGE_514017", "VARIABLE_CHANGE_514018" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "ActiveCount1", value = 0, no_refresh = true },
			{ config_id = 2, name = "ActiveCount2", value = 0, no_refresh = true },
			{ config_id = 3, name = "ActiveCount3", value = 0, no_refresh = true },
			{ config_id = 4, name = "ActiveCount4", value = 0, no_refresh = true },
			{ config_id = 5, name = "Success", value = 0, no_refresh = true },
			{ config_id = 6, name = "reminder", value = 0, no_refresh = true },
			{ config_id = 7, name = "Monster1", value = 0, no_refresh = true },
			{ config_id = 8, name = "Monster2", value = 0, no_refresh = true },
			{ config_id = 9, name = "Monster3", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
		},
		monsters = {
			{ config_id = 514015 },
			{ config_id = 514016 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_514032", "ANY_MONSTER_DIE_514033", "VARIABLE_CHANGE_514034" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "ActiveCount1", value = 0, no_refresh = true },
			{ config_id = 2, name = "ActiveCount2", value = 0, no_refresh = true },
			{ config_id = 3, name = "ActiveCount3", value = 0, no_refresh = true },
			{ config_id = 4, name = "ActiveCount4", value = 0, no_refresh = true },
			{ config_id = 5, name = "Success", value = 0, no_refresh = true },
			{ config_id = 6, name = "reminder", value = 0, no_refresh = true },
			{ config_id = 7, name = "Monster1", value = 0, no_refresh = true },
			{ config_id = 8, name = "Monster2", value = 0, no_refresh = true },
			{ config_id = 9, name = "Monster3", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
			{ config_id = 514011 },
			{ config_id = 514012 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_514035", "ANY_MONSTER_DIE_514036", "VARIABLE_CHANGE_514037" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "ActiveCount1", value = 0, no_refresh = true },
			{ config_id = 2, name = "ActiveCount2", value = 0, no_refresh = true },
			{ config_id = 3, name = "ActiveCount3", value = 0, no_refresh = true },
			{ config_id = 4, name = "ActiveCount4", value = 0, no_refresh = true },
			{ config_id = 5, name = "Success", value = 0, no_refresh = true },
			{ config_id = 6, name = "reminder", value = 0, no_refresh = true },
			{ config_id = 7, name = "Monster1", value = 0, no_refresh = true },
			{ config_id = 8, name = "Monster2", value = 0, no_refresh = true },
			{ config_id = 9, name = "Monster3", value = 0, no_refresh = true }
		}
	},
	[4] = {
		gadgets = {
		},
		monsters = {
			{ config_id = 514013 },
			{ config_id = 514014 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_514038", "ANY_MONSTER_DIE_514039", "VARIABLE_CHANGE_514040" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "ActiveCount1", value = 0, no_refresh = true },
			{ config_id = 2, name = "ActiveCount2", value = 0, no_refresh = true },
			{ config_id = 3, name = "ActiveCount3", value = 0, no_refresh = true },
			{ config_id = 4, name = "ActiveCount4", value = 0, no_refresh = true },
			{ config_id = 5, name = "Success", value = 0, no_refresh = true },
			{ config_id = 6, name = "reminder", value = 0, no_refresh = true },
			{ config_id = 7, name = "Monster1", value = 0, no_refresh = true },
			{ config_id = 8, name = "Monster2", value = 0, no_refresh = true },
			{ config_id = 9, name = "Monster3", value = 0, no_refresh = true }
		}
	},
	[5] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { "MONSTER_TIDE_DIE_514028" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "ActiveCount1", value = 0, no_refresh = true },
			{ config_id = 2, name = "ActiveCount2", value = 0, no_refresh = true },
			{ config_id = 3, name = "ActiveCount3", value = 0, no_refresh = true },
			{ config_id = 4, name = "ActiveCount4", value = 0, no_refresh = true },
			{ config_id = 5, name = "Success", value = 0, no_refresh = true },
			{ config_id = 6, name = "reminder", value = 0, no_refresh = true },
			{ config_id = 7, name = "Monster1", value = 0, no_refresh = true },
			{ config_id = 8, name = "Monster2", value = 0, no_refresh = true },
			{ config_id = 9, name = "Monster3", value = 0, no_refresh = true }
		}
	},
	[6] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "ActiveCount1", value = 0, no_refresh = true },
			{ config_id = 2, name = "ActiveCount2", value = 0, no_refresh = true },
			{ config_id = 3, name = "ActiveCount3", value = 0, no_refresh = true },
			{ config_id = 4, name = "ActiveCount4", value = 0, no_refresh = true },
			{ config_id = 5, name = "Success", value = 0, no_refresh = true },
			{ config_id = 6, name = "reminder", value = 0, no_refresh = true },
			{ config_id = 7, name = "Monster1", value = 0, no_refresh = true },
			{ config_id = 8, name = "Monster2", value = 0, no_refresh = true },
			{ config_id = 9, name = "Monster3", value = 0, no_refresh = true }
		}
	},
	[7] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "ActiveCount1", value = 0, no_refresh = true },
			{ config_id = 2, name = "ActiveCount2", value = 0, no_refresh = true },
			{ config_id = 3, name = "ActiveCount3", value = 0, no_refresh = true },
			{ config_id = 4, name = "ActiveCount4", value = 0, no_refresh = true },
			{ config_id = 5, name = "Success", value = 0, no_refresh = true },
			{ config_id = 6, name = "reminder", value = 0, no_refresh = true },
			{ config_id = 7, name = "Monster1", value = 0, no_refresh = true },
			{ config_id = 8, name = "Monster2", value = 0, no_refresh = true },
			{ config_id = 9, name = "Monster3", value = 0, no_refresh = true }
		}
	},
	[8] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "ActiveCount1", value = 0, no_refresh = true },
			{ config_id = 2, name = "ActiveCount2", value = 0, no_refresh = true },
			{ config_id = 3, name = "ActiveCount3", value = 0, no_refresh = true },
			{ config_id = 4, name = "ActiveCount4", value = 0, no_refresh = true },
			{ config_id = 5, name = "Success", value = 0, no_refresh = true },
			{ config_id = 6, name = "reminder", value = 0, no_refresh = true },
			{ config_id = 7, name = "Monster1", value = 0, no_refresh = true },
			{ config_id = 8, name = "Monster2", value = 0, no_refresh = true },
			{ config_id = 9, name = "Monster3", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_514001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ActiveCount1"为1
	if ScriptLib.GetGroupVariableValue(context, "ActiveCount1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_514001(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133210514, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 针对当前group内变量名为 "reminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-3802.44，149.4，-1131），持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3802.44, y=149.4, z=-1131}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_514002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ActiveCount2"为1
	if ScriptLib.GetGroupVariableValue(context, "ActiveCount2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_514002(context, evt)
	-- 针对当前group内变量名为 "reminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133210514, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 触发镜头注目，注目位置为坐标（-3801.2，149.4，-1089.9），持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3801.2, y=149.4, z=-1089.9}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_514003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ActiveCount3"为1
	if ScriptLib.GetGroupVariableValue(context, "ActiveCount3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_514003(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133210514, 4, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 针对当前group内变量名为 "reminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-3759.1，149.5，-1091.7），持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3759.1, y=149.5, z=-1091.7}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_514017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Success"为1
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_514017(context, evt)
	-- 创建编号为1111（该怪物潮的识别id)的怪物潮，创建怪物总数为15，场上怪物最少1只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1111, 133210514, {514005,514006,514029,514030,514031,514041,514042,514043,514044,514045,514046,514047,514048,514049,514050}, 15, 1, 5) then
		return -1
	end
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133210514, 5, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_514018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_514018(context, evt)
	-- 调用提示id为 32100204 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100204) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_514028(context, evt)
	if 15 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_514028(context, evt)
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_514032(context, evt)
	if 514015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_514032(context, evt)
	-- 针对当前group内变量名为 "Monster1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Monster1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_514033(context, evt)
	if 514016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_514033(context, evt)
	-- 针对当前group内变量名为 "Monster1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Monster1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_514034(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Monster1"为2
	if ScriptLib.GetGroupVariableValue(context, "Monster1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_514034(context, evt)
	-- 改变指定group组133210391中， configid为391004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133210391, 391004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "StatueCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "StatueCount", 1, 133210391) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_514035(context, evt)
	if 514011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_514035(context, evt)
	-- 针对当前group内变量名为 "Monster2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Monster2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_514036(context, evt)
	if 514012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_514036(context, evt)
	-- 针对当前group内变量名为 "Monster2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Monster2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_514037(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Monster2"为2
	if ScriptLib.GetGroupVariableValue(context, "Monster2") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_514037(context, evt)
	-- 改变指定group组133210391中， configid为391005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133210391, 391005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "StatueCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "StatueCount", 1, 133210391) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_514038(context, evt)
	if 514013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_514038(context, evt)
	-- 针对当前group内变量名为 "Monster3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Monster3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_514039(context, evt)
	if 514014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_514039(context, evt)
	-- 针对当前group内变量名为 "Monster3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Monster3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_514040(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Monster3"为2
	if ScriptLib.GetGroupVariableValue(context, "Monster3") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_514040(context, evt)
	-- 改变指定group组133210391中， configid为391001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133210391, 391001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "StatueCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "StatueCount", 1, 133210391) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end