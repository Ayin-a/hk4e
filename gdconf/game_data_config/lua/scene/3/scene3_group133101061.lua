-- 基础信息
local base_info = {
	group_id = 133101061
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 61001, monster_id = 21010201, pos = { x = 1122.019, y = 217.283, z = 1033.903 }, rot = { x = 0.000, y = 255.810, z = 0.000 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 61004, monster_id = 21011001, pos = { x = 1131.004, y = 224.934, z = 1052.588 }, rot = { x = 0.000, y = 196.266, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 61010, monster_id = 21020501, pos = { x = 1121.661, y = 217.708, z = 1046.941 }, rot = { x = 0.000, y = 202.988, z = 0.000 }, level = 26, drop_tag = "丘丘岩盔王", area_id = 6 },
	{ config_id = 61012, monster_id = 21011201, pos = { x = 1125.977, y = 217.309, z = 1033.664 }, rot = { x = 0.000, y = 333.386, z = 0.000 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 61002, gadget_id = 70211022, pos = { x = 1125.347, y = 217.440, z = 1044.399 }, rot = { x = 359.009, y = 213.663, z = 4.707 }, level = 21, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 61005, gadget_id = 70300087, pos = { x = 1124.793, y = 217.089, z = 1035.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 61008, gadget_id = 70310009, pos = { x = 1120.737, y = 217.279, z = 1033.838 }, rot = { x = 353.498, y = 83.528, z = 358.051 }, level = 1, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 61013, gadget_id = 70220013, pos = { x = 1113.717, y = 217.472, z = 1033.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 61014, gadget_id = 70220013, pos = { x = 1111.468, y = 217.394, z = 1035.636 }, rot = { x = 358.793, y = 33.118, z = 3.484 }, level = 1, area_id = 6 },
	{ config_id = 61015, gadget_id = 70220005, pos = { x = 1110.534, y = 217.328, z = 1036.816 }, rot = { x = 357.515, y = 2.090, z = 1.497 }, level = 24, area_id = 6 },
	{ config_id = 61016, gadget_id = 70220005, pos = { x = 1110.557, y = 217.449, z = 1043.931 }, rot = { x = 0.000, y = 183.054, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 61017, gadget_id = 70220014, pos = { x = 1116.187, y = 217.788, z = 1045.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 61018, gadget_id = 70220005, pos = { x = 1132.596, y = 224.936, z = 1052.615 }, rot = { x = 0.000, y = 183.054, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 61019, gadget_id = 70220005, pos = { x = 1111.781, y = 217.486, z = 1044.467 }, rot = { x = 0.000, y = 183.054, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1061003, name = "ANY_MONSTER_DIE_61003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_61003", action = "action_EVENT_ANY_MONSTER_DIE_61003" }
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
		monsters = { 61001, 61004, 61010, 61012 },
		gadgets = { 61002, 61005, 61008, 61013, 61014, 61015, 61016, 61017, 61018, 61019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_61003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_61003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_61003(context, evt)
	-- 将configid为 61002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61002, GadgetState.Default) then
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