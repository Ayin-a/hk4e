-- 基础信息
local base_info = {
	group_id = 133304031
}

-- DEFS_MISCS
local defs = {
	maxPlayerEnergyLev = 3,
	titanRegion = 31011,
    
    -- todo: 保底判断一下各个位置的config id对应的是否是正确的gadget id
    cells = {
        -- 每一项均需严格遵循下述格式，没有line或者node则留空，不能不创建！
        -- [cell_config_id] = {cell = cell_config_id, lines = {line01_config_id, line02_config_id, ...}, nodes = {node01_config_id, ...}}
        [31001] = {cell = 31001, lines = {31006, 31010, 31019}, nodes = {31007}},
        [31002] = {cell = 31002, lines = {31005, 31008, 31017}, nodes = {31007}},
        [31003] = {cell = 31003, lines = {31008, 31009, 31018}, nodes = {}}
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
	[31001] = { config_id = 31001, gadget_id = 70350442, pos = { x = -1563.058, y = 237.022, z = 2334.692 }, rot = { x = 354.187, y = 204.360, z = 19.329 }, level = 30, area_id = 21 },
	[31002] = { config_id = 31002, gadget_id = 70350442, pos = { x = -1546.866, y = 230.727, z = 2326.842 }, rot = { x = 6.156, y = 25.346, z = 340.774 }, level = 30, area_id = 21 },
	[31003] = { config_id = 31003, gadget_id = 70350442, pos = { x = -1539.134, y = 228.913, z = 2344.439 }, rot = { x = 6.156, y = 25.346, z = 340.774 }, level = 30, area_id = 21 },
	[31005] = { config_id = 31005, gadget_id = 70350444, pos = { x = -1549.678, y = 231.823, z = 2328.252 }, rot = { x = 5.550, y = 23.563, z = 340.664 }, level = 30, area_id = 21 },
	[31006] = { config_id = 31006, gadget_id = 70350444, pos = { x = -1559.537, y = 235.652, z = 2332.965 }, rot = { x = 5.550, y = 23.563, z = 340.664 }, level = 30, area_id = 21 },
	[31007] = { config_id = 31007, gadget_id = 70350446, pos = { x = -1554.605, y = 233.737, z = 2330.620 }, rot = { x = 5.550, y = 23.563, z = 340.664 }, level = 30, area_id = 21 },
	[31008] = { config_id = 31008, gadget_id = 70350445, pos = { x = -1543.122, y = 229.816, z = 2335.344 }, rot = { x = 19.286, y = 115.056, z = 5.731 }, level = 30, area_id = 21 },
	[31009] = { config_id = 31009, gadget_id = 70350445, pos = { x = -1547.358, y = 232.044, z = 2348.436 }, rot = { x = 5.550, y = 23.563, z = 340.664 }, level = 30, area_id = 21 },
	[31010] = { config_id = 31010, gadget_id = 70350445, pos = { x = -1559.324, y = 236.111, z = 2343.155 }, rot = { x = 340.743, y = 295.357, z = 354.170 }, level = 30, area_id = 21 },
	[31012] = { config_id = 31012, gadget_id = 70350449, pos = { x = -1543.625, y = 230.081, z = 2329.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[31014] = { config_id = 31014, gadget_id = 70350449, pos = { x = -1538.437, y = 228.684, z = 2339.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[31015] = { config_id = 31015, gadget_id = 70360001, pos = { x = -1550.906, y = 232.509, z = 2332.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[31017] = { config_id = 31017, gadget_id = 70350444, pos = { x = -1548.418, y = 231.537, z = 2331.542 }, rot = { x = 17.649, y = 68.610, z = 350.250 }, level = 30, area_id = 21 },
	[31018] = { config_id = 31018, gadget_id = 70350444, pos = { x = -1543.528, y = 230.345, z = 2342.677 }, rot = { x = 350.175, y = 339.890, z = 342.391 }, level = 30, area_id = 21 },
	[31019] = { config_id = 31019, gadget_id = 70350444, pos = { x = -1559.157, y = 235.670, z = 2336.259 }, rot = { x = 350.510, y = 340.954, z = 342.213 }, level = 30, area_id = 21 },
	[31020] = { config_id = 31020, gadget_id = 70350443, pos = { x = -1553.425, y = 234.107, z = 2346.129 }, rot = { x = 17.649, y = 68.610, z = 350.250 }, level = 30, area_id = 21 },
	[31021] = { config_id = 31021, gadget_id = 70350449, pos = { x = -1544.496, y = 230.723, z = 2336.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 21 }
}

-- 区域
regions = {
	[31011] = { config_id = 31011, shape = RegionShape.SPHERE, radius = 80, pos = { x = -1549.625, y = 246.929, z = 2337.114 }, area_id = 21 }
}

-- 触发器
triggers = {
	-- 判断玩法成功，任务通知&打开电梯
	{ config_id = 1031004, name = "VARIABLE_CHANGE_31004", event = EventType.EVENT_VARIABLE_CHANGE, source = "groupStatus", condition = "condition_EVENT_VARIABLE_CHANGE_31004", action = "action_EVENT_VARIABLE_CHANGE_31004", trigger_count = 0 },
	{ config_id = 1031013, name = "QUEST_START_31013", event = EventType.EVENT_QUEST_START, source = "7302606", condition = "condition_EVENT_QUEST_START_31013", action = "action_EVENT_QUEST_START_31013", trigger_count = 0 },
	-- 能量块被拾取一次性注目开车
	{ config_id = 1031022, name = "GADGET_STATE_CHANGE_31022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_31022", action = "action_EVENT_GADGET_STATE_CHANGE_31022" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1031016, name = "GADGET_STATE_CHANGE_31016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_31016", action = "action_EVENT_GADGET_STATE_CHANGE_31016" }
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
		gadgets = { 31001, 31002, 31003, 31005, 31006, 31007, 31008, 31009, 31010, 31012, 31014, 31015, 31017, 31018, 31019, 31020, 31021 },
		regions = { 31011 },
		triggers = { "VARIABLE_CHANGE_31004", "QUEST_START_31013", "GADGET_STATE_CHANGE_31022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_31004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"groupStatus"为3
	if ScriptLib.GetGroupVariableValue(context, "groupStatus") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_31004(context, evt)
	-- 将configid为 31015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "1F" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "1F", 1, 133304011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "2F" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "2F", 1, 133304011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_31013(context, evt)
	-- 判断变量"groupStatus"为3
	if ScriptLib.GetGroupVariableValue(context, "groupStatus") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_31013(context, evt)
	-- 将本组内变量名为 "groupStatus" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "groupStatus", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_31022(context, evt)
	
	if GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	if 31012 == evt.param2 or 31014 == evt.param2 or 31021 == evt.param2 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_31022(context, evt)
	-- 调用提示id为 33040208 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040209) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1546.866, y=230.7271, z=2326.842}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1546.866, y=230.7271, z=2326.842}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_0/TitanEnergy"