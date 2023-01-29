-- 基础信息
local base_info = {
	group_id = 133317017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17001, monster_id = 23010101, pos = { x = 908.959, y = 358.401, z = 5778.118 }, rot = { x = 0.000, y = 357.743, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, area_id = 30 },
	{ config_id = 17004, monster_id = 23010201, pos = { x = 903.361, y = 357.501, z = 5778.703 }, rot = { x = 0.000, y = 0.099, z = 0.000 }, level = 32, drop_tag = "先遣队", area_id = 30 },
	{ config_id = 17005, monster_id = 23010501, pos = { x = 907.354, y = 357.883, z = 5782.887 }, rot = { x = 0.000, y = 0.099, z = 0.000 }, level = 32, drop_tag = "先遣队", area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17002, gadget_id = 70211022, pos = { x = 905.372, y = 358.073, z = 5775.463 }, rot = { x = 3.124, y = 0.647, z = 5.580 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1017003, name = "ANY_MONSTER_DIE_17003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17003", action = "action_EVENT_ANY_MONSTER_DIE_17003" }
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
		monsters = { 17001, 17004, 17005 },
		gadgets = { 17002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_17003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17003(context, evt)
	-- 将configid为 17002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17002, GadgetState.Default) then
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