-- 基础信息
local base_info = {
	group_id = 133008685
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 685001, monster_id = 28020802, pos = { x = 1067.385, y = 303.773, z = -1140.657 }, rot = { x = 0.000, y = 120.707, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 1
	{ config_id = 685002, gadget_id = 70360273, pos = { x = 1063.065, y = 307.229, z = -1127.717 }, rot = { x = 0.000, y = 163.409, z = 0.000 }, level = 30, mark_flag = 1, area_id = 10 },
	-- 2
	{ config_id = 685003, gadget_id = 70360273, pos = { x = 1052.675, y = 312.270, z = -1131.292 }, rot = { x = 0.000, y = 93.030, z = 0.000 }, level = 30, mark_flag = 2, area_id = 10 },
	-- 5
	{ config_id = 685004, gadget_id = 70360274, pos = { x = 1030.740, y = 316.106, z = -1124.842 }, rot = { x = 0.000, y = 83.254, z = 0.000 }, level = 30, mark_flag = 5, area_id = 10 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 685005, gadget_id = 70360102, pos = { x = 1030.740, y = 316.049, z = -1124.842 }, rot = { x = 0.000, y = 83.254, z = 0.000 }, level = 30, area_id = 10 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 685007, gadget_id = 70360276, pos = { x = 1030.740, y = 316.072, z = -1124.842 }, rot = { x = 0.000, y = 83.254, z = 0.000 }, level = 30, area_id = 10 },
	-- 4
	{ config_id = 685015, gadget_id = 70360273, pos = { x = 1030.740, y = 316.072, z = -1124.842 }, rot = { x = 0.000, y = 83.254, z = 0.000 }, level = 30, mark_flag = 4, area_id = 10 },
	-- 3
	{ config_id = 685016, gadget_id = 70360273, pos = { x = 1039.953, y = 316.004, z = -1128.971 }, rot = { x = 0.000, y = 109.854, z = 0.000 }, level = 30, mark_flag = 3, area_id = 10 }
}

-- 区域
regions = {
	-- 提示 300868304
	{ config_id = 685011, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1067.439, y = 303.697, z = -1140.907 }, area_id = 10 },
	-- 提示2
	{ config_id = 685012, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1057.225, y = 311.264, z = -1136.750 }, area_id = 10 },
	-- 提示3
	{ config_id = 685013, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1044.029, y = 314.704, z = -1129.310 }, area_id = 10 },
	-- 提示4
	{ config_id = 685014, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1030.669, y = 316.119, z = -1123.589 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1685009, name = "ANY_MONSTER_DIE_685009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_685009", action = "action_EVENT_ANY_MONSTER_DIE_685009" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1685010, name = "ANY_GADGET_DIE_685010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_685010", action = "action_EVENT_ANY_GADGET_DIE_685010" },
	-- 提示 300868304
	{ config_id = 1685011, name = "ENTER_REGION_685011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_685011", action = "action_EVENT_ENTER_REGION_685011" },
	-- 提示2
	{ config_id = 1685012, name = "ENTER_REGION_685012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_685012", action = "action_EVENT_ENTER_REGION_685012" },
	-- 提示3
	{ config_id = 1685013, name = "ENTER_REGION_685013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_685013", action = "action_EVENT_ENTER_REGION_685013" },
	-- 提示4
	{ config_id = 1685014, name = "ENTER_REGION_685014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_685014", action = "action_EVENT_ENTER_REGION_685014" }
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
		monsters = { 685001 },
		gadgets = { 685002, 685003, 685004, 685015, 685016 },
		regions = { 685011 },
		triggers = { "ANY_MONSTER_DIE_685009", "ENTER_REGION_685011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 685005, 685007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_685010" },
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
	},
	{
		-- suite_id = 4,
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
function condition_EVENT_ANY_MONSTER_DIE_685009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_685009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7226405") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008685, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_685010(context, evt)
	if 685005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_685010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 685005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7226405") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_685011(context, evt)
	if evt.param1 ~= 685011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_685011(context, evt)
	-- 调用提示id为 300868304 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300868304) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_685012(context, evt)
	if evt.param1 ~= 685012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_685012(context, evt)
	-- 调用提示id为 1106002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1106002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_685013(context, evt)
	if evt.param1 ~= 685013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_685013(context, evt)
	-- 调用提示id为 1107003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1107003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_685014(context, evt)
	if evt.param1 ~= 685014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_685014(context, evt)
	-- 调用提示id为 1106001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1106001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end