-- 基础信息
local base_info = {
	group_id = 133313035
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35019, monster_id = 28060509, pos = { x = -1400.611, y = 35.766, z = 5190.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 空空的木箱
	{ config_id = 35001, gadget_id = 70300118, pos = { x = -1346.035, y = 47.591, z = 5072.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	-- 军靴
	{ config_id = 35005, gadget_id = 70300118, pos = { x = -1366.415, y = 45.346, z = 5101.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	-- 散落的火柴梗
	{ config_id = 35006, gadget_id = 70300118, pos = { x = -1393.214, y = 39.548, z = 5147.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 35007, gadget_id = 70310004, pos = { x = -1393.234, y = 39.547, z = 5147.101 }, rot = { x = 9.663, y = 17.074, z = 354.604 }, level = 1, state = GadgetState.GearStop, area_id = 32 },
	{ config_id = 35008, gadget_id = 71700435, pos = { x = -1344.882, y = 47.998, z = 5072.756 }, rot = { x = 350.439, y = 359.037, z = 7.790 }, level = 1, area_id = 32 },
	{ config_id = 35009, gadget_id = 71700435, pos = { x = -1346.478, y = 47.679, z = 5073.984 }, rot = { x = 354.843, y = 359.288, z = 15.710 }, level = 1, area_id = 32 },
	{ config_id = 35012, gadget_id = 70710548, pos = { x = -1366.409, y = 45.181, z = 5101.718 }, rot = { x = 328.370, y = 0.480, z = 249.364 }, level = 1, area_id = 32 },
	{ config_id = 35013, gadget_id = 70300093, pos = { x = -1375.559, y = 42.408, z = 5124.669 }, rot = { x = 350.156, y = 137.816, z = 351.367 }, level = 1, area_id = 32 },
	{ config_id = 35014, gadget_id = 70220064, pos = { x = -1385.871, y = 41.772, z = 5123.998 }, rot = { x = 0.000, y = 0.000, z = 308.823 }, level = 1, area_id = 32 },
	{ config_id = 35015, gadget_id = 70220062, pos = { x = -1384.677, y = 40.520, z = 5143.809 }, rot = { x = 290.344, y = 6.963, z = 0.027 }, level = 1, area_id = 32 },
	{ config_id = 35016, gadget_id = 71700434, pos = { x = -1395.302, y = 39.470, z = 5148.689 }, rot = { x = 12.463, y = 0.001, z = 345.231 }, level = 1, area_id = 32 },
	{ config_id = 35017, gadget_id = 70710548, pos = { x = -1393.647, y = 39.506, z = 5148.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 35020, gadget_id = 70710414, pos = { x = -1367.006, y = 33.516, z = 5221.127 }, rot = { x = 0.000, y = 250.291, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 35021, gadget_id = 70710416, pos = { x = -1387.591, y = 34.324, z = 5207.654 }, rot = { x = 2.724, y = 264.533, z = 349.715 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
	-- 木箱reminder
	{ config_id = 35002, shape = RegionShape.SPHERE, radius = 12, pos = { x = -1346.035, y = 47.591, z = 5072.280 }, area_id = 32 },
	-- 军靴reminder
	{ config_id = 35003, shape = RegionShape.SPHERE, radius = 12, pos = { x = -1366.334, y = 45.217, z = 5101.307 }, area_id = 32 },
	-- 火柴梗reminder
	{ config_id = 35004, shape = RegionShape.SPHERE, radius = 12, pos = { x = -1390.832, y = 39.559, z = 5147.029 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 木箱reminder
	{ config_id = 1035002, name = "ENTER_REGION_35002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_35002", action = "action_EVENT_ENTER_REGION_35002" },
	-- 军靴reminder
	{ config_id = 1035003, name = "ENTER_REGION_35003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_35003", action = "action_EVENT_ENTER_REGION_35003" },
	-- 火柴梗reminder
	{ config_id = 1035004, name = "ENTER_REGION_35004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_35004", action = "action_EVENT_ENTER_REGION_35004" },
	{ config_id = 1035010, name = "QUEST_FINISH_35010", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_35010", action = "action_EVENT_QUEST_FINISH_35010" },
	{ config_id = 1035011, name = "QUEST_FINISH_35011", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_35011", action = "action_EVENT_QUEST_FINISH_35011" },
	{ config_id = 1035018, name = "QUEST_FINISH_35018", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_35018", action = "action_EVENT_QUEST_FINISH_35018" }
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
		monsters = { 35019 },
		gadgets = { 35001, 35005, 35006, 35007, 35008, 35009, 35012, 35013, 35014, 35015, 35016, 35017, 35020, 35021 },
		regions = { 35002, 35003, 35004 },
		triggers = { "ENTER_REGION_35002", "ENTER_REGION_35003", "ENTER_REGION_35004", "QUEST_FINISH_35010", "QUEST_FINISH_35011", "QUEST_FINISH_35018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_35002(context, evt)
	if evt.param1 ~= 35002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_35002(context, evt)
	-- 调用提示id为 1000170003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000170003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_35003(context, evt)
	if evt.param1 ~= 35003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_35003(context, evt)
	-- 调用提示id为 1000170004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000170004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_35004(context, evt)
	if evt.param1 ~= 35004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_35004(context, evt)
	-- 调用提示id为 1000170002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000170002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_35010(context, evt)
	--检查ID为7326420的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7326420 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_35010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133313035, EntityType.GADGET, 35001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_35011(context, evt)
	--检查ID为7326421的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7326421 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_35011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133313035, EntityType.GADGET, 35005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_35018(context, evt)
	--检查ID为7326405的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7326405 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_35018(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133313035, EntityType.GADGET, 35006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end