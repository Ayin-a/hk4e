-- 基础信息
local base_info = {
	group_id = 133313139
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 139001, monster_id = 28020604, pos = { x = -869.142, y = -245.969, z = 5981.266 }, rot = { x = 0.000, y = 356.915, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 32 },
	{ config_id = 139002, monster_id = 26090901, pos = { x = -869.157, y = -246.215, z = 5981.032 }, rot = { x = 0.000, y = 356.915, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 139003, monster_id = 28050106, pos = { x = -868.644, y = -245.698, z = 5981.042 }, rot = { x = 0.000, y = 356.915, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 139004, monster_id = 28050106, pos = { x = -868.819, y = -245.600, z = 5981.161 }, rot = { x = 0.000, y = 356.915, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 139005, monster_id = 28060401, pos = { x = -868.612, y = -246.234, z = 5981.130 }, rot = { x = 0.000, y = 356.915, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 139006, gadget_id = 70330266, pos = { x = -868.482, y = -246.190, z = 5981.104 }, rot = { x = 19.080, y = 345.970, z = 9.075 }, level = 32, area_id = 32 },
	{ config_id = 139007, gadget_id = 70210101, pos = { x = -868.458, y = -246.130, z = 5980.953 }, rot = { x = 0.000, y = 356.915, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1139008, name = "ANY_GADGET_DIE_139008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_139008", action = "action_EVENT_ANY_GADGET_DIE_139008" },
	-- 刷面具鼬
	{ config_id = 1139009, name = "ANY_GADGET_DIE_139009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_139009", action = "action_EVENT_ANY_GADGET_DIE_139009" },
	-- 刷岩蕈兽
	{ config_id = 1139010, name = "ANY_GADGET_DIE_139010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_139010", action = "action_EVENT_ANY_GADGET_DIE_139010" },
	-- 刷草晶蝶
	{ config_id = 1139011, name = "ANY_GADGET_DIE_139011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_139011", action = "action_EVENT_ANY_GADGET_DIE_139011" },
	-- 刷蝎子
	{ config_id = 1139012, name = "ANY_GADGET_DIE_139012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_139012", action = "action_EVENT_ANY_GADGET_DIE_139012" }
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
	rand_suite = true
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
		gadgets = { 139006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 139006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_139008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 139006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_139009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 139006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_139010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 139006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_139011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 139006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_139012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_139008(context, evt)
	if 139006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_139008(context, evt)
	-- 创建id为139007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_139009(context, evt)
	if 139006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_139009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 139001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_139010(context, evt)
	if 139006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_139010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 139002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_139011(context, evt)
	if 139006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_139011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 139003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 139004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_139012(context, evt)
	if 139006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_139012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 139005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end