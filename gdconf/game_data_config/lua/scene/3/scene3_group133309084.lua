-- 基础信息
local base_info = {
	group_id = 133309084
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 84001, monster_id = 26090901, pos = { x = -2138.976, y = -14.135, z = 5358.881 }, rot = { x = 0.000, y = 173.214, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 104, area_id = 27 },
	{ config_id = 84002, monster_id = 26090901, pos = { x = -2133.680, y = -15.900, z = 5357.046 }, rot = { x = 0.000, y = 216.110, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 104, area_id = 27 },
	{ config_id = 84003, monster_id = 26090901, pos = { x = -2132.512, y = -16.432, z = 5351.117 }, rot = { x = 0.000, y = 278.262, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 104, area_id = 27 },
	{ config_id = 84004, monster_id = 26090901, pos = { x = -2136.740, y = -15.432, z = 5347.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 104, area_id = 27 },
	{ config_id = 84005, monster_id = 26090901, pos = { x = -2142.750, y = -15.023, z = 5349.007 }, rot = { x = 0.000, y = 29.515, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 104, area_id = 27 },
	{ config_id = 84006, monster_id = 26090901, pos = { x = -2143.283, y = -14.695, z = 5355.521 }, rot = { x = 0.000, y = 98.173, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 104, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 84007, gadget_id = 70211001, pos = { x = -2138.146, y = -14.508, z = 5356.140 }, rot = { x = 351.199, y = 0.418, z = 354.567 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1084008, name = "ANY_MONSTER_DIE_84008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_84008", action = "action_EVENT_ANY_MONSTER_DIE_84008" }
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
		monsters = { 84001, 84002, 84003, 84004, 84005, 84006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_84008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_84008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_84008(context, evt)
	-- 创建id为84007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 84007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end