-- 基础信息
local base_info = {
	group_id = 155005319
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 319001, monster_id = 26050601, pos = { x = 518.394, y = 132.484, z = -303.183 }, rot = { x = 0.000, y = 332.687, z = 0.000 }, level = 36, drop_tag = "岩龙蜥", disableWander = true, area_id = 200 },
	{ config_id = 319002, monster_id = 26050901, pos = { x = 504.022, y = 130.281, z = -284.182 }, rot = { x = 0.000, y = 5.931, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 },
	{ config_id = 319003, monster_id = 26050901, pos = { x = 499.818, y = 130.735, z = -287.815 }, rot = { x = 0.000, y = 291.995, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 灵庙水池 水龙战斗宝箱
	{ config_id = 319004, gadget_id = 70211022, pos = { x = 520.478, y = 130.520, z = -292.745 }, rot = { x = 9.611, y = 282.492, z = 357.671 }, level = 16, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1319005, name = "ANY_MONSTER_DIE_319005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_319005", action = "action_EVENT_ANY_MONSTER_DIE_319005" },
	{ config_id = 1319006, name = "MONSTER_BATTLE_319006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_319006" }
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
		monsters = { 319001 },
		gadgets = { 319004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_319005", "MONSTER_BATTLE_319006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 319002, 319003 },
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
function condition_EVENT_ANY_MONSTER_DIE_319005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_319005(context, evt)
	-- 将configid为 319004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 319004, GadgetState.Default) then
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
function action_EVENT_MONSTER_BATTLE_319006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155005319, 2)
	
	return 0
end