-- 基础信息
local base_info = {
	group_id = 155005320
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 320001, monster_id = 26050601, pos = { x = 702.971, y = 241.023, z = 537.419 }, rot = { x = 0.000, y = 332.687, z = 0.000 }, level = 36, drop_tag = "岩龙蜥", disableWander = true, area_id = 200 },
	{ config_id = 320002, monster_id = 26050901, pos = { x = 685.490, y = 241.320, z = 552.489 }, rot = { x = 0.000, y = 5.931, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 },
	{ config_id = 320003, monster_id = 26050901, pos = { x = 693.055, y = 240.975, z = 560.514 }, rot = { x = 0.000, y = 291.995, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 蛇心之地水池 水龙战斗宝箱
	{ config_id = 320004, gadget_id = 70211022, pos = { x = 707.617, y = 242.195, z = 552.652 }, rot = { x = 6.943, y = 264.365, z = 352.526 }, level = 16, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1320005, name = "ANY_MONSTER_DIE_320005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_320005", action = "action_EVENT_ANY_MONSTER_DIE_320005" },
	{ config_id = 1320006, name = "MONSTER_BATTLE_320006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_320006" }
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
		monsters = { 320001 },
		gadgets = { 320004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_320005", "MONSTER_BATTLE_320006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 320002, 320003 },
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
function condition_EVENT_ANY_MONSTER_DIE_320005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_320005(context, evt)
	-- 将configid为 320004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 320004, GadgetState.Default) then
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
function action_EVENT_MONSTER_BATTLE_320006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155005320, 2)
	
	return 0
end