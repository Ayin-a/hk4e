-- 基础信息
local base_info = {
	group_id = 220133064
}

-- DEFS_MISCS
local	defs = {

		--左右旋转的SelectOptionID
		selectID_horizon = 54,

		--上下俯仰的SelectOptionID
		selectID_vertical = 55,

		--定义左右旋转的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		horizon_steps = {
			
		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {
			
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
	-- 小花-水平转动
	[64001] = { config_id = 64001, gadget_id = 70310170, pos = { x = 302.092, y = 152.639, z = 2019.065 }, rot = { x = 0.000, y = 48.683, z = 0.000 }, level = 1, persistent = true },
	-- 小花-固定
	[64002] = { config_id = 64002, gadget_id = 70310170, pos = { x = 287.885, y = 150.061, z = 2046.763 }, rot = { x = 356.305, y = 29.530, z = 356.361 }, level = 1, persistent = true },
	-- 小花-固定
	[64003] = { config_id = 64003, gadget_id = 70310170, pos = { x = 302.309, y = 153.846, z = 2022.993 }, rot = { x = 11.179, y = 298.359, z = 350.452 }, level = 1, persistent = true },
	-- 202一发解锁
	[64004] = { config_id = 64004, gadget_id = 70310186, pos = { x = 299.981, y = 150.197, z = 2064.775 }, rot = { x = 3.470, y = 259.671, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	[64005] = { config_id = 64005, gadget_id = 70310171, pos = { x = 298.668, y = 154.638, z = 2015.067 }, rot = { x = 0.000, y = 346.118, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, interact_id = 64 },
	-- 小花-固定
	[64006] = { config_id = 64006, gadget_id = 70310170, pos = { x = 291.617, y = 152.303, z = 2028.680 }, rot = { x = 9.869, y = 38.522, z = 9.882 }, level = 1, persistent = true },
	-- 小花-固定
	[64007] = { config_id = 64007, gadget_id = 70310170, pos = { x = 297.937, y = 151.176, z = 2036.812 }, rot = { x = 2.436, y = 316.298, z = 354.647 }, level = 1, persistent = true },
	-- 小花-固定
	[64008] = { config_id = 64008, gadget_id = 70310170, pos = { x = 296.126, y = 154.682, z = 2016.587 }, rot = { x = 7.062, y = 44.802, z = 358.931 }, level = 1, persistent = true },
	-- 小花-固定
	[64009] = { config_id = 64009, gadget_id = 70310170, pos = { x = 293.234, y = 149.801, z = 2065.995 }, rot = { x = 345.994, y = 100.477, z = 0.350 }, level = 1, persistent = true },
	-- 小花-固定
	[64010] = { config_id = 64010, gadget_id = 70310170, pos = { x = 293.558, y = 150.638, z = 2056.388 }, rot = { x = 6.600, y = 356.215, z = 5.327 }, level = 1, persistent = true },
	-- 1
	[64013] = { config_id = 64013, gadget_id = 70950157, pos = { x = 295.390, y = 151.675, z = 2069.255 }, rot = { x = 5.454, y = 312.388, z = 84.323 }, level = 1 },
	-- 2
	[64014] = { config_id = 64014, gadget_id = 70950157, pos = { x = 295.364, y = 161.716, z = 2070.760 }, rot = { x = 5.454, y = 312.388, z = 84.323 }, level = 1 },
	-- 3
	[64015] = { config_id = 64015, gadget_id = 70950157, pos = { x = 298.597, y = 161.127, z = 2065.298 }, rot = { x = 273.816, y = 34.698, z = 26.585 }, level = 1 },
	-- 4
	[64016] = { config_id = 64016, gadget_id = 70950157, pos = { x = 299.661, y = 154.584, z = 2059.695 }, rot = { x = 5.454, y = 357.956, z = 84.323 }, level = 1 },
	-- 5
	[64017] = { config_id = 64017, gadget_id = 70950157, pos = { x = 300.274, y = 161.077, z = 2061.135 }, rot = { x = 82.488, y = 201.322, z = 301.855 }, level = 1 },
	-- 6
	[64018] = { config_id = 64018, gadget_id = 70950157, pos = { x = 299.728, y = 163.658, z = 2065.068 }, rot = { x = 5.454, y = 357.956, z = 84.323 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1064011, name = "QUEST_FINISH_64011", event = EventType.EVENT_QUEST_FINISH, source = "4006904", condition = "", action = "action_EVENT_QUEST_FINISH_64011", trigger_count = 0 },
	{ config_id = 1064012, name = "ANY_GADGET_DIE_64012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_64012", action = "action_EVENT_ANY_GADGET_DIE_64012", trigger_count = 0 },
	-- 4006905 任务保底
	{ config_id = 1064019, name = "QUEST_START_64019", event = EventType.EVENT_QUEST_START, source = "4006905", condition = "condition_EVENT_QUEST_START_64019", action = "action_EVENT_QUEST_START_64019", trigger_count = 0 },
	-- 4006905 任务保底
	{ config_id = 1064020, name = "GROUP_LOAD_64020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_64020", action = "action_EVENT_GROUP_LOAD_64020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "doorDie", value = 0, no_refresh = true }
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
		gadgets = { 64001, 64002, 64003, 64004, 64005, 64006, 64007, 64008, 64009, 64010, 64013, 64014, 64015, 64016, 64017, 64018 },
		regions = { },
		triggers = { "QUEST_FINISH_64011", "ANY_GADGET_DIE_64012", "QUEST_START_64019", "GROUP_LOAD_64020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_64011(context, evt)
	-- 将configid为 64005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_64012(context, evt)
	if 64004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_64012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006905") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133064, EntityType.GADGET, 64013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133064, EntityType.GADGET, 64014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133064, EntityType.GADGET, 64015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133064, EntityType.GADGET, 64016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133064, EntityType.GADGET, 64017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133064, EntityType.GADGET, 64018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "doorDie" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "doorDie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_64019(context, evt)
	-- 判断变量"doorDie"为1
	if ScriptLib.GetGroupVariableValue(context, "doorDie") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_64019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006905") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_64020(context, evt)
	-- 判断变量"doorDie"为1
	if ScriptLib.GetGroupVariableValue(context, "doorDie") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_64020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006905") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

require "V2_8/TransferFlower"