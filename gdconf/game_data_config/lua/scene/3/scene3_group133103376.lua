-- 基础信息
local base_info = {
	group_id = 133103376
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 376001, monster_id = 23030101, pos = { x = 137.945, y = 229.680, z = 1077.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "召唤师", disableWander = true, area_id = 6 },
	{ config_id = 376004, monster_id = 23020101, pos = { x = 142.671, y = 225.250, z = 1082.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "债务处理人", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 376002, gadget_id = 70211012, pos = { x = 142.492, y = 226.150, z = 1080.917 }, rot = { x = 23.539, y = 358.883, z = 354.644 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1376003, name = "ANY_MONSTER_DIE_376003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_376003", action = "action_EVENT_ANY_MONSTER_DIE_376003" }
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
		monsters = { 376001 },
		gadgets = { 376002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_376003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_376003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_376003(context, evt)
	-- 将configid为 376002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 376002, GadgetState.Default) then
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