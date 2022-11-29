-- 基础信息
local base_info = {
	group_id = 133008481
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 481001, monster_id = 28020601, pos = { x = 1249.949, y = 268.596, z = -418.783 }, rot = { x = 25.757, y = 349.738, z = 352.867 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 481002, monster_id = 20010901, pos = { x = 1249.930, y = 268.921, z = -418.890 }, rot = { x = 25.757, y = 349.738, z = 352.867 }, level = 30, drop_tag = "大史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 481003, monster_id = 28050103, pos = { x = 1249.443, y = 269.108, z = -418.592 }, rot = { x = 25.757, y = 349.738, z = 352.867 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 481004, monster_id = 28050103, pos = { x = 1250.075, y = 269.281, z = -418.371 }, rot = { x = 25.757, y = 349.738, z = 352.867 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 481005, monster_id = 26010101, pos = { x = 1250.011, y = 269.603, z = -418.463 }, rot = { x = 25.757, y = 349.738, z = 352.867 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 481006, gadget_id = 70360102, pos = { x = 1249.895, y = 268.501, z = -419.057 }, rot = { x = 25.757, y = 349.738, z = 352.867 }, level = 30, area_id = 10 },
	{ config_id = 481007, gadget_id = 70210101, pos = { x = 1249.945, y = 268.713, z = -419.120 }, rot = { x = 25.757, y = 349.738, z = 352.867 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1481008, name = "ANY_GADGET_DIE_481008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_481008", action = "action_EVENT_ANY_GADGET_DIE_481008" },
	{ config_id = 1481009, name = "ANY_GADGET_DIE_481009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_481009", action = "action_EVENT_ANY_GADGET_DIE_481009" },
	{ config_id = 1481010, name = "ANY_GADGET_DIE_481010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_481010", action = "action_EVENT_ANY_GADGET_DIE_481010" },
	{ config_id = 1481011, name = "ANY_GADGET_DIE_481011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_481011", action = "action_EVENT_ANY_GADGET_DIE_481011" },
	{ config_id = 1481012, name = "ANY_GADGET_DIE_481012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_481012", action = "action_EVENT_ANY_GADGET_DIE_481012" }
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
		gadgets = { 481006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 481006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_481008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 481006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_481009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 481006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_481010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 481006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_481011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 481006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_481012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_481008(context, evt)
	if 481006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_481008(context, evt)
	-- 创建id为481007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 481007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_481009(context, evt)
	if 481006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_481009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 481001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_481010(context, evt)
	if 481006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_481010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 481002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_481011(context, evt)
	if 481006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_481011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 481003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 481004, delay_time = 0 }) then
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
function condition_EVENT_ANY_GADGET_DIE_481012(context, evt)
	if 481006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_481012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 481005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end