-- 基础信息
local base_info = {
	group_id = 133304032
}

-- DEFS_MISCS
local defs = {
	maxPlayerEnergyLev = 4,
	titanRegion = 32001,
    
    -- todo: 保底判断一下各个位置的config id对应的是否是正确的gadget id
    cells = {
        -- 每一项均需严格遵循下述格式，没有line或者node则留空，不能不创建！
        -- [cell_config_id] = {cell = cell_config_id, lines = {line01_config_id, line02_config_id, ...}, nodes = {node01_config_id, ...}}
        [32003] = {cell = 32003, lines = {32007, 32031, 32028, 32030}, nodes = {32009, 32029}},
        [32004] = {cell = 32004, lines = {}, nodes = {}},
        [32005] = {cell = 32005, lines = {}, nodes = {}},
        [32006] = {cell = 32006, lines = {32008, 32034, 32032, 32033}, nodes = {32010,32035}}
    },

    -- 指定初始激活的电池id，未指定则默认初始未激活
    activeCells = {32004, 32005},

    -- 指定探索机关，这些机关在任何时候都根据自身能量块做出反应，电池全亮不会改变它们的状态
    optionalMachines = {}
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
	[32003] = { config_id = 32003, gadget_id = 70350442, pos = { x = -1557.267, y = 255.576, z = 2373.816 }, rot = { x = 342.758, y = 246.001, z = 10.594 }, level = 30, area_id = 21 },
	[32004] = { config_id = 32004, gadget_id = 70350442, pos = { x = -1520.359, y = 241.554, z = 2362.197 }, rot = { x = 13.600, y = 49.497, z = 344.987 }, level = 30, area_id = 21 },
	[32005] = { config_id = 32005, gadget_id = 70350442, pos = { x = -1511.685, y = 237.163, z = 2338.709 }, rot = { x = 357.939, y = 2.626, z = 339.950 }, level = 30, area_id = 21 },
	[32006] = { config_id = 32006, gadget_id = 70350442, pos = { x = -1533.371, y = 243.174, z = 2303.192 }, rot = { x = 17.868, y = 69.709, z = 350.525 }, level = 30, area_id = 21 },
	[32007] = { config_id = 32007, gadget_id = 70350444, pos = { x = -1551.286, y = 253.527, z = 2376.304 }, rot = { x = 350.624, y = 340.720, z = 341.961 }, level = 30, area_id = 21 },
	[32008] = { config_id = 32008, gadget_id = 70350444, pos = { x = -1527.261, y = 241.070, z = 2305.374 }, rot = { x = 351.298, y = 343.603, z = 341.753 }, level = 30, area_id = 21 },
	[32009] = { config_id = 32009, gadget_id = 70350446, pos = { x = -1545.445, y = 251.532, z = 2378.683 }, rot = { x = 4.582, y = 20.866, z = 340.355 }, level = 30, area_id = 21 },
	[32010] = { config_id = 32010, gadget_id = 70350446, pos = { x = -1521.256, y = 238.993, z = 2307.500 }, rot = { x = 4.924, y = 21.830, z = 340.435 }, level = 30, area_id = 21 },
	[32011] = { config_id = 32011, gadget_id = 70350439, pos = { x = -1517.558, y = 239.321, z = 2339.867 }, rot = { x = 19.997, y = 90.840, z = 357.452 }, level = 30, area_id = 21 },
	[32012] = { config_id = 32012, gadget_id = 70350440, pos = { x = -1553.654, y = 253.510, z = 2362.733 }, rot = { x = 342.453, y = 247.757, z = 10.069 }, level = 30, area_id = 21 },
	[32013] = { config_id = 32013, gadget_id = 70350441, pos = { x = -1536.806, y = 244.841, z = 2314.337 }, rot = { x = 10.677, y = 39.168, z = 342.809 }, level = 30, area_id = 21 },
	-- 非主线开关
	[32014] = { config_id = 32014, gadget_id = 70350439, pos = { x = -1572.318, y = 259.453, z = 2344.497 }, rot = { x = 340.021, y = 286.083, z = 357.310 }, level = 30, area_id = 21 },
	[32016] = { config_id = 32016, gadget_id = 70350449, pos = { x = -1557.734, y = 255.801, z = 2370.610 }, rot = { x = 297.239, y = 52.319, z = 274.922 }, level = 15, area_id = 21 },
	[32017] = { config_id = 32017, gadget_id = 70350449, pos = { x = -1534.054, y = 243.893, z = 2306.476 }, rot = { x = 43.488, y = 277.851, z = 303.478 }, level = 1, area_id = 21 },
	[32027] = { config_id = 32027, gadget_id = 70360001, pos = { x = -1534.182, y = 243.672, z = 2306.565 }, rot = { x = 3.688, y = 20.893, z = 332.427 }, level = 19, persistent = true, area_id = 21 },
	[32028] = { config_id = 32028, gadget_id = 70350444, pos = { x = -1563.170, y = 257.581, z = 2371.290 }, rot = { x = 350.624, y = 340.720, z = 341.961 }, level = 30, area_id = 21 },
	[32029] = { config_id = 32029, gadget_id = 70350446, pos = { x = -1569.083, y = 259.586, z = 2368.867 }, rot = { x = 3.573, y = 18.051, z = 340.155 }, level = 30, area_id = 21 },
	[32030] = { config_id = 32030, gadget_id = 70350444, pos = { x = -1571.656, y = 260.229, z = 2362.786 }, rot = { x = 340.635, y = 295.070, z = 353.932 }, level = 30, area_id = 21 },
	[32031] = { config_id = 32031, gadget_id = 70350444, pos = { x = -1539.740, y = 249.328, z = 2376.085 }, rot = { x = 5.591, y = 22.676, z = 340.497 }, level = 30, area_id = 21 },
	[32032] = { config_id = 32032, gadget_id = 70350444, pos = { x = -1517.953, y = 238.102, z = 2313.205 }, rot = { x = 341.472, y = 302.294, z = 351.932 }, level = 30, area_id = 21 },
	[32033] = { config_id = 32033, gadget_id = 70350444, pos = { x = -1539.606, y = 245.322, z = 2300.981 }, rot = { x = 351.298, y = 343.603, z = 341.753 }, level = 30, area_id = 21 },
	[32034] = { config_id = 32034, gadget_id = 70350444, pos = { x = -1551.290, y = 249.584, z = 2301.342 }, rot = { x = 4.837, y = 21.586, z = 340.414 }, level = 30, area_id = 21 },
	[32035] = { config_id = 32035, gadget_id = 70350446, pos = { x = -1545.470, y = 247.338, z = 2298.966 }, rot = { x = 4.924, y = 21.830, z = 340.435 }, level = 30, area_id = 21 },
	-- 非主线开关
	[32036] = { config_id = 32036, gadget_id = 70350439, pos = { x = -1568.858, y = 257.048, z = 2322.709 }, rot = { x = 345.073, y = 234.840, z = 13.696 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	[32001] = { config_id = 32001, shape = RegionShape.SPHERE, radius = 80, pos = { x = -1549.625, y = 246.929, z = 2337.114 }, area_id = 21 }
}

-- 触发器
triggers = {
	-- 玩法完成事件
	{ config_id = 1032002, name = "VARIABLE_CHANGE_32002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_32002", action = "action_EVENT_VARIABLE_CHANGE_32002", trigger_count = 0 },
	-- 中间门开关
	{ config_id = 1032018, name = "GADGET_STATE_CHANGE_32018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32018", action = "action_EVENT_GADGET_STATE_CHANGE_32018", trigger_count = 0 },
	-- 中间门开关
	{ config_id = 1032019, name = "GADGET_STATE_CHANGE_32019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32019", action = "action_EVENT_GADGET_STATE_CHANGE_32019", trigger_count = 0 },
	-- 左边门开关
	{ config_id = 1032020, name = "GADGET_STATE_CHANGE_32020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32020", action = "action_EVENT_GADGET_STATE_CHANGE_32020", trigger_count = 0 },
	-- 左边门开关
	{ config_id = 1032021, name = "GADGET_STATE_CHANGE_32021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32021", action = "action_EVENT_GADGET_STATE_CHANGE_32021", trigger_count = 0 },
	-- 右边门开关
	{ config_id = 1032022, name = "GADGET_STATE_CHANGE_32022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32022", action = "action_EVENT_GADGET_STATE_CHANGE_32022", trigger_count = 0 },
	-- 右边门开关
	{ config_id = 1032023, name = "GADGET_STATE_CHANGE_32023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32023", action = "action_EVENT_GADGET_STATE_CHANGE_32023", trigger_count = 0 },
	-- 节点刷怪
	{ config_id = 1032024, name = "GADGET_STATE_CHANGE_32024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32024", action = "action_EVENT_GADGET_STATE_CHANGE_32024" },
	-- 节点刷怪
	{ config_id = 1032025, name = "GADGET_STATE_CHANGE_32025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32025", action = "action_EVENT_GADGET_STATE_CHANGE_32025" },
	{ config_id = 1032026, name = "QUEST_START_32026", event = EventType.EVENT_QUEST_START, source = "7302608", condition = "condition_EVENT_QUEST_START_32026", action = "action_EVENT_QUEST_START_32026", trigger_count = 0 },
	-- 宝箱门开关
	{ config_id = 1032037, name = "GADGET_STATE_CHANGE_32037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32037", action = "action_EVENT_GADGET_STATE_CHANGE_32037", trigger_count = 0 },
	-- 宝箱门开关
	{ config_id = 1032038, name = "GADGET_STATE_CHANGE_32038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32038", action = "action_EVENT_GADGET_STATE_CHANGE_32038", trigger_count = 0 },
	-- 阅读物门开关
	{ config_id = 1032039, name = "GADGET_STATE_CHANGE_32039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32039", action = "action_EVENT_GADGET_STATE_CHANGE_32039", trigger_count = 0 },
	-- 阅读物门开关
	{ config_id = 1032040, name = "GADGET_STATE_CHANGE_32040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32040", action = "action_EVENT_GADGET_STATE_CHANGE_32040", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1032015, name = "GROUP_LOAD_32015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_32015", action = "action_EVENT_GROUP_LOAD_32015", trigger_count = 0 }
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
		gadgets = { 32003, 32004, 32005, 32006, 32007, 32008, 32009, 32010, 32011, 32012, 32013, 32014, 32016, 32017, 32027, 32028, 32029, 32030, 32031, 32032, 32033, 32034, 32035, 32036 },
		regions = { 32001 },
		triggers = { "VARIABLE_CHANGE_32002", "GADGET_STATE_CHANGE_32018", "GADGET_STATE_CHANGE_32019", "GADGET_STATE_CHANGE_32020", "GADGET_STATE_CHANGE_32021", "GADGET_STATE_CHANGE_32022", "GADGET_STATE_CHANGE_32023", "GADGET_STATE_CHANGE_32024", "GADGET_STATE_CHANGE_32025", "QUEST_START_32026", "GADGET_STATE_CHANGE_32037", "GADGET_STATE_CHANGE_32038", "GADGET_STATE_CHANGE_32039", "GADGET_STATE_CHANGE_32040" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 通用探索suite,
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
function condition_EVENT_VARIABLE_CHANGE_32002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"groupStatus"为3
	if ScriptLib.GetGroupVariableValue(context, "groupStatus") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_32002(context, evt)
	-- 将configid为 32027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finished", 1, 133304065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "3F" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "3F", 1, 133304011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open", 1, 133304268) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32018(context, evt)
	if 32011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32018(context, evt)
	-- 将本组内变量名为 "mid" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "mid", 1, 133304065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32019(context, evt)
	if 32011 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32019(context, evt)
	-- 将本组内变量名为 "mid" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "mid", 0, 133304065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32020(context, evt)
	if 32012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32020(context, evt)
	-- 将本组内变量名为 "left" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "left", 1, 133304065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32021(context, evt)
	if 32012 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32021(context, evt)
	-- 将本组内变量名为 "left" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "left", 0, 133304065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32022(context, evt)
	if 32013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32022(context, evt)
	-- 将本组内变量名为 "right" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "right", 1, 133304065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32023(context, evt)
	if 32013 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32023(context, evt)
	-- 将本组内变量名为 "right" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "right", 0, 133304065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32024(context, evt)
	if 32006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32024(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304080, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32025(context, evt)
	if 32003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304081, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_32026(context, evt)
	-- 判断变量"groupStatus"为3
	if ScriptLib.GetGroupVariableValue(context, "groupStatus") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_32026(context, evt)
	-- 将本组内变量名为 "groupStatus" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "groupStatus", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32037(context, evt)
	if 32014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32037(context, evt)
	-- 将本组内变量名为 "chestdoor" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "chestdoor", 1, 133304065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32038(context, evt)
	if 32014 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32038(context, evt)
	-- 将本组内变量名为 "chestdoor" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "chestdoor", 0, 133304065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32039(context, evt)
	if 32036 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32039(context, evt)
	-- 将本组内变量名为 "readdoor" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "readdoor", 1, 133304065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32040(context, evt)
	if 32036 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32040(context, evt)
	-- 将本组内变量名为 "readdoor" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "readdoor", 0, 133304065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_0/TitanEnergy"