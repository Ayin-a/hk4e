-- 基础信息
local base_info = {
	group_id = 166001534
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 534001, monster_id = 22010101, pos = { x = 359.137, y = 660.842, z = 476.754 }, rot = { x = 0.000, y = 352.604, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 534002, gadget_id = 70211002, pos = { x = 358.284, y = 660.837, z = 478.847 }, rot = { x = 0.435, y = 156.493, z = 9.857 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 534004, gadget_id = 70220062, pos = { x = 393.751, y = 657.004, z = 460.757 }, rot = { x = 21.328, y = 2.485, z = 0.890 }, level = 36, area_id = 300 },
	{ config_id = 534005, gadget_id = 70220063, pos = { x = 392.339, y = 656.379, z = 465.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 534006, gadget_id = 70220063, pos = { x = 393.720, y = 656.924, z = 461.727 }, rot = { x = 10.833, y = 315.963, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1534003, name = "ANY_MONSTER_DIE_534003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_534003", action = "action_EVENT_ANY_MONSTER_DIE_534003" }
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
		monsters = { 534001 },
		gadgets = { 534002, 534004, 534005, 534006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_534003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_534003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_534003(context, evt)
	-- 将configid为 534002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 534002, GadgetState.Default) then
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