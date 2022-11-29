-- 基础信息
local base_info = {
	group_id = 133107065
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65001, monster_id = 21010201, pos = { x = -427.321, y = 279.117, z = 640.121 }, rot = { x = 0.000, y = 279.157, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 7 },
	{ config_id = 65004, monster_id = 21010601, pos = { x = -430.637, y = 279.117, z = 638.535 }, rot = { x = 0.000, y = 44.831, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 7 },
	{ config_id = 65005, monster_id = 21010701, pos = { x = -429.559, y = 279.117, z = 641.203 }, rot = { x = 0.000, y = 168.258, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 65002, gadget_id = 70211012, pos = { x = -427.358, y = 279.126, z = 638.327 }, rot = { x = 0.000, y = 319.489, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 65006, gadget_id = 70310006, pos = { x = -428.982, y = 279.117, z = 639.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1065003, name = "ANY_MONSTER_DIE_65003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65003", action = "action_EVENT_ANY_MONSTER_DIE_65003" }
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
		monsters = { 65001, 65004, 65005 },
		gadgets = { 65002, 65006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_65003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65003(context, evt)
	-- 将configid为 65002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65002, GadgetState.Default) then
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