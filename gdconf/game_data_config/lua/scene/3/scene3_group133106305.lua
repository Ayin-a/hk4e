-- 基础信息
local base_info = {
	group_id = 133106305
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 305001, monster_id = 26030101, pos = { x = -64.305, y = 247.858, z = 1097.268 }, rot = { x = 0.000, y = 48.597, z = 0.000 }, level = 32, drop_tag = "幼岩龙蜥", area_id = 6 },
	{ config_id = 305002, monster_id = 26030101, pos = { x = -37.090, y = 248.209, z = 1088.875 }, rot = { x = 0.000, y = 300.105, z = 0.000 }, level = 32, drop_tag = "幼岩龙蜥", area_id = 6 },
	{ config_id = 305003, monster_id = 26030101, pos = { x = -49.331, y = 255.281, z = 1107.760 }, rot = { x = 0.000, y = 224.993, z = 0.000 }, level = 32, drop_tag = "幼岩龙蜥", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 305004, gadget_id = 70211021, pos = { x = -50.507, y = 246.755, z = 1089.526 }, rot = { x = 346.884, y = 359.282, z = 6.242 }, level = 26, drop_tag = "战斗高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1305005, name = "ANY_MONSTER_DIE_305005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_305005", action = "action_EVENT_ANY_MONSTER_DIE_305005" }
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
		monsters = { 305001, 305002, 305003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_305005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_305005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_305005(context, evt)
	-- 创建id为305004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 305004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end