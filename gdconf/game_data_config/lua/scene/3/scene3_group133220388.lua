-- 基础信息
local base_info = {
	group_id = 133220388
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 388001, monster_id = 25080301, pos = { x = -2846.185, y = 200.167, z = -4287.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 388002, monster_id = 25080301, pos = { x = -2902.990, y = 200.024, z = -4269.999 }, rot = { x = 0.000, y = 278.785, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1004, area_id = 11 },
	{ config_id = 388003, monster_id = 25080301, pos = { x = -2845.717, y = 200.202, z = -4282.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 388004, monster_id = 25080301, pos = { x = -2891.429, y = 199.948, z = -4263.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 388005, monster_id = 25080201, pos = { x = -2846.185, y = 200.167, z = -4287.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 388006, monster_id = 25020201, pos = { x = -2845.588, y = 200.396, z = -4281.067 }, rot = { x = 0.000, y = 278.785, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 11 },
	{ config_id = 388007, monster_id = 25080301, pos = { x = -2845.717, y = 200.202, z = -4282.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 388008, monster_id = 25020201, pos = { x = -2849.424, y = 200.152, z = -4285.367 }, rot = { x = 0.000, y = 84.540, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 11 },
	{ config_id = 388009, monster_id = 25100101, pos = { x = -2850.834, y = 200.386, z = -4280.268 }, rot = { x = 0.000, y = 133.397, z = 0.000 }, level = 17, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 11 },
	{ config_id = 388010, monster_id = 25080301, pos = { x = -2858.028, y = 199.948, z = -4283.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111, 4024 }, pose_id = 1, area_id = 11 },
	{ config_id = 388011, monster_id = 25080301, pos = { x = -2874.150, y = 199.948, z = -4275.735 }, rot = { x = 0.000, y = 278.785, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111, 4024 }, pose_id = 1, area_id = 11 },
	{ config_id = 388012, monster_id = 25010201, pos = { x = -2858.824, y = 199.948, z = -4276.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111, 4024 }, area_id = 11 },
	{ config_id = 388013, monster_id = 25010201, pos = { x = -2870.421, y = 199.948, z = -4271.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111, 4024 }, area_id = 11 },
	{ config_id = 388014, monster_id = 25080201, pos = { x = -2858.252, y = 199.948, z = -4284.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, pose_id = 1, area_id = 11 },
	{ config_id = 388015, monster_id = 25080201, pos = { x = -2873.711, y = 199.948, z = -4275.585 }, rot = { x = 0.000, y = 278.785, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, pose_id = 1, area_id = 11 },
	{ config_id = 388016, monster_id = 25010201, pos = { x = -2858.588, y = 199.948, z = -4277.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, area_id = 11 },
	{ config_id = 388017, monster_id = 25010201, pos = { x = -2870.723, y = 199.948, z = -4270.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, area_id = 11 },
	{ config_id = 388018, monster_id = 26010301, pos = { x = -2859.520, y = 199.998, z = -4266.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "骗骗花", affix = { 4056 }, area_id = 11 },
	{ config_id = 388019, monster_id = 25080301, pos = { x = -2857.781, y = 199.948, z = -4284.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, pose_id = 1, area_id = 11 },
	{ config_id = 388020, monster_id = 25080301, pos = { x = -2873.711, y = 199.948, z = -4275.585 }, rot = { x = 0.000, y = 278.785, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, pose_id = 1, area_id = 11 },
	{ config_id = 388021, monster_id = 25010201, pos = { x = -2858.588, y = 199.948, z = -4277.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, area_id = 11 },
	{ config_id = 388022, monster_id = 25010201, pos = { x = -2870.723, y = 199.948, z = -4270.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 388023, gadget_id = 70350201, pos = { x = -2876.263, y = 199.981, z = -4274.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388024, gadget_id = 70350201, pos = { x = -2890.589, y = 199.978, z = -4268.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388025, gadget_id = 70330064, pos = { x = -2863.418, y = 200.025, z = -4254.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 },
	{ config_id = 388026, gadget_id = 70300104, pos = { x = -2840.552, y = 200.805, z = -4287.798 }, rot = { x = 0.000, y = 103.317, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388027, gadget_id = 70300105, pos = { x = -2867.100, y = 200.066, z = -4280.861 }, rot = { x = 0.000, y = 294.386, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388028, gadget_id = 70300104, pos = { x = -2841.608, y = 200.816, z = -4293.042 }, rot = { x = 0.000, y = 103.317, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388029, gadget_id = 70220048, pos = { x = -2871.017, y = 199.948, z = -4282.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388030, gadget_id = 70220048, pos = { x = -2840.367, y = 200.920, z = -4290.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388031, gadget_id = 70220014, pos = { x = -2876.491, y = 199.952, z = -4276.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388032, gadget_id = 70220014, pos = { x = -2871.905, y = 199.948, z = -4281.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388033, gadget_id = 70220014, pos = { x = -2839.784, y = 201.010, z = -4285.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388034, gadget_id = 70220014, pos = { x = -2849.090, y = 200.042, z = -4297.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388035, gadget_id = 70220014, pos = { x = -2847.927, y = 200.179, z = -4295.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388036, gadget_id = 70220014, pos = { x = -2839.659, y = 200.473, z = -4268.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388037, gadget_id = 70220048, pos = { x = -2838.213, y = 200.720, z = -4269.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388038, gadget_id = 70220048, pos = { x = -2838.889, y = 200.466, z = -4267.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388039, gadget_id = 70310006, pos = { x = -2904.650, y = 200.050, z = -4269.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388040, gadget_id = 70310009, pos = { x = -2844.699, y = 200.374, z = -4291.233 }, rot = { x = 0.000, y = 275.833, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388041, gadget_id = 70220014, pos = { x = -2904.092, y = 200.033, z = -4271.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388042, gadget_id = 70220014, pos = { x = -2905.280, y = 200.052, z = -4271.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388043, gadget_id = 70310004, pos = { x = -2864.162, y = 200.233, z = -4276.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388044, gadget_id = 70900380, pos = { x = -2866.519, y = 206.013, z = -4275.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 388045, gadget_id = 70900380, pos = { x = -2865.655, y = 205.981, z = -4264.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 388046, gadget_id = 70900380, pos = { x = -2855.604, y = 205.981, z = -4270.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 388047, gadget_id = 70220005, pos = { x = -2875.541, y = 199.979, z = -4272.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388048, gadget_id = 70220005, pos = { x = -2862.080, y = 199.950, z = -4268.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 388049, gadget_id = 70220005, pos = { x = -2842.628, y = 200.528, z = -4285.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 388050, shape = RegionShape.SPHERE, radius = 60, pos = { x = -2869.207, y = 199.956, z = -4275.388 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1388050, name = "ENTER_REGION_388050", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_388050" },
	{ config_id = 1388051, name = "ANY_MONSTER_LIVE_388051", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_388051", action = "action_EVENT_ANY_MONSTER_LIVE_388051" },
	{ config_id = 1388052, name = "TIMER_EVENT_388052", event = EventType.EVENT_TIMER_EVENT, source = "T1", condition = "condition_EVENT_TIMER_EVENT_388052", action = "action_EVENT_TIMER_EVENT_388052" },
	{ config_id = 1388053, name = "ANY_MONSTER_LIVE_388053", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_388053", action = "action_EVENT_ANY_MONSTER_LIVE_388053" },
	{ config_id = 1388054, name = "TIMER_EVENT_388054", event = EventType.EVENT_TIMER_EVENT, source = "T2", condition = "condition_EVENT_TIMER_EVENT_388054", action = "action_EVENT_TIMER_EVENT_388054" },
	{ config_id = 1388055, name = "GROUP_LOAD_388055", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_388055", trigger_count = 0 },
	-- 悬赏结束改参数
	{ config_id = 1388056, name = "HUNTING_FINISH_FINAL_388056", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_388056" },
	{ config_id = 1388057, name = "VARIABLE_CHANGE_388057", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_388057", action = "action_EVENT_VARIABLE_CHANGE_388057" },
	{ config_id = 1388058, name = "ANY_MONSTER_LIVE_388058", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_388058", action = "action_EVENT_ANY_MONSTER_LIVE_388058" },
	{ config_id = 1388059, name = "TIMER_EVENT_388059", event = EventType.EVENT_TIMER_EVENT, source = "T3", condition = "condition_EVENT_TIMER_EVENT_388059", action = "action_EVENT_TIMER_EVENT_388059" }
}

-- 点位
points = {
	-- 首领出生点
	{ config_id = 388060, pos = { x = -2865.443, y = 200.189, z = -4277.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IS_BOSS_DEAD", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_388055", "HUNTING_FINISH_FINAL_388056" },
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
		gadgets = { 388023, 388024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 海乱鬼火-机关/傀儡-小怪组,
		monsters = { },
		gadgets = { },
		regions = { 388050 },
		triggers = { "ENTER_REGION_388050", "VARIABLE_CHANGE_388057" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 海乱鬼火-营地-物件组,
		monsters = { },
		gadgets = { 388026, 388027, 388028, 388029, 388030, 388031, 388032, 388033, 388034, 388035, 388036, 388037, 388038, 388039, 388040, 388041, 388042, 388043 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 海乱鬼火-双子-怪物组,
		monsters = { 388005, 388006, 388007, 388008, 388009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 海乱鬼火-链接-怪物组1,
		monsters = { 388010, 388011, 388012, 388013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_388051", "TIMER_EVENT_388052" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 海乱鬼火-链接-怪物组2,
		monsters = { 388014, 388015, 388016, 388017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_388053", "TIMER_EVENT_388054" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 海乱鬼火-链接-怪物组3,
		monsters = { 388019, 388020, 388021, 388022 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_388058", "TIMER_EVENT_388059" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 海乱鬼火-双子-高伤炸药桶,
		monsters = { },
		gadgets = { 388047, 388048, 388049 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 海乱鬼火-链接-飞雷核,
		monsters = { },
		gadgets = { 388025, 388044, 388045, 388046 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 四星雷骗骗花,
		monsters = { 388018 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
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

-- 触发操作
function action_EVENT_ENTER_REGION_388050(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为50，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133220388, {388001}, 50, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为50，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 133220388, {388002}, 50, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为50，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 133220388, {388003}, 50, 1, 1) then
		return -1
	end
	
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为50，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 133220388, {388004}, 50, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_388051(context, evt)
	if 388010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_388051(context, evt)
	-- 延迟50秒后,向groupId为：133220388的对象,请求一次调用,并将string参数："T1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133220388, "T1", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_388052(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_388052(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220388, 8)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133220388, 7)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220388, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_388053(context, evt)
	if 388014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_388053(context, evt)
	-- 延迟50秒后,向groupId为：133220388的对象,请求一次调用,并将string参数："T2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133220388, "T2", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_388054(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_388054(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220388, 9)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133220388, 8)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220388, 8)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_388055(context, evt)
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
	            ScriptLib.AddExtraGroupSuite(context, 133220388, suite_id)
	        end
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_388056(context, evt)
	-- 将本组内变量名为 "IS_BOSS_DEAD" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_BOSS_DEAD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133220388, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_388057(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_388057(context, evt)
	-- 停止编号为1的怪物潮，end_type为1则是成功停止，0是失败停止（一般就是1）
	if 0 ~= ScriptLib.EndMonsterTide(context, 133220388, 1, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : end_monster_tide")
		return -1
	end
	
	-- 停止编号为2的怪物潮，end_type为1则是成功停止，0是失败停止（一般就是1）
	if 0 ~= ScriptLib.EndMonsterTide(context, 133220388, 2, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : end_monster_tide")
		return -1
	end
	
	-- 停止编号为3的怪物潮，end_type为1则是成功停止，0是失败停止（一般就是1）
	if 0 ~= ScriptLib.EndMonsterTide(context, 133220388, 3, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : end_monster_tide")
		return -1
	end
	
	-- 停止编号为4的怪物潮，end_type为1则是成功停止，0是失败停止（一般就是1）
	if 0 ~= ScriptLib.EndMonsterTide(context, 133220388, 4, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : end_monster_tide")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_388058(context, evt)
	if 388019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_388058(context, evt)
	-- 延迟50秒后,向groupId为：133220388的对象,请求一次调用,并将string参数："T3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133220388, "T3", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_388059(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_388059(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220388, 8)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133220388, 9)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220388, 9)
	
	return 0
end

require "V2_0/ElectricCore02"