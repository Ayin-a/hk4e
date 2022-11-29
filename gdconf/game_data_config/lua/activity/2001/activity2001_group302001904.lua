-- 基础信息
local base_info = {
	group_id = 302001904
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 904001, monster_id = 23010601, pos = { x = 1630.079, y = 196.332, z = -2591.860 }, rot = { x = 0.000, y = 311.100, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 2 },
	{ config_id = 904002, monster_id = 23010601, pos = { x = 1630.425, y = 194.724, z = -2583.033 }, rot = { x = 0.000, y = 249.700, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 904003, gadget_id = 70710205, pos = { x = 1616.196, y = 195.228, z = -2589.664 }, rot = { x = 0.000, y = 11.150, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	{ config_id = 904007, gadget_id = 70360001, pos = { x = 1616.137, y = 195.100, z = -2589.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1904004, name = "ANY_MONSTER_DIE_904004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_904004", action = "action_EVENT_ANY_MONSTER_DIE_904004", trigger_count = 0 },
	{ config_id = 1904005, name = "QUEST_START_904005", event = EventType.EVENT_QUEST_START, source = "4111412", condition = "", action = "action_EVENT_QUEST_START_904005", trigger_count = 0 },
	{ config_id = 1904006, name = "GADGET_CREATE_904006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_904006", action = "action_EVENT_GADGET_CREATE_904006", trigger_count = 0 },
	{ config_id = 1904008, name = "QUEST_FINISH_904008", event = EventType.EVENT_QUEST_FINISH, source = "4111402", condition = "", action = "action_EVENT_QUEST_FINISH_904008", trigger_count = 0 },
	{ config_id = 1904009, name = "SELECT_OPTION_904009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_904009", trigger_count = 0 },
	{ config_id = 1904010, name = "QUEST_START_904010", event = EventType.EVENT_QUEST_START, source = "4111413", condition = "", action = "action_EVENT_QUEST_START_904010", trigger_count = 0 },
	{ config_id = 1904011, name = "QUEST_START_904011", event = EventType.EVENT_QUEST_START, source = "4111410", condition = "", action = "action_EVENT_QUEST_START_904011", trigger_count = 0 },
	{ config_id = 1904012, name = "QUEST_START_904012", event = EventType.EVENT_QUEST_START, source = "4111415", condition = "", action = "action_EVENT_QUEST_START_904012", trigger_count = 0 }
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
		gadgets = { 904003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_904004", "QUEST_START_904005", "GADGET_CREATE_904006", "QUEST_FINISH_904008", "SELECT_OPTION_904009", "QUEST_START_904010", "QUEST_START_904011", "QUEST_START_904012" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 904001, 904002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_904004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_904004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "3020019041") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 904003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为904007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 904007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_904005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 302001904, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_904006(context, evt)
	if 904007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_904006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {213}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_904008(context, evt)
	-- 将configid为 904003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_SELECT_OPTION_904009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "3020019042") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_904010(context, evt)
	-- 创建id为904003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 904003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 904003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_904011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 302001904, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_904012(context, evt)
	-- 将configid为 904003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end