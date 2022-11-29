-- 基础信息
local base_info = {
	group_id = 133304033
}

-- DEFS_MISCS
local defs = {
	maxPlayerEnergyLev = 3,
	titanRegion = 33001,

    -- todo: 保底判断一下各个位置的config id对应的是否是正确的gadget id
    cells = {
        -- 每一项均需严格遵循下述格式，没有line或者node则留空，不能不创建！
        -- [cell_config_id] = {cell = cell_config_id, lines = {line01_config_id, line02_config_id, ...}, nodes = {node01_config_id, ...}}
        [33004] = {cell = 33004, lines = {33006, 33017, 33016, 33015, 33014}, nodes = {33018}},
        [33005] = {cell = 33005, lines = {33021, 33022, 33020, 33019, 33007}, nodes = {33023}}
    },

    -- 指定初始激活的电池id，未指定则默认初始未激活
    activeCells = {33004},

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
	[33004] = { config_id = 33004, gadget_id = 70350442, pos = { x = -1548.784, y = 274.929, z = 2369.829 }, rot = { x = 350.383, y = 340.754, z = 342.207 }, level = 30, area_id = 21 },
	[33005] = { config_id = 33005, gadget_id = 70350442, pos = { x = -1527.456, y = 263.927, z = 2305.783 }, rot = { x = 17.941, y = 70.175, z = 350.668 }, level = 30, area_id = 21 },
	[33006] = { config_id = 33006, gadget_id = 70350443, pos = { x = -1545.048, y = 272.990, z = 2358.898 }, rot = { x = 15.973, y = 69.777, z = 350.509 }, level = 30, area_id = 21 },
	[33007] = { config_id = 33007, gadget_id = 70350443, pos = { x = -1537.615, y = 263.606, z = 2331.937 }, rot = { x = 14.780, y = 69.291, z = 351.585 }, level = 30, area_id = 21 },
	[33008] = { config_id = 33008, gadget_id = 70350449, pos = { x = -1532.927, y = 269.687, z = 2375.245 }, rot = { x = 13.946, y = 50.853, z = 281.905 }, level = 30, area_id = 21 },
	[33009] = { config_id = 33009, gadget_id = 70350439, pos = { x = -1540.197, y = 272.058, z = 2374.528 }, rot = { x = 19.694, y = 85.508, z = 355.641 }, level = 30, area_id = 21 },
	[33013] = { config_id = 33013, gadget_id = 70360001, pos = { x = -1540.009, y = 272.246, z = 2373.903 }, rot = { x = 3.688, y = 20.893, z = 332.427 }, level = 19, persistent = true, area_id = 21 },
	[33014] = { config_id = 33014, gadget_id = 70350443, pos = { x = -1541.665, y = 265.752, z = 2343.844 }, rot = { x = 14.780, y = 69.291, z = 351.585 }, level = 30, area_id = 21 },
	[33015] = { config_id = 33015, gadget_id = 70350444, pos = { x = -1542.859, y = 267.319, z = 2348.245 }, rot = { x = 16.265, y = 69.935, z = 327.544 }, level = 30, area_id = 21 },
	[33016] = { config_id = 33016, gadget_id = 70350443, pos = { x = -1543.931, y = 271.252, z = 2354.502 }, rot = { x = 18.030, y = 68.499, z = 325.039 }, level = 30, area_id = 21 },
	[33017] = { config_id = 33017, gadget_id = 70350443, pos = { x = -1547.764, y = 274.436, z = 2367.086 }, rot = { x = 15.626, y = 67.684, z = 349.939 }, level = 30, area_id = 21 },
	[33018] = { config_id = 33018, gadget_id = 70350446, pos = { x = -1541.898, y = 265.923, z = 2344.825 }, rot = { x = 350.383, y = 340.754, z = 342.207 }, level = 30, area_id = 21 },
	[33019] = { config_id = 33019, gadget_id = 70350444, pos = { x = -1535.857, y = 263.581, z = 2327.428 }, rot = { x = 15.902, y = 69.131, z = 13.578 }, level = 30, area_id = 21 },
	[33020] = { config_id = 33020, gadget_id = 70350443, pos = { x = -1532.773, y = 265.371, z = 2320.847 }, rot = { x = 16.351, y = 68.707, z = 16.026 }, level = 30, area_id = 21 },
	[33021] = { config_id = 33021, gadget_id = 70350443, pos = { x = -1528.541, y = 264.324, z = 2309.017 }, rot = { x = 17.844, y = 68.264, z = 350.089 }, level = 30, area_id = 21 },
	[33022] = { config_id = 33022, gadget_id = 70350443, pos = { x = -1530.919, y = 265.621, z = 2316.339 }, rot = { x = 15.769, y = 68.529, z = 350.168 }, level = 30, area_id = 21 },
	[33023] = { config_id = 33023, gadget_id = 70350446, pos = { x = -1537.047, y = 263.393, z = 2330.245 }, rot = { x = 352.281, y = 346.577, z = 341.328 }, level = 30, area_id = 21 },
	-- 阅读物门开关
	[33024] = { config_id = 33024, gadget_id = 70350439, pos = { x = -1557.876, y = 278.105, z = 2367.448 }, rot = { x = 345.564, y = 232.800, z = 14.213 }, level = 30, area_id = 21 },
	-- 右边宝箱门开关
	[33027] = { config_id = 33027, gadget_id = 70350439, pos = { x = -1535.568, y = 266.483, z = 2300.639 }, rot = { x = 339.968, y = 271.723, z = 2.246 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	[33001] = { config_id = 33001, shape = RegionShape.SPHERE, radius = 80, pos = { x = -1549.625, y = 246.929, z = 2337.114 }, area_id = 21 }
}

-- 触发器
triggers = {
	-- 玩法成功
	{ config_id = 1033002, name = "VARIABLE_CHANGE_33002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_33002", action = "action_EVENT_VARIABLE_CHANGE_33002", trigger_count = 0 },
	-- 设置group逻辑开始+开门
	{ config_id = 1033010, name = "QUEST_START_33010", event = EventType.EVENT_QUEST_START, source = "7302610", condition = "condition_EVENT_QUEST_START_33010", action = "action_EVENT_QUEST_START_33010", trigger_count = 0 },
	-- 能量块门开关
	{ config_id = 1033011, name = "GADGET_STATE_CHANGE_33011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33011", action = "action_EVENT_GADGET_STATE_CHANGE_33011", trigger_count = 0 },
	-- 能量块门开关
	{ config_id = 1033012, name = "GADGET_STATE_CHANGE_33012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33012", action = "action_EVENT_GADGET_STATE_CHANGE_33012", trigger_count = 0 },
	-- 阅读物门开关
	{ config_id = 1033025, name = "GADGET_STATE_CHANGE_33025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33025", action = "action_EVENT_GADGET_STATE_CHANGE_33025", trigger_count = 0 },
	-- 阅读物门开关
	{ config_id = 1033026, name = "GADGET_STATE_CHANGE_33026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33026", action = "action_EVENT_GADGET_STATE_CHANGE_33026", trigger_count = 0 },
	-- 阅读物门开关
	{ config_id = 1033028, name = "GADGET_STATE_CHANGE_33028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33028", action = "action_EVENT_GADGET_STATE_CHANGE_33028", trigger_count = 0 },
	-- 阅读物门开关
	{ config_id = 1033029, name = "GADGET_STATE_CHANGE_33029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33029", action = "action_EVENT_GADGET_STATE_CHANGE_33029", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1033003, name = "GROUP_LOAD_33003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_33003", action = "action_EVENT_GROUP_LOAD_33003", trigger_count = 0 }
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
		gadgets = { 33004, 33005, 33006, 33007, 33008, 33009, 33013, 33014, 33015, 33016, 33017, 33018, 33019, 33020, 33021, 33022, 33023, 33024, 33027 },
		regions = { 33001 },
		triggers = { "VARIABLE_CHANGE_33002", "QUEST_START_33010", "GADGET_STATE_CHANGE_33011", "GADGET_STATE_CHANGE_33012", "GADGET_STATE_CHANGE_33025", "GADGET_STATE_CHANGE_33026", "GADGET_STATE_CHANGE_33028", "GADGET_STATE_CHANGE_33029" },
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
function condition_EVENT_VARIABLE_CHANGE_33002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"groupStatus"为3
	if ScriptLib.GetGroupVariableValue(context, "groupStatus") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_33002(context, evt)
	-- 将configid为 33013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finished", 1, 133304082) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_33010(context, evt)
	-- 判断变量"groupStatus"为3
	if ScriptLib.GetGroupVariableValue(context, "groupStatus") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_33010(context, evt)
	-- 将本组内变量名为 "groupStatus" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "groupStatus", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
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
function condition_EVENT_GADGET_STATE_CHANGE_33011(context, evt)
	if 33009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33011(context, evt)
	-- 将本组内变量名为 "left1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "left1", 1, 133304082) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33012(context, evt)
	if 33009 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33012(context, evt)
	-- 将本组内变量名为 "left1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "left1", 0, 133304082) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33025(context, evt)
	if 33024 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33025(context, evt)
	-- 将本组内变量名为 "left2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "left2", 1, 133304082) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33026(context, evt)
	if 33024 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33026(context, evt)
	-- 将本组内变量名为 "left2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "left2", 0, 133304082) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33028(context, evt)
	if 33027 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33028(context, evt)
	-- 将本组内变量名为 "right" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "right", 1, 133304082) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33029(context, evt)
	if 33027 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33029(context, evt)
	-- 将本组内变量名为 "right" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "right", 0, 133304082) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_0/TitanEnergy"