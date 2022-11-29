-- 基础信息
local base_info = {
	group_id = 220123001
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
	{ config_id = 1001, gadget_id = 70900201, pos = { x = 5.919, y = -7.475, z = -13.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70900201, pos = { x = -4.927, y = -5.876, z = -28.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70900201, pos = { x = 5.255, y = -6.026, z = -28.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70310008, pos = { x = 8.083, y = -16.459, z = -19.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70900201, pos = { x = 4.820, y = -5.467, z = -34.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70900201, pos = { x = -4.326, y = -5.281, z = -26.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1002, shape = RegionShape.SPHERE, radius = 3, pos = { x = 5.704, y = -8.478, z = -13.772 } },
	{ config_id = 1009, shape = RegionShape.SPHERE, radius = 2, pos = { x = 5.151, y = -7.887, z = -29.336 } },
	{ config_id = 1013, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3.206, y = -6.032, z = -25.103 } },
	-- 玩家直接去到夹层的话，把去第一个平台的小黄点去掉
	{ config_id = 1014, shape = RegionShape.CUBIC, size = { x = 20.000, y = 5.000, z = 20.000 }, pos = { x = 4.779, y = -12.277, z = -30.374 } },
	{ config_id = 1015, shape = RegionShape.CUBIC, size = { x = 5.000, y = 3.000, z = 5.000 }, pos = { x = 4.837, y = -7.887, z = -36.552 } },
	{ config_id = 1017, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3.911, y = -5.356, z = -26.526 } }
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "ENTER_REGION_1002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1002", action = "action_EVENT_ENTER_REGION_1002" },
	{ config_id = 1001004, name = "VARIABLE_CHANGE_1004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1004", action = "action_EVENT_VARIABLE_CHANGE_1004" },
	{ config_id = 1001007, name = "VARIABLE_CHANGE_1007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1007", action = "action_EVENT_VARIABLE_CHANGE_1007" },
	{ config_id = 1001008, name = "GROUP_LOAD_1008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_1008" },
	{ config_id = 1001009, name = "ENTER_REGION_1009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1009", action = "action_EVENT_ENTER_REGION_1009" },
	{ config_id = 1001011, name = "VARIABLE_CHANGE_1011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1011", action = "action_EVENT_VARIABLE_CHANGE_1011" },
	{ config_id = 1001012, name = "VARIABLE_CHANGE_1012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1012", action = "action_EVENT_VARIABLE_CHANGE_1012" },
	{ config_id = 1001013, name = "ENTER_REGION_1013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1013", action = "action_EVENT_ENTER_REGION_1013" },
	-- 玩家直接去到夹层的话，把去第一个平台的小黄点去掉
	{ config_id = 1001014, name = "ENTER_REGION_1014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1014", action = "action_EVENT_ENTER_REGION_1014" },
	{ config_id = 1001015, name = "ENTER_REGION_1015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1015", action = "action_EVENT_ENTER_REGION_1015" },
	{ config_id = 1001017, name = "ENTER_REGION_1017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1017", action = "action_EVENT_ENTER_REGION_1017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "stage", value = 1, no_refresh = false },
	{ config_id = 2, name = "Light", value = 0, no_refresh = false }
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
		gadgets = { 1006 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_1004", "VARIABLE_CHANGE_1007", "GROUP_LOAD_1008", "VARIABLE_CHANGE_1011", "VARIABLE_CHANGE_1012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 去到壁画,
		monsters = { },
		gadgets = { 1001 },
		regions = { 1002 },
		triggers = { "ENTER_REGION_1002" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 开前门,
		monsters = { },
		gadgets = { 1003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第一次去到镜子前,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 指引玩家去灯台,
		monsters = { },
		gadgets = { 1016 },
		regions = { 1014, 1017 },
		triggers = { "ENTER_REGION_1014", "ENTER_REGION_1017" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 最后回到壁画前,
		monsters = { },
		gadgets = { 1005 },
		regions = { 1009 },
		triggers = { "ENTER_REGION_1009" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 1013 },
		triggers = { "ENTER_REGION_1013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1002(context, evt)
	if evt.param1 ~= 1002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123001, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage"为3
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1004(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage"为4
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1007(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123001, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1009(context, evt)
	if evt.param1 ~= 1009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1009(context, evt)
	-- 将本组内变量名为 "Mural" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Mural", 1, 220123009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage"为5
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1011(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123001, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage"为6
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1012(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1013(context, evt)
	if evt.param1 ~= 1013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"Light"为0
	if ScriptLib.GetGroupVariableValue(context, "Light") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1013(context, evt)
	-- 调用提示id为 201230102 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201230102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1014(context, evt)
	if evt.param1 ~= 1014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1014(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123001, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1015(context, evt)
	if evt.param1 ~= 1015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1015(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123001, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1017(context, evt)
	if evt.param1 ~= 1017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1017(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123001, 5)
	
	return 0
end