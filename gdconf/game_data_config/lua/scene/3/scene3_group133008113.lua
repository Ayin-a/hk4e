-- 基础信息
local base_info = {
	group_id = 133008113
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 113002, monster_id = 24010301, pos = { x = 1223.695, y = 385.992, z = -712.376 }, rot = { x = 0.000, y = 7.580, z = 0.000 }, level = 30, drop_tag = "遗迹重机", disableWander = true, pose_id = 100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 113001, gadget_id = 70211011, pos = { x = 1225.170, y = 385.992, z = -708.278 }, rot = { x = 0.000, y = 196.737, z = 0.000 }, level = 26, drop_tag = "雪山战斗中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1113003, name = "ANY_MONSTER_DIE_113003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_113003", action = "action_EVENT_ANY_MONSTER_DIE_113003" }
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
		monsters = { 113002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_113003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_113003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_113003(context, evt)
	-- 创建id为113001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 113001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end