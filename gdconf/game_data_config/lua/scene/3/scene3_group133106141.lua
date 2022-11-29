-- 基础信息
local base_info = {
	group_id = 133106141
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 141001, monster_id = 23010201, pos = { x = -147.306, y = 211.488, z = 1150.869 }, rot = { x = 0.000, y = 303.517, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, area_id = 6 },
	{ config_id = 141002, monster_id = 23010301, pos = { x = -151.528, y = 208.891, z = 1163.298 }, rot = { x = 0.000, y = 252.387, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, area_id = 8 },
	{ config_id = 141003, monster_id = 23010601, pos = { x = -144.679, y = 211.556, z = 1157.731 }, rot = { x = 0.000, y = 125.230, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 141005, gadget_id = 70211022, pos = { x = -150.636, y = 208.809, z = 1165.016 }, rot = { x = 0.015, y = 209.315, z = 1.364 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 141006, gadget_id = 70310006, pos = { x = -155.730, y = 208.624, z = 1158.721 }, rot = { x = 359.060, y = 92.754, z = 358.524 }, level = 32, state = GadgetState.GearStart, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1141007, name = "ANY_MONSTER_DIE_141007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_141007", action = "action_EVENT_ANY_MONSTER_DIE_141007" }
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
		monsters = { 141001, 141002, 141003 },
		gadgets = { 141005, 141006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_141007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_141007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_141007(context, evt)
	-- 将configid为 141005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 141005, GadgetState.Default) then
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