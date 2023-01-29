-- 基础信息
local base_info = {
	group_id = 133316036
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 36001, monster_id = 23010301, pos = { x = 288.413, y = 248.077, z = 6543.906 }, rot = { x = 0.000, y = 96.961, z = 0.000 }, level = 32, drop_tag = "先遣队", area_id = 30 },
	{ config_id = 36004, monster_id = 23010401, pos = { x = 302.196, y = 248.337, z = 6537.617 }, rot = { x = 0.000, y = 222.127, z = 0.000 }, level = 32, drop_tag = "先遣队", area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 36002, gadget_id = 70211022, pos = { x = 304.032, y = 250.185, z = 6545.484 }, rot = { x = 0.000, y = 18.777, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 30 }
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
		monsters = { 36001, 36004 },
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