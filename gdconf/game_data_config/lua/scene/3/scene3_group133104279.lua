-- 基础信息
local base_info = {
	group_id = 133104279
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 279016, monster_id = 20010301, pos = { x = 902.857, y = 245.815, z = 367.516 }, rot = { x = 0.000, y = 271.510, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 279017, monster_id = 20010301, pos = { x = 902.833, y = 245.815, z = 368.800 }, rot = { x = 0.000, y = 238.320, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 279018, monster_id = 20010301, pos = { x = 901.742, y = 245.813, z = 369.374 }, rot = { x = 0.000, y = 189.143, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 279019, monster_id = 20010301, pos = { x = 900.838, y = 245.814, z = 368.814 }, rot = { x = 0.000, y = 155.945, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 279001, gadget_id = 70220001, pos = { x = 909.610, y = 262.182, z = 331.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 279002, gadget_id = 70220001, pos = { x = 879.763, y = 253.338, z = 341.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 279003, gadget_id = 70220001, pos = { x = 901.876, y = 245.814, z = 368.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 279004, gadget_id = 70220001, pos = { x = 902.230, y = 237.976, z = 334.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 279005, gadget_id = 70220001, pos = { x = 911.027, y = 232.743, z = 350.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 279006, gadget_id = 70220001, pos = { x = 902.742, y = 224.280, z = 378.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 279014, gadget_id = 70211121, pos = { x = 924.909, y = 212.857, z = 336.986 }, rot = { x = 0.000, y = 215.044, z = 0.000 }, level = 16, drop_tag = "解谜高级璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 279022, gadget_id = 70900201, pos = { x = 909.411, y = 262.835, z = 331.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 279023, gadget_id = 70900201, pos = { x = 879.761, y = 253.725, z = 341.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 279024, gadget_id = 70900201, pos = { x = 901.850, y = 246.332, z = 368.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 279025, gadget_id = 70900201, pos = { x = 902.195, y = 238.354, z = 334.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 279026, gadget_id = 70900201, pos = { x = 911.095, y = 233.370, z = 350.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 279027, gadget_id = 70900201, pos = { x = 902.742, y = 225.000, z = 378.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 279020, shape = RegionShape.SPHERE, radius = 2, pos = { x = 911.117, y = 232.744, z = 350.617 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1279007, name = "ANY_GADGET_DIE_279007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_279007", action = "action_EVENT_ANY_GADGET_DIE_279007", trigger_count = 0 },
	{ config_id = 1279008, name = "ANY_GADGET_DIE_279008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_279008", action = "action_EVENT_ANY_GADGET_DIE_279008", trigger_count = 0 },
	{ config_id = 1279009, name = "ANY_GADGET_DIE_279009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_279009", action = "action_EVENT_ANY_GADGET_DIE_279009", trigger_count = 0 },
	{ config_id = 1279010, name = "ANY_GADGET_DIE_279010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_279010", action = "action_EVENT_ANY_GADGET_DIE_279010", trigger_count = 0 },
	{ config_id = 1279011, name = "ANY_GADGET_DIE_279011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_279011", action = "action_EVENT_ANY_GADGET_DIE_279011", trigger_count = 0 },
	{ config_id = 1279012, name = "ANY_GADGET_DIE_279012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_279012", action = "action_EVENT_ANY_GADGET_DIE_279012", trigger_count = 0 },
	{ config_id = 1279013, name = "QUEST_FINISH_279013", event = EventType.EVENT_QUEST_FINISH, source = "2101209", condition = "", action = "action_EVENT_QUEST_FINISH_279013" },
	{ config_id = 1279015, name = "ANY_GADGET_DIE_279015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_279015", action = "action_EVENT_ANY_GADGET_DIE_279015" },
	{ config_id = 1279020, name = "ENTER_REGION_279020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1279021, name = "GADGET_CREATE_279021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_279021", action = "action_EVENT_GADGET_CREATE_279021", trigger_count = 0 },
	{ config_id = 1279028, name = "QUEST_START_279028", event = EventType.EVENT_QUEST_START, source = "2101202", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1279029, name = "GADGET_CREATE_279029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_279029", action = "action_EVENT_GADGET_CREATE_279029", trigger_count = 0 },
	{ config_id = 1279030, name = "GADGET_CREATE_279030", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_279030", action = "action_EVENT_GADGET_CREATE_279030", trigger_count = 0 },
	{ config_id = 1279031, name = "GADGET_CREATE_279031", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_279031", action = "action_EVENT_GADGET_CREATE_279031", trigger_count = 0 },
	{ config_id = 1279032, name = "GADGET_CREATE_279032", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_279032", action = "action_EVENT_GADGET_CREATE_279032", trigger_count = 0 },
	{ config_id = 1279033, name = "GADGET_CREATE_279033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_279033", action = "action_EVENT_GADGET_CREATE_279033", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "GADGET_CREATE_279021", "QUEST_START_279028", "GADGET_CREATE_279029", "GADGET_CREATE_279030", "GADGET_CREATE_279031", "GADGET_CREATE_279032", "GADGET_CREATE_279033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 279001, 279002, 279003, 279004, 279005, 279006 },
		regions = { 279020 },
		triggers = { "ANY_GADGET_DIE_279007", "ANY_GADGET_DIE_279008", "ANY_GADGET_DIE_279009", "ANY_GADGET_DIE_279010", "ANY_GADGET_DIE_279011", "ANY_GADGET_DIE_279012", "QUEST_FINISH_279013", "ANY_GADGET_DIE_279015", "ENTER_REGION_279020", "QUEST_START_279028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 279022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 279023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 279024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { 279025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { },
		gadgets = { 279026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = suite_8,
		monsters = { },
		gadgets = { 279027 },
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
function condition_EVENT_ANY_GADGET_DIE_279007(context, evt)
	if 279001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_279007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104279_1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104279, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_279008(context, evt)
	if 279002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_279008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104279_2") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104279, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_279009(context, evt)
	if 279003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_279009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104279_3") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104279, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_279010(context, evt)
	if 279004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_279010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104279_4") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104279, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_279011(context, evt)
	if 279005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_279011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104279_5") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104279, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_279012(context, evt)
	if 279006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_279012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104279_6") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104279, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_279013(context, evt)
	-- 创建id为279014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 279014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_279015(context, evt)
	if 279003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_279015(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 279016, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 279017, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 279018, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 279019, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_279021(context, evt)
	if 279001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_279021(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104279, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_279029(context, evt)
	if 279002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_279029(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104279, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_279030(context, evt)
	if 279003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_279030(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104279, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_279031(context, evt)
	if 279004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_279031(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104279, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_279032(context, evt)
	if 279005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_279032(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104279, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_279033(context, evt)
	if 279006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_279033(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104279, 8)
	
	return 0
end