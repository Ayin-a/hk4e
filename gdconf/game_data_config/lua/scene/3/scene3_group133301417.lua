-- 基础信息
local base_info = {
	group_id = 133301417
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 417001, monster_id = 21010101, pos = { x = -397.318, y = 212.009, z = 3506.455 }, rot = { x = 0.000, y = 229.629, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 29 },
	{ config_id = 417006, monster_id = 21030101, pos = { x = -399.831, y = 213.178, z = 3505.073 }, rot = { x = 0.000, y = 123.802, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, area_id = 29 },
	{ config_id = 417008, monster_id = 21010701, pos = { x = -406.207, y = 212.750, z = 3500.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 22 },
	{ config_id = 417009, monster_id = 21010701, pos = { x = -392.506, y = 211.346, z = 3506.418 }, rot = { x = 0.000, y = 45.993, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9013, area_id = 29 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 417002, gadget_id = 70211012, pos = { x = -403.939, y = 212.857, z = 3504.536 }, rot = { x = 3.596, y = 131.015, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 29 },
	{ config_id = 417004, gadget_id = 70300086, pos = { x = -405.377, y = 211.705, z = 3504.958 }, rot = { x = 20.843, y = 255.927, z = 6.160 }, level = 27, area_id = 29 },
	{ config_id = 417005, gadget_id = 70300108, pos = { x = -404.664, y = 212.807, z = 3498.153 }, rot = { x = 0.000, y = 266.513, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 417007, gadget_id = 70310001, pos = { x = -398.912, y = 212.145, z = 3508.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 29 },
	{ config_id = 417010, gadget_id = 70300108, pos = { x = -390.544, y = 211.365, z = 3508.412 }, rot = { x = 0.000, y = 137.038, z = 0.000 }, level = 27, area_id = 29 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1417003, name = "ANY_MONSTER_DIE_417003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_417003", action = "action_EVENT_ANY_MONSTER_DIE_417003" }
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
		monsters = { 417001, 417006, 417008, 417009 },
		gadgets = { 417002, 417004, 417005, 417007, 417010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_417003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_417003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_417003(context, evt)
	-- 将configid为 417002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 417002, GadgetState.Default) then
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