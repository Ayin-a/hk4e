-- 基础信息
local base_info = {
	group_id = 133220025
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 25001, monster_id = 21010201, pos = { x = -2614.958, y = 218.534, z = -4199.134 }, rot = { x = 359.302, y = 239.170, z = 14.075 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 11 },
	{ config_id = 25007, monster_id = 21010501, pos = { x = -2615.822, y = 219.735, z = -4193.642 }, rot = { x = 0.000, y = 190.544, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 11 },
	{ config_id = 25008, monster_id = 21011001, pos = { x = -2606.538, y = 222.690, z = -4198.449 }, rot = { x = 0.000, y = 263.891, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 11 },
	{ config_id = 25009, monster_id = 21010301, pos = { x = -2628.802, y = 214.525, z = -4204.398 }, rot = { x = 0.000, y = 297.852, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 11 },
	{ config_id = 25011, monster_id = 21010601, pos = { x = -2613.134, y = 220.477, z = -4190.155 }, rot = { x = 0.000, y = 224.017, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 25002, gadget_id = 70211002, pos = { x = -2611.830, y = 220.493, z = -4188.535 }, rot = { x = 0.000, y = 211.357, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 25005, gadget_id = 70310004, pos = { x = -2623.515, y = 218.089, z = -4196.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 25006, gadget_id = 70310009, pos = { x = -2612.219, y = 219.533, z = -4197.294 }, rot = { x = 354.849, y = 53.820, z = 3.757 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1025003, name = "ANY_MONSTER_DIE_25003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_25003", action = "action_EVENT_ANY_MONSTER_DIE_25003" },
	{ config_id = 1025004, name = "MONSTER_BATTLE_25004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_25004", action = "action_EVENT_MONSTER_BATTLE_25004" }
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
		monsters = { 25001, 25009 },
		gadgets = { 25002, 25005, 25006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_25003", "MONSTER_BATTLE_25004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 25007, 25008, 25011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_25003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25003(context, evt)
	-- 将configid为 25002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_25004(context, evt)
	if 25009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_25004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220025, 2)
	
	return 0
end