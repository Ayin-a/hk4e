-- 基础信息
local base_info = {
	group_id = 155005243
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 243001, monster_id = 22010101, pos = { x = 320.967, y = 221.965, z = 87.435 }, rot = { x = 0.000, y = 158.519, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, area_id = 200 },
	{ config_id = 243004, monster_id = 22010401, pos = { x = 321.566, y = 222.012, z = 81.027 }, rot = { x = 0.000, y = 13.560, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 243002, gadget_id = 70211002, pos = { x = 321.506, y = 222.100, z = 84.822 }, rot = { x = 356.737, y = 95.626, z = 353.830 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1243003, name = "ANY_MONSTER_DIE_243003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_243003", action = "action_EVENT_ANY_MONSTER_DIE_243003" }
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
		monsters = { 243001, 243004 },
		gadgets = { 243002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_243003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_243003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_243003(context, evt)
	-- 将configid为 243002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243002, GadgetState.Default) then
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