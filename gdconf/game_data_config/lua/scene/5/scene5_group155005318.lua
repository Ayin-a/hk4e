-- 基础信息
local base_info = {
	group_id = 155005318
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 318001, monster_id = 26050601, pos = { x = -311.673, y = 216.843, z = 370.868 }, rot = { x = 0.000, y = 332.687, z = 0.000 }, level = 36, drop_tag = "岩龙蜥", disableWander = true, area_id = 200 },
	{ config_id = 318004, monster_id = 26050901, pos = { x = -319.571, y = 217.268, z = 354.190 }, rot = { x = 0.000, y = 5.931, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 },
	{ config_id = 318005, monster_id = 26050901, pos = { x = -311.879, y = 217.205, z = 359.371 }, rot = { x = 0.000, y = 291.995, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 狭间水池 水龙战斗宝箱
	{ config_id = 318002, gadget_id = 70211022, pos = { x = -328.592, y = 215.043, z = 374.302 }, rot = { x = 0.000, y = 141.113, z = 0.000 }, level = 16, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1318003, name = "ANY_MONSTER_DIE_318003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_318003", action = "action_EVENT_ANY_MONSTER_DIE_318003" },
	{ config_id = 1318006, name = "MONSTER_BATTLE_318006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_318006" }
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
		monsters = { 318001 },
		gadgets = { 318002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_318003", "MONSTER_BATTLE_318006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 318004, 318005 },
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
function condition_EVENT_ANY_MONSTER_DIE_318003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_318003(context, evt)
	-- 将configid为 318002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318002, GadgetState.Default) then
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

-- 触发操作
function action_EVENT_MONSTER_BATTLE_318006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155005318, 2)
	
	return 0
end