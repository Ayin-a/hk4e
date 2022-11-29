-- 基础信息
local base_info = {
	group_id = 133301315
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 315003, monster_id = 25010201, pos = { x = -776.265, y = 236.236, z = 3250.759 }, rot = { x = 0.000, y = 101.892, z = 0.000 }, level = 30, drop_tag = "盗宝团", area_id = 23 },
	{ config_id = 315004, monster_id = 25010601, pos = { x = -779.722, y = 235.567, z = 3253.845 }, rot = { x = 0.000, y = 129.987, z = 0.000 }, level = 30, drop_tag = "盗宝团", area_id = 23 },
	{ config_id = 315005, monster_id = 25010401, pos = { x = -782.313, y = 234.791, z = 3252.766 }, rot = { x = 0.000, y = 78.924, z = 0.000 }, level = 30, drop_tag = "盗宝团", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 315001, gadget_id = 70310198, pos = { x = -762.882, y = 241.936, z = 3239.393 }, rot = { x = 349.386, y = 70.062, z = 28.356 }, level = 30, area_id = 23 },
	{ config_id = 315002, gadget_id = 70330218, pos = { x = -770.670, y = 237.528, z = 3248.341 }, rot = { x = 350.468, y = 110.797, z = 353.738 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1315006, name = "ANY_GADGET_DIE_315006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_315006", action = "action_EVENT_ANY_GADGET_DIE_315006" }
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
		gadgets = { 315001, 315002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_315006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 315003, 315004, 315005 },
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
function condition_EVENT_ANY_GADGET_DIE_315006(context, evt)
	if 315002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_315006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 315004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 315005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 315003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end