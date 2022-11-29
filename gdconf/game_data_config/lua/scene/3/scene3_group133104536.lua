-- 基础信息
local base_info = {
	group_id = 133104536
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 536001, monster_id = 22010201, pos = { x = 363.138, y = 235.742, z = 1011.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "深渊法师", disableWander = true, area_id = 6 },
	{ config_id = 536004, monster_id = 21030101, pos = { x = 366.413, y = 236.524, z = 1015.890 }, rot = { x = 0.000, y = 243.760, z = 0.000 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 536002, gadget_id = 70211012, pos = { x = 362.925, y = 236.773, z = 1014.919 }, rot = { x = 343.415, y = 2.621, z = 351.356 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 536005, gadget_id = 70310001, pos = { x = 359.575, y = 238.003, z = 1017.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1536003, name = "ANY_MONSTER_DIE_536003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_536003", action = "action_EVENT_ANY_MONSTER_DIE_536003" },
	{ config_id = 1536006, name = "MONSTER_BATTLE_536006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_536006", action = "action_EVENT_MONSTER_BATTLE_536006" }
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
		monsters = { 536001 },
		gadgets = { 536002, 536005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_536003", "MONSTER_BATTLE_536006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 536004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_536003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_536003(context, evt)
	-- 将configid为 536002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 536002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_536006(context, evt)
	if 536001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_536006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104536, 2)
	
	return 0
end