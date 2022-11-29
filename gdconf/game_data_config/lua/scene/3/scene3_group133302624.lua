-- 基础信息
local base_info = {
	group_id = 133302624
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 624006, monster_id = 28060101, pos = { x = -26.701, y = 200.000, z = 3062.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 20 },
	{ config_id = 624007, monster_id = 28060101, pos = { x = -33.237, y = 200.000, z = 3071.496 }, rot = { x = 0.000, y = 82.975, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 624002, gadget_id = 70210105, pos = { x = -17.972, y = 200.000, z = 3057.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 },
	{ config_id = 624003, gadget_id = 70210105, pos = { x = -20.175, y = 200.000, z = 3071.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 },
	{ config_id = 624004, gadget_id = 70210105, pos = { x = -27.216, y = 200.000, z = 3067.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 },
	{ config_id = 624009, gadget_id = 70217020, pos = { x = -12.924, y = 199.020, z = 3062.032 }, rot = { x = 353.526, y = 281.996, z = 359.229 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1624005, name = "GADGET_STATE_CHANGE_624005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_624005", action = "action_EVENT_GADGET_STATE_CHANGE_624005" },
	{ config_id = 1624008, name = "GADGET_STATE_CHANGE_624008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_624008", action = "action_EVENT_GADGET_STATE_CHANGE_624008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 624001, gadget_id = 70290243, pos = { x = -10.714, y = 195.840, z = 3058.127 }, rot = { x = 19.053, y = 329.254, z = 349.011 }, level = 27, area_id = 20 }
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
		gadgets = { 624002, 624003, 624004, 624009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_624005", "GADGET_STATE_CHANGE_624008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_624005(context, evt)
	if 624002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_624005(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 624006, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_624008(context, evt)
	if 624002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_624008(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 624007, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end