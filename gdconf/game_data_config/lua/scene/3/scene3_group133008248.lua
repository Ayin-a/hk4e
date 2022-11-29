-- 基础信息
local base_info = {
	group_id = 133008248
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 248001, monster_id = 28020601, pos = { x = 1338.692, y = 352.862, z = -881.827 }, rot = { x = 18.651, y = 0.000, z = 340.445 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 248002, monster_id = 20010901, pos = { x = 1338.624, y = 353.104, z = -882.060 }, rot = { x = 18.651, y = 0.000, z = 340.445 }, level = 30, drop_tag = "大史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 248003, monster_id = 28050103, pos = { x = 1338.159, y = 353.382, z = -881.799 }, rot = { x = 18.651, y = 0.000, z = 340.445 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 248004, monster_id = 28050103, pos = { x = 1338.790, y = 353.665, z = -881.780 }, rot = { x = 18.651, y = 0.000, z = 340.445 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 248005, monster_id = 26010101, pos = { x = 1338.680, y = 353.908, z = -881.991 }, rot = { x = 18.651, y = 0.000, z = 340.445 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 248006, gadget_id = 70360102, pos = { x = 1338.615, y = 352.653, z = -882.020 }, rot = { x = 18.651, y = 0.000, z = 340.445 }, level = 30, area_id = 10 },
	{ config_id = 248007, gadget_id = 70210101, pos = { x = 1338.633, y = 352.816, z = -882.176 }, rot = { x = 18.651, y = 0.000, z = 340.445 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1248008, name = "ANY_GADGET_DIE_248008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_248008", action = "action_EVENT_ANY_GADGET_DIE_248008" },
	{ config_id = 1248009, name = "ANY_GADGET_DIE_248009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_248009", action = "action_EVENT_ANY_GADGET_DIE_248009" },
	{ config_id = 1248010, name = "ANY_GADGET_DIE_248010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_248010", action = "action_EVENT_ANY_GADGET_DIE_248010" },
	{ config_id = 1248011, name = "ANY_GADGET_DIE_248011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_248011", action = "action_EVENT_ANY_GADGET_DIE_248011" },
	{ config_id = 1248012, name = "ANY_GADGET_DIE_248012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_248012", action = "action_EVENT_ANY_GADGET_DIE_248012" }
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
		gadgets = { 248006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 248006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_248008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 248006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_248009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 248006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_248010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 248006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_248011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 248006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_248012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_248008(context, evt)
	if 248006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_248008(context, evt)
	-- 创建id为248007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 248007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_248009(context, evt)
	if 248006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_248009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 248001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_248010(context, evt)
	if 248006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_248010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 248002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_248011(context, evt)
	if 248006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_248011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 248003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 248004, delay_time = 0 }) then
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
function condition_EVENT_ANY_GADGET_DIE_248012(context, evt)
	if 248006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_248012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 248005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end