-- 基础信息
local base_info = {
	group_id = 133213483
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 483001, monster_id = 28020201, pos = { x = -3250.458, y = 214.163, z = -3577.908 }, rot = { x = 355.797, y = 91.942, z = 343.554 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 483002, monster_id = 28020201, pos = { x = -3248.315, y = 214.241, z = -3578.272 }, rot = { x = 6.374, y = 274.690, z = 16.920 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 483003, monster_id = 28020301, pos = { x = -3193.573, y = 208.241, z = -3520.535 }, rot = { x = 2.550, y = 359.592, z = 341.833 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 483004, monster_id = 28020301, pos = { x = -3183.650, y = 205.827, z = -3518.663 }, rot = { x = 357.412, y = 175.175, z = 11.721 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 483005, monster_id = 28020301, pos = { x = -3197.225, y = 210.542, z = -3492.648 }, rot = { x = 5.375, y = 165.363, z = 16.548 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 483006, monster_id = 28010104, pos = { x = -3366.884, y = 200.265, z = -3747.436 }, rot = { x = 353.761, y = 359.902, z = 1.790 }, level = 27, drop_tag = "采集动物", area_id = 12 },
	{ config_id = 483007, monster_id = 28010104, pos = { x = -3357.892, y = 200.200, z = -3747.291 }, rot = { x = 354.647, y = 0.084, z = 358.210 }, level = 27, drop_tag = "采集动物", area_id = 12 },
	{ config_id = 483008, monster_id = 28020301, pos = { x = -3368.542, y = 203.335, z = -3712.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 483009, monster_id = 28030102, pos = { x = -3302.396, y = 201.488, z = -3674.611 }, rot = { x = 353.546, y = 0.184, z = 356.747 }, level = 27, drop_tag = "鸟类", area_id = 12 },
	{ config_id = 483010, monster_id = 28030102, pos = { x = -3303.904, y = 200.667, z = -3679.526 }, rot = { x = 352.271, y = 0.450, z = 353.340 }, level = 27, drop_tag = "鸟类", area_id = 12 },
	{ config_id = 483011, monster_id = 28030102, pos = { x = -3305.647, y = 201.331, z = -3675.749 }, rot = { x = 348.293, y = 359.782, z = 2.126 }, level = 27, drop_tag = "鸟类", area_id = 12 },
	{ config_id = 483012, monster_id = 28030102, pos = { x = -3360.990, y = 200.000, z = -3583.342 }, rot = { x = 0.000, y = 243.247, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 12 },
	{ config_id = 483014, monster_id = 28030102, pos = { x = -3362.389, y = 200.009, z = -3580.092 }, rot = { x = 357.324, y = 243.143, z = 4.467 }, level = 27, drop_tag = "鸟类", area_id = 12 },
	{ config_id = 483015, monster_id = 28040101, pos = { x = -3332.969, y = 200.000, z = -3618.717 }, rot = { x = 0.000, y = 147.359, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 483016, monster_id = 28030404, pos = { x = -3318.090, y = 207.002, z = -3572.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 12 },
	{ config_id = 483017, monster_id = 28030404, pos = { x = -3319.742, y = 207.289, z = -3571.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 12 },
	{ config_id = 483018, monster_id = 28030404, pos = { x = -3319.248, y = 206.848, z = -3572.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 12 },
	{ config_id = 483019, monster_id = 28020301, pos = { x = -3289.628, y = 201.530, z = -3635.523 }, rot = { x = 350.276, y = 359.620, z = 4.467 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 483020, monster_id = 28020301, pos = { x = -3270.654, y = 200.953, z = -3629.733 }, rot = { x = 350.321, y = 0.604, z = 352.875 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 483024, monster_id = 28040101, pos = { x = -3334.218, y = 200.000, z = -3619.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 483025, monster_id = 28040101, pos = { x = -3332.708, y = 200.000, z = -3620.166 }, rot = { x = 0.000, y = 63.956, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 483026, monster_id = 28040101, pos = { x = -3340.981, y = 200.000, z = -3501.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 483027, monster_id = 28040101, pos = { x = -3340.750, y = 200.000, z = -3500.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 483028, monster_id = 28040101, pos = { x = -3341.431, y = 200.000, z = -3501.177 }, rot = { x = 0.000, y = 220.674, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 483029, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3282.148, y = 201.604, z = -3631.881 }, area_id = 12 },
	{ config_id = 483030, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3318.438, y = 207.265, z = -3571.377 }, area_id = 12 },
	{ config_id = 483031, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3249.376, y = 214.252, z = -3577.916 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1483029, name = "ENTER_REGION_483029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_483029", action = "action_EVENT_ENTER_REGION_483029" },
	{ config_id = 1483030, name = "ENTER_REGION_483030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_483030", action = "action_EVENT_ENTER_REGION_483030" },
	{ config_id = 1483031, name = "ENTER_REGION_483031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_483031", action = "action_EVENT_ENTER_REGION_483031" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 483013, monster_id = 28030102, pos = { x = -3364.140, y = 200.000, z = -3577.917 }, rot = { x = 0.000, y = 243.247, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 12 },
		{ config_id = 483021, monster_id = 28020604, pos = { x = -3289.792, y = 219.442, z = -3532.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 12 },
		{ config_id = 483022, monster_id = 28020604, pos = { x = -3286.790, y = 218.893, z = -3534.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 12 },
		{ config_id = 483023, monster_id = 28020604, pos = { x = -3289.556, y = 218.554, z = -3536.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 12 }
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
		monsters = { 483003, 483004, 483005, 483006, 483007, 483008, 483009, 483010, 483011, 483012, 483014, 483015, 483024, 483025, 483026, 483027, 483028 },
		gadgets = { },
		regions = { 483029, 483030, 483031 },
		triggers = { "ENTER_REGION_483029", "ENTER_REGION_483030", "ENTER_REGION_483031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_483029(context, evt)
	if evt.param1 ~= 483029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_483029(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 483019, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 483020, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_483030(context, evt)
	if evt.param1 ~= 483030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_483030(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 483016, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 483017, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 483018, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_483031(context, evt)
	if evt.param1 ~= 483031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_483031(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 483001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 483002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end