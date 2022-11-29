-- 基础信息
local base_info = {
	group_id = 133008119
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 119001, monster_id = 22010101, pos = { x = 947.410, y = 366.110, z = -721.791 }, rot = { x = 0.000, y = 106.502, z = 0.000 }, level = 30, drop_tag = "深渊法师", pose_id = 9013, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 119004, gadget_id = 70211011, pos = { x = 945.637, y = 365.974, z = -725.057 }, rot = { x = 2.622, y = 13.435, z = 356.666 }, level = 26, drop_tag = "雪山战斗中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 119005, gadget_id = 70310017, pos = { x = 949.207, y = 366.095, z = -722.492 }, rot = { x = 0.000, y = 297.198, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1119003, name = "ANY_MONSTER_DIE_119003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_119003", action = "action_EVENT_ANY_MONSTER_DIE_119003" }
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
		monsters = { 119001 },
		gadgets = { 119005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_119003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
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
function condition_EVENT_ANY_MONSTER_DIE_119003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_119003(context, evt)
	-- 创建id为119004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 119004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end