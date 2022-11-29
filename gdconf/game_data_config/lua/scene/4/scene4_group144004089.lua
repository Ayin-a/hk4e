-- 基础信息
local base_info = {
	group_id = 144004089
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 89001, monster_id = 21010201, pos = { x = -333.737, y = 120.335, z = -578.346 }, rot = { x = 0.000, y = 35.123, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 100 },
	{ config_id = 89004, monster_id = 21010201, pos = { x = -330.279, y = 120.200, z = -574.731 }, rot = { x = 0.000, y = 225.810, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 100 },
	{ config_id = 89006, monster_id = 21020201, pos = { x = -335.211, y = 120.420, z = -573.241 }, rot = { x = 0.000, y = 123.431, z = 0.000 }, level = 23, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 89002, gadget_id = 70211002, pos = { x = -333.077, y = 120.227, z = -569.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 100 },
	{ config_id = 89005, gadget_id = 70310006, pos = { x = -332.720, y = 120.307, z = -575.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1089003, name = "ANY_MONSTER_DIE_89003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_89003", action = "action_EVENT_ANY_MONSTER_DIE_89003" }
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
		monsters = { 89001, 89004, 89006 },
		gadgets = { 89002, 89005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_89003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_89003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_89003(context, evt)
	-- 将configid为 89002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 89002, GadgetState.Default) then
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