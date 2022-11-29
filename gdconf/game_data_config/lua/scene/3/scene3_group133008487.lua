-- 基础信息
local base_info = {
	group_id = 133008487
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
	{ config_id = 487003, gadget_id = 70310035, pos = { x = 973.288, y = 508.657, z = -934.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 487008, gadget_id = 70310035, pos = { x = 1094.600, y = 508.557, z = -934.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 487009, gadget_id = 70310035, pos = { x = 1094.600, y = 508.557, z = -762.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 487010, gadget_id = 70310035, pos = { x = 973.400, y = 508.557, z = -762.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 487011, gadget_id = 70310035, pos = { x = 938.600, y = 508.557, z = -848.394 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 487012, gadget_id = 70310035, pos = { x = 1130.200, y = 508.557, z = -848.394 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 487013, gadget_id = 70310035, pos = { x = 973.288, y = 508.657, z = -962.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 487014, gadget_id = 70310035, pos = { x = 1094.600, y = 508.557, z = -962.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 487001, shape = RegionShape.CUBIC, size = { x = 120.000, y = 120.000, z = 50.000 }, pos = { x = 974.229, y = 523.640, z = -933.197 }, area_id = 10 },
	{ config_id = 487002, shape = RegionShape.CUBIC, size = { x = 80.000, y = 120.000, z = 120.000 }, pos = { x = 954.914, y = 523.640, z = -848.224 }, area_id = 10 },
	{ config_id = 487004, shape = RegionShape.CUBIC, size = { x = 70.000, y = 120.000, z = 120.000 }, pos = { x = 1119.563, y = 523.640, z = -848.224 }, area_id = 10 },
	{ config_id = 487005, shape = RegionShape.CUBIC, size = { x = 120.000, y = 120.000, z = 50.000 }, pos = { x = 1094.654, y = 523.640, z = -763.219 }, area_id = 10 },
	{ config_id = 487006, shape = RegionShape.CUBIC, size = { x = 120.000, y = 120.000, z = 50.000 }, pos = { x = 974.791, y = 523.640, z = -763.219 }, area_id = 10 },
	{ config_id = 487007, shape = RegionShape.CUBIC, size = { x = 120.000, y = 120.000, z = 50.000 }, pos = { x = 1094.344, y = 523.640, z = -933.040 }, area_id = 10 },
	{ config_id = 487015, shape = RegionShape.CUBIC, size = { x = 120.000, y = 120.000, z = 50.000 }, pos = { x = 974.229, y = 523.640, z = -960.823 }, area_id = 10 },
	{ config_id = 487016, shape = RegionShape.CUBIC, size = { x = 120.000, y = 120.000, z = 50.000 }, pos = { x = 1094.344, y = 523.640, z = -960.666 }, area_id = 10 },
	{ config_id = 487021, shape = RegionShape.CUBIC, size = { x = 90.000, y = 20.000, z = 120.000 }, pos = { x = 1039.881, y = 575.487, z = -848.518 }, area_id = 10 },
	{ config_id = 487022, shape = RegionShape.CUBIC, size = { x = 60.000, y = 150.000, z = 200.000 }, pos = { x = 1134.605, y = 533.825, z = -898.545 }, area_id = 10 },
	{ config_id = 487023, shape = RegionShape.CUBIC, size = { x = 200.000, y = 150.000, z = 110.000 }, pos = { x = 1004.906, y = 533.190, z = -939.319 }, area_id = 10 },
	{ config_id = 487024, shape = RegionShape.CUBIC, size = { x = 170.000, y = 150.000, z = 80.000 }, pos = { x = 1079.816, y = 533.825, z = -765.138 }, area_id = 10 },
	{ config_id = 487025, shape = RegionShape.CUBIC, size = { x = 85.000, y = 150.000, z = 160.000 }, pos = { x = 954.006, y = 530.658, z = -804.543 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1487001, name = "ENTER_REGION_487001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487001", action = "action_EVENT_ENTER_REGION_487001", trigger_count = 0, forbid_guest = false },
	{ config_id = 1487002, name = "ENTER_REGION_487002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487002", action = "action_EVENT_ENTER_REGION_487002", trigger_count = 0, forbid_guest = false },
	{ config_id = 1487004, name = "ENTER_REGION_487004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487004", action = "action_EVENT_ENTER_REGION_487004", trigger_count = 0, forbid_guest = false },
	{ config_id = 1487005, name = "ENTER_REGION_487005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487005", action = "action_EVENT_ENTER_REGION_487005", trigger_count = 0, forbid_guest = false },
	{ config_id = 1487006, name = "ENTER_REGION_487006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487006", action = "action_EVENT_ENTER_REGION_487006", trigger_count = 0, forbid_guest = false },
	{ config_id = 1487007, name = "ENTER_REGION_487007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487007", action = "action_EVENT_ENTER_REGION_487007", trigger_count = 0, forbid_guest = false },
	{ config_id = 1487015, name = "ENTER_REGION_487015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487015", action = "action_EVENT_ENTER_REGION_487015", trigger_count = 0, forbid_guest = false },
	{ config_id = 1487016, name = "ENTER_REGION_487016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487016", action = "action_EVENT_ENTER_REGION_487016", trigger_count = 0, forbid_guest = false },
	{ config_id = 1487021, name = "ENTER_REGION_487021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487021", action = "action_EVENT_ENTER_REGION_487021", trigger_count = 0, forbid_guest = false },
	{ config_id = 1487022, name = "ENTER_REGION_487022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487022", action = "action_EVENT_ENTER_REGION_487022", trigger_count = 0, forbid_guest = false },
	{ config_id = 1487023, name = "ENTER_REGION_487023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487023", action = "action_EVENT_ENTER_REGION_487023", trigger_count = 0, forbid_guest = false },
	{ config_id = 1487024, name = "ENTER_REGION_487024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487024", action = "action_EVENT_ENTER_REGION_487024", trigger_count = 0, forbid_guest = false },
	{ config_id = 1487025, name = "ENTER_REGION_487025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487025", action = "action_EVENT_ENTER_REGION_487025", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 487003, 487008, 487009, 487010, 487011, 487012, 487013, 487014 },
		regions = { 487001, 487002, 487004, 487005, 487006, 487007, 487015, 487016, 487021, 487022, 487023, 487024, 487025 },
		triggers = { "ENTER_REGION_487001", "ENTER_REGION_487002", "ENTER_REGION_487004", "ENTER_REGION_487005", "ENTER_REGION_487006", "ENTER_REGION_487007", "ENTER_REGION_487015", "ENTER_REGION_487016", "ENTER_REGION_487021", "ENTER_REGION_487022", "ENTER_REGION_487023", "ENTER_REGION_487024", "ENTER_REGION_487025" },
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
function condition_EVENT_ENTER_REGION_487001(context, evt)
	if evt.param1 ~= 487001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487001(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=1173, y=407, z=-1021}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=0, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_487002(context, evt)
	if evt.param1 ~= 487002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487002(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=1173, y=407, z=-1021}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=0, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_487004(context, evt)
	if evt.param1 ~= 487004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487004(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=1266, y=380, z=-846}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=0, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_487005(context, evt)
	if evt.param1 ~= 487005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487005(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=919, y=380, z=-705}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=0, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_487006(context, evt)
	if evt.param1 ~= 487006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487006(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=919, y=380, z=-705}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=0, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_487007(context, evt)
	if evt.param1 ~= 487007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487007(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=1173, y=407, z=-1021}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=0, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_487015(context, evt)
	if evt.param1 ~= 487015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487015(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=1173, y=407, z=-1021}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=0, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_487016(context, evt)
	if evt.param1 ~= 487016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487016(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=1173, y=407, z=-1021}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=0, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_487021(context, evt)
	if evt.param1 ~= 487021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487021(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=1173, y=407, z=-1021}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=0, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_487022(context, evt)
	if evt.param1 ~= 487022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487022(context, evt)
	-- 调用提示id为 30080113 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30080113) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_487023(context, evt)
	if evt.param1 ~= 487023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487023(context, evt)
	-- 调用提示id为 30080113 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30080113) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_487024(context, evt)
	if evt.param1 ~= 487024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487024(context, evt)
	-- 调用提示id为 30080113 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30080113) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_487025(context, evt)
	if evt.param1 ~= 487025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487025(context, evt)
	-- 调用提示id为 30080113 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30080113) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end