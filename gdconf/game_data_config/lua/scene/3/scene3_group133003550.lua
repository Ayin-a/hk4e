-- 基础信息
local base_info = {
	group_id = 133003550
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 550001, monster_id = 21020201, pos = { x = 2370.472, y = 283.898, z = -1728.471 }, rot = { x = 0.000, y = 257.464, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8016 }, area_id = 1 },
	{ config_id = 550002, monster_id = 21020101, pos = { x = 2364.869, y = 283.898, z = -1731.578 }, rot = { x = 0.000, y = 262.054, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8016 }, area_id = 1 },
	-- 2
	{ config_id = 550003, monster_id = 21020201, pos = { x = 2363.420, y = 283.898, z = -1741.866 }, rot = { x = 0.000, y = 357.887, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8016 }, area_id = 1 },
	-- 2
	{ config_id = 550004, monster_id = 21010701, pos = { x = 2356.138, y = 284.024, z = -1718.822 }, rot = { x = 0.000, y = 162.211, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8016 }, area_id = 1 },
	-- 2
	{ config_id = 550005, monster_id = 21010502, pos = { x = 2349.177, y = 283.898, z = -1736.911 }, rot = { x = 0.000, y = 73.888, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8016 }, pose_id = 32, area_id = 1 },
	-- 2
	{ config_id = 550006, monster_id = 21010502, pos = { x = 2348.371, y = 283.898, z = -1733.232 }, rot = { x = 0.000, y = 54.440, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8016 }, pose_id = 32, area_id = 1 },
	-- 2
	{ config_id = 550007, monster_id = 21010502, pos = { x = 2344.948, y = 283.898, z = -1731.355 }, rot = { x = 0.000, y = 54.440, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8016 }, pose_id = 32, area_id = 1 },
	-- 2
	{ config_id = 550008, monster_id = 21010502, pos = { x = 2342.177, y = 283.898, z = -1737.289 }, rot = { x = 0.000, y = 67.983, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8016 }, pose_id = 32, area_id = 1 },
	-- 22
	{ config_id = 550009, monster_id = 21020101, pos = { x = 2361.262, y = 283.898, z = -1739.609 }, rot = { x = 0.000, y = 357.887, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8016 }, area_id = 1 },
	-- 22
	{ config_id = 550010, monster_id = 21010701, pos = { x = 2355.991, y = 283.898, z = -1721.195 }, rot = { x = 0.000, y = 159.700, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8015 }, area_id = 1 },
	-- 22
	{ config_id = 550011, monster_id = 21010701, pos = { x = 2354.203, y = 283.786, z = -1740.294 }, rot = { x = 0.000, y = 28.834, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8015 }, area_id = 1 },
	-- 22
	{ config_id = 550012, monster_id = 21011002, pos = { x = 2348.747, y = 283.898, z = -1734.500 }, rot = { x = 0.000, y = 67.502, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8015 }, pose_id = 32, area_id = 1 },
	-- 22
	{ config_id = 550013, monster_id = 21011002, pos = { x = 2346.363, y = 283.898, z = -1728.631 }, rot = { x = 0.000, y = 71.843, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8015 }, pose_id = 32, area_id = 1 },
	-- 22
	{ config_id = 550014, monster_id = 21010701, pos = { x = 2343.339, y = 283.898, z = -1736.572 }, rot = { x = 0.000, y = 36.105, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8015 }, area_id = 1 },
	{ config_id = 550068, monster_id = 21010502, pos = { x = 2364.406, y = 283.898, z = -1721.997 }, rot = { x = 0.000, y = 156.903, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8015 }, area_id = 1 },
	{ config_id = 550082, monster_id = 21010502, pos = { x = 2345.798, y = 285.456, z = -1741.260 }, rot = { x = 0.000, y = 36.105, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8015 }, pose_id = 32, area_id = 1 },
	{ config_id = 550083, monster_id = 21011002, pos = { x = 2350.282, y = 283.898, z = -1725.366 }, rot = { x = 0.000, y = 152.899, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8015 }, area_id = 1 },
	{ config_id = 550084, monster_id = 21010701, pos = { x = 2362.216, y = 283.715, z = -1741.965 }, rot = { x = 0.000, y = 328.337, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8015 }, area_id = 1 },
	-- 一阶段-第二波（水 雷 冰）
	{ config_id = 550085, monster_id = 21010701, pos = { x = 2374.850, y = 283.899, z = -1716.748 }, rot = { x = 0.000, y = 197.967, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8015 }, area_id = 1 },
	-- 一阶段-第二波（水 雷 冰）
	{ config_id = 550086, monster_id = 21010502, pos = { x = 2364.100, y = 283.898, z = -1738.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8015 }, pose_id = 32, area_id = 1 },
	-- 一阶段-第二波（水 雷 冰）
	{ config_id = 550087, monster_id = 21010502, pos = { x = 2357.200, y = 283.898, z = -1720.409 }, rot = { x = 0.000, y = 181.079, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8015 }, pose_id = 32, area_id = 1 },
	-- 一阶段-第二波（水 雷 冰）
	{ config_id = 550088, monster_id = 21011001, pos = { x = 2353.346, y = 283.706, z = -1744.908 }, rot = { x = 0.000, y = 28.834, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8015 }, pose_id = 32, area_id = 1 },
	-- 一阶段-第二波（水 雷 冰）
	{ config_id = 550089, monster_id = 21011001, pos = { x = 2346.424, y = 283.701, z = -1725.608 }, rot = { x = 0.000, y = 113.651, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 8015 }, pose_id = 32, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1550015, name = "ANY_MONSTER_DIE_550015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550015", action = "action_EVENT_ANY_MONSTER_DIE_550015", trigger_count = 0 },
	{ config_id = 1550016, name = "ANY_MONSTER_DIE_550016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550016", action = "action_EVENT_ANY_MONSTER_DIE_550016", trigger_count = 0 },
	{ config_id = 1550017, name = "ANY_MONSTER_DIE_550017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550017", action = "action_EVENT_ANY_MONSTER_DIE_550017", trigger_count = 0 },
	{ config_id = 1550018, name = "ANY_MONSTER_DIE_550018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550018", action = "action_EVENT_ANY_MONSTER_DIE_550018", trigger_count = 0 },
	{ config_id = 1550019, name = "ANY_MONSTER_DIE_550019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550019", action = "action_EVENT_ANY_MONSTER_DIE_550019", trigger_count = 0 },
	{ config_id = 1550020, name = "ANY_MONSTER_DIE_550020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550020", action = "action_EVENT_ANY_MONSTER_DIE_550020", trigger_count = 0 },
	{ config_id = 1550021, name = "ANY_MONSTER_DIE_550021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550021", action = "action_EVENT_ANY_MONSTER_DIE_550021", trigger_count = 0 },
	{ config_id = 1550022, name = "ANY_MONSTER_DIE_550022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550022", action = "action_EVENT_ANY_MONSTER_DIE_550022", trigger_count = 0 },
	{ config_id = 1550023, name = "ANY_MONSTER_DIE_550023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550023", action = "action_EVENT_ANY_MONSTER_DIE_550023", trigger_count = 0 },
	{ config_id = 1550024, name = "ANY_MONSTER_DIE_550024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550024", action = "action_EVENT_ANY_MONSTER_DIE_550024", trigger_count = 0 },
	{ config_id = 1550025, name = "ANY_MONSTER_DIE_550025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550025", action = "action_EVENT_ANY_MONSTER_DIE_550025", trigger_count = 0 },
	{ config_id = 1550026, name = "ANY_MONSTER_DIE_550026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550026", action = "action_EVENT_ANY_MONSTER_DIE_550026", trigger_count = 0 },
	{ config_id = 1550090, name = "ANY_MONSTER_DIE_550090", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550090", action = "action_EVENT_ANY_MONSTER_DIE_550090", trigger_count = 0 },
	{ config_id = 1550091, name = "ANY_MONSTER_DIE_550091", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550091", action = "action_EVENT_ANY_MONSTER_DIE_550091", trigger_count = 0 },
	{ config_id = 1550092, name = "ANY_MONSTER_DIE_550092", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550092", action = "action_EVENT_ANY_MONSTER_DIE_550092", trigger_count = 0 },
	{ config_id = 1550093, name = "ANY_MONSTER_DIE_550093", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550093", action = "action_EVENT_ANY_MONSTER_DIE_550093", trigger_count = 0 },
	{ config_id = 1550094, name = "ANY_MONSTER_DIE_550094", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550094", action = "action_EVENT_ANY_MONSTER_DIE_550094", trigger_count = 0 },
	{ config_id = 1550095, name = "ANY_MONSTER_DIE_550095", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550095", action = "action_EVENT_ANY_MONSTER_DIE_550095", trigger_count = 0 },
	{ config_id = 1550096, name = "ANY_MONSTER_DIE_550096", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550096", action = "action_EVENT_ANY_MONSTER_DIE_550096", trigger_count = 0 },
	{ config_id = 1550097, name = "ANY_MONSTER_DIE_550097", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550097", action = "action_EVENT_ANY_MONSTER_DIE_550097", trigger_count = 0 },
	{ config_id = 1550098, name = "ANY_MONSTER_DIE_550098", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550098", action = "action_EVENT_ANY_MONSTER_DIE_550098", trigger_count = 0 },
	{ config_id = 1550099, name = "ANY_MONSTER_DIE_550099", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_550099", action = "action_EVENT_ANY_MONSTER_DIE_550099", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 550001, 550068, 550082, 550083, 550084 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_550090", "ANY_MONSTER_DIE_550091", "ANY_MONSTER_DIE_550092", "ANY_MONSTER_DIE_550093", "ANY_MONSTER_DIE_550094", "ANY_MONSTER_DIE_550095", "ANY_MONSTER_DIE_550096", "ANY_MONSTER_DIE_550097", "ANY_MONSTER_DIE_550098", "ANY_MONSTER_DIE_550099" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 550001, 550068, 550082, 550083, 550084 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_550090", "ANY_MONSTER_DIE_550091", "ANY_MONSTER_DIE_550092", "ANY_MONSTER_DIE_550093", "ANY_MONSTER_DIE_550094", "ANY_MONSTER_DIE_550095", "ANY_MONSTER_DIE_550096", "ANY_MONSTER_DIE_550097", "ANY_MONSTER_DIE_550098", "ANY_MONSTER_DIE_550099" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 550001, 550068, 550082, 550083, 550084 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_550090", "ANY_MONSTER_DIE_550091", "ANY_MONSTER_DIE_550092", "ANY_MONSTER_DIE_550093", "ANY_MONSTER_DIE_550094", "ANY_MONSTER_DIE_550095", "ANY_MONSTER_DIE_550096", "ANY_MONSTER_DIE_550097", "ANY_MONSTER_DIE_550098", "ANY_MONSTER_DIE_550099" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 550001, 550068, 550082, 550083, 550084 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_550090", "ANY_MONSTER_DIE_550091", "ANY_MONSTER_DIE_550092", "ANY_MONSTER_DIE_550093", "ANY_MONSTER_DIE_550094", "ANY_MONSTER_DIE_550095", "ANY_MONSTER_DIE_550096", "ANY_MONSTER_DIE_550097", "ANY_MONSTER_DIE_550098", "ANY_MONSTER_DIE_550099" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 550003, 550004, 550005, 550006, 550007, 550008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_550015", "ANY_MONSTER_DIE_550016", "ANY_MONSTER_DIE_550017", "ANY_MONSTER_DIE_550018", "ANY_MONSTER_DIE_550019", "ANY_MONSTER_DIE_550020", "ANY_MONSTER_DIE_550021", "ANY_MONSTER_DIE_550022", "ANY_MONSTER_DIE_550023", "ANY_MONSTER_DIE_550024", "ANY_MONSTER_DIE_550025", "ANY_MONSTER_DIE_550026" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 550003, 550004, 550005, 550006, 550007, 550008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_550015", "ANY_MONSTER_DIE_550016", "ANY_MONSTER_DIE_550017", "ANY_MONSTER_DIE_550018", "ANY_MONSTER_DIE_550019", "ANY_MONSTER_DIE_550020", "ANY_MONSTER_DIE_550021", "ANY_MONSTER_DIE_550022", "ANY_MONSTER_DIE_550023", "ANY_MONSTER_DIE_550024", "ANY_MONSTER_DIE_550025", "ANY_MONSTER_DIE_550026" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 550003, 550004, 550005, 550006, 550007, 550008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_550015", "ANY_MONSTER_DIE_550016", "ANY_MONSTER_DIE_550017", "ANY_MONSTER_DIE_550018", "ANY_MONSTER_DIE_550019", "ANY_MONSTER_DIE_550020", "ANY_MONSTER_DIE_550021", "ANY_MONSTER_DIE_550022", "ANY_MONSTER_DIE_550023", "ANY_MONSTER_DIE_550024", "ANY_MONSTER_DIE_550025", "ANY_MONSTER_DIE_550026" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 550003, 550004, 550005, 550006, 550007, 550008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_550015", "ANY_MONSTER_DIE_550016", "ANY_MONSTER_DIE_550017", "ANY_MONSTER_DIE_550018", "ANY_MONSTER_DIE_550019", "ANY_MONSTER_DIE_550020", "ANY_MONSTER_DIE_550021", "ANY_MONSTER_DIE_550022", "ANY_MONSTER_DIE_550023", "ANY_MONSTER_DIE_550024", "ANY_MONSTER_DIE_550025", "ANY_MONSTER_DIE_550026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550015(context, evt)
	if 550003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550015(context, evt)
	-- 延迟30秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550009, delay_time = 30 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550016(context, evt)
	if 550004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550016(context, evt)
	-- 延迟10秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550010, delay_time = 10 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550017(context, evt)
	if 550005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550017(context, evt)
	-- 延迟10秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550011, delay_time = 10 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550018(context, evt)
	if 550006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550018(context, evt)
	-- 延迟10秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550012, delay_time = 10 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550019(context, evt)
	if 550007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550019(context, evt)
	-- 延迟10秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550013, delay_time = 10 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550020(context, evt)
	if 550008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550020(context, evt)
	-- 延迟10秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550014, delay_time = 10 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550021(context, evt)
	if 550009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550021(context, evt)
	-- 延迟10秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550003, delay_time = 10 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550022(context, evt)
	if 550010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550022(context, evt)
	-- 延迟10秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550004, delay_time = 10 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550023(context, evt)
	if 550011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550023(context, evt)
	-- 延迟10秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550005, delay_time = 10 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550024(context, evt)
	if 550012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550024(context, evt)
	-- 延迟10秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550006, delay_time = 10 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550025(context, evt)
	if 550013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550025(context, evt)
	-- 延迟10秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550007, delay_time = 10 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550026(context, evt)
	if 550014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550026(context, evt)
	-- 延迟10秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550008, delay_time = 10 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550090(context, evt)
	if 550001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550090(context, evt)
	-- 延迟30秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550086, delay_time = 30 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550091(context, evt)
	if 550068 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550091(context, evt)
	-- 延迟15秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550087, delay_time = 15 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550092(context, evt)
	if 550082 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550092(context, evt)
	-- 延迟15秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550088, delay_time = 15 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550093(context, evt)
	if 550083 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550093(context, evt)
	-- 延迟15秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550089, delay_time = 15 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550094(context, evt)
	if 550084 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550094(context, evt)
	-- 延迟15秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550085, delay_time = 15 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550095(context, evt)
	if 550086 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550095(context, evt)
	-- 延迟30秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550001, delay_time = 30 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550096(context, evt)
	if 550087 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550096(context, evt)
	-- 延迟15秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550068, delay_time = 15 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550097(context, evt)
	if 550088 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550097(context, evt)
	-- 延迟15秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550082, delay_time = 15 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550098(context, evt)
	if 550089 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550098(context, evt)
	-- 延迟15秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550083, delay_time = 15 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_550099(context, evt)
	if 550085 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_550099(context, evt)
	-- 延迟15秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550084, delay_time = 15 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end