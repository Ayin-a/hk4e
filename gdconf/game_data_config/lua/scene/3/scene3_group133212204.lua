-- 基础信息
local base_info = {
	group_id = 133212204
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 204001, monster_id = 25100101, pos = { x = -3673.397, y = 204.167, z = -2248.637 }, rot = { x = 0.000, y = 237.856, z = 0.000 }, level = 27, drop_tag = "高阶武士", disableWander = true, affix = { 1101 }, pose_id = 1002, climate_area_id = 9, area_id = 13 },
	{ config_id = 204004, monster_id = 25080101, pos = { x = -3663.826, y = 203.843, z = -2245.014 }, rot = { x = 0.000, y = 9.967, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1004, climate_area_id = 9, area_id = 13 },
	{ config_id = 204005, monster_id = 25080101, pos = { x = -3665.190, y = 203.903, z = -2241.826 }, rot = { x = 0.000, y = 115.717, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1003, climate_area_id = 9, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 204002, gadget_id = 70211002, pos = { x = -3676.049, y = 204.734, z = -2250.291 }, rot = { x = 5.175, y = 55.107, z = 355.086 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 204006, gadget_id = 70220025, pos = { x = -3666.525, y = 204.120, z = -2244.546 }, rot = { x = 83.325, y = 259.320, z = 259.249 }, level = 27, area_id = 13 },
	{ config_id = 204011, gadget_id = 70310009, pos = { x = -3667.761, y = 204.066, z = -2245.304 }, rot = { x = 0.000, y = 60.178, z = 351.180 }, level = 27, area_id = 13 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 204007, gadget_id = 70500000, pos = { x = -3665.790, y = 204.091, z = -2244.795 }, rot = { x = 0.000, y = 82.326, z = 0.000 }, level = 27, point_type = 9104, area_id = 13 },
		{ config_id = 204008, gadget_id = 70500000, pos = { x = -3666.466, y = 204.117, z = -2243.958 }, rot = { x = 0.000, y = 260.726, z = 0.000 }, level = 27, point_type = 9104, area_id = 13 },
		{ config_id = 204009, gadget_id = 70500000, pos = { x = -3666.463, y = 204.140, z = -2245.153 }, rot = { x = 0.000, y = 70.320, z = 0.000 }, level = 27, point_type = 9104, area_id = 13 },
		{ config_id = 204010, gadget_id = 70500000, pos = { x = -3666.934, y = 204.134, z = -2244.160 }, rot = { x = 0.000, y = 264.799, z = 0.000 }, level = 27, point_type = 9104, area_id = 13 }
	}
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
		monsters = { 204001, 204004, 204005 },
		gadgets = { 204002, 204006, 204011 },
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
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end