-- 基础信息
local base_info = {
	group_id = 133220024
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 24001, monster_id = 21010201, pos = { x = -2617.012, y = 211.353, z = -4139.698 }, rot = { x = 6.068, y = 97.606, z = 3.623 }, level = 1, drop_tag = "丘丘人", area_id = 11 },
	{ config_id = 24004, monster_id = 21010201, pos = { x = -2619.813, y = 211.886, z = -4138.086 }, rot = { x = 0.000, y = 298.431, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 11 },
	{ config_id = 24005, monster_id = 21020701, pos = { x = -2624.173, y = 211.891, z = -4135.411 }, rot = { x = 0.000, y = 80.021, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 24002, gadget_id = 70211022, pos = { x = -2624.242, y = 212.479, z = -4130.607 }, rot = { x = 8.888, y = 160.015, z = 356.910 }, level = 26, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 24026, gadget_id = 70310006, pos = { x = -2621.572, y = 211.701, z = -4135.451 }, rot = { x = 5.874, y = 32.816, z = 356.070 }, level = 27, area_id = 11 },
	{ config_id = 24027, gadget_id = 70220013, pos = { x = -2620.102, y = 212.714, z = -4128.442 }, rot = { x = 0.000, y = 312.409, z = 5.694 }, level = 27, area_id = 11 },
	{ config_id = 24028, gadget_id = 70220026, pos = { x = -2625.350, y = 212.353, z = -4141.970 }, rot = { x = 0.000, y = 300.044, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 24029, gadget_id = 70220026, pos = { x = -2625.895, y = 212.359, z = -4140.743 }, rot = { x = 0.000, y = 47.173, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 24030, gadget_id = 70300087, pos = { x = -2625.870, y = 212.081, z = -4138.868 }, rot = { x = 0.000, y = 34.059, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1024003, name = "ANY_MONSTER_DIE_24003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_24003", action = "action_EVENT_ANY_MONSTER_DIE_24003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
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
		monsters = { 24001, 24004, 24005 },
		gadgets = { 24002, 24026, 24027, 24028, 24029, 24030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_24003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_24003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_24003(context, evt)
	-- 将configid为 24002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 24002, GadgetState.Default) then
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