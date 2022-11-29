-- 基础信息
local base_info = {
	group_id = 133301051
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 51001, monster_id = 21030201, pos = { x = -1012.559, y = 276.475, z = 3840.328 }, rot = { x = 0.000, y = 20.471, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 51005, monster_id = 21010101, pos = { x = -1013.454, y = 275.553, z = 3844.136 }, rot = { x = 0.000, y = 120.236, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 23 },
	{ config_id = 51006, monster_id = 21010101, pos = { x = -1009.259, y = 275.454, z = 3843.987 }, rot = { x = 0.000, y = 231.184, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 23 },
	{ config_id = 51007, monster_id = 21020201, pos = { x = -1000.602, y = 276.047, z = 3830.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 23 },
	{ config_id = 51014, monster_id = 21010501, pos = { x = -1005.350, y = 282.877, z = 3815.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 51002, gadget_id = 70211012, pos = { x = -994.952, y = 277.457, z = 3828.525 }, rot = { x = 0.000, y = 332.159, z = 358.262 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 51004, gadget_id = 70310006, pos = { x = -1011.495, y = 275.464, z = 3843.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 51008, gadget_id = 70300086, pos = { x = -992.121, y = 277.235, z = 3828.256 }, rot = { x = 9.164, y = 357.853, z = 352.983 }, level = 30, area_id = 23 },
	{ config_id = 51009, gadget_id = 70300086, pos = { x = -1015.222, y = 274.866, z = 3841.137 }, rot = { x = 358.259, y = 0.117, z = 14.600 }, level = 30, area_id = 23 },
	{ config_id = 51010, gadget_id = 70220014, pos = { x = -1014.428, y = 275.395, z = 3841.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 51011, gadget_id = 70220014, pos = { x = -1015.399, y = 275.335, z = 3841.796 }, rot = { x = 5.993, y = 1.815, z = 11.797 }, level = 30, area_id = 23 },
	{ config_id = 51012, gadget_id = 70310001, pos = { x = -1009.475, y = 275.532, z = 3839.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 51013, gadget_id = 70310001, pos = { x = -991.546, y = 277.674, z = 3830.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 }
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
		monsters = { 51001, 51005, 51006, 51007, 51014 },
		gadgets = { 51002, 51004, 51008, 51009, 51010, 51011, 51012, 51013 },
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