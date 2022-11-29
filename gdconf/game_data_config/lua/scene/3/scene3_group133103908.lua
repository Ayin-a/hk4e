-- 基础信息
local base_info = {
	group_id = 133103908
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 908001, monster_id = 21010201, pos = { x = 734.536, y = 385.225, z = 1910.878 }, rot = { x = 0.000, y = 165.666, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 908002, monster_id = 20010501, pos = { x = 764.207, y = 314.134, z = 1769.151 }, rot = { x = 0.000, y = 247.477, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 908003, monster_id = 20011401, pos = { x = 759.163, y = 369.766, z = 1870.385 }, rot = { x = 0.000, y = 318.973, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 908004, monster_id = 28020301, pos = { x = 804.506, y = 329.708, z = 1828.472 }, rot = { x = 0.000, y = 284.327, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 908005, monster_id = 21010701, pos = { x = 746.893, y = 319.332, z = 1792.742 }, rot = { x = 0.000, y = 48.392, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 908006, gadget_id = 70360045, pos = { x = 734.538, y = 384.777, z = 1910.846 }, rot = { x = 0.000, y = 300.386, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 908007, gadget_id = 70360045, pos = { x = 764.312, y = 312.900, z = 1769.464 }, rot = { x = 349.791, y = 12.267, z = 353.652 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 908008, gadget_id = 70360045, pos = { x = 759.098, y = 369.658, z = 1870.475 }, rot = { x = 0.000, y = 115.532, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 908009, gadget_id = 70360045, pos = { x = 804.568, y = 329.065, z = 1828.617 }, rot = { x = 351.496, y = 268.892, z = 17.483 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 908010, gadget_id = 70360045, pos = { x = 746.676, y = 318.639, z = 1793.044 }, rot = { x = 0.000, y = 58.186, z = 345.402 }, level = 24, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1908011, name = "QUEST_FINISH_908011", event = EventType.EVENT_QUEST_FINISH, source = "100808", condition = "condition_EVENT_QUEST_FINISH_908011", action = "action_EVENT_QUEST_FINISH_908011" },
	{ config_id = 1908017, name = "GADGET_STATE_CHANGE_908017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_908017", action = "action_EVENT_GADGET_STATE_CHANGE_908017" },
	{ config_id = 1908018, name = "GADGET_STATE_CHANGE_908018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_908018", action = "action_EVENT_GADGET_STATE_CHANGE_908018" },
	{ config_id = 1908019, name = "GADGET_STATE_CHANGE_908019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_908019", action = "action_EVENT_GADGET_STATE_CHANGE_908019" },
	{ config_id = 1908020, name = "GADGET_STATE_CHANGE_908020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_908020", action = "action_EVENT_GADGET_STATE_CHANGE_908020" },
	{ config_id = 1908021, name = "GADGET_STATE_CHANGE_908021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_908021", action = "action_EVENT_GADGET_STATE_CHANGE_908021" },
	{ config_id = 1908022, name = "GADGET_STATE_CHANGE_908022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_908022", action = "action_EVENT_GADGET_STATE_CHANGE_908022" },
	{ config_id = 1908023, name = "GADGET_STATE_CHANGE_908023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_908023", action = "action_EVENT_GADGET_STATE_CHANGE_908023" },
	{ config_id = 1908024, name = "GADGET_STATE_CHANGE_908024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_908024", action = "action_EVENT_GADGET_STATE_CHANGE_908024" },
	{ config_id = 1908025, name = "GADGET_STATE_CHANGE_908025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_908025", action = "action_EVENT_GADGET_STATE_CHANGE_908025" },
	{ config_id = 1908026, name = "GADGET_STATE_CHANGE_908026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_908026", action = "action_EVENT_GADGET_STATE_CHANGE_908026" }
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
		triggers = { "QUEST_FINISH_908011" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 908006, 908007, 908008, 908009, 908010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_908017", "GADGET_STATE_CHANGE_908023", "GADGET_STATE_CHANGE_908024", "GADGET_STATE_CHANGE_908025", "GADGET_STATE_CHANGE_908026" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 908006, 908007, 908008, 908009, 908010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_908018", "GADGET_STATE_CHANGE_908022", "GADGET_STATE_CHANGE_908024", "GADGET_STATE_CHANGE_908025", "GADGET_STATE_CHANGE_908026" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 908006, 908007, 908008, 908009, 908010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_908019", "GADGET_STATE_CHANGE_908022", "GADGET_STATE_CHANGE_908023", "GADGET_STATE_CHANGE_908025", "GADGET_STATE_CHANGE_908026" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 908006, 908007, 908008, 908009, 908010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_908020", "GADGET_STATE_CHANGE_908022", "GADGET_STATE_CHANGE_908023", "GADGET_STATE_CHANGE_908024", "GADGET_STATE_CHANGE_908026" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 908006, 908007, 908008, 908009, 908010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_908021", "GADGET_STATE_CHANGE_908022", "GADGET_STATE_CHANGE_908023", "GADGET_STATE_CHANGE_908024", "GADGET_STATE_CHANGE_908025" },
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
function condition_EVENT_QUEST_FINISH_908011(context, evt)
	--检查ID为100808的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 100808 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_908011(context, evt)
			-- 重新生成指定group，排除之前选择的suite
			math.randomseed(tostring(os.time()):reverse():sub(1, 7))
			local n = math.random(2,6)
			if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103908, suite = n }) then
				return -1
			end
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_908017(context, evt)
	if 908006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_908017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310390801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103907, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_908018(context, evt)
	if 908007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_908018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310390801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103907, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_908019(context, evt)
	if 908008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_908019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310390801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103907, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_908020(context, evt)
	if 908009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_908020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310390801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103907, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_908021(context, evt)
	if 908010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_908021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310390801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103907, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_908022(context, evt)
	if 908006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_908022(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 908001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_908023(context, evt)
	if 908007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_908023(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 908002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_908024(context, evt)
	if 908008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_908024(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 908003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_908025(context, evt)
	if 908009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_908025(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 908004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_908026(context, evt)
	if 908010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_908026(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 908005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end