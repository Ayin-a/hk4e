-- 基础信息
local base_info = {
	group_id = 133225021
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 21001, monster_id = 21010301, pos = { x = -6205.619, y = 225.882, z = -2569.593 }, rot = { x = 0.000, y = 59.642, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 21005, monster_id = 21010301, pos = { x = -6192.155, y = 224.633, z = -2568.385 }, rot = { x = 0.653, y = 289.247, z = 0.471 }, level = 33, drop_tag = "丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 21007, monster_id = 22010101, pos = { x = -6198.441, y = 225.447, z = -2575.859 }, rot = { x = 0.000, y = 355.985, z = 0.000 }, level = 33, drop_tag = "深渊法师", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 21002, gadget_id = 70211002, pos = { x = -6198.819, y = 225.238, z = -2573.314 }, rot = { x = 6.757, y = 348.955, z = 357.262 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 21008, gadget_id = 70220013, pos = { x = -6191.648, y = 224.826, z = -2573.783 }, rot = { x = 0.000, y = 10.890, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 21009, gadget_id = 70220013, pos = { x = -6190.886, y = 224.785, z = -2571.432 }, rot = { x = 0.000, y = 339.335, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 21010, gadget_id = 70310004, pos = { x = -6199.409, y = 224.988, z = -2570.906 }, rot = { x = 12.402, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 21011, gadget_id = 70300086, pos = { x = -6192.434, y = 223.195, z = -2566.370 }, rot = { x = 7.721, y = 356.834, z = 337.624 }, level = 33, area_id = 18 },
	{ config_id = 21012, gadget_id = 70300086, pos = { x = -6202.686, y = 224.783, z = -2573.109 }, rot = { x = 341.279, y = 8.838, z = 26.496 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1021004, name = "ANY_MONSTER_DIE_21004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_21004", action = "action_EVENT_ANY_MONSTER_DIE_21004" },
	{ config_id = 1021006, name = "MONSTER_BATTLE_21006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_21006", action = "action_EVENT_MONSTER_BATTLE_21006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 21003, gadget_id = 70310006, pos = { x = -6195.299, y = 224.434, z = -2567.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
	}
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
		monsters = { 21001, 21005 },
		gadgets = { 21002, 21008, 21009, 21010, 21011, 21012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_21004", "MONSTER_BATTLE_21006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 21007 },
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
function condition_EVENT_ANY_MONSTER_DIE_21004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_21004(context, evt)
	-- 将configid为 21002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_21006(context, evt)
	if 21001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_21006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225021, 2)
	
	return 0
end