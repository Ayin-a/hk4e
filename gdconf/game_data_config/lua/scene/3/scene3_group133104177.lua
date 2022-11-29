-- 基础信息
local base_info = {
	group_id = 133104177
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 177002, monster_id = 26060101, pos = { x = 107.975, y = 203.034, z = 385.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "雷萤", disableWander = true, area_id = 9 },
	{ config_id = 177003, monster_id = 26060101, pos = { x = 106.514, y = 202.982, z = 386.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "雷萤", disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 638, gadget_id = 70211111, pos = { x = 107.184, y = 200.200, z = 386.695 }, rot = { x = 2.104, y = 352.813, z = 355.237 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 177001, gadget_id = 70220024, pos = { x = 107.620, y = 200.000, z = 391.628 }, rot = { x = 0.000, y = 187.819, z = 0.000 }, level = 19, isOneoff = true, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000299, name = "ANY_GADGET_DIE_299", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_299", action = "action_EVENT_ANY_GADGET_DIE_299" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 638, 177001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_299" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
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
function condition_EVENT_ANY_GADGET_DIE_299(context, evt)
	if 177001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_299(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 177002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 177003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end