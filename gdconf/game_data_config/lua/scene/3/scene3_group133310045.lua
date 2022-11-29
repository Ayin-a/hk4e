-- 基础信息
local base_info = {
	group_id = 133310045
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 45001, monster_id = 23010501, pos = { x = -2722.802, y = 229.366, z = 4659.477 }, rot = { x = 0.000, y = 113.539, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, area_id = 28 },
	{ config_id = 45004, monster_id = 23010601, pos = { x = -2714.216, y = 228.921, z = 4662.050 }, rot = { x = 0.000, y = 42.134, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, area_id = 28 },
	{ config_id = 45005, monster_id = 23010101, pos = { x = -2720.291, y = 229.402, z = 4656.923 }, rot = { x = 0.000, y = 315.325, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 45002, gadget_id = 70211012, pos = { x = -2717.501, y = 229.499, z = 4653.746 }, rot = { x = 3.537, y = 351.243, z = 356.548 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 45006, gadget_id = 70330396, pos = { x = -2717.861, y = 225.851, z = 4678.615 }, rot = { x = 11.454, y = 359.372, z = 357.245 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 45007, gadget_id = 70330426, pos = { x = -2729.230, y = 228.962, z = 4668.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 45008, gadget_id = 70900386, pos = { x = -2715.885, y = 227.963, z = 4673.861 }, rot = { x = 2.815, y = 294.038, z = 6.710 }, level = 26, drop_tag = "书页章节1须弥", isOneoff = true, persistent = true, area_id = 28 },
	{ config_id = 45009, gadget_id = 70330428, pos = { x = -2730.058, y = 228.915, z = 4668.030 }, rot = { x = 5.605, y = 0.350, z = 355.130 }, level = 32, area_id = 28 },
	{ config_id = 45010, gadget_id = 70210101, pos = { x = -2725.086, y = 229.406, z = 4665.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 28 },
	{ config_id = 45011, gadget_id = 70210101, pos = { x = -2729.413, y = 230.250, z = 4666.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 28 },
	{ config_id = 45012, gadget_id = 70330429, pos = { x = -2745.673, y = 224.438, z = 4657.334 }, rot = { x = 8.233, y = 331.596, z = 1.444 }, level = 32, area_id = 28 },
	{ config_id = 45013, gadget_id = 70210101, pos = { x = -2745.696, y = 226.015, z = 4656.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 28 },
	{ config_id = 45014, gadget_id = 70330427, pos = { x = -2745.006, y = 224.356, z = 4658.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 45015, gadget_id = 70330426, pos = { x = -2743.841, y = 225.291, z = 4656.805 }, rot = { x = 358.441, y = 359.773, z = 2.037 }, level = 32, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1045003, name = "ANY_MONSTER_DIE_45003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45003", action = "action_EVENT_ANY_MONSTER_DIE_45003" }
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
		monsters = { 45001, 45004, 45005 },
		gadgets = { 45002, 45006, 45007, 45008, 45009, 45010, 45011, 45012, 45013, 45014, 45015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_45003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45003(context, evt)
	-- 将configid为 45002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45002, GadgetState.Default) then
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