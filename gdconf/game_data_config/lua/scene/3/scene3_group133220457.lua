-- 基础信息
local base_info = {
	group_id = 133220457
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 457001, monster_id = 21010201, pos = { x = -2700.469, y = 231.950, z = -4283.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 11 },
	{ config_id = 457010, monster_id = 21011601, pos = { x = -2710.665, y = 229.249, z = -4276.016 }, rot = { x = 0.000, y = 283.753, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 11 },
	{ config_id = 457011, monster_id = 21011601, pos = { x = -2699.203, y = 232.392, z = -4281.149 }, rot = { x = 0.000, y = 282.934, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 11 },
	{ config_id = 457012, monster_id = 21020701, pos = { x = -2702.924, y = 230.895, z = -4276.158 }, rot = { x = 0.000, y = 115.925, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 457002, gadget_id = 70211002, pos = { x = -2697.449, y = 232.107, z = -4277.767 }, rot = { x = 7.976, y = 248.021, z = 347.533 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 457004, gadget_id = 70310001, pos = { x = -2697.320, y = 231.660, z = -4275.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 457006, gadget_id = 70220013, pos = { x = -2695.347, y = 232.989, z = -4280.666 }, rot = { x = 10.090, y = 1.982, z = 11.172 }, level = 27, area_id = 11 },
	{ config_id = 457007, gadget_id = 70220026, pos = { x = -2696.876, y = 232.881, z = -4281.538 }, rot = { x = 2.871, y = 34.764, z = 18.250 }, level = 27, area_id = 11 },
	{ config_id = 457008, gadget_id = 70220026, pos = { x = -2696.782, y = 232.548, z = -4279.983 }, rot = { x = 14.594, y = 289.250, z = 359.157 }, level = 27, area_id = 11 },
	{ config_id = 457009, gadget_id = 70220026, pos = { x = -2698.531, y = 231.322, z = -4274.601 }, rot = { x = 10.167, y = 26.813, z = 8.993 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1457003, name = "ANY_MONSTER_DIE_457003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_457003", action = "action_EVENT_ANY_MONSTER_DIE_457003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 457005, gadget_id = 70310006, pos = { x = -2701.639, y = 231.556, z = -4280.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
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
		monsters = { 457001, 457010, 457011, 457012 },
		gadgets = { 457002, 457004, 457006, 457007, 457008, 457009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_457003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_457003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_457003(context, evt)
	-- 将configid为 457002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 457002, GadgetState.Default) then
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