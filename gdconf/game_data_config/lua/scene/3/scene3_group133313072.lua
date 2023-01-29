-- 基础信息
local base_info = {
	group_id = 133313072
}

-- DEFS_MISCS
local defs = {
	maxPlayerEnergyLev = 3,
	titanRegion = 72006,
    
    -- todo: 保底判断一下各个位置的config id对应的是否是正确的gadget id
    cells = {
        -- 每一项均需严格遵循下述格式，没有line或者node则留空，不能不创建！
        -- [cell_config_id] = {cell = cell_config_id, lines = {line01_config_id, line02_config_id, ...}, nodes = {node01_config_id, ...}}
        [0] = {cell = 0, lines = {}, nodes = {}}
    },

    -- 指定初始激活的电池id，未指定则默认初始未激活
    activeCells = {},

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
	-- 能量块3（高处）
	[72001] = { config_id = 72001, gadget_id = 70350449, pos = { x = -866.694, y = -12.715, z = 5828.974 }, rot = { x = 350.000, y = 100.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 控制挑战门
	[72002] = { config_id = 72002, gadget_id = 70350440, pos = { x = -893.320, y = -38.666, z = 5819.714 }, rot = { x = 12.255, y = 327.513, z = 20.077 }, level = 32, area_id = 32 },
	-- 控制宝箱门
	[72003] = { config_id = 72003, gadget_id = 70350441, pos = { x = -884.041, y = -34.868, z = 5803.363 }, rot = { x = 12.018, y = 320.702, z = 24.960 }, level = 32, area_id = 32 },
	-- 能量块1
	[72004] = { config_id = 72004, gadget_id = 70350449, pos = { x = -860.811, y = -22.108, z = 5801.376 }, rot = { x = 350.000, y = 100.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 能量块2
	[72005] = { config_id = 72005, gadget_id = 70350449, pos = { x = -840.673, y = -10.006, z = 5815.772 }, rot = { x = 350.000, y = 100.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	[72006] = { config_id = 72006, shape = RegionShape.SPHERE, radius = 65, pos = { x = -858.849, y = -34.191, z = 5840.387 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 门1开关
	{ config_id = 1072007, name = "GADGET_STATE_CHANGE_72007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_72007", action = "action_EVENT_GADGET_STATE_CHANGE_72007", trigger_count = 0 },
	-- 门1关
	{ config_id = 1072008, name = "GADGET_STATE_CHANGE_72008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_72008", action = "action_EVENT_GADGET_STATE_CHANGE_72008", trigger_count = 0 },
	-- 门2开
	{ config_id = 1072009, name = "GADGET_STATE_CHANGE_72009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_72009", action = "action_EVENT_GADGET_STATE_CHANGE_72009", trigger_count = 0 },
	-- 门2关
	{ config_id = 1072010, name = "GADGET_STATE_CHANGE_72010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_72010", action = "action_EVENT_GADGET_STATE_CHANGE_72010", trigger_count = 0 },
	-- 未完成则变为可交互，刷新suite1
	{ config_id = 1072011, name = "GROUP_LOAD_72011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_72011", action = "action_EVENT_GROUP_LOAD_72011", trigger_count = 0 },
	-- 门1开，上状态3，通知闸门全开
	{ config_id = 1072012, name = "GADGET_STATE_CHANGE_72012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_72012", action = "action_EVENT_GADGET_STATE_CHANGE_72012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 3, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 72001, 72002, 72003, 72004, 72005 },
		regions = { 72006 },
		triggers = { "GADGET_STATE_CHANGE_72008", "GADGET_STATE_CHANGE_72009", "GADGET_STATE_CHANGE_72010", "GROUP_LOAD_72011", "GADGET_STATE_CHANGE_72012" },
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
function condition_EVENT_GADGET_STATE_CHANGE_72007(context, evt)
	if 72003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_72007(context, evt)
	-- 将本组内变量名为 "door1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door1", 1, 133313071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_72008(context, evt)
	if 72003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_72008(context, evt)
	-- 将本组内变量名为 "door1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door1", 0, 133313071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_72009(context, evt)
	if 72002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_72009(context, evt)
	-- 将本组内变量名为 "door2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door2", 1, 133313071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_72010(context, evt)
	if 72002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_72010(context, evt)
	-- 将本组内变量名为 "door2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door2", 0, 133313071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_72011(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_72011(context, evt)
	-- 将本组内变量名为 "groupStatus" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "groupStatus", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133313072, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_72012(context, evt)
	if 72003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_72012(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133313071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "groupStatus" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "groupStatus", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V3_0/TitanEnergy"