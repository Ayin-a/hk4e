-- 基础信息
local base_info = {
	group_id = 133004120
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 334, monster_id = 21010901, pos = { x = 2211.070, y = 210.897, z = -514.341 }, rot = { x = 0.000, y = 88.401, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 335, monster_id = 21030101, pos = { x = 2203.175, y = 211.238, z = -513.849 }, rot = { x = 0.000, y = 28.136, z = 0.000 }, level = 16, drop_tag = "丘丘萨满", disableWander = true, area_id = 3 },
	{ config_id = 336, monster_id = 21010201, pos = { x = 2202.844, y = 210.849, z = -511.351 }, rot = { x = 0.000, y = 324.362, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 337, monster_id = 21010201, pos = { x = 2215.801, y = 204.610, z = -496.668 }, rot = { x = 0.000, y = 187.987, z = 0.000 }, level = 16, drop_tag = "丘丘人", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 490, gadget_id = 70211022, pos = { x = 2204.230, y = 211.392, z = -516.335 }, rot = { x = 359.437, y = 1.550, z = 356.987 }, level = 11, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000162, name = "ANY_MONSTER_DIE_162", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162", action = "action_EVENT_ANY_MONSTER_DIE_162", tlog_tag = "奔狼岭_120_怪物营地_结算" }
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
	rand_suite = true
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
		monsters = { 334, 335, 336, 337 },
		gadgets = { 490 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_162" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_162(context, evt)
	-- 将configid为 490 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 490, GadgetState.Default) then
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