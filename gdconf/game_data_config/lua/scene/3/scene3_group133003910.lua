-- 基础信息
local base_info = {
	group_id = 133003910
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
	{ config_id = 910001, gadget_id = 70300091, pos = { x = 2173.853, y = 206.336, z = -1060.270 }, rot = { x = 0.000, y = 1.265, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 910002, gadget_id = 70220026, pos = { x = 2170.717, y = 206.214, z = -1065.440 }, rot = { x = 0.000, y = 349.460, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 910003, gadget_id = 70300122, pos = { x = 2176.296, y = 210.223, z = -1034.372 }, rot = { x = 358.877, y = 317.371, z = 12.190 }, level = 2, area_id = 1 },
	{ config_id = 910004, gadget_id = 70300083, pos = { x = 2169.179, y = 207.601, z = -1048.448 }, rot = { x = 351.630, y = 53.569, z = 355.888 }, level = 1, area_id = 1 },
	{ config_id = 910006, gadget_id = 70300122, pos = { x = 2185.302, y = 210.471, z = -1033.810 }, rot = { x = 2.569, y = 295.650, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 910007, gadget_id = 70300100, pos = { x = 2176.166, y = 207.556, z = -1052.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 910008, gadget_id = 70220026, pos = { x = 2182.320, y = 209.548, z = -1047.583 }, rot = { x = 0.000, y = 2.380, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 910009, gadget_id = 70220013, pos = { x = 2169.038, y = 206.231, z = -1065.564 }, rot = { x = 0.000, y = 342.728, z = 8.583 }, level = 1, area_id = 1 },
	{ config_id = 910010, gadget_id = 70220014, pos = { x = 2183.266, y = 209.783, z = -1045.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 910011, gadget_id = 70220014, pos = { x = 2182.392, y = 209.654, z = -1046.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 910012, gadget_id = 70300091, pos = { x = 2184.263, y = 209.543, z = -1047.000 }, rot = { x = 0.000, y = 0.000, z = 1.558 }, level = 1, area_id = 1 },
	{ config_id = 910013, gadget_id = 70300093, pos = { x = 2158.421, y = 207.086, z = -1047.177 }, rot = { x = 0.000, y = 7.475, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 910015, gadget_id = 70220026, pos = { x = 2164.332, y = 208.242, z = -1044.770 }, rot = { x = 0.000, y = 295.885, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 910016, gadget_id = 70220014, pos = { x = 2165.266, y = 208.444, z = -1043.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 910017, gadget_id = 70300093, pos = { x = 2179.881, y = 206.965, z = -1060.667 }, rot = { x = 359.947, y = 325.984, z = 11.448 }, level = 1, area_id = 1 },
	{ config_id = 910018, gadget_id = 70220014, pos = { x = 2173.717, y = 206.812, z = -1058.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 910020, gadget_id = 70300089, pos = { x = 2172.222, y = 209.226, z = -1041.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 910025, gadget_id = 70300122, pos = { x = 2177.792, y = 210.214, z = -1035.933 }, rot = { x = 354.225, y = 310.733, z = 9.252 }, level = 2, area_id = 1 },
	{ config_id = 910026, gadget_id = 70300122, pos = { x = 2179.808, y = 210.101, z = -1036.907 }, rot = { x = 357.290, y = 294.801, z = 13.065 }, level = 2, area_id = 1 },
	{ config_id = 910027, gadget_id = 70300122, pos = { x = 2183.505, y = 210.216, z = -1033.905 }, rot = { x = 2.328, y = 269.045, z = 2.340 }, level = 2, area_id = 1 },
	{ config_id = 910028, gadget_id = 70300122, pos = { x = 2187.583, y = 210.535, z = -1034.565 }, rot = { x = 0.000, y = 284.485, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 910029, gadget_id = 70300122, pos = { x = 2176.714, y = 208.820, z = -1044.911 }, rot = { x = 0.820, y = 289.142, z = 2.418 }, level = 2, area_id = 1 },
	{ config_id = 910030, gadget_id = 70300122, pos = { x = 2179.312, y = 209.164, z = -1045.152 }, rot = { x = 7.737, y = 262.883, z = 359.689 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1910005, name = "ANY_GADGET_DIE_910005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_910005", action = "action_EVENT_ANY_GADGET_DIE_910005", trigger_count = 0 },
	{ config_id = 1910014, name = "ANY_GADGET_DIE_910014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_910014", action = "action_EVENT_ANY_GADGET_DIE_910014", trigger_count = 0 },
	{ config_id = 1910019, name = "ANY_GADGET_DIE_910019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_910019", action = "action_EVENT_ANY_GADGET_DIE_910019", trigger_count = 0 },
	{ config_id = 1910021, name = "ANY_GADGET_DIE_910021", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_910021", action = "action_EVENT_ANY_GADGET_DIE_910021", trigger_count = 0 },
	{ config_id = 1910022, name = "ANY_GADGET_DIE_910022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_910022", action = "action_EVENT_ANY_GADGET_DIE_910022", trigger_count = 0 },
	{ config_id = 1910023, name = "ANY_GADGET_DIE_910023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_910023", action = "action_EVENT_ANY_GADGET_DIE_910023", trigger_count = 0 },
	{ config_id = 1910024, name = "ANY_GADGET_DIE_910024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_910024", action = "action_EVENT_ANY_GADGET_DIE_910024", trigger_count = 0 },
	{ config_id = 1910031, name = "ANY_GADGET_DIE_910031", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_910031", action = "action_EVENT_ANY_GADGET_DIE_910031", trigger_count = 0 },
	{ config_id = 1910032, name = "ANY_GADGET_DIE_910032", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_910032", action = "action_EVENT_ANY_GADGET_DIE_910032", trigger_count = 0 },
	{ config_id = 1910033, name = "ANY_GADGET_DIE_910033", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_910033", action = "action_EVENT_ANY_GADGET_DIE_910033", trigger_count = 0 },
	{ config_id = 1910034, name = "ANY_GADGET_DIE_910034", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_910034", action = "action_EVENT_ANY_GADGET_DIE_910034", trigger_count = 0 },
	{ config_id = 1910035, name = "ANY_GADGET_DIE_910035", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_910035", action = "action_EVENT_ANY_GADGET_DIE_910035", trigger_count = 0 },
	{ config_id = 1910036, name = "ANY_GADGET_DIE_910036", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_910036", action = "action_EVENT_ANY_GADGET_DIE_910036", trigger_count = 0 },
	{ config_id = 1910037, name = "QUEST_START_910037", event = EventType.EVENT_QUEST_START, source = "39812", condition = "", action = "action_EVENT_QUEST_START_910037" }
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
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 910001, 910002, 910003, 910004, 910006, 910007, 910008, 910009, 910010, 910011, 910012, 910013, 910015, 910016, 910017, 910018, 910020, 910025, 910026, 910027, 910028, 910029, 910030 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_910005", "ANY_GADGET_DIE_910014", "ANY_GADGET_DIE_910019", "ANY_GADGET_DIE_910021", "ANY_GADGET_DIE_910022", "ANY_GADGET_DIE_910023", "ANY_GADGET_DIE_910024", "ANY_GADGET_DIE_910031", "ANY_GADGET_DIE_910032", "ANY_GADGET_DIE_910033", "ANY_GADGET_DIE_910034", "ANY_GADGET_DIE_910035", "ANY_GADGET_DIE_910036", "QUEST_START_910037" },
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
function condition_EVENT_ANY_GADGET_DIE_910005(context, evt)
	if 910006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_910005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_910014(context, evt)
	if 910003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_910014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_910019(context, evt)
	if 910001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_910019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_910021(context, evt)
	if 910012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_910021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_910022(context, evt)
	if 910004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_910022(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_910023(context, evt)
	if 910007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_910023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_910024(context, evt)
	if 910020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_910024(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_910031(context, evt)
	if 910025 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_910031(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_910032(context, evt)
	if 910026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_910032(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_910033(context, evt)
	if 910027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_910033(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_910034(context, evt)
	if 910028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_910034(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_910035(context, evt)
	if 910029 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_910035(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_910036(context, evt)
	if 910030 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_910036(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_910037(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end