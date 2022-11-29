-- 基础信息
local base_info = {
	group_id = 133008409
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 409001, monster_id = 28020601, pos = { x = 941.534, y = 287.968, z = -395.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 409002, monster_id = 20010901, pos = { x = 941.466, y = 288.210, z = -395.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 409003, monster_id = 28050103, pos = { x = 941.001, y = 288.488, z = -395.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 409004, monster_id = 28050103, pos = { x = 941.632, y = 288.931, z = -395.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 409005, monster_id = 26010101, pos = { x = 941.522, y = 289.014, z = -395.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 409006, gadget_id = 70360102, pos = { x = 941.457, y = 287.759, z = -395.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 409007, gadget_id = 70210101, pos = { x = 941.475, y = 287.922, z = -395.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1409008, name = "ANY_GADGET_DIE_409008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_409008", action = "action_EVENT_ANY_GADGET_DIE_409008" },
	{ config_id = 1409009, name = "ANY_GADGET_DIE_409009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_409009", action = "action_EVENT_ANY_GADGET_DIE_409009" },
	{ config_id = 1409010, name = "ANY_GADGET_DIE_409010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_409010", action = "action_EVENT_ANY_GADGET_DIE_409010" },
	{ config_id = 1409011, name = "ANY_GADGET_DIE_409011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_409011", action = "action_EVENT_ANY_GADGET_DIE_409011" },
	{ config_id = 1409012, name = "ANY_GADGET_DIE_409012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_409012", action = "action_EVENT_ANY_GADGET_DIE_409012" }
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
		gadgets = { 409006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 409006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_409008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 409006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_409009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 409006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_409010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 409006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_409011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 409006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_409012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_409008(context, evt)
	if 409006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_409008(context, evt)
	-- 创建id为409007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 409007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_409009(context, evt)
	if 409006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_409009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_409010(context, evt)
	if 409006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_409010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_409011(context, evt)
	if 409006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_409011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409004, delay_time = 0 }) then
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
function condition_EVENT_ANY_GADGET_DIE_409012(context, evt)
	if 409006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_409012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end