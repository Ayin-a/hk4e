-- 基础信息
local base_info = {
	group_id = 133220395
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 395004, monster_id = 20010901, pos = { x = -2753.391, y = 215.300, z = -4333.432 }, rot = { x = 0.000, y = 250.400, z = 0.000 }, level = 27, drop_tag = "大史莱姆", disableWander = true, area_id = 11 },
	{ config_id = 395005, monster_id = 20010901, pos = { x = -2751.358, y = 215.300, z = -4345.369 }, rot = { x = 0.000, y = 313.559, z = 0.000 }, level = 27, drop_tag = "大史莱姆", disableWander = true, area_id = 11 },
	{ config_id = 395006, monster_id = 20010901, pos = { x = -2741.683, y = 215.300, z = -4336.547 }, rot = { x = 0.000, y = 272.981, z = 0.000 }, level = 27, drop_tag = "大史莱姆", disableWander = true, area_id = 11 },
	{ config_id = 395007, monster_id = 22010201, pos = { x = -2748.633, y = 215.591, z = -4337.994 }, rot = { x = 0.000, y = 266.497, z = 0.000 }, level = 27, drop_tag = "深渊法师", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 395002, gadget_id = 70211002, pos = { x = -2746.875, y = 214.268, z = -4338.343 }, rot = { x = 0.000, y = 276.487, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1395003, name = "ANY_MONSTER_DIE_395003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_395003", action = "action_EVENT_ANY_MONSTER_DIE_395003" },
	{ config_id = 1395008, name = "MONSTER_BATTLE_395008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_395008", action = "action_EVENT_MONSTER_BATTLE_395008" }
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
		monsters = { 395007 },
		gadgets = { 395002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_395003", "MONSTER_BATTLE_395008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_395003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_395003(context, evt)
	-- 将configid为 395002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_395008(context, evt)
	if 395007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_395008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 395004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 395005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 395006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end