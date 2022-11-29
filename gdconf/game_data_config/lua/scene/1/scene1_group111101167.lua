-- 基础信息
local base_info = {
	group_id = 111101167
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 167057, monster_id = 20020101, pos = { x = 2873.947, y = 275.959, z = -1224.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "元素之核" },
	{ config_id = 167068, monster_id = 20010301, pos = { x = 2981.667, y = 324.162, z = -1114.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 167069, monster_id = 20010301, pos = { x = 2980.104, y = 323.675, z = -1116.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 167070, monster_id = 20010301, pos = { x = 2983.649, y = 322.813, z = -1118.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 元素方碑1
	{ config_id = 167001, gadget_id = 70900039, pos = { x = 2981.528, y = 323.399, z = -1116.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	-- 元素方碑2
	{ config_id = 167002, gadget_id = 70900039, pos = { x = 2962.532, y = 295.259, z = -1196.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 167003, gadget_id = 70350277, pos = { x = 3001.299, y = 335.312, z = -1085.900 }, rot = { x = 4.439, y = 263.708, z = 0.000 }, level = 1 },
	{ config_id = 167004, gadget_id = 70350277, pos = { x = 2994.365, y = 334.770, z = -1086.664 }, rot = { x = 6.624, y = 255.847, z = 0.000 }, level = 1 },
	{ config_id = 167005, gadget_id = 70350277, pos = { x = 2987.638, y = 333.964, z = -1088.361 }, rot = { x = 14.428, y = 222.927, z = 0.000 }, level = 1 },
	{ config_id = 167006, gadget_id = 70350277, pos = { x = 2983.267, y = 332.313, z = -1093.061 }, rot = { x = 19.019, y = 186.714, z = 0.000 }, level = 1 },
	{ config_id = 167007, gadget_id = 70350277, pos = { x = 2982.494, y = 330.035, z = -1099.625 }, rot = { x = 18.122, y = 181.369, z = 0.000 }, level = 1 },
	{ config_id = 167008, gadget_id = 70350277, pos = { x = 2982.335, y = 327.858, z = -1106.275 }, rot = { x = 15.295, y = 180.089, z = 0.000 }, level = 1 },
	{ config_id = 167009, gadget_id = 70350277, pos = { x = 2982.324, y = 326.012, z = -1113.024 }, rot = { x = 0.341, y = 183.290, z = 0.000 }, level = 1 },
	{ config_id = 167010, gadget_id = 70350277, pos = { x = 2981.927, y = 325.971, z = -1119.947 }, rot = { x = 350.119, y = 184.329, z = 0.000 }, level = 1 },
	{ config_id = 167011, gadget_id = 70350277, pos = { x = 2981.406, y = 327.172, z = -1126.824 }, rot = { x = 349.384, y = 184.416, z = 0.000 }, level = 1 },
	{ config_id = 167012, gadget_id = 70350277, pos = { x = 2980.876, y = 328.461, z = -1133.683 }, rot = { x = 349.499, y = 184.588, z = 0.000 }, level = 1 },
	{ config_id = 167013, gadget_id = 70350277, pos = { x = 2980.326, y = 329.737, z = -1140.544 }, rot = { x = 350.142, y = 184.864, z = 0.000 }, level = 1 },
	{ config_id = 167014, gadget_id = 70350277, pos = { x = 2979.741, y = 330.936, z = -1147.416 }, rot = { x = 351.716, y = 185.386, z = 0.000 }, level = 1 },
	{ config_id = 167015, gadget_id = 70350277, pos = { x = 2979.091, y = 331.944, z = -1154.311 }, rot = { x = 359.003, y = 187.526, z = 0.000 }, level = 1 },
	{ config_id = 167016, gadget_id = 70350277, pos = { x = 2978.180, y = 332.065, z = -1161.204 }, rot = { x = 39.174, y = 196.944, z = 0.000 }, level = 1 },
	{ config_id = 167017, gadget_id = 70350277, pos = { x = 2976.604, y = 327.658, z = -1166.379 }, rot = { x = 44.725, y = 198.884, z = 0.000 }, level = 1 },
	{ config_id = 167018, gadget_id = 70350277, pos = { x = 2974.994, y = 322.732, z = -1171.084 }, rot = { x = 45.730, y = 200.058, z = 0.000 }, level = 1 },
	{ config_id = 167019, gadget_id = 70350277, pos = { x = 2973.318, y = 317.720, z = -1175.674 }, rot = { x = 45.887, y = 201.249, z = 0.000 }, level = 1 },
	{ config_id = 167020, gadget_id = 70350277, pos = { x = 2971.552, y = 312.694, z = -1180.215 }, rot = { x = 45.517, y = 202.731, z = 0.000 }, level = 1 },
	{ config_id = 167021, gadget_id = 70350277, pos = { x = 2969.657, y = 307.700, z = -1184.739 }, rot = { x = 44.424, y = 204.947, z = 0.000 }, level = 1 },
	{ config_id = 167022, gadget_id = 70350277, pos = { x = 2967.549, y = 302.800, z = -1189.271 }, rot = { x = 41.314, y = 209.341, z = 0.000 }, level = 1 },
	{ config_id = 167023, gadget_id = 70350277, pos = { x = 2964.975, y = 298.183, z = -1193.851 }, rot = { x = 10.769, y = 234.050, z = 0.000 }, level = 1 },
	{ config_id = 167024, gadget_id = 70350277, pos = { x = 2960.077, y = 297.032, z = -1197.403 }, rot = { x = 323.694, y = 268.725, z = 0.000 }, level = 1 },
	{ config_id = 167025, gadget_id = 70350277, pos = { x = 2954.451, y = 301.167, z = -1197.528 }, rot = { x = 319.258, y = 275.265, z = 0.000 }, level = 1 },
	{ config_id = 167026, gadget_id = 70350277, pos = { x = 2949.170, y = 305.735, z = -1197.041 }, rot = { x = 318.627, y = 277.455, z = 0.000 }, level = 1 },
	{ config_id = 167027, gadget_id = 70350277, pos = { x = 2943.962, y = 310.362, z = -1196.360 }, rot = { x = 319.554, y = 277.960, z = 0.000 }, level = 1 },
	{ config_id = 167028, gadget_id = 70350277, pos = { x = 2938.686, y = 314.903, z = -1195.622 }, rot = { x = 322.575, y = 276.903, z = 0.000 }, level = 1 },
	{ config_id = 167029, gadget_id = 70350277, pos = { x = 2933.170, y = 319.155, z = -1194.954 }, rot = { x = 334.679, y = 271.388, z = 0.000 }, level = 1 },
	{ config_id = 167030, gadget_id = 70350277, pos = { x = 2926.918, y = 322.114, z = -1194.803 }, rot = { x = 27.599, y = 250.065, z = 0.000 }, level = 1 },
	{ config_id = 167031, gadget_id = 70350277, pos = { x = 2921.209, y = 318.939, z = -1196.874 }, rot = { x = 39.346, y = 242.996, z = 0.000 }, level = 1 },
	{ config_id = 167032, gadget_id = 70350277, pos = { x = 2916.387, y = 314.502, z = -1199.331 }, rot = { x = 41.695, y = 241.255, z = 0.000 }, level = 1 },
	{ config_id = 167033, gadget_id = 70350277, pos = { x = 2911.804, y = 309.846, z = -1201.844 }, rot = { x = 42.879, y = 240.314, z = 0.000 }, level = 1 },
	{ config_id = 167034, gadget_id = 70350277, pos = { x = 2907.348, y = 305.083, z = -1204.385 }, rot = { x = 43.624, y = 239.713, z = 0.000 }, level = 1 },
	{ config_id = 167035, gadget_id = 70350277, pos = { x = 2902.972, y = 300.254, z = -1206.940 }, rot = { x = 44.186, y = 239.232, z = 0.000 }, level = 1 },
	{ config_id = 167036, gadget_id = 70350277, pos = { x = 2898.659, y = 295.375, z = -1209.508 }, rot = { x = 44.612, y = 238.872, z = 0.000 }, level = 1 },
	{ config_id = 167037, gadget_id = 70350277, pos = { x = 2894.394, y = 290.459, z = -1212.084 }, rot = { x = 44.970, y = 238.557, z = 0.000 }, level = 1 },
	{ config_id = 167038, gadget_id = 70350277, pos = { x = 2890.169, y = 285.512, z = -1214.668 }, rot = { x = 45.295, y = 238.274, z = 0.000 }, level = 1 },
	{ config_id = 167039, gadget_id = 70350277, pos = { x = 2885.980, y = 280.536, z = -1217.257 }, rot = { x = 45.635, y = 237.966, z = 0.000 }, level = 1 },
	{ config_id = 167040, gadget_id = 70350277, pos = { x = 2882.177, y = 275.950, z = -1219.637 }, rot = { x = 45.635, y = 237.966, z = 0.000 }, level = 1 },
	{ config_id = 167041, gadget_id = 70620008, pos = { x = 2962.145, y = 296.050, z = -1196.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 167042, gadget_id = 70900340, pos = { x = 2964.114, y = 298.675, z = -1188.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 167043, gadget_id = 70900340, pos = { x = 2960.646, y = 297.267, z = -1202.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 167044, gadget_id = 70690001, pos = { x = 2961.976, y = 309.549, z = -1197.906 }, rot = { x = 272.245, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 167045, gadget_id = 70690001, pos = { x = 2958.038, y = 316.548, z = -1197.631 }, rot = { x = 320.746, y = 271.836, z = 87.100 }, level = 1 },
	{ config_id = 167046, gadget_id = 70690001, pos = { x = 2947.824, y = 321.659, z = -1197.431 }, rot = { x = 341.090, y = 270.770, z = 87.627 }, level = 1 },
	{ config_id = 167049, gadget_id = 70690001, pos = { x = 2983.165, y = 326.562, z = -1133.180 }, rot = { x = 352.029, y = 175.270, z = 0.000 }, level = 1 },
	{ config_id = 167050, gadget_id = 70690001, pos = { x = 2984.412, y = 327.904, z = -1148.244 }, rot = { x = 352.029, y = 175.270, z = 0.000 }, level = 1 },
	{ config_id = 167053, gadget_id = 70220013, pos = { x = 3002.897, y = 335.308, z = -1085.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 167059, gadget_id = 70350277, pos = { x = 2872.233, y = 276.242, z = -1224.088 }, rot = { x = 356.786, y = 277.542, z = 0.000 }, level = 1 },
	{ config_id = 167060, gadget_id = 70350277, pos = { x = 2864.315, y = 276.691, z = -1223.039 }, rot = { x = 354.455, y = 297.360, z = 0.000 }, level = 1 },
	{ config_id = 167061, gadget_id = 70350277, pos = { x = 2857.487, y = 277.437, z = -1219.506 }, rot = { x = 358.963, y = 283.975, z = 0.000 }, level = 1 },
	{ config_id = 167062, gadget_id = 70350277, pos = { x = 2851.659, y = 277.546, z = -1218.056 }, rot = { x = 11.929, y = 218.238, z = 0.000 }, level = 1 },
	{ config_id = 167063, gadget_id = 70350277, pos = { x = 2846.843, y = 275.902, z = -1224.168 }, rot = { x = 15.060, y = 198.103, z = 0.000 }, level = 1 },
	{ config_id = 167064, gadget_id = 70350277, pos = { x = 2844.442, y = 273.823, z = -1231.511 }, rot = { x = 4.818, y = 280.944, z = 0.000 }, level = 1 },
	{ config_id = 167065, gadget_id = 70350277, pos = { x = 2838.614, y = 273.323, z = -1230.384 }, rot = { x = 354.055, y = 329.032, z = 0.000 }, level = 1 },
	{ config_id = 167066, gadget_id = 70350277, pos = { x = 2834.594, y = 274.136, z = -1223.687 }, rot = { x = 354.055, y = 329.032, z = 0.000 }, level = 1 },
	-- 食材
	{ config_id = 167067, gadget_id = 70560001, pos = { x = 2826.376, y = 276.534, z = -1209.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 167072, gadget_id = 70690001, pos = { x = 2982.146, y = 326.239, z = -1120.861 }, rot = { x = 343.200, y = 175.270, z = 0.000 }, level = 1 },
	{ config_id = 167073, gadget_id = 70690001, pos = { x = 2961.976, y = 303.228, z = -1198.154 }, rot = { x = 272.245, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 起点region
	{ config_id = 167054, shape = RegionShape.SPHERE, radius = 5, pos = { x = 3002.957, y = 336.537, z = -1085.123 } },
	-- 气味合集Aregion
	{ config_id = 167055, shape = RegionShape.SPHERE, radius = 7.55, pos = { x = 2980.323, y = 331.626, z = -1154.757 } },
	-- 气味合集Bregion
	{ config_id = 167056, shape = RegionShape.SPHERE, radius = 9.34, pos = { x = 2938.524, y = 321.424, z = -1195.849 } },
	{ config_id = 167074, shape = RegionShape.SPHERE, radius = 2.93, pos = { x = 2981.444, y = 323.725, z = -1115.906 } }
}

-- 触发器
triggers = {
	-- 方碑2触发生成加速环suit3
	{ config_id = 1167047, name = "GADGET_STATE_CHANGE_167047", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_167047", action = "action_EVENT_GADGET_STATE_CHANGE_167047" },
	-- 方碑1触发生成加速环suit4
	{ config_id = 1167051, name = "GADGET_STATE_CHANGE_167051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_167051", action = "action_EVENT_GADGET_STATE_CHANGE_167051" },
	-- 起点region
	{ config_id = 1167054, name = "ENTER_REGION_167054", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_167054", action = "action_EVENT_ENTER_REGION_167054" },
	-- 气味合集Aregion
	{ config_id = 1167055, name = "ENTER_REGION_167055", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_167055", action = "action_EVENT_ENTER_REGION_167055" },
	-- 气味合集Bregion
	{ config_id = 1167056, name = "ENTER_REGION_167056", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_167056", action = "action_EVENT_ENTER_REGION_167056" },
	{ config_id = 1167058, name = "ANY_MONSTER_DIE_167058", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_167058", action = "action_EVENT_ANY_MONSTER_DIE_167058" },
	-- 怪物死方碑解锁
	{ config_id = 1167071, name = "ANY_MONSTER_DIE_167071", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_167071", action = "action_EVENT_ANY_MONSTER_DIE_167071" },
	{ config_id = 1167074, name = "ENTER_REGION_167074", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_167074", action = "action_EVENT_ENTER_REGION_167074" }
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
		-- description = 元素方碑1,
		monsters = { },
		gadgets = { 167001, 167053 },
		regions = { 167054, 167074 },
		triggers = { "GADGET_STATE_CHANGE_167051", "ENTER_REGION_167054", "ENTER_REGION_167074" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 元素方碑2,
		monsters = { },
		gadgets = { 167002, 167041, 167042, 167043 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_167047" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 方碑2加速环,
		monsters = { },
		gadgets = { 167044, 167045, 167046, 167073 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 方碑1加速环,
		monsters = { },
		gadgets = { 167049, 167050, 167072 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 气味合集A,
		monsters = { },
		gadgets = { 167003, 167004, 167005, 167006, 167007, 167008, 167009, 167010, 167011, 167012, 167013, 167014 },
		regions = { 167055 },
		triggers = { "ENTER_REGION_167055" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 气味合集B,
		monsters = { },
		gadgets = { 167015, 167016, 167017, 167018, 167019, 167020, 167021, 167022, 167023, 167024, 167025, 167026, 167027, 167028, 167029 },
		regions = { 167056 },
		triggers = { "ENTER_REGION_167056" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 气味合集C,
		monsters = { },
		gadgets = { 167030, 167031, 167032, 167033, 167034, 167035, 167036, 167037, 167038, 167039, 167040 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = C怪物,
		monsters = { 167057 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_167058" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 气味合集D以及食材,
		monsters = { },
		gadgets = { 167059, 167060, 167061, 167062, 167063, 167064, 167065, 167066, 167067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 方碑1怪物,
		monsters = { 167068, 167069, 167070 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_167071" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_167047(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101167, 167002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_167047(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101167, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_167051(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101167, 167001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_167051(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101167, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_167054(context, evt)
	if evt.param1 ~= 167054 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_167054(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101167, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_167055(context, evt)
	if evt.param1 ~= 167055 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_167055(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101167, 6)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101167, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_167056(context, evt)
	if evt.param1 ~= 167056 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_167056(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101167, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101167, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_167058(context, evt)
	--判断死亡怪物的configid是否为 167057
	if evt.param1 ~= 167057 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_167058(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101167, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_167071(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101167) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_167071(context, evt)
	-- 改变指定group组111101167中， configid为167001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101167, 167001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_167074(context, evt)
	if evt.param1 ~= 167074 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_167074(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101167, 10)
	
	return 0
end