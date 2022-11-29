-- 基础信息
local base_info = {
	group_id = 133008130
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 130001, monster_id = 28020601, pos = { x = 1206.951, y = 310.363, z = -1077.491 }, rot = { x = 0.000, y = 265.738, z = 0.000 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 130002, monster_id = 20010901, pos = { x = 1207.188, y = 310.605, z = -1077.541 }, rot = { x = 0.000, y = 265.738, z = 0.000 }, level = 30, drop_tag = "大史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 130003, monster_id = 28050103, pos = { x = 1206.962, y = 310.884, z = -1078.024 }, rot = { x = 0.000, y = 265.738, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 130004, monster_id = 28050103, pos = { x = 1206.896, y = 311.166, z = -1077.397 }, rot = { x = 0.000, y = 265.738, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 130005, monster_id = 26010101, pos = { x = 1207.115, y = 311.409, z = -1077.491 }, rot = { x = 0.000, y = 265.738, z = 0.000 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 130006, gadget_id = 70360102, pos = { x = 1207.149, y = 310.154, z = -1077.553 }, rot = { x = 0.000, y = 265.738, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 130007, gadget_id = 70210101, pos = { x = 1207.222, y = 310.124, z = -1077.584 }, rot = { x = 350.606, y = 269.173, z = 354.670 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1130008, name = "ANY_GADGET_DIE_130008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_130008", action = "action_EVENT_ANY_GADGET_DIE_130008" },
	{ config_id = 1130009, name = "ANY_GADGET_DIE_130009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_130009", action = "action_EVENT_ANY_GADGET_DIE_130009" },
	{ config_id = 1130010, name = "ANY_GADGET_DIE_130010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_130010", action = "action_EVENT_ANY_GADGET_DIE_130010" },
	{ config_id = 1130011, name = "ANY_GADGET_DIE_130011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_130011", action = "action_EVENT_ANY_GADGET_DIE_130011" },
	{ config_id = 1130012, name = "ANY_GADGET_DIE_130012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_130012", action = "action_EVENT_ANY_GADGET_DIE_130012" }
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
		gadgets = { 130006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 130006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_130008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 130006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_130009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 130006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_130010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 130006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_130011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 130006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_130012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_130008(context, evt)
	if 130006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_130008(context, evt)
	-- 创建id为130007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 130007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_130009(context, evt)
	if 130006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_130009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 130001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_130010(context, evt)
	if 130006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_130010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 130002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_130011(context, evt)
	if 130006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_130011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 130003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 130004, delay_time = 0 }) then
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
function condition_EVENT_ANY_GADGET_DIE_130012(context, evt)
	if 130006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_130012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 130005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end