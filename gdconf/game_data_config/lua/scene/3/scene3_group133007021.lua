-- 基础信息
local base_info = {
	group_id = 133007021
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 21001, monster_id = 22010301, pos = { x = 2732.241, y = 240.558, z = 313.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_tag = "深渊法师", disableWander = true, area_id = 4 },
	{ config_id = 21004, monster_id = 21030201, pos = { x = 2731.519, y = 240.595, z = 319.171 }, rot = { x = 0.000, y = 131.310, z = 0.000 }, level = 22, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 21002, gadget_id = 70211012, pos = { x = 2730.200, y = 240.400, z = 316.500 }, rot = { x = 0.000, y = 195.578, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1021003, name = "ANY_MONSTER_DIE_21003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_21003", action = "action_EVENT_ANY_MONSTER_DIE_21003" }
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
		monsters = { 21001, 21004 },
		gadgets = { 21002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_21003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_21003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_21003(context, evt)
	-- 将configid为 21002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21002, GadgetState.Default) then
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