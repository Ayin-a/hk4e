-- 基础信息
local base_info = {
	group_id = 133310118
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 118001, monster_id = 25210303, pos = { x = -2979.874, y = 314.501, z = 4630.005 }, rot = { x = 0.000, y = 349.194, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 28 },
	{ config_id = 118005, monster_id = 25210401, pos = { x = -3002.335, y = 318.025, z = 4634.071 }, rot = { x = 0.000, y = 73.672, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 28 },
	{ config_id = 118006, monster_id = 25210202, pos = { x = -2981.946, y = 317.981, z = 4611.534 }, rot = { x = 0.000, y = 90.748, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 28 },
	{ config_id = 118009, monster_id = 25310201, pos = { x = -2997.117, y = 320.155, z = 4613.322 }, rot = { x = 0.000, y = 97.008, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9002, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 118002, gadget_id = 70211012, pos = { x = -2993.315, y = 320.723, z = 4605.180 }, rot = { x = 0.009, y = 32.506, z = 0.001 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 118004, gadget_id = 70210101, pos = { x = -2996.791, y = 320.693, z = 4616.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 28 },
	{ config_id = 118007, gadget_id = 70210101, pos = { x = -2998.237, y = 320.729, z = 4617.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 28 },
	{ config_id = 118008, gadget_id = 70330429, pos = { x = -2980.001, y = 317.783, z = 4610.140 }, rot = { x = 0.000, y = 306.128, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 118010, gadget_id = 70330428, pos = { x = -2981.024, y = 318.026, z = 4609.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 118011, gadget_id = 70210101, pos = { x = -2979.544, y = 314.367, z = 4633.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 28 },
	{ config_id = 118012, gadget_id = 70210101, pos = { x = -3003.500, y = 318.383, z = 4646.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 28 },
	{ config_id = 118013, gadget_id = 70310006, pos = { x = -2995.194, y = 319.873, z = 4609.380 }, rot = { x = 8.281, y = 60.618, z = 358.404 }, level = 32, area_id = 28 },
	{ config_id = 118014, gadget_id = 70900386, pos = { x = -2990.161, y = 321.865, z = 4603.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "书页章节1须弥", isOneoff = true, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1118003, name = "ANY_MONSTER_DIE_118003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_118003", action = "action_EVENT_ANY_MONSTER_DIE_118003" }
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
		monsters = { 118001, 118005, 118006, 118009 },
		gadgets = { 118002, 118004, 118007, 118008, 118010, 118011, 118012, 118013, 118014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_118003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_118003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_118003(context, evt)
	-- 将configid为 118002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 118002, GadgetState.Default) then
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