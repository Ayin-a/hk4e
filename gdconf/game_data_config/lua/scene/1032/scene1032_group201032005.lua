-- 基础信息
local base_info = {
	group_id = 201032005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5003, monster_id = 21010901, pos = { x = -85.155, y = 284.335, z = -191.417 }, rot = { x = 0.000, y = 53.049, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 }, pose_id = 32 },
	{ config_id = 5004, monster_id = 21011001, pos = { x = -87.024, y = 284.344, z = -188.325 }, rot = { x = 0.000, y = 58.746, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 }, pose_id = 32 },
	{ config_id = 5005, monster_id = 20011301, pos = { x = -68.544, y = 279.587, z = -192.423 }, rot = { x = 0.000, y = 26.834, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 } },
	{ config_id = 5006, monster_id = 20011301, pos = { x = -78.151, y = 279.559, z = -184.335 }, rot = { x = 0.000, y = 71.554, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 } },
	{ config_id = 5015, monster_id = 21010301, pos = { x = -72.370, y = 279.565, z = -192.545 }, rot = { x = 0.000, y = 21.909, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 }, pose_id = 9003 },
	{ config_id = 5016, monster_id = 21010301, pos = { x = -76.725, y = 279.563, z = -189.171 }, rot = { x = 0.000, y = 52.414, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 }, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5001, gadget_id = 70360046, pos = { x = -39.827, y = 252.882, z = -101.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5002, gadget_id = 70350071, pos = { x = -35.010, y = 269.400, z = -137.560 }, rot = { x = 274.869, y = 227.496, z = 163.660 }, level = 1 },
	{ config_id = 5007, gadget_id = 70900201, pos = { x = -45.675, y = 276.684, z = -155.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5010, gadget_id = 70360046, pos = { x = -34.161, y = 256.760, z = -106.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5011, gadget_id = 70360046, pos = { x = -31.662, y = 260.915, z = -113.362 }, rot = { x = 0.000, y = 267.672, z = 0.000 }, level = 1 },
	{ config_id = 5017, gadget_id = 70900201, pos = { x = -65.214, y = 280.710, z = -179.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5018, shape = RegionShape.SPHERE, radius = 7, pos = { x = -45.823, y = 276.861, z = -155.165 } },
	{ config_id = 5019, shape = RegionShape.SPHERE, radius = 8, pos = { x = -55.365, y = 283.491, z = -168.631 } }
}

-- 触发器
triggers = {
	{ config_id = 1005008, name = "ANY_MONSTER_DIE_5008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5008", action = "action_EVENT_ANY_MONSTER_DIE_5008" },
	{ config_id = 1005009, name = "VARIABLE_CHANGE_5009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5009", action = "action_EVENT_VARIABLE_CHANGE_5009" },
	{ config_id = 1005018, name = "ENTER_REGION_5018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5018", action = "action_EVENT_ENTER_REGION_5018" },
	{ config_id = 1005019, name = "ENTER_REGION_5019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5019", action = "action_EVENT_ENTER_REGION_5019" }
}

-- 变量
variables = {
	{ config_id = 1, name = "taskCount", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 5012, gadget_id = 70310013, pos = { x = -32.083, y = 264.931, z = -131.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 5013, gadget_id = 70310013, pos = { x = -35.933, y = 269.259, z = -137.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 5014, gadget_id = 70310013, pos = { x = -38.453, y = 273.904, z = -144.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		monsters = { 5003, 5004, 5005, 5006, 5015, 5016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5008", "VARIABLE_CHANGE_5009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 5001, 5002, 5010, 5011 },
		regions = { 5018, 5019 },
		triggers = { "ENTER_REGION_5018", "ENTER_REGION_5019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 5017 },
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
function condition_EVENT_ANY_MONSTER_DIE_5008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5008(context, evt)
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201032006, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"taskCount"为2
	if ScriptLib.GetGroupVariableValue(context, "taskCount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5009(context, evt)
	-- 创建id为5007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201032005, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5018(context, evt)
	if evt.param1 ~= 5018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5018(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201032005, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5019(context, evt)
	if evt.param1 ~= 5019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5019(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end