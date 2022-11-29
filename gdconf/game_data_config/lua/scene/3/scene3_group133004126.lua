-- 基础信息
local base_info = {
	group_id = 133004126
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 353, monster_id = 21010501, pos = { x = 2350.709, y = 285.261, z = -278.250 }, rot = { x = 0.000, y = 243.177, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 354, monster_id = 21010101, pos = { x = 2346.366, y = 282.209, z = -275.970 }, rot = { x = 0.000, y = 143.658, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 575, monster_id = 21010101, pos = { x = 2346.170, y = 281.169, z = -280.433 }, rot = { x = 0.000, y = 41.345, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 591, gadget_id = 70220013, pos = { x = 2353.065, y = 284.740, z = -276.595 }, rot = { x = 359.971, y = 339.585, z = 353.657 }, level = 15, area_id = 3 },
	{ config_id = 592, gadget_id = 70220013, pos = { x = 2353.841, y = 284.575, z = -280.724 }, rot = { x = 350.106, y = 312.443, z = 355.562 }, level = 15, area_id = 3 },
	{ config_id = 593, gadget_id = 70310001, pos = { x = 2351.550, y = 284.845, z = -281.395 }, rot = { x = 0.000, y = 321.255, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 594, gadget_id = 70211012, pos = { x = 2353.785, y = 284.734, z = -278.397 }, rot = { x = -0.002, y = 159.863, z = 6.343 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 595, gadget_id = 70220005, pos = { x = 2350.921, y = 285.060, z = -279.851 }, rot = { x = 0.000, y = 330.521, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 1271, gadget_id = 70310004, pos = { x = 2347.199, y = 281.635, z = -278.231 }, rot = { x = 0.000, y = 263.392, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1126001, name = "ANY_MONSTER_DIE_126001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_126001", action = "action_EVENT_ANY_MONSTER_DIE_126001", tlog_tag = "奔狼岭_120_怪物营地_结算" }
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
	rand_suite = true
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
		monsters = { 353, 354, 575 },
		gadgets = { 591, 592, 593, 594, 595 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_126001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_126001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_126001(context, evt)
	-- 将configid为 594 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 594, GadgetState.Default) then
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