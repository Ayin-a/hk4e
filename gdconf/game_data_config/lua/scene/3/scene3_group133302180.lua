-- 基础信息
local base_info = {
	group_id = 133302180
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 180001, monster_id = 21010101, pos = { x = -416.616, y = 223.982, z = 2272.728 }, rot = { x = 0.000, y = 215.950, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9015, area_id = 24 },
	{ config_id = 180004, monster_id = 28061401, pos = { x = -418.624, y = 225.083, z = 2269.968 }, rot = { x = 0.000, y = 27.112, z = 0.000 }, level = 27, drop_tag = "驮兽丘丘人", pose_id = 3, area_id = 24 },
	{ config_id = 180005, monster_id = 21010501, pos = { x = -426.044, y = 217.768, z = 2294.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", pose_id = 32, area_id = 24 },
	{ config_id = 180013, monster_id = 21010201, pos = { x = -442.405, y = 216.290, z = 2297.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9002, area_id = 24 },
	{ config_id = 180014, monster_id = 21010901, pos = { x = -436.778, y = 215.695, z = 2305.856 }, rot = { x = 0.000, y = 72.676, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", pose_id = 32, area_id = 24 },
	{ config_id = 180015, monster_id = 21020201, pos = { x = -426.884, y = 222.377, z = 2273.510 }, rot = { x = 0.000, y = 333.622, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 180002, gadget_id = 70211151, pos = { x = -424.352, y = 221.326, z = 2278.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 21910070, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 180006, gadget_id = 70220013, pos = { x = -429.399, y = 222.628, z = 2272.519 }, rot = { x = 18.952, y = 359.552, z = 357.316 }, level = 27, area_id = 24 },
	{ config_id = 180007, gadget_id = 70310001, pos = { x = -427.909, y = 218.210, z = 2294.395 }, rot = { x = 9.874, y = 0.131, z = 1.521 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 180008, gadget_id = 70310001, pos = { x = -418.958, y = 221.975, z = 2276.386 }, rot = { x = 17.284, y = 0.815, z = 5.356 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 180009, gadget_id = 70220013, pos = { x = -430.014, y = 222.155, z = 2274.500 }, rot = { x = 5.340, y = 359.792, z = 355.533 }, level = 27, area_id = 24 },
	{ config_id = 180010, gadget_id = 70220013, pos = { x = -443.536, y = 221.906, z = 2287.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 180016, gadget_id = 70300089, pos = { x = -436.963, y = 222.259, z = 2278.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 180017, gadget_id = 70310001, pos = { x = -446.824, y = 215.912, z = 2307.829 }, rot = { x = 355.573, y = 0.135, z = 0.026 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 180018, gadget_id = 70300086, pos = { x = -410.699, y = 223.495, z = 2274.747 }, rot = { x = 355.993, y = 336.494, z = 338.818 }, level = 27, area_id = 24 },
	{ config_id = 180019, gadget_id = 70300086, pos = { x = -423.955, y = 217.411, z = 2291.442 }, rot = { x = 0.000, y = 0.000, z = 23.449 }, level = 27, area_id = 24 },
	{ config_id = 180020, gadget_id = 70300086, pos = { x = -448.357, y = 215.560, z = 2304.847 }, rot = { x = 341.195, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 180021, gadget_id = 70310001, pos = { x = -434.332, y = 215.866, z = 2301.580 }, rot = { x = 0.000, y = 304.928, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 180022, gadget_id = 70220013, pos = { x = -444.932, y = 216.293, z = 2297.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1180003, name = "ANY_MONSTER_DIE_180003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_180003", action = "action_EVENT_ANY_MONSTER_DIE_180003" }
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
		monsters = { 180001, 180004, 180005, 180013, 180014, 180015 },
		gadgets = { 180002, 180006, 180007, 180008, 180009, 180010, 180016, 180017, 180018, 180019, 180020, 180021, 180022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_180003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_180003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_180003(context, evt)
	-- 将configid为 180002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 180002, GadgetState.Default) then
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