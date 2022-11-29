-- 基础信息
local base_info = {
	group_id = 133103224
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 224001, monster_id = 28061201, pos = { x = 116.773, y = 295.283, z = 1738.260 }, rot = { x = 0.000, y = 354.031, z = 0.000 }, level = 27, drop_tag = "驮兽盗宝团", disableWander = true, pose_id = 3, area_id = 6 },
	{ config_id = 224004, monster_id = 25010701, pos = { x = 108.580, y = 294.730, z = 1744.879 }, rot = { x = 0.000, y = 148.967, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9003, area_id = 6 },
	{ config_id = 224006, monster_id = 25010501, pos = { x = 98.734, y = 294.996, z = 1741.398 }, rot = { x = 0.000, y = 52.834, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9004, area_id = 6 },
	{ config_id = 224007, monster_id = 25010201, pos = { x = 123.763, y = 294.453, z = 1748.371 }, rot = { x = 0.000, y = 52.834, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, area_id = 6 },
	{ config_id = 224008, monster_id = 25010201, pos = { x = 94.766, y = 294.984, z = 1753.232 }, rot = { x = 0.000, y = 324.551, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 224002, gadget_id = 70211002, pos = { x = 100.368, y = 295.007, z = 1739.172 }, rot = { x = 1.912, y = 43.758, z = 0.591 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 224005, gadget_id = 70310010, pos = { x = 109.444, y = 294.734, z = 1743.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 224009, gadget_id = 70310001, pos = { x = 98.620, y = 295.039, z = 1753.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 224010, gadget_id = 70310001, pos = { x = 116.222, y = 294.600, z = 1749.514 }, rot = { x = 0.000, y = 314.819, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 224011, gadget_id = 70210101, pos = { x = 101.869, y = 296.855, z = 1733.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用璃月", persistent = true, area_id = 6 },
	{ config_id = 224012, gadget_id = 70210101, pos = { x = 125.480, y = 295.513, z = 1739.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用璃月", persistent = true, area_id = 6 },
	{ config_id = 224013, gadget_id = 70220048, pos = { x = 107.822, y = 295.111, z = 1736.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1224003, name = "ANY_MONSTER_DIE_224003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_224003", action = "action_EVENT_ANY_MONSTER_DIE_224003" }
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
		monsters = { 224001, 224004, 224006, 224007, 224008 },
		gadgets = { 224002, 224005, 224009, 224010, 224011, 224012, 224013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_224003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_224003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_224003(context, evt)
	-- 将configid为 224002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 224002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end