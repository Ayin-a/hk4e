-- 基础信息
local base_info = {
	group_id = 133103410
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 410001, monster_id = 23010601, pos = { x = 188.719, y = 186.788, z = 1270.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "先遣队", area_id = 6 },
	{ config_id = 410002, monster_id = 23010101, pos = { x = 160.981, y = 188.995, z = 1247.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "先遣队", area_id = 6 },
	{ config_id = 410003, monster_id = 23010501, pos = { x = 131.416, y = 188.574, z = 1256.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "先遣队", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 410005, gadget_id = 70211121, pos = { x = 152.523, y = 187.801, z = 1250.967 }, rot = { x = 11.720, y = 280.694, z = 355.073 }, level = 21, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1410004, name = "ANY_MONSTER_DIE_410004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_410004", action = "action_EVENT_ANY_MONSTER_DIE_410004" }
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
		monsters = { 410001, 410002, 410003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_410004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_410004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_410004(context, evt)
	-- 创建id为410005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 410005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end