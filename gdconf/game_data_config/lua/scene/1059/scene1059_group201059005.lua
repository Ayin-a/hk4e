-- 基础信息
local base_info = {
	group_id = 201059005
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
	{ config_id = 5003, gadget_id = 70211121, pos = { x = -253.956, y = 38.436, z = 307.654 }, rot = { x = 0.000, y = 270.089, z = 0.000 }, level = 11, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true },
	{ config_id = 5005, gadget_id = 70900201, pos = { x = -176.622, y = 26.498, z = 234.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5006, gadget_id = 70211011, pos = { x = -157.008, y = 16.541, z = 218.448 }, rot = { x = 0.000, y = 268.216, z = 0.000 }, level = 11, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true },
	{ config_id = 5009, gadget_id = 70211001, pos = { x = -164.740, y = 26.524, z = 301.682 }, rot = { x = 0.000, y = 200.301, z = 0.000 }, level = 11, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 5001, shape = RegionShape.CUBIC, size = { x = 15.000, y = 5.000, z = 5.000 }, pos = { x = -177.445, y = 28.458, z = 237.150 } },
	{ config_id = 5004, shape = RegionShape.CUBIC, size = { x = 80.000, y = 1.000, z = 80.000 }, pos = { x = -165.984, y = 31.203, z = 133.946 } },
	{ config_id = 5007, shape = RegionShape.CUBIC, size = { x = 5.000, y = 20.000, z = 15.000 }, pos = { x = -172.016, y = 18.863, z = 219.429 } },
	{ config_id = 5008, shape = RegionShape.CUBIC, size = { x = 20.000, y = 20.000, z = 5.000 }, pos = { x = -159.211, y = 18.679, z = 200.194 } }
}

-- 触发器
triggers = {
	{ config_id = 1005001, name = "ENTER_REGION_5001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5001", action = "action_EVENT_ENTER_REGION_5001" },
	{ config_id = 1005002, name = "DUNGEON_SETTLE_5002", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_5002", action = "action_EVENT_DUNGEON_SETTLE_5002" },
	{ config_id = 1005004, name = "ENTER_REGION_5004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5004", action = "action_EVENT_ENTER_REGION_5004" },
	{ config_id = 1005007, name = "ENTER_REGION_5007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5007", action = "action_EVENT_ENTER_REGION_5007", trigger_count = 0 },
	{ config_id = 1005008, name = "ENTER_REGION_5008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5008", action = "action_EVENT_ENTER_REGION_5008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Weather", value = 0, no_refresh = false }
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
		gadgets = { 5006, 5009 },
		regions = { 5001, 5004, 5007, 5008 },
		triggers = { "ENTER_REGION_5001", "DUNGEON_SETTLE_5002", "ENTER_REGION_5004", "ENTER_REGION_5007", "ENTER_REGION_5008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5003 },
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
function condition_EVENT_ENTER_REGION_5001(context, evt)
	if evt.param1 ~= 5001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5001(context, evt)
	-- 调用提示id为 10590127 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10590127) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "10595001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_5002(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_5002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201059005, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5004(context, evt)
	if evt.param1 ~= 5004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5004(context, evt)
	-- 创建id为5005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "Enterloop" 的变量设置为 100
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Enterloop", 100, 201059004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5007(context, evt)
	if evt.param1 ~= 5007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"Weather"为0
	if ScriptLib.GetGroupVariableValue(context, "Weather") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5007(context, evt)
	-- 将本组内变量名为 "Weather" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Weather", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5008(context, evt)
	if evt.param1 ~= 5008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"Weather"为1
	if ScriptLib.GetGroupVariableValue(context, "Weather") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5008(context, evt)
	--修改天气为地城前半段效果
	ScriptLib.SetWeatherAreaState(context, 10003 ,1)
	
	
	
	-- 将本组内变量名为 "Weather" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Weather", 0) then
	  return -1
	end
	
	return 0
end