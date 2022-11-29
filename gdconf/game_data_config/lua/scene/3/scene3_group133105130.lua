-- 基础信息
local base_info = {
	group_id = 133105130
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 216, monster_id = 21020101, pos = { x = 1007.864, y = 206.714, z = 67.452 }, rot = { x = 0.000, y = 57.273, z = 0.000 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, isElite = true, pose_id = 401, area_id = 9 },
	{ config_id = 222, monster_id = 21010901, pos = { x = 1011.370, y = 206.592, z = 67.008 }, rot = { x = 0.000, y = 35.615, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", pose_id = 32, area_id = 9 },
	{ config_id = 223, monster_id = 21011001, pos = { x = 1032.422, y = 204.123, z = 65.640 }, rot = { x = 0.000, y = 185.087, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 9 },
	{ config_id = 224, monster_id = 21010101, pos = { x = 1021.189, y = 204.348, z = 70.360 }, rot = { x = 0.000, y = 242.082, z = 0.000 }, level = 18, drop_tag = "丘丘人", pose_id = 9016, area_id = 9 },
	{ config_id = 225, monster_id = 21010401, pos = { x = 1036.397, y = 205.103, z = 63.464 }, rot = { x = 359.240, y = 184.882, z = 358.538 }, level = 18, drop_tag = "远程丘丘人", pose_id = 9010, area_id = 9 },
	{ config_id = 226, monster_id = 21010301, pos = { x = 1026.578, y = 202.530, z = 87.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "丘丘人", pose_id = 9014, area_id = 9 },
	{ config_id = 227, monster_id = 21010201, pos = { x = 1037.309, y = 203.452, z = 68.395 }, rot = { x = 0.000, y = 62.203, z = 0.000 }, level = 18, drop_tag = "丘丘人", pose_id = 9015, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 311, gadget_id = 70211022, pos = { x = 1018.671, y = 204.948, z = 68.658 }, rot = { x = 4.533, y = 43.490, z = 0.920 }, level = 21, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 315, gadget_id = 70310009, pos = { x = 1010.376, y = 204.276, z = 73.607 }, rot = { x = 1.928, y = 84.889, z = 11.355 }, level = 25, area_id = 9 },
	{ config_id = 316, gadget_id = 70300089, pos = { x = 1025.248, y = 202.444, z = 87.970 }, rot = { x = 359.565, y = 286.619, z = 355.210 }, level = 25, area_id = 9 },
	{ config_id = 317, gadget_id = 70300088, pos = { x = 1032.347, y = 204.842, z = 61.880 }, rot = { x = 9.407, y = 271.497, z = 1.031 }, level = 25, area_id = 9 },
	{ config_id = 318, gadget_id = 70300088, pos = { x = 1036.672, y = 205.097, z = 61.816 }, rot = { x = 0.958, y = 271.346, z = 1.018 }, level = 25, area_id = 9 },
	{ config_id = 319, gadget_id = 70300088, pos = { x = 1025.832, y = 205.248, z = 61.469 }, rot = { x = 321.250, y = 273.041, z = 356.281 }, level = 25, area_id = 9 },
	{ config_id = 320, gadget_id = 70300085, pos = { x = 1018.521, y = 204.495, z = 68.634 }, rot = { x = 1.948, y = 324.762, z = 355.470 }, level = 25, area_id = 9 },
	{ config_id = 322, gadget_id = 70220013, pos = { x = 1015.415, y = 202.686, z = 87.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 323, gadget_id = 70220014, pos = { x = 1014.054, y = 202.770, z = 85.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000167, name = "ANY_MONSTER_DIE_167", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_167", action = "action_EVENT_ANY_MONSTER_DIE_167" }
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
		monsters = { 216, 222, 223, 224, 225, 226, 227 },
		gadgets = { 311, 315, 316, 317, 318, 319, 320, 322, 323 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_167" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_167(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_167(context, evt)
	-- 将configid为 311 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311, GadgetState.Default) then
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