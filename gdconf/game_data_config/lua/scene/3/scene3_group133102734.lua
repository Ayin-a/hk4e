-- 基础信息
local base_info = {
	group_id = 133102734
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 734001, monster_id = 21020301, pos = { x = 1593.941, y = 318.198, z = 599.728 }, rot = { x = 0.000, y = 45.308, z = 0.000 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 5 },
	{ config_id = 734012, monster_id = 21020301, pos = { x = 1597.142, y = 318.580, z = 604.678 }, rot = { x = 0.000, y = 197.693, z = 0.000 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, area_id = 5 },
	{ config_id = 734013, monster_id = 21020301, pos = { x = 1599.659, y = 317.856, z = 600.820 }, rot = { x = 0.000, y = 296.448, z = 0.000 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 734002, gadget_id = 70211022, pos = { x = 1593.392, y = 319.193, z = 605.715 }, rot = { x = 7.161, y = 143.480, z = 0.178 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 734004, gadget_id = 70300086, pos = { x = 1597.990, y = 317.958, z = 608.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 734005, gadget_id = 70300086, pos = { x = 1589.827, y = 318.386, z = 601.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 734006, gadget_id = 70300086, pos = { x = 1598.646, y = 316.908, z = 597.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 734007, gadget_id = 70300089, pos = { x = 1601.434, y = 317.605, z = 604.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 734008, gadget_id = 70300089, pos = { x = 1590.227, y = 317.468, z = 596.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 734009, gadget_id = 70300089, pos = { x = 1600.897, y = 317.711, z = 609.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 734010, gadget_id = 70310001, pos = { x = 1591.027, y = 319.126, z = 604.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 734011, gadget_id = 70310001, pos = { x = 1595.159, y = 318.930, z = 607.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 734014, gadget_id = 70310006, pos = { x = 1595.854, y = 318.454, z = 602.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1734003, name = "ANY_MONSTER_DIE_734003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_734003", action = "action_EVENT_ANY_MONSTER_DIE_734003" }
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
		monsters = { 734001, 734012, 734013 },
		gadgets = { 734002, 734004, 734005, 734006, 734007, 734008, 734009, 734010, 734011, 734014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_734003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_734003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_734003(context, evt)
	-- 将configid为 734002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 734002, GadgetState.Default) then
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