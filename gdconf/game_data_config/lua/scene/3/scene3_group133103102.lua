-- 基础信息
local base_info = {
	group_id = 133103102
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 102001, monster_id = 21011201, pos = { x = -278.207, y = 301.561, z = 1984.408 }, rot = { x = 0.000, y = 51.094, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 6 },
	{ config_id = 102004, monster_id = 25210401, pos = { x = -268.742, y = 299.317, z = 1993.742 }, rot = { x = 0.000, y = 223.874, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, area_id = 6 },
	{ config_id = 102005, monster_id = 25310101, pos = { x = -266.271, y = 299.111, z = 1993.122 }, rot = { x = 0.000, y = 227.865, z = 0.000 }, level = 27, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 1, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 102002, gadget_id = 70211002, pos = { x = -280.327, y = 301.489, z = 1982.508 }, rot = { x = 0.000, y = 44.905, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 102006, gadget_id = 70300089, pos = { x = -268.466, y = 299.956, z = 1988.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 102007, gadget_id = 70310001, pos = { x = -277.475, y = 301.251, z = 1989.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 102008, gadget_id = 70220013, pos = { x = -269.536, y = 301.118, z = 1979.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 102009, gadget_id = 70220014, pos = { x = -270.326, y = 301.147, z = 1980.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 102010, gadget_id = 70220014, pos = { x = -275.263, y = 301.369, z = 1979.526 }, rot = { x = 0.000, y = 276.207, z = 0.000 }, level = 27, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1102003, name = "ANY_MONSTER_DIE_102003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_102003", action = "action_EVENT_ANY_MONSTER_DIE_102003" }
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
		monsters = { 102001, 102004, 102005 },
		gadgets = { 102002, 102006, 102007, 102008, 102009, 102010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_102003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_102003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_102003(context, evt)
	-- 将configid为 102002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102002, GadgetState.Default) then
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