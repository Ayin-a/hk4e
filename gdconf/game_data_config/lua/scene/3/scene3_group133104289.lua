-- 基础信息
local base_info = {
	group_id = 133104289
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 289004, monster_id = 22010101, pos = { x = 685.360, y = 239.122, z = 796.063 }, rot = { x = 0.000, y = 221.011, z = 0.000 }, level = 23, drop_tag = "深渊法师", pose_id = 9013, area_id = 6 },
	{ config_id = 289006, monster_id = 21020301, pos = { x = 657.107, y = 240.106, z = 818.239 }, rot = { x = 0.000, y = 131.011, z = 0.000 }, level = 21, drop_tag = "丘丘暴徒", disableWander = true, area_id = 6 },
	{ config_id = 289008, monster_id = 21010701, pos = { x = 709.756, y = 239.774, z = 790.278 }, rot = { x = 0.000, y = 19.469, z = 0.000 }, level = 21, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 289011, monster_id = 21011001, pos = { x = 693.249, y = 248.808, z = 769.550 }, rot = { x = 0.000, y = 279.650, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", pose_id = 32, area_id = 6 },
	{ config_id = 289012, monster_id = 21011001, pos = { x = 655.374, y = 246.508, z = 803.430 }, rot = { x = 0.000, y = 134.238, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", pose_id = 32, area_id = 6 },
	{ config_id = 289019, monster_id = 21010201, pos = { x = 681.490, y = 239.398, z = 794.064 }, rot = { x = 0.000, y = 75.159, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 289002, gadget_id = 70211022, pos = { x = 646.323, y = 240.535, z = 827.742 }, rot = { x = 0.000, y = 144.172, z = 0.000 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 289005, gadget_id = 70310009, pos = { x = 709.671, y = 239.234, z = 780.739 }, rot = { x = 0.000, y = 280.972, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 289009, gadget_id = 70220013, pos = { x = 709.755, y = 240.021, z = 794.215 }, rot = { x = 356.466, y = 359.726, z = 8.881 }, level = 1, area_id = 6 },
	{ config_id = 289010, gadget_id = 70220013, pos = { x = 713.608, y = 240.758, z = 807.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 289013, gadget_id = 70220013, pos = { x = 723.335, y = 241.377, z = 797.169 }, rot = { x = 355.577, y = 38.228, z = 5.592 }, level = 1, area_id = 6 },
	{ config_id = 289014, gadget_id = 70220014, pos = { x = 702.711, y = 241.486, z = 803.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 289015, gadget_id = 70220014, pos = { x = 703.839, y = 241.453, z = 803.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 289016, gadget_id = 70220005, pos = { x = 674.398, y = 239.437, z = 782.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, area_id = 6 },
	{ config_id = 289017, gadget_id = 70220005, pos = { x = 712.259, y = 239.955, z = 791.930 }, rot = { x = 358.227, y = 359.876, z = 8.005 }, level = 22, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1289003, name = "ANY_MONSTER_DIE_289003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_289003", action = "action_EVENT_ANY_MONSTER_DIE_289003" }
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
		monsters = { 289004, 289006, 289008, 289011, 289012, 289019 },
		gadgets = { 289002, 289005, 289009, 289010, 289013, 289014, 289015, 289016, 289017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_289003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_289003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_289003(context, evt)
	-- 将configid为 289002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 289002, GadgetState.Default) then
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