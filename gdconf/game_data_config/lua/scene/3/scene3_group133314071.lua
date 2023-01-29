-- 基础信息
local base_info = {
	group_id = 133314071
}

-- DEFS_MISCS
local defs = {
	maxPlayerEnergyLev = 3,
	titanRegion = 71025,
    
    -- todo: 保底判断一下各个位置的config id对应的是否是正确的gadget id
    cells = {
        -- 每一项均需严格遵循下述格式，没有line或者node则留空，不能不创建！
        -- [cell_config_id] = {cell = cell_config_id, lines = {line01_config_id, line02_config_id, ...}, nodes = {node01_config_id, ...}}
        [71001] = {cell = 71001, lines = {}, nodes = {}},
        [71002] = {cell = 71002, lines = {}, nodes = {}},
        [71003] = {cell = 71003, lines = {}, nodes = {}}
    },

    -- 指定初始激活的电池id，未指定则默认初始未激活
    activeCells = {71001},

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
	-- 一楼电池带能量
	[71001] = { config_id = 71001, gadget_id = 70350442, pos = { x = -400.300, y = 110.978, z = 4456.509 }, rot = { x = 23.684, y = 11.321, z = 20.817 }, level = 30, area_id = 32 },
	-- 二楼电池不带能量
	[71002] = { config_id = 71002, gadget_id = 70350442, pos = { x = -430.262, y = 120.414, z = 4452.606 }, rot = { x = 21.226, y = 10.883, z = 19.877 }, level = 30, area_id = 32 },
	-- 一楼电池不带能量
	[71003] = { config_id = 71003, gadget_id = 70350442, pos = { x = -410.476, y = 104.810, z = 4463.234 }, rot = { x = 21.960, y = 10.880, z = 20.656 }, level = 30, area_id = 32 },
	-- 控制门1
	[71009] = { config_id = 71009, gadget_id = 70350439, pos = { x = -402.335, y = 138.462, z = 4437.316 }, rot = { x = 334.297, y = 147.010, z = 357.136 }, level = 30, area_id = 32 },
	-- 控制门2
	[71010] = { config_id = 71010, gadget_id = 70350440, pos = { x = -424.587, y = 110.889, z = 4484.449 }, rot = { x = 21.901, y = 340.431, z = 6.328 }, level = 30, area_id = 32 },
	-- 门1里面的能量块
	[71013] = { config_id = 71013, gadget_id = 70350449, pos = { x = -397.824, y = 141.270, z = 4435.038 }, rot = { x = 350.000, y = 100.000, z = 0.000 }, level = 30, area_id = 32 },
	-- 门2里面的能量块
	[71014] = { config_id = 71014, gadget_id = 70350449, pos = { x = -427.083, y = 107.802, z = 4490.255 }, rot = { x = 350.000, y = 100.000, z = 0.000 }, level = 30, area_id = 32 },
	-- 任务判断这个操作台的状态；201gearstart则为已完成
	[71015] = { config_id = 71015, gadget_id = 70360001, pos = { x = -390.193, y = 108.248, z = 4417.484 }, rot = { x = 3.688, y = 20.893, z = 332.427 }, level = 30, persistent = true, area_id = 32 }
}

-- 区域
regions = {
	[71025] = { config_id = 71025, shape = RegionShape.SPHERE, radius = 60, pos = { x = -413.117, y = 137.732, z = 4464.435 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 通知任务进度
	{ config_id = 1071004, name = "GADGET_STATE_CHANGE_71004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_71004", action = "action_EVENT_GADGET_STATE_CHANGE_71004" },
	-- 玩法完成事件
	{ config_id = 1071026, name = "VARIABLE_CHANGE_71026", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_71026", action = "action_EVENT_VARIABLE_CHANGE_71026", trigger_count = 0 },
	-- 门1开关
	{ config_id = 1071028, name = "GADGET_STATE_CHANGE_71028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_71028", action = "action_EVENT_GADGET_STATE_CHANGE_71028", trigger_count = 0 },
	-- 门1开关
	{ config_id = 1071029, name = "GADGET_STATE_CHANGE_71029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_71029", action = "action_EVENT_GADGET_STATE_CHANGE_71029", trigger_count = 0 },
	-- 门2开关
	{ config_id = 1071030, name = "GADGET_STATE_CHANGE_71030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_71030", action = "action_EVENT_GADGET_STATE_CHANGE_71030", trigger_count = 0 },
	-- 门2开关
	{ config_id = 1071031, name = "GADGET_STATE_CHANGE_71031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_71031", action = "action_EVENT_GADGET_STATE_CHANGE_71031", trigger_count = 0 },
	-- source填任务id
	{ config_id = 1071036, name = "QUEST_START_71036", event = EventType.EVENT_QUEST_START, source = "7318707", condition = "condition_EVENT_QUEST_START_71036", action = "action_EVENT_QUEST_START_71036", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1071027, name = "GROUP_LOAD_71027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_71027", action = "action_EVENT_GROUP_LOAD_71027", trigger_count = 0 }
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
		gadgets = { 71001, 71002, 71003, 71009, 71010, 71013, 71014, 71015 },
		regions = { 71025 },
		triggers = { "GADGET_STATE_CHANGE_71004", "VARIABLE_CHANGE_71026", "GADGET_STATE_CHANGE_71028", "GADGET_STATE_CHANGE_71029", "GADGET_STATE_CHANGE_71030", "GADGET_STATE_CHANGE_71031", "QUEST_START_71036" },
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
function condition_EVENT_GADGET_STATE_CHANGE_71004(context, evt)
	if 71015 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_71004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7318707") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_71026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"groupStatus"为3
	if ScriptLib.GetGroupVariableValue(context, "groupStatus") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_71026(context, evt)
	-- 将configid为 71015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finished", 1, 133314076) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "3F" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "3F", 1, 133314070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_71028(context, evt)
	if 71009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_71028(context, evt)
	-- 将本组内变量名为 "door1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door1", 1, 133314076) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_71029(context, evt)
	if 71009 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_71029(context, evt)
	-- 将本组内变量名为 "door1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door1", 0, 133314076) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_71030(context, evt)
	if 71010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_71030(context, evt)
	-- 将本组内变量名为 "door2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door2", 1, 133314076) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_71031(context, evt)
	if 71010 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_71031(context, evt)
	-- 将本组内变量名为 "door2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door2", 0, 133314076) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_71036(context, evt)
	-- 判断变量"groupStatus"为3
	if ScriptLib.GetGroupVariableValue(context, "groupStatus") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_71036(context, evt)
	-- 将本组内变量名为 "groupStatus" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "groupStatus", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V3_0/TitanEnergy"