-- 基础信息
local base_info = {
	group_id = 220163002
}

-- Trigger变量
local defs = {
	point_camera = 2024,
	gadget_lookEntity = 2025,
	look_duration = 6
}

-- DEFS_MISCS
local CameraLookSetting = {

    blend_type = 0,

    blend_duration = 4,

    is_force_walk = false,

    is_allow_input = ture,

    delay = 0,

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
	[2004] = { config_id = 2004, gadget_id = 70900203, pos = { x = 2.857, y = 57.295, z = 1.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 第一个电车提示点
	[2007] = { config_id = 2007, gadget_id = 70900203, pos = { x = -39.559, y = 57.915, z = -10.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 圆盘操作台提示点1
	[2010] = { config_id = 2010, gadget_id = 70900203, pos = { x = -24.064, y = 70.316, z = -10.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	-- 圆盘操作台提示点2
	[2011] = { config_id = 2011, gadget_id = 70900203, pos = { x = -19.697, y = 84.918, z = -40.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 圆盘操作提示点3
	[2016] = { config_id = 2016, gadget_id = 70900203, pos = { x = 35.423, y = 75.110, z = -59.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 圆盘操作提示点4
	[2017] = { config_id = 2017, gadget_id = 70900203, pos = { x = 25.536, y = 82.354, z = 2.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2022] = { config_id = 2022, gadget_id = 70900203, pos = { x = 8.772, y = 83.554, z = -68.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[2025] = { config_id = 2025, gadget_id = 70350085, pos = { x = 2.915, y = 58.302, z = -9.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2027] = { config_id = 2027, gadget_id = 70220103, pos = { x = 32.947, y = 76.906, z = -65.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- reminder1--提示管道
	[2002] = { config_id = 2002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2.184, y = 51.975, z = 86.321 } },
	-- 中间电梯reminder指引
	[2005] = { config_id = 2005, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 10.000 }, pos = { x = 0.859, y = 63.981, z = 52.133 } },
	-- reminder2--提示找机关
	[2006] = { config_id = 2006, shape = RegionShape.CUBIC, size = { x = 30.000, y = 10.000, z = 10.000 }, pos = { x = 2.554, y = 60.647, z = 1.608 } },
	[2008] = { config_id = 2008, shape = RegionShape.SPHERE, radius = 6, pos = { x = -37.463, y = 57.351, z = -11.000 } },
	-- 圆盘操作提示点1触发
	[2009] = { config_id = 2009, shape = RegionShape.CUBIC, size = { x = 27.000, y = 10.000, z = 23.000 }, pos = { x = -35.550, y = 73.667, z = -8.673 } },
	-- 轨道塞车reminder
	[2014] = { config_id = 2014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -33.261, y = 83.865, z = -56.633 } },
	[2023] = { config_id = 2023, shape = RegionShape.CUBIC, size = { x = 30.000, y = 10.000, z = 20.000 }, pos = { x = 23.741, y = 82.393, z = -66.595 } },
	-- 到达平台3
	[2028] = { config_id = 2028, shape = RegionShape.SPHERE, radius = 8, pos = { x = 38.937, y = 74.847, z = -64.265 } },
	-- 到达平台4
	[2029] = { config_id = 2029, shape = RegionShape.SPHERE, radius = 5, pos = { x = 27.081, y = 82.831, z = 3.136 } },
	-- 到达平台2
	[2030] = { config_id = 2030, shape = RegionShape.SPHERE, radius = 5, pos = { x = -21.786, y = 84.129, z = -40.143 } }
}

-- 触发器
triggers = {
	-- reminder1--提示管道
	{ config_id = 1002002, name = "ENTER_REGION_2002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2002", action = "action_EVENT_ENTER_REGION_2002" },
	-- 中间电梯reminder指引
	{ config_id = 1002005, name = "ENTER_REGION_2005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2005", action = "action_EVENT_ENTER_REGION_2005" },
	-- reminder2--提示找机关
	{ config_id = 1002006, name = "ENTER_REGION_2006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2006", action = "action_EVENT_ENTER_REGION_2006" },
	{ config_id = 1002008, name = "ENTER_REGION_2008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2008", action = "action_EVENT_ENTER_REGION_2008" },
	-- 圆盘操作提示点1触发
	{ config_id = 1002009, name = "ENTER_REGION_2009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2009", action = "action_EVENT_ENTER_REGION_2009" },
	-- 圆盘1旋转正确--圆盘2操作引导
	{ config_id = 1002012, name = "VARIABLE_CHANGE_2012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2012", action = "action_EVENT_VARIABLE_CHANGE_2012" },
	-- 轨道塞车reminder
	{ config_id = 1002014, name = "ENTER_REGION_2014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2014", action = "action_EVENT_ENTER_REGION_2014" },
	-- 圆盘1旋转正确--圆盘3操作引导
	{ config_id = 1002015, name = "VARIABLE_CHANGE_2015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2015", action = "action_EVENT_VARIABLE_CHANGE_2015" },
	-- 战斗房间3完成
	{ config_id = 1002018, name = "VARIABLE_CHANGE_2018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2018", action = "action_EVENT_VARIABLE_CHANGE_2018" },
	{ config_id = 1002020, name = "TIME_AXIS_PASS_2020", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_2020", action = "action_EVENT_TIME_AXIS_PASS_2020" },
	-- reminder2--提示找机关
	{ config_id = 1002021, name = "TIME_AXIS_PASS_2021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_2021", action = "action_EVENT_TIME_AXIS_PASS_2021" },
	{ config_id = 1002023, name = "ENTER_REGION_2023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2023", action = "action_EVENT_ENTER_REGION_2023" },
	-- 到达平台3
	{ config_id = 1002028, name = "ENTER_REGION_2028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2028", action = "action_EVENT_ENTER_REGION_2028", trigger_count = 0 },
	-- 到达平台4
	{ config_id = 1002029, name = "ENTER_REGION_2029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2029", action = "action_EVENT_ENTER_REGION_2029", trigger_count = 0 },
	-- 到达平台2
	{ config_id = 1002030, name = "ENTER_REGION_2030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2030", action = "action_EVENT_ENTER_REGION_2030", trigger_count = 0 }
}

-- 点位
points = {
	[2024] = { config_id = 2024, pos = { x = 6.888, y = 74.376, z = 17.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 变量
variables = {
	{ config_id = 1, name = "discSuccess1", value = 0, no_refresh = true },
	{ config_id = 2, name = "fightRoom2", value = 0, no_refresh = true },
	{ config_id = 3, name = "discSuccess2", value = 0, no_refresh = true },
	{ config_id = 4, name = "fightRoom3", value = 0, no_refresh = true },
	{ config_id = 5, name = "guideFinish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 2001, gadget_id = 70900203, pos = { x = 2.953, y = 61.509, z = 59.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
		{ config_id = 2019, gadget_id = 70900203, pos = { x = 2.276, y = 56.955, z = 4.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 2026, gadget_id = 70900203, pos = { x = 2.681, y = 50.896, z = 86.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	},
	regions = {
		{ config_id = 2003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2.542, y = 61.408, z = 62.226 } },
		{ config_id = 2013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -20.019, y = 84.222, z = -40.098 } }
	},
	triggers = {
		{ config_id = 1002003, name = "ENTER_REGION_2003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2003", action = "action_EVENT_ENTER_REGION_2003" },
		{ config_id = 1002013, name = "ENTER_REGION_2013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2013", action = "action_EVENT_ENTER_REGION_2013" }
	}
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
		gadgets = { 2025 },
		regions = { 2002, 2009, 2028, 2029, 2030 },
		triggers = { "ENTER_REGION_2002", "ENTER_REGION_2009", "VARIABLE_CHANGE_2012", "VARIABLE_CHANGE_2015", "VARIABLE_CHANGE_2018", "ENTER_REGION_2028", "ENTER_REGION_2029", "ENTER_REGION_2030" },
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2005 },
		triggers = { "ENTER_REGION_2005" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 2004 },
		regions = { 2006 },
		triggers = { "ENTER_REGION_2006", "TIME_AXIS_PASS_2020", "TIME_AXIS_PASS_2021" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 2007 },
		regions = { 2008 },
		triggers = { "ENTER_REGION_2008" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 2010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 2011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2014 },
		triggers = { "ENTER_REGION_2014" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 2016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 2017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2023 },
		triggers = { "ENTER_REGION_2023" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_2002(context, evt)
	if evt.param1 ~= 2002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220163002, 3)
	
	-- 调用提示id为 201630101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201630101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2005(context, evt)
	if evt.param1 ~= 2005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2005(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220163002, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2006(context, evt)
	if evt.param1 ~= 2006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2006(context, evt)
	ScriptLib.InitTimeAxis(context, "R", {3}, false)
	LF_PointLook(context)
	ScriptLib.RemoveEntityByConfigId(context, 220163002, EntityType.GADGET, 2004 )
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2008(context, evt)
	if evt.param1 ~= 2008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2008(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163002, EntityType.GADGET, 2007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2009(context, evt)
	if evt.param1 ~= 2009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2009(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220163002, 7)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163002, EntityType.GADGET, 2007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fightRoom2"为1
	if ScriptLib.GetGroupVariableValue(context, "fightRoom2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2012(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220163002, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2014(context, evt)
	if evt.param1 ~= 2014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2014(context, evt)
	-- 调用提示id为 201630104 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201630104) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为2022的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2022 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220163002, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"discSuccess2"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "discSuccess2", 220163004) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2015(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220163002, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fightRoom3"为1
	if ScriptLib.GetGroupVariableValue(context, "fightRoom3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2018(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220163002, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_2020(context, evt)
	if "R" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2020(context, evt)
	-- 调用提示id为 201630102 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201630102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"r2"，时间节点为{8}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "r2", {8}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_2021(context, evt)
	if "r2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2021(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220163002, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2023(context, evt)
	if evt.param1 ~= 2023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2023(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163002, EntityType.GADGET, 2022 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为2016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2027 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2028(context, evt)
	if evt.param1 ~= 2028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2028(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163002, EntityType.GADGET, 2022 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163014, EntityType.GADGET, 14022 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2029(context, evt)
	if evt.param1 ~= 2029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2029(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163014, EntityType.GADGET, 14023 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163011, EntityType.GADGET, 11012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2030(context, evt)
	if evt.param1 ~= 2030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2030(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163014, EntityType.GADGET, 14021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V3_0/CameraLook"