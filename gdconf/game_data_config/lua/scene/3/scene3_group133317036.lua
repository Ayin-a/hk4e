-- 基础信息
local base_info = {
	group_id = 133317036
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 36001, monster_id = 25010301, pos = { x = 223.324, y = 329.442, z = 6084.120 }, rot = { x = 0.000, y = 277.176, z = 0.000 }, level = 32, drop_tag = "盗宝团", area_id = 30 },
	{ config_id = 36004, monster_id = 25010701, pos = { x = 223.473, y = 329.177, z = 6077.613 }, rot = { x = 0.000, y = 201.345, z = 0.000 }, level = 32, drop_tag = "盗宝团", area_id = 30 },
	{ config_id = 36005, monster_id = 25070101, pos = { x = 210.020, y = 327.069, z = 6075.523 }, rot = { x = 0.000, y = 69.175, z = 0.000 }, level = 32, drop_tag = "盗宝团", area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 36002, gadget_id = 70211022, pos = { x = 232.745, y = 332.130, z = 6083.025 }, rot = { x = 0.000, y = 267.524, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1036003, name = "ANY_MONSTER_DIE_36003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36003", action = "action_EVENT_ANY_MONSTER_DIE_36003" }
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
		monsters = { 36001, 36004, 36005 },
		gadgets = { 36002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_36003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36003(context, evt)
	-- 将configid为 36002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36002, GadgetState.Default) then
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