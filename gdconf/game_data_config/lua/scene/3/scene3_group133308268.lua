-- 基础信息
local base_info = {
	group_id = 133308268
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 268001, monster_id = 20011001, pos = { x = -1830.122, y = 171.232, z = 4825.302 }, rot = { x = 0.000, y = 241.367, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 },
	{ config_id = 268002, monster_id = 28010201, pos = { x = -1837.593, y = 172.260, z = 4831.649 }, rot = { x = 0.000, y = 202.126, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 26 },
	{ config_id = 268003, monster_id = 28010302, pos = { x = -1831.219, y = 172.066, z = 4835.584 }, rot = { x = 0.000, y = 260.772, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 268004, gadget_id = 71700431, pos = { x = -1821.814, y = 169.602, z = 4825.504 }, rot = { x = 4.902, y = 136.694, z = 5.180 }, level = 32, area_id = 26 },
	-- 罐子解谜
	{ config_id = 268005, gadget_id = 70330426, pos = { x = -1831.238, y = 172.045, z = 4835.579 }, rot = { x = 350.945, y = 0.433, z = 356.783 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 268006, gadget_id = 70330428, pos = { x = -1832.077, y = 171.362, z = 4824.548 }, rot = { x = 359.231, y = 1.005, z = 352.860 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 268007, gadget_id = 70330428, pos = { x = -1822.266, y = 169.686, z = 4827.211 }, rot = { x = -0.005, y = 5.678, z = 351.076 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 268008, gadget_id = 70330429, pos = { x = -1828.314, y = 170.944, z = 4826.057 }, rot = { x = 358.174, y = 0.449, z = 349.665 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 268009, gadget_id = 70330427, pos = { x = -1830.288, y = 171.258, z = 4825.210 }, rot = { x = 358.448, y = 0.446, z = 350.272 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 268010, gadget_id = 70330429, pos = { x = -1837.617, y = 172.262, z = 4831.678 }, rot = { x = 358.495, y = 1.096, z = 357.417 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 268011, gadget_id = 70211101, pos = { x = -1828.487, y = 171.049, z = 4830.027 }, rot = { x = 359.923, y = 190.078, z = 10.547 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 268016, gadget_id = 70330426, pos = { x = -1833.537, y = 180.448, z = 4831.768 }, rot = { x = 359.773, y = 0.499, z = 0.149 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 268017, gadget_id = 70330427, pos = { x = -1837.369, y = 171.829, z = 4822.573 }, rot = { x = 355.506, y = 359.190, z = 358.277 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1268012, name = "ANY_GADGET_DIE_268012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_268012", action = "action_EVENT_ANY_GADGET_DIE_268012" },
	{ config_id = 1268013, name = "ANY_GADGET_DIE_268013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_268013", action = "action_EVENT_ANY_GADGET_DIE_268013" },
	{ config_id = 1268014, name = "ANY_GADGET_DIE_268014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_268014", action = "action_EVENT_ANY_GADGET_DIE_268014" },
	{ config_id = 1268015, name = "ANY_GADGET_DIE_268015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_268015", action = "action_EVENT_ANY_GADGET_DIE_268015" }
}

-- 变量
variables = {
	{ config_id = 1, name = "sum", value = 9, no_refresh = false }
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
		gadgets = { 268004, 268005, 268006, 268007, 268008, 268009, 268010, 268016, 268017 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_268012", "ANY_GADGET_DIE_268013", "ANY_GADGET_DIE_268014", "ANY_GADGET_DIE_268015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_268012(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133308268}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_268012(context, evt)
	-- 创建id为268011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 268011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_268013(context, evt)
	if 268010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_268013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 268002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_268014(context, evt)
	if 268009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_268014(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 268001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_268015(context, evt)
	if 268007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_268015(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 268003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end