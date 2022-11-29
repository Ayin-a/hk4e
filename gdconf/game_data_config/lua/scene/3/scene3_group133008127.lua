-- 基础信息
local base_info = {
	group_id = 133008127
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 127001, monster_id = 28020601, pos = { x = 840.940, y = 293.140, z = -975.338 }, rot = { x = 0.000, y = 0.000, z = 344.315 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 127002, monster_id = 20010901, pos = { x = 840.872, y = 293.382, z = -975.571 }, rot = { x = 0.000, y = 0.000, z = 344.315 }, level = 30, drop_tag = "大史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 127003, monster_id = 28050103, pos = { x = 840.407, y = 293.661, z = -975.310 }, rot = { x = 0.000, y = 0.000, z = 344.315 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 127004, monster_id = 28050103, pos = { x = 841.038, y = 293.943, z = -975.291 }, rot = { x = 0.000, y = 0.000, z = 344.315 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 127005, monster_id = 26010101, pos = { x = 840.928, y = 294.186, z = -975.502 }, rot = { x = 0.000, y = 0.000, z = 344.315 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 127006, gadget_id = 70360102, pos = { x = 840.863, y = 292.931, z = -975.531 }, rot = { x = 0.000, y = 0.000, z = 344.315 }, level = 30, area_id = 10 },
	{ config_id = 127007, gadget_id = 70210101, pos = { x = 840.767, y = 292.588, z = -975.597 }, rot = { x = 336.068, y = 18.522, z = 320.447 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1127008, name = "ANY_GADGET_DIE_127008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_127008", action = "action_EVENT_ANY_GADGET_DIE_127008" },
	{ config_id = 1127009, name = "ANY_GADGET_DIE_127009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_127009", action = "action_EVENT_ANY_GADGET_DIE_127009" },
	{ config_id = 1127010, name = "ANY_GADGET_DIE_127010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_127010", action = "action_EVENT_ANY_GADGET_DIE_127010" },
	{ config_id = 1127011, name = "ANY_GADGET_DIE_127011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_127011", action = "action_EVENT_ANY_GADGET_DIE_127011" },
	{ config_id = 1127012, name = "ANY_GADGET_DIE_127012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_127012", action = "action_EVENT_ANY_GADGET_DIE_127012" }
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
		gadgets = { 127006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 127006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_127008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 127006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_127009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 127006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_127010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 127006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_127011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 127006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_127012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_127008(context, evt)
	if 127006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_127008(context, evt)
	-- 创建id为127007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 127007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_127009(context, evt)
	if 127006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_127009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 127001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_127010(context, evt)
	if 127006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_127010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 127002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_127011(context, evt)
	if 127006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_127011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 127003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 127004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6014, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_127012(context, evt)
	if 127006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_127012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 127005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end