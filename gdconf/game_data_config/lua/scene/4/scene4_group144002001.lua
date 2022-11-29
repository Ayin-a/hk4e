-- 基础信息
local base_info = {
	group_id = 144002001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21020501, pos = { x = 948.905, y = 99.118, z = -801.768 }, rot = { x = 0.000, y = 192.560, z = 0.000 }, level = 25, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, area_id = 101 },
	{ config_id = 1004, monster_id = 21011201, pos = { x = 952.497, y = 99.061, z = -807.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9002, area_id = 101 },
	{ config_id = 1005, monster_id = 21011201, pos = { x = 945.171, y = 99.211, z = -807.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9002, area_id = 101 },
	{ config_id = 1010, monster_id = 21011201, pos = { x = 954.315, y = 99.211, z = -804.388 }, rot = { x = 0.000, y = 290.370, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9002, area_id = 101 },
	{ config_id = 1011, monster_id = 21011201, pos = { x = 943.166, y = 99.211, z = -802.400 }, rot = { x = 0.000, y = 290.370, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9002, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70211022, pos = { x = 955.898, y = 99.016, z = -808.580 }, rot = { x = 0.000, y = 263.502, z = 0.000 }, level = 26, drop_tag = "战斗高级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 1006, gadget_id = 70211001, pos = { x = 963.634, y = 111.952, z = -803.040 }, rot = { x = 0.000, y = 239.241, z = 0.000 }, level = 26, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 1007, gadget_id = 70310006, pos = { x = 947.335, y = 99.140, z = -804.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 1008, gadget_id = 70220013, pos = { x = 945.106, y = 99.162, z = -799.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 1009, gadget_id = 70220013, pos = { x = 945.956, y = 99.225, z = -809.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 1012, gadget_id = 70290001, pos = { x = 949.517, y = 99.209, z = -811.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 1013, gadget_id = 70500000, pos = { x = 949.534, y = 99.778, z = -811.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 1012, area_id = 101 },
	{ config_id = 1014, gadget_id = 70500000, pos = { x = 949.452, y = 100.064, z = -812.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 1012, area_id = 101 },
	{ config_id = 1015, gadget_id = 70500000, pos = { x = 949.785, y = 100.476, z = -811.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 1012, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001003, name = "ANY_MONSTER_DIE_1003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1003", action = "action_EVENT_ANY_MONSTER_DIE_1003" }
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
		monsters = { 1001, 1004, 1005, 1010, 1011 },
		gadgets = { 1002, 1006, 1007, 1008, 1009, 1012, 1013, 1014, 1015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	-- 将configid为 1002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.Default) then
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