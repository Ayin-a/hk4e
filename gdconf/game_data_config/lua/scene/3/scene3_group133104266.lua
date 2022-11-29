-- 基础信息
local base_info = {
	group_id = 133104266
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 266001, monster_id = 21011201, pos = { x = 837.440, y = 226.719, z = 743.575 }, rot = { x = 0.000, y = 209.563, z = 0.000 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 6 },
	{ config_id = 266004, monster_id = 21030201, pos = { x = 853.160, y = 227.479, z = 742.230 }, rot = { x = 355.922, y = 244.015, z = 7.896 }, level = 22, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 6 },
	{ config_id = 266005, monster_id = 21020301, pos = { x = 844.842, y = 226.463, z = 734.664 }, rot = { x = 0.000, y = 209.563, z = 0.000 }, level = 22, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 266014, monster_id = 21010701, pos = { x = 843.861, y = 226.703, z = 739.226 }, rot = { x = 0.000, y = 139.881, z = 0.000 }, level = 22, drop_tag = "丘丘人", pose_id = 9013, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 266002, gadget_id = 70211022, pos = { x = 832.306, y = 227.061, z = 736.590 }, rot = { x = 0.000, y = 13.774, z = 0.000 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 266006, gadget_id = 70310009, pos = { x = 818.084, y = 226.500, z = 757.732 }, rot = { x = 3.178, y = 79.178, z = 357.574 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 266007, gadget_id = 70220026, pos = { x = 828.658, y = 226.454, z = 743.074 }, rot = { x = 354.057, y = 332.281, z = 2.110 }, level = 19, area_id = 6 },
	{ config_id = 266008, gadget_id = 70220013, pos = { x = 826.993, y = 226.445, z = 743.427 }, rot = { x = 7.032, y = 0.950, z = 1.208 }, level = 19, area_id = 6 },
	{ config_id = 266009, gadget_id = 70211103, pos = { x = 854.500, y = 227.902, z = 746.158 }, rot = { x = 348.899, y = 63.930, z = 3.437 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 266010, gadget_id = 70310001, pos = { x = 829.627, y = 226.786, z = 737.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 266011, gadget_id = 70310001, pos = { x = 834.813, y = 227.089, z = 736.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1266003, name = "ANY_MONSTER_DIE_266003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_266003", action = "action_EVENT_ANY_MONSTER_DIE_266003" }
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
		-- description = suite_1,
		monsters = { 266001, 266004, 266005, 266014 },
		gadgets = { 266002, 266006, 266007, 266008, 266009, 266010, 266011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_266003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_266003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_266003(context, evt)
	-- 将configid为 266002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 266002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end