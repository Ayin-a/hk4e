-- 基础信息
local base_info = {
	group_id = 133102619
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 619001, monster_id = 21011001, pos = { x = 1497.619, y = 227.951, z = -106.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 619006, monster_id = 21020301, pos = { x = 1502.865, y = 228.940, z = -109.786 }, rot = { x = 0.000, y = 338.159, z = 0.000 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 5 },
	{ config_id = 619007, monster_id = 21010501, pos = { x = 1501.154, y = 228.087, z = -94.623 }, rot = { x = 0.000, y = 238.710, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 619008, monster_id = 21011001, pos = { x = 1504.971, y = 228.011, z = -103.670 }, rot = { x = 10.961, y = 275.339, z = 356.370 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 619009, monster_id = 21010501, pos = { x = 1495.543, y = 232.665, z = -93.229 }, rot = { x = 0.000, y = 175.406, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 619002, gadget_id = 70211022, pos = { x = 1484.430, y = 229.014, z = -107.770 }, rot = { x = 0.000, y = 27.256, z = 0.000 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 619004, gadget_id = 70211012, pos = { x = 1488.235, y = 228.963, z = -107.202 }, rot = { x = 1.798, y = 0.073, z = 357.285 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 619005, gadget_id = 70211012, pos = { x = 1485.124, y = 228.944, z = -104.837 }, rot = { x = 3.466, y = 75.695, z = 359.117 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 619010, gadget_id = 70220013, pos = { x = 1496.901, y = 227.951, z = -109.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 619011, gadget_id = 70220013, pos = { x = 1488.044, y = 228.355, z = -102.785 }, rot = { x = 13.250, y = 40.784, z = 2.120 }, level = 16, area_id = 5 },
	{ config_id = 619012, gadget_id = 70220014, pos = { x = 1487.342, y = 228.254, z = -101.596 }, rot = { x = 7.041, y = 359.453, z = 351.119 }, level = 16, area_id = 5 },
	{ config_id = 619013, gadget_id = 70220014, pos = { x = 1485.050, y = 229.014, z = -109.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 619014, gadget_id = 70220014, pos = { x = 1501.504, y = 227.835, z = -96.371 }, rot = { x = 356.451, y = 359.779, z = 7.125 }, level = 16, area_id = 5 },
	{ config_id = 619015, gadget_id = 70220014, pos = { x = 1502.253, y = 227.800, z = -97.699 }, rot = { x = 354.708, y = 359.589, z = 8.881 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1619003, name = "ANY_MONSTER_DIE_619003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_619003", action = "action_EVENT_ANY_MONSTER_DIE_619003" },
	{ config_id = 1619016, name = "ANY_MONSTER_DIE_619016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_619016", action = "action_EVENT_ANY_MONSTER_DIE_619016" },
	{ config_id = 1619017, name = "ANY_MONSTER_DIE_619017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_619017", action = "action_EVENT_ANY_MONSTER_DIE_619017" }
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
		monsters = { 619001, 619006, 619007, 619008, 619009 },
		gadgets = { 619002, 619004, 619005, 619010, 619011, 619012, 619013, 619014, 619015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_619003", "ANY_MONSTER_DIE_619016", "ANY_MONSTER_DIE_619017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_619003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_619003(context, evt)
	-- 将configid为 619002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 619002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_619016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_619016(context, evt)
	-- 将configid为 619004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 619004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_619017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_619017(context, evt)
	-- 将configid为 619005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 619005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end