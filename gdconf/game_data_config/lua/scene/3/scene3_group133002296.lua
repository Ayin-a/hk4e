-- 基础信息
local base_info = {
	group_id = 133002296
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 296001, monster_id = 21010401, pos = { x = 1589.300, y = 248.322, z = -84.184 }, rot = { x = 0.000, y = 229.049, z = 0.000 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 5 },
	{ config_id = 296005, monster_id = 21010501, pos = { x = 1599.409, y = 248.614, z = -71.703 }, rot = { x = 0.000, y = 229.049, z = 0.000 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 5 },
	{ config_id = 296006, monster_id = 21010301, pos = { x = 1586.126, y = 248.829, z = -68.175 }, rot = { x = 0.000, y = 240.827, z = 0.000 }, level = 15, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 296007, monster_id = 21030301, pos = { x = 1582.670, y = 249.134, z = -66.234 }, rot = { x = 0.000, y = 161.790, z = 0.000 }, level = 15, drop_tag = "丘丘萨满", disableWander = true, area_id = 5 },
	{ config_id = 296008, monster_id = 21010201, pos = { x = 1598.059, y = 248.584, z = -81.614 }, rot = { x = 0.000, y = 173.675, z = 0.000 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 296002, gadget_id = 70211012, pos = { x = 1595.796, y = 248.648, z = -69.641 }, rot = { x = 0.636, y = 278.038, z = 1.897 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 296004, gadget_id = 70310009, pos = { x = 1583.912, y = 249.155, z = -67.109 }, rot = { x = 0.000, y = 303.438, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 296013, gadget_id = 70220013, pos = { x = 1600.760, y = 248.620, z = -84.940 }, rot = { x = 0.000, y = 132.498, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 296014, gadget_id = 70220013, pos = { x = 1598.807, y = 248.619, z = -83.572 }, rot = { x = 0.000, y = 166.652, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 296015, gadget_id = 70220013, pos = { x = 1598.578, y = 248.525, z = -85.675 }, rot = { x = 0.000, y = 161.367, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 296016, gadget_id = 70220014, pos = { x = 1596.807, y = 248.531, z = -85.220 }, rot = { x = 0.000, y = 2.573, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 296017, gadget_id = 70220014, pos = { x = 1597.297, y = 248.547, z = -83.936 }, rot = { x = 0.000, y = 2.573, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 296018, gadget_id = 70310001, pos = { x = 1588.297, y = 248.475, z = -77.283 }, rot = { x = 0.000, y = 332.438, z = 0.000 }, level = 16, state = GadgetState.GearStart, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1296003, name = "ANY_MONSTER_DIE_296003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_296003", action = "action_EVENT_ANY_MONSTER_DIE_296003" }
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
		monsters = { 296001, 296005, 296006, 296007, 296008 },
		gadgets = { 296002, 296004, 296013, 296014, 296015, 296016, 296017, 296018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_296003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_296003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_296003(context, evt)
	-- 将configid为 296002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 296002, GadgetState.Default) then
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