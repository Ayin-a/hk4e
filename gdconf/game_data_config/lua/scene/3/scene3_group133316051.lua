-- 基础信息
local base_info = {
	group_id = 133316051
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 51001, monster_id = 21010201, pos = { x = 652.728, y = 279.910, z = 6734.007 }, rot = { x = 0.000, y = 312.741, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, area_id = 30 },
	{ config_id = 51004, monster_id = 21010101, pos = { x = 639.706, y = 279.990, z = 6734.610 }, rot = { x = 0.000, y = 42.911, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 },
	{ config_id = 51005, monster_id = 21010101, pos = { x = 649.318, y = 279.749, z = 6730.038 }, rot = { x = 0.000, y = 330.211, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 51002, gadget_id = 70211012, pos = { x = 642.833, y = 280.337, z = 6730.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1051003, name = "ANY_MONSTER_DIE_51003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51003", action = "action_EVENT_ANY_MONSTER_DIE_51003" }
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
		monsters = { 51001, 51004, 51005 },
		gadgets = { 51002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_51003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51003(context, evt)
	-- 将configid为 51002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 51002, GadgetState.Default) then
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