-- 基础信息
local base_info = {
	group_id = 133314024
}

-- DEFS_MISCS
local defs = {
	maxPlayerEnergyLev = 3,
	titanRegion = 24004,
    
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
	[24001] = { config_id = 24001, gadget_id = 70350464, pos = { x = -438.759, y = 129.068, z = 4440.378 }, rot = { x = 354.309, y = 42.147, z = 27.582 }, level = 32, persistent = true, area_id = 32 },
	[24002] = { config_id = 24002, gadget_id = 70350441, pos = { x = -439.920, y = 126.886, z = 4437.231 }, rot = { x = 341.664, y = 94.970, z = 17.300 }, level = 32, persistent = true, area_id = 32 },
	-- 能量块1（白给）
	[24003] = { config_id = 24003, gadget_id = 70350449, pos = { x = -448.867, y = 128.123, z = 4428.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	[24006] = { config_id = 24006, gadget_id = 71700434, pos = { x = -431.746, y = 135.170, z = 4423.768 }, rot = { x = 14.475, y = 3.310, z = 13.025 }, level = 32, area_id = 32 },
	[24007] = { config_id = 24007, gadget_id = 71700434, pos = { x = -433.523, y = 134.250, z = 4424.592 }, rot = { x = 19.094, y = 330.747, z = 3.376 }, level = 32, area_id = 32 },
	[24008] = { config_id = 24008, gadget_id = 71700431, pos = { x = -435.765, y = 134.113, z = 4423.480 }, rot = { x = 21.159, y = 1.895, z = 10.997 }, level = 32, area_id = 32 },
	[24009] = { config_id = 24009, gadget_id = 70330430, pos = { x = -453.336, y = 118.607, z = 4445.794 }, rot = { x = 27.064, y = 342.994, z = 13.764 }, level = 32, area_id = 32 },
	-- 能量块2（木箱背后）
	[24010] = { config_id = 24010, gadget_id = 70350449, pos = { x = -433.157, y = 135.081, z = 4423.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 能量块3（沙堆下面）
	[24011] = { config_id = 24011, gadget_id = 70350449, pos = { x = -453.027, y = 118.470, z = 4446.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	[24012] = { config_id = 24012, gadget_id = 70220062, pos = { x = -451.332, y = 119.115, z = 4447.717 }, rot = { x = 311.122, y = 313.192, z = 308.200 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	[24004] = { config_id = 24004, shape = RegionShape.SPHERE, radius = 80, pos = { x = -417.719, y = 135.081, z = 4456.553 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1024004, name = "ENTER_REGION_24004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 玩法结束，开门，上状态3
	{ config_id = 1024005, name = "GADGET_STATE_CHANGE_24005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_24005", action = "action_EVENT_GADGET_STATE_CHANGE_24005", trigger_count = 0 },
	-- 任务开始上状态1
	{ config_id = 1024013, name = "QUEST_START_24013", event = EventType.EVENT_QUEST_START, source = "7318705", condition = "", action = "action_EVENT_QUEST_START_24013" }
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
		gadgets = { 24001, 24002, 24003, 24006, 24007, 24008, 24009, 24010, 24011, 24012 },
		regions = { 24004 },
		triggers = { "ENTER_REGION_24004", "GADGET_STATE_CHANGE_24005", "QUEST_START_24013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_24005(context, evt)
	if 24002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_24005(context, evt)
	-- 将configid为 24001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 24001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 1000080006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "groupStatus" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "groupStatus", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_24013(context, evt)
	-- 将本组内变量名为 "groupStatus" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "groupStatus", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V3_0/TitanEnergy"