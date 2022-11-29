-- 基础信息
local base_info = {
	group_id = 133008124
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 124001, monster_id = 28020601, pos = { x = 1361.307, y = 289.903, z = -1013.868 }, rot = { x = 7.854, y = 358.923, z = 352.166 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 124002, monster_id = 20010901, pos = { x = 1361.276, y = 290.181, z = -1014.066 }, rot = { x = 7.854, y = 358.923, z = 352.166 }, level = 30, drop_tag = "大史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 124003, monster_id = 28050103, pos = { x = 1360.849, y = 290.481, z = -1013.769 }, rot = { x = 7.854, y = 358.923, z = 352.166 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 124004, monster_id = 28050103, pos = { x = 1361.510, y = 290.671, z = -1013.711 }, rot = { x = 7.854, y = 358.923, z = 352.166 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 124005, monster_id = 26010101, pos = { x = 1361.439, y = 290.953, z = -1013.887 }, rot = { x = 7.854, y = 358.923, z = 352.166 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 124006, gadget_id = 70360102, pos = { x = 1361.207, y = 289.734, z = -1014.088 }, rot = { x = 7.854, y = 358.923, z = 352.166 }, level = 30, area_id = 10 },
	{ config_id = 124007, gadget_id = 70210101, pos = { x = 1361.067, y = 289.419, z = -1014.201 }, rot = { x = 341.401, y = 13.106, z = 330.885 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1124008, name = "ANY_GADGET_DIE_124008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_124008", action = "action_EVENT_ANY_GADGET_DIE_124008" },
	{ config_id = 1124009, name = "ANY_GADGET_DIE_124009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_124009", action = "action_EVENT_ANY_GADGET_DIE_124009" },
	{ config_id = 1124010, name = "ANY_GADGET_DIE_124010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_124010", action = "action_EVENT_ANY_GADGET_DIE_124010" },
	{ config_id = 1124011, name = "ANY_GADGET_DIE_124011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_124011", action = "action_EVENT_ANY_GADGET_DIE_124011" },
	{ config_id = 1124012, name = "ANY_GADGET_DIE_124012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_124012", action = "action_EVENT_ANY_GADGET_DIE_124012" }
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
		gadgets = { 124006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 124006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_124008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 124006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_124009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 124006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_124010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 124006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_124011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 124006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_124012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_124008(context, evt)
	if 124006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_124008(context, evt)
	-- 创建id为124007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 124007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_124009(context, evt)
	if 124006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_124009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 124001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_124010(context, evt)
	if 124006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_124010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 124002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_124011(context, evt)
	if 124006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_124011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 124003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 124004, delay_time = 0 }) then
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
function condition_EVENT_ANY_GADGET_DIE_124012(context, evt)
	if 124006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_124012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 124005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end