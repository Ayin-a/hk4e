-- 基础信息
local base_info = {
	group_id = 133101072
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 72001, monster_id = 25010401, pos = { x = 1278.703, y = 231.034, z = 1121.831 }, rot = { x = 0.000, y = 54.183, z = 0.000 }, level = 28, drop_tag = "盗宝团", pose_id = 9006, area_id = 6 },
	{ config_id = 72004, monster_id = 25010201, pos = { x = 1275.419, y = 234.039, z = 1143.507 }, rot = { x = 0.000, y = 98.741, z = 0.000 }, level = 28, drop_tag = "盗宝团", pose_id = 9005, area_id = 6 },
	{ config_id = 72005, monster_id = 25010501, pos = { x = 1281.151, y = 232.887, z = 1133.605 }, rot = { x = 0.000, y = 173.988, z = 0.000 }, level = 28, drop_tag = "盗宝团", pose_id = 9004, area_id = 6 },
	{ config_id = 72006, monster_id = 25030201, pos = { x = 1280.800, y = 231.047, z = 1123.770 }, rot = { x = 0.000, y = 218.789, z = 0.000 }, level = 28, drop_tag = "盗宝团", pose_id = 9006, area_id = 6 },
	{ config_id = 72008, monster_id = 25010201, pos = { x = 1279.109, y = 232.055, z = 1129.386 }, rot = { x = 0.000, y = 57.653, z = 0.000 }, level = 28, drop_tag = "盗宝团", pose_id = 9004, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 72002, gadget_id = 70211022, pos = { x = 1285.185, y = 230.708, z = 1117.416 }, rot = { x = 354.847, y = 272.145, z = 354.471 }, level = 21, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 72007, gadget_id = 70310009, pos = { x = 1280.992, y = 232.430, z = 1131.596 }, rot = { x = 346.075, y = 1.462, z = 355.312 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 72009, gadget_id = 70210101, pos = { x = 1285.029, y = 232.400, z = 1114.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜人文璃月", area_id = 6 },
	{ config_id = 72010, gadget_id = 70210101, pos = { x = 1275.739, y = 234.600, z = 1141.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜人文璃月", area_id = 6 },
	{ config_id = 72011, gadget_id = 70210101, pos = { x = 1284.880, y = 231.470, z = 1119.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜遗物璃月", area_id = 6 },
	{ config_id = 72012, gadget_id = 70310001, pos = { x = 1298.357, y = 226.542, z = 1116.662 }, rot = { x = 0.859, y = 1.834, z = 0.804 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 72013, gadget_id = 70310001, pos = { x = 1295.761, y = 229.415, z = 1128.209 }, rot = { x = 353.297, y = 359.551, z = 355.057 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 72014, gadget_id = 70310001, pos = { x = 1276.935, y = 233.479, z = 1137.261 }, rot = { x = 355.537, y = 359.895, z = 2.684 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1072003, name = "ANY_MONSTER_DIE_72003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_72003", action = "action_EVENT_ANY_MONSTER_DIE_72003" }
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
		monsters = { 72001, 72004, 72005, 72006, 72008 },
		gadgets = { 72002, 72007, 72009, 72010, 72011, 72012, 72013, 72014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_72003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_72003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_72003(context, evt)
	-- 将configid为 72002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 72002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end