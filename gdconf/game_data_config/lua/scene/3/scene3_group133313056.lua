-- 基础信息
local base_info = {
	group_id = 133313056
}

-- DEFS_MISCS
local defs = {
	maxPlayerEnergyLev = 2,
	titanRegion = 56025,
    
    -- todo: 保底判断一下各个位置的config id对应的是否是正确的gadget id
    cells = {
        -- 每一项均需严格遵循下述格式，没有line或者node则留空，不能不创建！
        -- [cell_config_id] = {cell = cell_config_id, lines = {line01_config_id, line02_config_id, ...}, nodes = {node01_config_id, ...}}
        [56002] = {cell = 56002, lines = {}, nodes = {}},
        [56003] = {cell = 56003, lines = {}, nodes = {}}
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
	-- 三楼不带能量电池1
	[56002] = { config_id = 56002, gadget_id = 70350442, pos = { x = -154.352, y = 175.047, z = 5400.040 }, rot = { x = 353.902, y = 359.418, z = 35.822 }, level = 32, area_id = 32 },
	-- 三楼不带能量电池2
	[56003] = { config_id = 56003, gadget_id = 70350442, pos = { x = -117.123, y = 194.830, z = 5345.971 }, rot = { x = 354.413, y = 0.780, z = 33.546 }, level = 32, area_id = 32 },
	-- 空沙堆
	[56005] = { config_id = 56005, gadget_id = 70330266, pos = { x = -129.656, y = 182.507, z = 5368.743 }, rot = { x = 327.730, y = 78.660, z = 2.929 }, level = 32, area_id = 32 },
	-- 有两个能量的沙堆
	[56006] = { config_id = 56006, gadget_id = 70330266, pos = { x = -150.510, y = 176.444, z = 5389.842 }, rot = { x = 355.446, y = 358.608, z = 35.124 }, level = 32, area_id = 32 },
	[56013] = { config_id = 56013, gadget_id = 70350449, pos = { x = -149.747, y = 177.175, z = 5389.961 }, rot = { x = 350.000, y = 100.000, z = 0.000 }, level = 32, area_id = 32 },
	[56014] = { config_id = 56014, gadget_id = 70350449, pos = { x = -151.128, y = 176.017, z = 5389.328 }, rot = { x = 350.000, y = 100.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 任务判断这个操作台的状态；201gearstart则为已完成
	[56015] = { config_id = 56015, gadget_id = 70360001, pos = { x = -134.368, y = 183.131, z = 5396.347 }, rot = { x = 3.688, y = 20.893, z = 332.427 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
	[56025] = { config_id = 56025, shape = RegionShape.SPHERE, radius = 60, pos = { x = -126.381, y = 178.844, z = 5397.482 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- source填任务id
	{ config_id = 1056001, name = "QUEST_START_56001", event = EventType.EVENT_QUEST_START, source = "7318713", condition = "condition_EVENT_QUEST_START_56001", action = "action_EVENT_QUEST_START_56001", trigger_count = 0 },
	-- 任务开始，上可交互状态
	{ config_id = 1056004, name = "QUEST_START_56004", event = EventType.EVENT_QUEST_START, source = "7318713", condition = "", action = "action_EVENT_QUEST_START_56004" },
	-- 通知任务Q7318713
	{ config_id = 1056007, name = "GADGET_STATE_CHANGE_56007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56007", action = "action_EVENT_GADGET_STATE_CHANGE_56007" },
	-- 判断沙堆被清除，将state改为可交互
	{ config_id = 1056008, name = "ANY_GADGET_DIE_56008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_56008", action = "action_EVENT_ANY_GADGET_DIE_56008", trigger_count = 0 },
	-- 玩法完成事件
	{ config_id = 1056026, name = "VARIABLE_CHANGE_56026", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_56026", action = "action_EVENT_VARIABLE_CHANGE_56026", trigger_count = 0 }
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
		gadgets = { 56002, 56003, 56005, 56006, 56013, 56014, 56015 },
		regions = { 56025 },
		triggers = { "QUEST_START_56001", "QUEST_START_56004", "GADGET_STATE_CHANGE_56007", "VARIABLE_CHANGE_56026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_56008" },
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
function condition_EVENT_QUEST_START_56001(context, evt)
	-- 判断变量"groupStatus"为3
	if ScriptLib.GetGroupVariableValue(context, "groupStatus") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_56001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133313056, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_56004(context, evt)
	-- 将本组内变量名为 "groupStatus" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "groupStatus", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56007(context, evt)
	if 56015 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7318713") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_56008(context, evt)
	if 56006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_56008(context, evt)
	-- 将本组内变量名为 "groupStatus" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "groupStatus", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_56026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"groupStatus"为3
	if ScriptLib.GetGroupVariableValue(context, "groupStatus") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_56026(context, evt)
	-- 将configid为 56015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/TitanEnergy"