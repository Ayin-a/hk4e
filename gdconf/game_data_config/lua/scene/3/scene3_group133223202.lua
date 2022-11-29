-- 基础信息
local base_info = {
	group_id = 133223202
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 202001, monster_id = 21010301, pos = { x = -6079.023, y = 221.912, z = -2952.519 }, rot = { x = 0.000, y = 304.454, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9003, climate_area_id = 7, area_id = 18 },
	{ config_id = 202004, monster_id = 21020201, pos = { x = -6080.754, y = 221.670, z = -2949.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", climate_area_id = 7, area_id = 18 },
	{ config_id = 202007, monster_id = 21010301, pos = { x = -6082.573, y = 221.661, z = -2953.543 }, rot = { x = 0.000, y = 23.219, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9003, climate_area_id = 7, area_id = 18 },
	{ config_id = 202008, monster_id = 21030601, pos = { x = -6081.468, y = 223.294, z = -2955.511 }, rot = { x = 0.000, y = 339.088, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", climate_area_id = 7, area_id = 18 },
	{ config_id = 202012, monster_id = 21011001, pos = { x = -6089.243, y = 220.335, z = -2956.009 }, rot = { x = 0.000, y = 22.337, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 202002, gadget_id = 70211002, pos = { x = -6085.144, y = 221.207, z = -2954.283 }, rot = { x = 0.000, y = 4.731, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 202006, gadget_id = 70310004, pos = { x = -6080.704, y = 221.776, z = -2951.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 202009, gadget_id = 70220013, pos = { x = -6079.122, y = 222.003, z = -2955.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 202010, gadget_id = 70220013, pos = { x = -6081.381, y = 221.675, z = -2955.548 }, rot = { x = 0.000, y = 39.213, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 202011, gadget_id = 70220014, pos = { x = -6080.549, y = 221.698, z = -2954.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1202003, name = "ANY_MONSTER_DIE_202003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_202003", action = "action_EVENT_ANY_MONSTER_DIE_202003" },
	{ config_id = 1202005, name = "MONSTER_BATTLE_202005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_202005", action = "action_EVENT_MONSTER_BATTLE_202005" }
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
		monsters = { 202001, 202004, 202007 },
		gadgets = { 202002, 202006, 202009, 202010, 202011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_202003", "MONSTER_BATTLE_202005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 202008, 202012 },
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
function condition_EVENT_ANY_MONSTER_DIE_202003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_202003(context, evt)
	-- 将configid为 202002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 202002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_202005(context, evt)
	if 202001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_202005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223202, 2)
	
	return 0
end