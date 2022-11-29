-- 基础信息
local base_info = {
	group_id = 220131016
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
	-- 第一道门
	{ config_id = 16001, gadget_id = 70900201, pos = { x = 156.884, y = 2.394, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16002, gadget_id = 70900201, pos = { x = 144.371, y = 1.295, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 移动平台
	{ config_id = 16003, gadget_id = 70900201, pos = { x = 90.822, y = -2.113, z = -10.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 洞口
	{ config_id = 16004, gadget_id = 70900201, pos = { x = 120.395, y = -5.460, z = -43.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 大厅大门
	{ config_id = 16005, gadget_id = 70900201, pos = { x = 80.747, y = -2.801, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- boss战前
	{ config_id = 16006, gadget_id = 70900201, pos = { x = 48.988, y = -4.316, z = -9.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 铁栅栏后
	{ config_id = 16007, gadget_id = 70900201, pos = { x = 22.037, y = -2.345, z = -21.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16014, gadget_id = 70310008, pos = { x = 120.818, y = -9.174, z = -40.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 隧洞中
	{ config_id = 16019, gadget_id = 70900201, pos = { x = 0.542, y = 3.045, z = -26.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 第一个鬼火
	{ config_id = 16021, gadget_id = 70900201, pos = { x = 68.797, y = 11.819, z = 48.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 第二个鬼火1
	{ config_id = 16023, gadget_id = 70900201, pos = { x = 88.417, y = 11.730, z = -75.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 第二个鬼火2
	{ config_id = 16024, gadget_id = 70900201, pos = { x = 47.985, y = 11.730, z = -63.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 第二个鬼火1
	{ config_id = 16030, gadget_id = 70900201, pos = { x = 64.264, y = 11.730, z = -53.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 第二个鬼火接受器
	{ config_id = 16032, gadget_id = 70900201, pos = { x = 101.888, y = 12.687, z = -33.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 第二个鬼火接受器
	{ config_id = 16033, gadget_id = 70900201, pos = { x = 116.599, y = 12.687, z = -33.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 剧情前
	{ config_id = 16035, gadget_id = 70900201, pos = { x = -7.564, y = 0.591, z = -6.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 第二个鬼火-回到大门
	{ config_id = 16038, gadget_id = 70900201, pos = { x = 88.452, y = 11.730, z = -75.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 卸载suite2
	{ config_id = 16009, shape = RegionShape.SPHERE, radius = 8, pos = { x = 143.235, y = 4.230, z = -0.025 } },
	-- 卸载suite3
	{ config_id = 16010, shape = RegionShape.CUBIC, size = { x = 10.000, y = 2.000, z = 10.000 }, pos = { x = 90.651, y = 1.091, z = -10.278 } },
	-- +suite10，卸载suite4
	{ config_id = 16015, shape = RegionShape.SPHERE, radius = 3, pos = { x = 120.357, y = -4.612, z = -42.075 } },
	-- 卸载suite5，加载suite6
	{ config_id = 16016, shape = RegionShape.CUBIC, size = { x = 3.000, y = 10.000, z = 10.000 }, pos = { x = 81.380, y = -2.561, z = 0.083 } },
	-- 卸载suite6
	{ config_id = 16017, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 2.000 }, pos = { x = 48.874, y = -2.469, z = -8.847 } },
	-- 卸载suite7，加suite8
	{ config_id = 16018, shape = RegionShape.CUBIC, size = { x = 2.000, y = 10.000, z = 10.000 }, pos = { x = 23.760, y = -2.186, z = -21.110 } },
	-- +suite16, 卸载suite8
	{ config_id = 16020, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1.134, y = 2.798, z = -23.812 } },
	-- 卸载suite6
	{ config_id = 16022, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 69.518, y = 15.581, z = 50.106 } },
	{ config_id = 16025, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 10.000 }, pos = { x = 109.980, y = 10.448, z = -33.053 } },
	{ config_id = 16026, shape = RegionShape.CUBIC, size = { x = 30.000, y = 20.000, z = 10.000 }, pos = { x = 100.585, y = 17.306, z = -70.720 } },
	-- +suite12,-suite11
	{ config_id = 16027, shape = RegionShape.SPHERE, radius = 8, pos = { x = 84.410, y = 15.581, z = -75.678 } },
	-- +13,-12
	{ config_id = 16028, shape = RegionShape.SPHERE, radius = 7, pos = { x = 68.811, y = 16.607, z = -63.935 } },
	-- +suite14,-suite13
	{ config_id = 16029, shape = RegionShape.SPHERE, radius = 6, pos = { x = 46.119, y = 13.028, z = -63.743 } },
	-- +suite17,-suite14
	{ config_id = 16031, shape = RegionShape.SPHERE, radius = 6, pos = { x = 66.817, y = 14.032, z = -53.231 } },
	-- -suite15
	{ config_id = 16034, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 10.000 }, pos = { x = 109.980, y = 10.448, z = -33.053 } },
	-- 卸载suite16
	{ config_id = 16036, shape = RegionShape.SPHERE, radius = 5, pos = { x = -8.218, y = 2.537, z = -5.016 } },
	-- +suite17,-suite14
	{ config_id = 16037, shape = RegionShape.SPHERE, radius = 6, pos = { x = 72.830, y = 15.229, z = -64.666 } },
	-- +suite15,-suite17
	{ config_id = 16039, shape = RegionShape.SPHERE, radius = 7, pos = { x = 89.234, y = 15.564, z = -76.377 } },
	-- 加suite3
	{ config_id = 16040, shape = RegionShape.SPHERE, radius = 18, pos = { x = 95.901, y = -1.518, z = -8.794 } }
}

-- 触发器
triggers = {
	-- Stage=2 加suite2，移除目标点1
	{ config_id = 1016008, name = "VARIABLE_CHANGE_16008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_16008", action = "action_EVENT_VARIABLE_CHANGE_16008", trigger_count = 0 },
	-- 卸载suite2
	{ config_id = 1016009, name = "ENTER_REGION_16009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16009", action = "action_EVENT_ENTER_REGION_16009" },
	-- 卸载suite3
	{ config_id = 1016010, name = "ENTER_REGION_16010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16010", action = "action_EVENT_ENTER_REGION_16010" },
	-- Stage=4 加suite4
	{ config_id = 1016011, name = "VARIABLE_CHANGE_16011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_16011", action = "action_EVENT_VARIABLE_CHANGE_16011", trigger_count = 0 },
	-- Stage=5 加suite5
	{ config_id = 1016012, name = "VARIABLE_CHANGE_16012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_16012", action = "action_EVENT_VARIABLE_CHANGE_16012", trigger_count = 0 },
	-- Stage=7 加suite7
	{ config_id = 1016013, name = "VARIABLE_CHANGE_16013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_16013", action = "action_EVENT_VARIABLE_CHANGE_16013", trigger_count = 0 },
	-- +suite10，卸载suite4
	{ config_id = 1016015, name = "ENTER_REGION_16015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16015", action = "action_EVENT_ENTER_REGION_16015" },
	-- 卸载suite5，加载suite6
	{ config_id = 1016016, name = "ENTER_REGION_16016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16016", action = "action_EVENT_ENTER_REGION_16016" },
	-- 卸载suite6
	{ config_id = 1016017, name = "ENTER_REGION_16017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16017", action = "action_EVENT_ENTER_REGION_16017" },
	-- 卸载suite7，加suite8
	{ config_id = 1016018, name = "ENTER_REGION_16018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16018", action = "action_EVENT_ENTER_REGION_16018" },
	-- +suite16, 卸载suite8
	{ config_id = 1016020, name = "ENTER_REGION_16020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16020", action = "action_EVENT_ENTER_REGION_16020" },
	-- 卸载suite6
	{ config_id = 1016022, name = "ENTER_REGION_16022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16022", action = "action_EVENT_ENTER_REGION_16022" },
	{ config_id = 1016025, name = "ENTER_REGION_16025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16025", action = "action_EVENT_ENTER_REGION_16025" },
	{ config_id = 1016026, name = "ENTER_REGION_16026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16026", action = "action_EVENT_ENTER_REGION_16026" },
	-- +suite12,-suite11
	{ config_id = 1016027, name = "ENTER_REGION_16027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16027", action = "action_EVENT_ENTER_REGION_16027" },
	-- +13,-12
	{ config_id = 1016028, name = "ENTER_REGION_16028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16028", action = "action_EVENT_ENTER_REGION_16028" },
	-- +suite14,-suite13
	{ config_id = 1016029, name = "ENTER_REGION_16029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16029", action = "action_EVENT_ENTER_REGION_16029" },
	-- +suite17,-suite14
	{ config_id = 1016031, name = "ENTER_REGION_16031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16031", action = "action_EVENT_ENTER_REGION_16031" },
	-- -suite15
	{ config_id = 1016034, name = "ENTER_REGION_16034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16034", action = "action_EVENT_ENTER_REGION_16034" },
	-- 卸载suite16
	{ config_id = 1016036, name = "ENTER_REGION_16036", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16036", action = "action_EVENT_ENTER_REGION_16036" },
	-- +suite17,-suite14
	{ config_id = 1016037, name = "ENTER_REGION_16037", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16037", action = "action_EVENT_ENTER_REGION_16037" },
	-- +suite15,-suite17
	{ config_id = 1016039, name = "ENTER_REGION_16039", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16039", action = "action_EVENT_ENTER_REGION_16039" },
	-- 加suite3
	{ config_id = 1016040, name = "ENTER_REGION_16040", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16040", action = "action_EVENT_ENTER_REGION_16040" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Stage", value = 0, no_refresh = false }
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
		gadgets = { 16001, 16014 },
		regions = { 16009, 16040 },
		triggers = { "VARIABLE_CHANGE_16008", "ENTER_REGION_16009", "VARIABLE_CHANGE_16011", "VARIABLE_CHANGE_16012", "VARIABLE_CHANGE_16013", "ENTER_REGION_16040" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 大厅前,
		monsters = { },
		gadgets = { 16002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 16003 },
		regions = { 16010 },
		triggers = { "ENTER_REGION_16010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 16004 },
		regions = { 16015 },
		triggers = { "ENTER_REGION_16015" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 16005 },
		regions = { 16016 },
		triggers = { "ENTER_REGION_16016" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 16006 },
		regions = { 16017 },
		triggers = { "ENTER_REGION_16017" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 16007 },
		regions = { 16018 },
		triggers = { "ENTER_REGION_16018" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 16019 },
		regions = { 16020 },
		triggers = { "ENTER_REGION_16020" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 16021 },
		regions = { 16022 },
		triggers = { "ENTER_REGION_16022" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 16025, 16026 },
		triggers = { "ENTER_REGION_16025", "ENTER_REGION_16026" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 16023 },
		regions = { 16027 },
		triggers = { "ENTER_REGION_16027" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 16028 },
		triggers = { "ENTER_REGION_16028" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 16024 },
		regions = { 16029 },
		triggers = { "ENTER_REGION_16029" },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 16030 },
		regions = { 16031, 16037 },
		triggers = { "ENTER_REGION_16031", "ENTER_REGION_16037" },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { },
		gadgets = { 16032, 16033 },
		regions = { 16034 },
		triggers = { "ENTER_REGION_16034" },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = ,
		monsters = { },
		gadgets = { 16035 },
		regions = { 16036 },
		triggers = { "ENTER_REGION_16036" },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = ,
		monsters = { },
		gadgets = { 16038 },
		regions = { 16039 },
		triggers = { "ENTER_REGION_16039" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_16008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Stage"为2
	if ScriptLib.GetGroupVariableValue(context, "Stage") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_16008(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220131016, EntityType.GADGET, 16001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16009(context, evt)
	if evt.param1 ~= 16009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16010(context, evt)
	if evt.param1 ~= 16010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16010(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_16011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Stage"为4
	if ScriptLib.GetGroupVariableValue(context, "Stage") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_16011(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_16012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Stage"为5
	if ScriptLib.GetGroupVariableValue(context, "Stage") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_16012(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_16013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Stage"为7
	if ScriptLib.GetGroupVariableValue(context, "Stage") ~= 7 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_16013(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16015(context, evt)
	if evt.param1 ~= 16015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16015(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 10)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16016(context, evt)
	if evt.param1 ~= 16016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16016(context, evt)
	-- 调用提示id为 201310104 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201310104) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 6)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16017(context, evt)
	if evt.param1 ~= 16017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16017(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16018(context, evt)
	if evt.param1 ~= 16018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16018(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16020(context, evt)
	if evt.param1 ~= 16020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16020(context, evt)
	-- 添加suite16的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 16)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16022(context, evt)
	if evt.param1 ~= 16022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16022(context, evt)
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16025(context, evt)
	if evt.param1 ~= 16025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16025(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 11)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16026(context, evt)
	if evt.param1 ~= 16026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16026(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 11)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16027(context, evt)
	if evt.param1 ~= 16027 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16027(context, evt)
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 12)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16028(context, evt)
	if evt.param1 ~= 16028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16028(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 13)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16029(context, evt)
	if evt.param1 ~= 16029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16029(context, evt)
	-- 添加suite14的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 14)
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16031(context, evt)
	if evt.param1 ~= 16031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16031(context, evt)
	-- 添加suite17的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 17)
	
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 14)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16034(context, evt)
	if evt.param1 ~= 16034 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16034(context, evt)
	-- 删除suite15的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 15)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16036(context, evt)
	if evt.param1 ~= 16036 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16036(context, evt)
	-- 删除suite16的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 16)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16037(context, evt)
	if evt.param1 ~= 16037 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16037(context, evt)
	-- 添加suite17的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 17)
	
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 14)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16039(context, evt)
	if evt.param1 ~= 16039 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16039(context, evt)
	-- 添加suite15的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 15)
	
	-- 删除suite17的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220131016, 17)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16040(context, evt)
	if evt.param1 ~= 16040 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16040(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 3)
	
	return 0
end