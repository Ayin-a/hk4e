-- 基础信息
local base_info = {
	group_id = 133106306
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 306003, monster_id = 26030101, pos = { x = -161.510, y = 333.079, z = 637.865 }, rot = { x = 353.902, y = 225.789, z = 345.149 }, level = 32, drop_tag = "幼岩龙蜥", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 306004, gadget_id = 70211011, pos = { x = -159.976, y = 334.748, z = 631.664 }, rot = { x = 11.214, y = 2.172, z = 7.412 }, level = 21, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1306005, name = "ANY_MONSTER_DIE_306005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_306005", action = "action_EVENT_ANY_MONSTER_DIE_306005" }
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
		monsters = { 306003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_306005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_306005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_306005(context, evt)
	-- 创建id为306004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 306004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end