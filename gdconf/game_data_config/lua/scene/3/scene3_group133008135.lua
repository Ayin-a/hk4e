-- 基础信息
local base_info = {
	group_id = 133008135
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 135001, monster_id = 21020401, pos = { x = 1093.125, y = 408.416, z = -701.719 }, rot = { x = 0.000, y = 309.742, z = 0.000 }, level = 30, drop_tag = "丘丘岩盔王", disableWander = true, affix = { 1007, 1009 }, pose_id = 401, special_name_id = 10018, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 135003, gadget_id = 70211147, pos = { x = 1086.987, y = 407.686, z = -697.385 }, rot = { x = 354.388, y = 125.343, z = 357.121 }, level = 26, drop_tag = "雪山玉髓超级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1135002, name = "ANY_MONSTER_DIE_135002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_135002", action = "action_EVENT_ANY_MONSTER_DIE_135002" }
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
		monsters = { 135001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_135002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_135002(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133008135) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_135002(context, evt)
	-- 创建id为135003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 135003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end