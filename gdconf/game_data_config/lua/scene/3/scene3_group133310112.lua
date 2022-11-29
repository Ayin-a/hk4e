-- 基础信息
local base_info = {
	group_id = 133310112
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 112005, monster_id = 21030201, pos = { x = -2498.386, y = 254.992, z = 4244.263 }, rot = { x = 0.000, y = 314.106, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 26 },
	{ config_id = 112007, monster_id = 26090101, pos = { x = -2499.964, y = 255.444, z = 4246.655 }, rot = { x = 0.000, y = 136.108, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 104, area_id = 26 },
	{ config_id = 112012, monster_id = 21020101, pos = { x = -2492.861, y = 254.916, z = 4235.805 }, rot = { x = 0.000, y = 352.095, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 26 },
	{ config_id = 112014, monster_id = 21010201, pos = { x = -2490.475, y = 254.983, z = 4240.397 }, rot = { x = 0.000, y = 265.068, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9013, area_id = 26 },
	{ config_id = 112015, monster_id = 21010201, pos = { x = -2495.548, y = 255.009, z = 4239.992 }, rot = { x = 0.000, y = 90.354, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9014, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 112001, gadget_id = 70210101, pos = { x = -2506.753, y = 255.506, z = 4242.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 26 },
	{ config_id = 112002, gadget_id = 70211002, pos = { x = -2502.321, y = 255.988, z = 4236.298 }, rot = { x = 0.000, y = 48.285, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 112006, gadget_id = 70300087, pos = { x = -2499.971, y = 254.981, z = 4246.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 112008, gadget_id = 70220026, pos = { x = -2489.692, y = 254.935, z = 4245.085 }, rot = { x = 358.744, y = 341.501, z = 4.118 }, level = 32, area_id = 26 },
	{ config_id = 112009, gadget_id = 70220014, pos = { x = -2489.266, y = 255.015, z = 4242.234 }, rot = { x = 359.956, y = 23.227, z = 359.861 }, level = 32, area_id = 26 },
	{ config_id = 112010, gadget_id = 70220013, pos = { x = -2488.608, y = 254.984, z = 4243.755 }, rot = { x = 356.656, y = 31.824, z = 2.196 }, level = 32, area_id = 26 },
	{ config_id = 112011, gadget_id = 70220026, pos = { x = -2511.914, y = 256.091, z = 4232.455 }, rot = { x = 0.000, y = 297.696, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 112013, gadget_id = 70300086, pos = { x = -2487.825, y = 253.648, z = 4236.686 }, rot = { x = 5.449, y = 38.729, z = 332.487 }, level = 32, area_id = 26 },
	{ config_id = 112016, gadget_id = 70210101, pos = { x = -2495.739, y = 255.520, z = 4232.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 26 },
	{ config_id = 112017, gadget_id = 70220026, pos = { x = -2506.483, y = 256.091, z = 4226.780 }, rot = { x = 0.000, y = 333.798, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 112018, gadget_id = 70220013, pos = { x = -2511.576, y = 256.092, z = 4234.698 }, rot = { x = 0.000, y = 345.967, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 112019, gadget_id = 70300108, pos = { x = -2509.500, y = 256.090, z = 4235.864 }, rot = { x = 0.000, y = 24.721, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 112020, gadget_id = 70300089, pos = { x = -2504.618, y = 256.089, z = 4226.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1112003, name = "ANY_MONSTER_DIE_112003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_112003", action = "action_EVENT_ANY_MONSTER_DIE_112003" }
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
		monsters = { 112005, 112007, 112012, 112014, 112015 },
		gadgets = { 112001, 112002, 112006, 112008, 112009, 112010, 112011, 112013, 112016, 112017, 112018, 112019, 112020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_112003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_112003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_112003(context, evt)
	-- 将configid为 112002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112002, GadgetState.Default) then
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