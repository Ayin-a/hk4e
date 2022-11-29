-- 基础信息
local base_info = {
	group_id = 133213254
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 254001, monster_id = 23010501, pos = { x = -3796.876, y = 271.811, z = -3216.300 }, rot = { x = 0.000, y = 356.873, z = 0.000 }, level = 28, drop_tag = "先遣队", disableWander = true, area_id = 12 },
	{ config_id = 254004, monster_id = 23010301, pos = { x = -3803.613, y = 271.923, z = -3210.249 }, rot = { x = 0.116, y = 56.009, z = 359.925 }, level = 27, drop_tag = "先遣队", disableWander = true, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 254005, gadget_id = 70310006, pos = { x = -3795.837, y = 271.933, z = -3213.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 254006, gadget_id = 70210101, pos = { x = -3808.399, y = 278.653, z = -3219.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 254008, gadget_id = 70210101, pos = { x = -3804.755, y = 271.746, z = -3223.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1254007, name = "MONSTER_BATTLE_254007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_254007", action = "action_EVENT_MONSTER_BATTLE_254007" }
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
		monsters = { 254004 },
		gadgets = { 254005, 254006, 254008 },
		regions = { },
		triggers = { "MONSTER_BATTLE_254007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_254007(context, evt)
	if 254004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_254007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 254001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end