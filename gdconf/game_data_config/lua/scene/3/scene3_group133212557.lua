-- 基础信息
local base_info = {
	group_id = 133212557
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 557001, monster_id = 25080101, pos = { x = -3809.736, y = 237.890, z = -2124.748 }, rot = { x = 0.000, y = 281.820, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1006, area_id = 13 },
	{ config_id = 557004, monster_id = 25080201, pos = { x = -3811.672, y = 237.588, z = -2119.140 }, rot = { x = 0.000, y = 276.318, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 557002, gadget_id = 70211012, pos = { x = -3815.011, y = 237.704, z = -2119.113 }, rot = { x = 0.000, y = 88.948, z = 10.121 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1557003, name = "ANY_MONSTER_DIE_557003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_557003", action = "action_EVENT_ANY_MONSTER_DIE_557003" }
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
		monsters = { 557001, 557004 },
		gadgets = { 557002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_557003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_557003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_557003(context, evt)
	-- 将configid为 557002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 557002, GadgetState.Default) then
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