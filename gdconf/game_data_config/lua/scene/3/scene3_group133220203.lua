-- 基础信息
local base_info = {
	group_id = 133220203
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203004, monster_id = 25020201, pos = { x = -2846.255, y = 200.219, z = -4287.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 203005, monster_id = 25020201, pos = { x = -2868.331, y = 200.093, z = -4276.907 }, rot = { x = 0.000, y = 11.254, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 3, area_id = 11 },
	{ config_id = 203006, monster_id = 25010401, pos = { x = -2845.787, y = 200.254, z = -4282.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 203007, monster_id = 25080301, pos = { x = -2873.795, y = 200.000, z = -4264.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 203028, monster_id = 25080301, pos = { x = -2846.255, y = 200.219, z = -4287.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 203029, monster_id = 25020201, pos = { x = -2845.658, y = 200.448, z = -4281.106 }, rot = { x = 0.000, y = 278.785, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 11 },
	{ config_id = 203031, monster_id = 25020201, pos = { x = -2849.494, y = 200.204, z = -4285.406 }, rot = { x = 0.000, y = 84.540, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 11 },
	{ config_id = 203032, monster_id = 25100101, pos = { x = -2852.884, y = 200.000, z = -4279.468 }, rot = { x = 0.000, y = 133.397, z = 0.000 }, level = 17, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 11 },
	{ config_id = 203035, monster_id = 25080301, pos = { x = -2867.350, y = 200.000, z = -4274.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4131 }, pose_id = 1, area_id = 11 },
	{ config_id = 203037, monster_id = 25020201, pos = { x = -2868.146, y = 200.000, z = -4269.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4131 }, area_id = 11 },
	{ config_id = 203038, monster_id = 25020201, pos = { x = -2864.167, y = 200.000, z = -4271.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4131 }, area_id = 11 },
	{ config_id = 203041, monster_id = 25080201, pos = { x = -2869.837, y = 200.000, z = -4275.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, pose_id = 1, area_id = 11 },
	{ config_id = 203043, monster_id = 25020201, pos = { x = -2864.691, y = 200.000, z = -4273.306 }, rot = { x = 0.000, y = 47.579, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 11 },
	{ config_id = 203044, monster_id = 25020201, pos = { x = -2869.958, y = 200.000, z = -4271.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 11 },
	{ config_id = 203056, monster_id = 25080301, pos = { x = -2859.395, y = 200.000, z = -4269.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, pose_id = 1, area_id = 11 },
	{ config_id = 203058, monster_id = 25020201, pos = { x = -2860.584, y = 200.000, z = -4275.264 }, rot = { x = 0.000, y = 36.473, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 11 },
	{ config_id = 203059, monster_id = 25020201, pos = { x = -2868.388, y = 200.000, z = -4272.504 }, rot = { x = 0.000, y = 336.213, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 203003, gadget_id = 70330064, pos = { x = -2857.921, y = 200.061, z = -4265.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 },
	{ config_id = 203008, gadget_id = 70300104, pos = { x = -2840.622, y = 200.857, z = -4287.837 }, rot = { x = 0.000, y = 103.317, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203009, gadget_id = 70300105, pos = { x = -2867.180, y = 200.045, z = -4280.896 }, rot = { x = 0.000, y = 294.386, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203010, gadget_id = 70300104, pos = { x = -2841.627, y = 200.920, z = -4293.093 }, rot = { x = 0.000, y = 103.317, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203011, gadget_id = 70220048, pos = { x = -2871.024, y = 200.000, z = -4282.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203012, gadget_id = 70220048, pos = { x = -2840.382, y = 200.921, z = -4290.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203013, gadget_id = 70220014, pos = { x = -2876.561, y = 200.002, z = -4277.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203014, gadget_id = 70220014, pos = { x = -2871.975, y = 200.000, z = -4281.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203015, gadget_id = 70220014, pos = { x = -2839.854, y = 201.059, z = -4285.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203016, gadget_id = 70220014, pos = { x = -2849.162, y = 200.919, z = -4297.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203017, gadget_id = 70220014, pos = { x = -2847.997, y = 200.827, z = -4296.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203018, gadget_id = 70220014, pos = { x = -2839.729, y = 200.526, z = -4268.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203019, gadget_id = 70220048, pos = { x = -2838.283, y = 200.769, z = -4269.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203020, gadget_id = 70220048, pos = { x = -2838.959, y = 200.516, z = -4267.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203021, gadget_id = 70310006, pos = { x = -2904.720, y = 200.102, z = -4269.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203022, gadget_id = 70310009, pos = { x = -2842.481, y = 200.457, z = -4287.062 }, rot = { x = 0.000, y = 275.833, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203023, gadget_id = 70220014, pos = { x = -2904.168, y = 200.085, z = -4271.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203024, gadget_id = 70220014, pos = { x = -2905.304, y = 200.103, z = -4271.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203025, gadget_id = 70310004, pos = { x = -2864.232, y = 200.170, z = -4276.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 203026, gadget_id = 70900380, pos = { x = -2866.589, y = 207.097, z = -4275.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 203033, gadget_id = 70900380, pos = { x = -2865.725, y = 207.065, z = -4264.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 203034, gadget_id = 70900380, pos = { x = -2855.674, y = 207.065, z = -4270.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 203027, shape = RegionShape.SPHERE, radius = 70, pos = { x = -2869.277, y = 200.008, z = -4275.427 }, area_id = 11 },
	{ config_id = 203048, shape = RegionShape.SPHERE, radius = 50, pos = { x = -2867.902, y = 200.000, z = -4268.601 }, area_id = 11 },
	-- 傀儡机制特殊提示
	{ config_id = 203062, shape = RegionShape.SPHERE, radius = 70, pos = { x = -2872.439, y = 200.000, z = -4275.445 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1203027, name = "ENTER_REGION_203027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_203027", action = "action_EVENT_ENTER_REGION_203027", forbid_guest = false },
	{ config_id = 1203039, name = "ANY_MONSTER_LIVE_203039", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_203039", action = "action_EVENT_ANY_MONSTER_LIVE_203039" },
	{ config_id = 1203040, name = "TIME_AXIS_PASS_203040", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "condition_EVENT_TIME_AXIS_PASS_203040", action = "action_EVENT_TIME_AXIS_PASS_203040" },
	{ config_id = 1203045, name = "ANY_MONSTER_LIVE_203045", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_203045", action = "action_EVENT_ANY_MONSTER_LIVE_203045" },
	{ config_id = 1203046, name = "TIME_AXIS_PASS_203046", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "condition_EVENT_TIME_AXIS_PASS_203046", action = "action_EVENT_TIME_AXIS_PASS_203046" },
	{ config_id = 1203048, name = "ENTER_REGION_203048", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_203048", action = "action_EVENT_ENTER_REGION_203048", forbid_guest = false },
	{ config_id = 1203052, name = "GROUP_LOAD_203052", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_203052", trigger_count = 0 },
	-- 悬赏结束改参数
	{ config_id = 1203054, name = "HUNTING_FINISH_FINAL_203054", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_203054" },
	{ config_id = 1203060, name = "ANY_MONSTER_LIVE_203060", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_203060", action = "action_EVENT_ANY_MONSTER_LIVE_203060" },
	{ config_id = 1203061, name = "TIME_AXIS_PASS_203061", event = EventType.EVENT_TIME_AXIS_PASS, source = "T3", condition = "condition_EVENT_TIME_AXIS_PASS_203061", action = "action_EVENT_TIME_AXIS_PASS_203061" },
	-- 傀儡机制特殊提示
	{ config_id = 1203062, name = "ENTER_REGION_203062", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_203062", action = "action_EVENT_ENTER_REGION_203062", forbid_guest = false },
	-- IS_BOSS_DEAD变量变动之后，干掉所有怪物潮
	{ config_id = 1203063, name = "VARIABLE_CHANGE_203063", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_203063", action = "action_EVENT_VARIABLE_CHANGE_203063", trigger_count = 0 },
	{ config_id = 1203064, name = "VARIABLE_CHANGE_203064", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_203064", action = "action_EVENT_VARIABLE_CHANGE_203064", trigger_count = 0 },
	{ config_id = 1203065, name = "VARIABLE_CHANGE_203065", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_203065", action = "action_EVENT_VARIABLE_CHANGE_203065", trigger_count = 0 },
	{ config_id = 1203066, name = "VARIABLE_CHANGE_203066", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_203066", action = "action_EVENT_VARIABLE_CHANGE_203066", trigger_count = 0 },
	{ config_id = 1203067, name = "VARIABLE_CHANGE_203067", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_203067", action = "action_EVENT_VARIABLE_CHANGE_203067", trigger_count = 0 }
}

-- 点位
points = {
	-- 首领出生点
	{ config_id = 203053, pos = { x = -2865.513, y = 200.241, z = -4277.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IS_BOSS_DEAD", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 203035, 203037, 203038 },
	{ 203041, 203043, 203044 },
	{ 203056, 203058, 203059 }
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
		triggers = { "GROUP_LOAD_203052", "HUNTING_FINISH_FINAL_203054" },
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
		-- description = 营地增幅器,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 海乱鬼火-机关/傀儡-小怪组,
		monsters = { },
		gadgets = { },
		regions = { 203027, 203062 },
		triggers = { "ENTER_REGION_203027", "ENTER_REGION_203062", "VARIABLE_CHANGE_203063" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 海乱鬼火-营地-物件组,
		monsters = { },
		gadgets = { 203008, 203009, 203010, 203011, 203012, 203013, 203014, 203015, 203016, 203017, 203018, 203019, 203020, 203021, 203022, 203023, 203024, 203025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 海乱鬼火-双子-怪物组,
		monsters = { 203028, 203029, 203031, 203032 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_203064" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 海乱鬼火-链接-怪物组1,
		monsters = { 203035, 203037, 203038 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_203039", "TIME_AXIS_PASS_203040", "VARIABLE_CHANGE_203065" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 海乱鬼火-链接-怪物组2,
		monsters = { 203041, 203043, 203044 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_203045", "TIME_AXIS_PASS_203046", "VARIABLE_CHANGE_203066" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 海乱鬼火-链接-怪物组3,
		monsters = { 203056, 203058, 203059 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_203060", "TIME_AXIS_PASS_203061", "VARIABLE_CHANGE_203067" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 海乱鬼火-双子-高伤炸药桶,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 海乱鬼火-链接-飞雷核,
		monsters = { },
		gadgets = { 203003, 203026, 203033, 203034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 链接刷新小怪reminder,
		monsters = { },
		gadgets = { },
		regions = { 203048 },
		triggers = { "ENTER_REGION_203048" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_203027(context, evt)
	if evt.param1 ~= 203027 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_203027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为50，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133220203, {203004}, 50, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为50，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 133220203, {203005}, 50, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为50，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 133220203, {203006}, 50, 1, 1) then
		return -1
	end
	
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为50，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 133220203, {203007}, 50, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_203039(context, evt)
	if 203035 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_203039(context, evt)
	-- 创建标识为"T1"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_203040(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_203040(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220203, 8)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133220203, 7)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220203, 7)
	
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220203, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_203045(context, evt)
	if 203041 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_203045(context, evt)
	-- 创建标识为"T2"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T2", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_203046(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_203046(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220203, 9)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133220203, 8)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220203, 8)
	
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220203, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_203048(context, evt)
	if evt.param1 ~= 203048 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_203048(context, evt)
	-- 调用提示id为 500070 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220203, 13)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_203052(context, evt)
	-- 初始化table
	    local suite_table = {}
	
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	        return -1
	    end
	
	-- 根据HuntingData表的配置来激活对应的suite
	    if 0~= ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context) then
	        suite_table = ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context)
	        for i,suite_id in ipairs (suite_table) do
	            ScriptLib.AddExtraGroupSuite(context, 133220203, suite_id)
	        end
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_203054(context, evt)
	-- 将本组内变量名为 "IS_BOSS_DEAD" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_BOSS_DEAD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_203060(context, evt)
	if 203056 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_203060(context, evt)
	-- 创建标识为"T3"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T3", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_203061(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_203061(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220203, 8)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133220203, 9)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220203, 9)
	
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220203, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_203062(context, evt)
	if evt.param1 ~= 203062 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_203062(context, evt)
	-- 调用提示id为 500072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_203063(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133220203) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_203063(context, evt)
	--销毁编号为1（该怪物潮的识别id)的怪物潮
	if 0 ~= ScriptLib.KillMonsterTide(context, 133220203, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_tide")
		return -1
	end
	
	--销毁编号为2（该怪物潮的识别id)的怪物潮
	if 0 ~= ScriptLib.KillMonsterTide(context, 133220203, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_tide")
		return -1
	end
	
	--销毁编号为3（该怪物潮的识别id)的怪物潮
	if 0 ~= ScriptLib.KillMonsterTide(context, 133220203, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_tide")
		return -1
	end
	
	--销毁编号为4（该怪物潮的识别id)的怪物潮
	if 0 ~= ScriptLib.KillMonsterTide(context, 133220203, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_tide")
		return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133220203, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_203064(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133220203) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_203064(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220203, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_203065(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133220203) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_203065(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220203, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_203066(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133220203) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_203066(context, evt)
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220203, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_203067(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133220203) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_203067(context, evt)
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220203, 9)
	
	return 0
end

require "V2_0/ElectricCore"