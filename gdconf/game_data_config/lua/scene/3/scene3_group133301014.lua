-- 基础信息
local base_info = {
	group_id = 133301014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14001, monster_id = 25310301, pos = { x = -278.178, y = 223.173, z = 3810.368 }, rot = { x = 0.000, y = 57.373, z = 0.000 }, level = 27, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 22 },
	{ config_id = 14004, monster_id = 25310201, pos = { x = -274.085, y = 223.200, z = 3810.847 }, rot = { x = 0.000, y = 343.163, z = 0.000 }, level = 27, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9002, area_id = 22 },
	{ config_id = 14006, monster_id = 25210202, pos = { x = -264.438, y = 223.951, z = 3811.376 }, rot = { x = 0.000, y = 286.248, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14002, gadget_id = 70211002, pos = { x = -266.244, y = 223.096, z = 3813.546 }, rot = { x = 14.632, y = 297.431, z = 349.695 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 14008, gadget_id = 70220048, pos = { x = -295.821, y = 228.200, z = 3833.221 }, rot = { x = 4.302, y = 33.773, z = 3.787 }, level = 27, area_id = 22 },
	{ config_id = 14009, gadget_id = 70310006, pos = { x = -275.453, y = 223.238, z = 3809.466 }, rot = { x = 1.178, y = 106.245, z = 2.864 }, level = 27, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 14010, gadget_id = 70300092, pos = { x = -280.602, y = 223.063, z = 3809.453 }, rot = { x = 358.597, y = 75.054, z = 3.322 }, level = 27, area_id = 22 },
	{ config_id = 14011, gadget_id = 70220050, pos = { x = -271.044, y = 222.677, z = 3812.167 }, rot = { x = 0.000, y = 307.016, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 14013, gadget_id = 70210101, pos = { x = -270.991, y = 222.789, z = 3812.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", area_id = 22 },
	{ config_id = 14014, gadget_id = 70210101, pos = { x = -271.121, y = 222.550, z = 3812.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014003, name = "ANY_MONSTER_DIE_14003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14003", action = "action_EVENT_ANY_MONSTER_DIE_14003" }
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
		monsters = { 14001, 14004, 14006 },
		gadgets = { 14002, 14008, 14009, 14010, 14011, 14013, 14014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14003(context, evt)
	-- 将configid为 14002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14002, GadgetState.Default) then
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