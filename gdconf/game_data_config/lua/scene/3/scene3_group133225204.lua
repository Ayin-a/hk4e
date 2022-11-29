-- 基础信息
local base_info = {
	group_id = 133225204
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 204001, monster_id = 21010301, pos = { x = -6761.051, y = 201.606, z = -2603.850 }, rot = { x = 0.000, y = 299.843, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 18 },
	{ config_id = 204009, monster_id = 21030101, pos = { x = -6756.556, y = 201.454, z = -2608.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", area_id = 18 },
	{ config_id = 204010, monster_id = 20011001, pos = { x = -6756.843, y = 201.992, z = -2605.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", area_id = 18 },
	{ config_id = 204013, monster_id = 21010401, pos = { x = -6755.699, y = 202.134, z = -2596.511 }, rot = { x = 0.000, y = 322.393, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 18 },
	{ config_id = 204014, monster_id = 21020701, pos = { x = -6762.881, y = 200.772, z = -2621.375 }, rot = { x = 0.000, y = 324.100, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 204002, gadget_id = 70211151, pos = { x = -6752.786, y = 201.804, z = -2606.536 }, rot = { x = 0.000, y = 84.925, z = 0.000 }, level = 26, chest_drop_id = 21910039, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 204004, gadget_id = 70310009, pos = { x = -6763.530, y = 201.336, z = -2601.812 }, rot = { x = 359.163, y = 310.236, z = 2.970 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 204005, gadget_id = 70220013, pos = { x = -6751.191, y = 202.179, z = -2598.900 }, rot = { x = 0.000, y = 0.000, z = 11.903 }, level = 33, area_id = 18 },
	{ config_id = 204006, gadget_id = 70220013, pos = { x = -6752.172, y = 202.150, z = -2596.640 }, rot = { x = 0.000, y = 318.287, z = 13.787 }, level = 33, area_id = 18 },
	{ config_id = 204007, gadget_id = 70220014, pos = { x = -6759.380, y = 201.551, z = -2611.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 204008, gadget_id = 70300087, pos = { x = -6756.633, y = 201.529, z = -2605.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 204011, gadget_id = 70300088, pos = { x = -6761.963, y = 200.471, z = -2586.889 }, rot = { x = 0.000, y = 49.180, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 204012, gadget_id = 70300088, pos = { x = -6763.748, y = 200.517, z = -2589.180 }, rot = { x = 0.000, y = 35.764, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 204015, gadget_id = 70220014, pos = { x = -6760.082, y = 201.551, z = -2610.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 204016, gadget_id = 70220026, pos = { x = -6753.247, y = 202.191, z = -2598.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 204017, gadget_id = 70300088, pos = { x = -6751.692, y = 201.689, z = -2599.924 }, rot = { x = 26.605, y = 175.162, z = 23.582 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1204003, name = "ANY_MONSTER_DIE_204003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_204003", action = "action_EVENT_ANY_MONSTER_DIE_204003" }
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
		monsters = { 204001, 204009, 204010, 204013, 204014 },
		gadgets = { 204002, 204004, 204005, 204006, 204007, 204008, 204011, 204012, 204015, 204016, 204017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_204003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_204003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_204003(context, evt)
	-- 将configid为 204002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 204002, GadgetState.Default) then
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