-- 基础信息
local base_info = {
	group_id = 133106512
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 512001, monster_id = 26040102, pos = { x = -550.772, y = 125.926, z = 1780.278 }, rot = { x = 0.000, y = 259.740, z = 0.000 }, level = 36, drop_tag = "岩龙蜥", disableWander = true, area_id = 19 },
	{ config_id = 512002, monster_id = 26030101, pos = { x = -549.765, y = 140.417, z = 1776.871 }, rot = { x = 0.000, y = 341.509, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", disableWander = true, area_id = 19 },
	{ config_id = 512003, monster_id = 26030101, pos = { x = -552.151, y = 142.038, z = 1781.620 }, rot = { x = 0.000, y = 74.222, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", disableWander = true, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 512004, gadget_id = 70211012, pos = { x = -541.601, y = 124.334, z = 1777.639 }, rot = { x = 328.439, y = 0.110, z = 347.295 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1512006, name = "ANY_MONSTER_DIE_512006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_512006", action = "action_EVENT_ANY_MONSTER_DIE_512006" },
	{ config_id = 1512007, name = "MONSTER_BATTLE_512007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_512007", action = "action_EVENT_MONSTER_BATTLE_512007" }
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
		monsters = { 512001 },
		gadgets = { 512004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_512006", "MONSTER_BATTLE_512007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 512002, 512003 },
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
function condition_EVENT_ANY_MONSTER_DIE_512006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_512006(context, evt)
	-- 将configid为 512004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512004, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_512007(context, evt)
	if 512001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_512007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106512, 2)
	
	return 0
end