-- 基础信息
local base_info = {
	group_id = 133103297
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 297001, monster_id = 20011401, pos = { x = 735.929, y = 325.359, z = 1542.323 }, rot = { x = 0.000, y = 152.919, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 297002, monster_id = 20011401, pos = { x = 739.387, y = 325.595, z = 1542.951 }, rot = { x = 0.000, y = 199.173, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 297003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 730.283, y = 325.450, z = 1546.398 }, area_id = 6 },
	{ config_id = 297004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 865.683, y = 230.167, z = 1193.924 }, area_id = 6 },
	{ config_id = 297005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 832.343, y = 325.564, z = 1520.430 }, area_id = 6 },
	{ config_id = 297007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 883.990, y = 322.131, z = 1550.283 }, area_id = 6 },
	{ config_id = 297008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 689.067, y = 315.393, z = 1523.223 }, area_id = 6 },
	{ config_id = 297010, shape = RegionShape.SPHERE, radius = 5, pos = { x = 915.740, y = 268.608, z = 1563.161 }, area_id = 6 },
	{ config_id = 297011, shape = RegionShape.SPHERE, radius = 5, pos = { x = 816.476, y = 234.663, z = 1650.913 }, area_id = 6 },
	{ config_id = 297012, shape = RegionShape.SPHERE, radius = 5, pos = { x = 959.950, y = 268.938, z = 1324.554 }, area_id = 6 },
	{ config_id = 297013, shape = RegionShape.SPHERE, radius = 5, pos = { x = 909.376, y = 233.744, z = 1661.076 }, area_id = 6 },
	{ config_id = 297014, shape = RegionShape.SPHERE, radius = 5, pos = { x = 727.235, y = 232.202, z = 1636.382 }, area_id = 6 },
	{ config_id = 297015, shape = RegionShape.SPHERE, radius = 5, pos = { x = 721.327, y = 230.920, z = 1703.483 }, area_id = 6 },
	{ config_id = 297016, shape = RegionShape.SPHERE, radius = 5, pos = { x = 616.948, y = 265.879, z = 1442.446 }, area_id = 6 },
	{ config_id = 297017, shape = RegionShape.SPHERE, radius = 5, pos = { x = 671.270, y = 296.080, z = 1404.866 }, area_id = 6 },
	{ config_id = 297018, shape = RegionShape.SPHERE, radius = 5, pos = { x = 640.982, y = 265.309, z = 1368.486 }, area_id = 6 },
	{ config_id = 297019, shape = RegionShape.SPHERE, radius = 5, pos = { x = 647.599, y = 309.250, z = 1423.801 }, area_id = 6 },
	{ config_id = 297020, shape = RegionShape.SPHERE, radius = 5, pos = { x = 638.373, y = 296.448, z = 1444.832 }, area_id = 6 },
	{ config_id = 297022, shape = RegionShape.SPHERE, radius = 5, pos = { x = 869.731, y = 324.410, z = 1515.728 }, area_id = 6 },
	{ config_id = 297023, shape = RegionShape.SPHERE, radius = 5, pos = { x = 855.201, y = 313.230, z = 1551.883 }, area_id = 6 },
	{ config_id = 297024, shape = RegionShape.SPHERE, radius = 5, pos = { x = 938.395, y = 329.284, z = 1493.653 }, area_id = 6 },
	{ config_id = 297026, shape = RegionShape.SPHERE, radius = 5, pos = { x = 749.324, y = 312.600, z = 1750.210 }, area_id = 6 },
	{ config_id = 297028, shape = RegionShape.SPHERE, radius = 5, pos = { x = 718.883, y = 409.654, z = 1836.879 }, area_id = 6 },
	{ config_id = 297029, shape = RegionShape.SPHERE, radius = 5, pos = { x = 715.747, y = 388.821, z = 1912.156 }, area_id = 6 },
	{ config_id = 297030, shape = RegionShape.SPHERE, radius = 5, pos = { x = 658.065, y = 369.053, z = 1924.091 }, area_id = 6 },
	{ config_id = 297031, shape = RegionShape.SPHERE, radius = 5, pos = { x = 611.995, y = 359.624, z = 1825.370 }, area_id = 6 },
	{ config_id = 297032, shape = RegionShape.SPHERE, radius = 5, pos = { x = 473.261, y = 230.700, z = 1705.258 }, area_id = 6 },
	{ config_id = 297033, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1014.186, y = 307.190, z = 1611.858 }, area_id = 6 },
	{ config_id = 297034, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1039.455, y = 340.899, z = 1548.787 }, area_id = 6 },
	{ config_id = 297035, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1102.637, y = 350.043, z = 1512.208 }, area_id = 6 },
	{ config_id = 297036, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1122.792, y = 352.618, z = 1624.334 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1297003, name = "ENTER_REGION_297003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297003", action = "action_EVENT_ENTER_REGION_297003" },
	{ config_id = 1297004, name = "ENTER_REGION_297004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297004", action = "action_EVENT_ENTER_REGION_297004" },
	{ config_id = 1297005, name = "ENTER_REGION_297005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297005", action = "action_EVENT_ENTER_REGION_297005" },
	{ config_id = 1297007, name = "ENTER_REGION_297007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297007", action = "action_EVENT_ENTER_REGION_297007" },
	{ config_id = 1297008, name = "ENTER_REGION_297008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297008", action = "action_EVENT_ENTER_REGION_297008" },
	{ config_id = 1297010, name = "ENTER_REGION_297010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297010", action = "action_EVENT_ENTER_REGION_297010" },
	{ config_id = 1297011, name = "ENTER_REGION_297011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297011", action = "action_EVENT_ENTER_REGION_297011" },
	{ config_id = 1297012, name = "ENTER_REGION_297012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297012", action = "action_EVENT_ENTER_REGION_297012" },
	{ config_id = 1297013, name = "ENTER_REGION_297013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297013", action = "action_EVENT_ENTER_REGION_297013" },
	{ config_id = 1297014, name = "ENTER_REGION_297014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297014", action = "action_EVENT_ENTER_REGION_297014" },
	{ config_id = 1297015, name = "ENTER_REGION_297015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297015", action = "action_EVENT_ENTER_REGION_297015" },
	{ config_id = 1297016, name = "ENTER_REGION_297016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297016", action = "action_EVENT_ENTER_REGION_297016" },
	{ config_id = 1297017, name = "ENTER_REGION_297017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297017", action = "action_EVENT_ENTER_REGION_297017" },
	{ config_id = 1297018, name = "ENTER_REGION_297018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297018", action = "action_EVENT_ENTER_REGION_297018" },
	{ config_id = 1297019, name = "ENTER_REGION_297019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297019", action = "action_EVENT_ENTER_REGION_297019" },
	{ config_id = 1297020, name = "ENTER_REGION_297020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297020", action = "action_EVENT_ENTER_REGION_297020" },
	{ config_id = 1297022, name = "ENTER_REGION_297022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297022", action = "action_EVENT_ENTER_REGION_297022" },
	{ config_id = 1297023, name = "ENTER_REGION_297023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297023", action = "action_EVENT_ENTER_REGION_297023" },
	{ config_id = 1297024, name = "ENTER_REGION_297024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297024", action = "action_EVENT_ENTER_REGION_297024" },
	{ config_id = 1297026, name = "ENTER_REGION_297026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297026", action = "action_EVENT_ENTER_REGION_297026" },
	{ config_id = 1297028, name = "ENTER_REGION_297028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297028", action = "action_EVENT_ENTER_REGION_297028" },
	{ config_id = 1297029, name = "ENTER_REGION_297029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297029", action = "action_EVENT_ENTER_REGION_297029" },
	{ config_id = 1297030, name = "ENTER_REGION_297030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297030", action = "action_EVENT_ENTER_REGION_297030" },
	{ config_id = 1297031, name = "ENTER_REGION_297031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297031", action = "action_EVENT_ENTER_REGION_297031" },
	{ config_id = 1297032, name = "ENTER_REGION_297032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297032", action = "action_EVENT_ENTER_REGION_297032" },
	{ config_id = 1297033, name = "ENTER_REGION_297033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297033", action = "action_EVENT_ENTER_REGION_297033" },
	{ config_id = 1297034, name = "ENTER_REGION_297034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297034", action = "action_EVENT_ENTER_REGION_297034" },
	{ config_id = 1297035, name = "ENTER_REGION_297035", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297035", action = "action_EVENT_ENTER_REGION_297035" },
	{ config_id = 1297036, name = "ENTER_REGION_297036", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297036", action = "action_EVENT_ENTER_REGION_297036" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 297009, shape = RegionShape.SPHERE, radius = 5, pos = { x = 985.830, y = 315.827, z = 1580.209 }, area_id = 6 }
	},
	triggers = {
		{ config_id = 1297009, name = "ENTER_REGION_297009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297009", action = "action_EVENT_ENTER_REGION_297009" }
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
		gadgets = { },
		regions = { 297003, 297004, 297005, 297007, 297008, 297010, 297011, 297012, 297013, 297014, 297015, 297016, 297017, 297018, 297019, 297020, 297022, 297023, 297024, 297026, 297028, 297029, 297030, 297031, 297032, 297033, 297034, 297035, 297036 },
		triggers = { "ENTER_REGION_297003", "ENTER_REGION_297004", "ENTER_REGION_297005", "ENTER_REGION_297007", "ENTER_REGION_297008", "ENTER_REGION_297010", "ENTER_REGION_297011", "ENTER_REGION_297012", "ENTER_REGION_297013", "ENTER_REGION_297014", "ENTER_REGION_297015", "ENTER_REGION_297016", "ENTER_REGION_297017", "ENTER_REGION_297018", "ENTER_REGION_297019", "ENTER_REGION_297020", "ENTER_REGION_297022", "ENTER_REGION_297023", "ENTER_REGION_297024", "ENTER_REGION_297026", "ENTER_REGION_297028", "ENTER_REGION_297029", "ENTER_REGION_297030", "ENTER_REGION_297031", "ENTER_REGION_297032", "ENTER_REGION_297033", "ENTER_REGION_297034", "ENTER_REGION_297035", "ENTER_REGION_297036" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 297001, 297002 },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_297003(context, evt)
	if evt.param1 ~= 297003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297003(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297004(context, evt)
	if evt.param1 ~= 297004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297004(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297005(context, evt)
	if evt.param1 ~= 297005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297005(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297007(context, evt)
	if evt.param1 ~= 297007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297007(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297008(context, evt)
	if evt.param1 ~= 297008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297008(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297010(context, evt)
	if evt.param1 ~= 297010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297010(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297011(context, evt)
	if evt.param1 ~= 297011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297011(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297012(context, evt)
	if evt.param1 ~= 297012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297012(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297013(context, evt)
	if evt.param1 ~= 297013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297013(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297014(context, evt)
	if evt.param1 ~= 297014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297014(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297015(context, evt)
	if evt.param1 ~= 297015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297015(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297016(context, evt)
	if evt.param1 ~= 297016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297016(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297017(context, evt)
	if evt.param1 ~= 297017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297017(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297018(context, evt)
	if evt.param1 ~= 297018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297018(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297019(context, evt)
	if evt.param1 ~= 297019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297019(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297020(context, evt)
	if evt.param1 ~= 297020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297020(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297022(context, evt)
	if evt.param1 ~= 297022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297022(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297023(context, evt)
	if evt.param1 ~= 297023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297023(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297024(context, evt)
	if evt.param1 ~= 297024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297024(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297026(context, evt)
	if evt.param1 ~= 297026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297026(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297028(context, evt)
	if evt.param1 ~= 297028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297028(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297029(context, evt)
	if evt.param1 ~= 297029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297029(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297030(context, evt)
	if evt.param1 ~= 297030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297030(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297031(context, evt)
	if evt.param1 ~= 297031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297031(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297032(context, evt)
	if evt.param1 ~= 297032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297032(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297033(context, evt)
	if evt.param1 ~= 297033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297033(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297034(context, evt)
	if evt.param1 ~= 297034 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297034(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297035(context, evt)
	if evt.param1 ~= 297035 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297035(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297036(context, evt)
	if evt.param1 ~= 297036 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297036(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103297, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{297001,297002}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {297001,297002}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end