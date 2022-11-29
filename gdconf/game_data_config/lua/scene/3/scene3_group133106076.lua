-- 基础信息
local base_info = {
	group_id = 133106076
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 76001, monster_id = 22010301, pos = { x = -470.040, y = 193.777, z = 1072.048 }, rot = { x = 0.000, y = 332.099, z = 0.000 }, level = 32, drop_tag = "深渊法师", disableWander = true, area_id = 8 },
	{ config_id = 76004, monster_id = 22010301, pos = { x = -466.533, y = 193.777, z = 1074.066 }, rot = { x = 0.000, y = 330.633, z = 0.000 }, level = 32, drop_tag = "深渊法师", disableWander = true, area_id = 8 },
	{ config_id = 76005, monster_id = 22010201, pos = { x = -472.321, y = 196.557, z = 1080.199 }, rot = { x = 0.000, y = 331.764, z = 0.000 }, level = 32, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 76002, gadget_id = 70211022, pos = { x = -474.169, y = 196.557, z = 1083.431 }, rot = { x = 0.000, y = 150.405, z = 0.000 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1076003, name = "ANY_MONSTER_DIE_76003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_76003", action = "action_EVENT_ANY_MONSTER_DIE_76003" }
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
		monsters = { 76001, 76004, 76005 },
		gadgets = { 76002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_76003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_76003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_76003(context, evt)
	-- 将configid为 76002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76002, GadgetState.Default) then
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