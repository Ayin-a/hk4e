-- 基础信息
local base_info = {
	group_id = 133303106
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 106001, monster_id = 21020501, pos = { x = -2017.460, y = 489.370, z = 3600.545 }, rot = { x = 0.000, y = 35.664, z = 0.000 }, level = 30, drop_tag = "丘丘岩盔王", disableWander = true, affix = { 1010, 1007 }, isElite = true, area_id = 23 },
	{ config_id = 106004, monster_id = 21020801, pos = { x = -2008.741, y = 488.674, z = 3608.674 }, rot = { x = 0.000, y = 215.924, z = 0.000 }, level = 30, drop_tag = "丘丘岩盔王", disableWander = true, affix = { 1010, 1007 }, isElite = true, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 106002, gadget_id = 70211032, pos = { x = -2024.017, y = 492.662, z = 3617.392 }, rot = { x = 0.000, y = 142.144, z = 0.000 }, level = 26, drop_tag = "战斗超级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 106005, gadget_id = 70310001, pos = { x = -2007.704, y = 487.102, z = 3592.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 106006, gadget_id = 70310001, pos = { x = -2002.414, y = 486.926, z = 3596.937 }, rot = { x = 0.000, y = 199.353, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 106007, gadget_id = 70900025, pos = { x = -2024.034, y = 489.096, z = 3617.568 }, rot = { x = 0.000, y = 233.554, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 106009, gadget_id = 70310001, pos = { x = -2025.552, y = 491.895, z = 3614.941 }, rot = { x = 0.000, y = 199.353, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 106010, gadget_id = 70310001, pos = { x = -2021.862, y = 491.713, z = 3619.481 }, rot = { x = 0.000, y = 199.353, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1106003, name = "ANY_MONSTER_DIE_106003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_106003", action = "action_EVENT_ANY_MONSTER_DIE_106003" },
	{ config_id = 1106008, name = "MONSTER_BATTLE_106008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_106008", action = "action_EVENT_MONSTER_BATTLE_106008" }
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
		monsters = { 106001, 106004 },
		gadgets = { 106002, 106005, 106006, 106007, 106009, 106010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_106003", "MONSTER_BATTLE_106008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_106003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_106003(context, evt)
	-- 将configid为 106002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 106002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_106008(context, evt)
	if 106001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_106008(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303117, 1)
	
	return 0
end