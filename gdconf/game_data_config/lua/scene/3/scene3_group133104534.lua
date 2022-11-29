-- 基础信息
local base_info = {
	group_id = 133104534
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 534001, monster_id = 25030201, pos = { x = 317.792, y = 223.685, z = 801.599 }, rot = { x = 0.000, y = 319.133, z = 0.000 }, level = 19, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 6 },
	{ config_id = 534004, monster_id = 25010501, pos = { x = 315.605, y = 223.205, z = 804.117 }, rot = { x = 0.000, y = 149.501, z = 0.000 }, level = 19, drop_tag = "盗宝团", disableWander = true, area_id = 6 },
	{ config_id = 534005, monster_id = 25010601, pos = { x = 313.356, y = 223.321, z = 803.410 }, rot = { x = 0.000, y = 82.621, z = 0.000 }, level = 19, drop_tag = "盗宝团", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 534002, gadget_id = 70211012, pos = { x = 315.864, y = 223.641, z = 801.313 }, rot = { x = 11.449, y = 0.360, z = 3.586 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 534006, gadget_id = 70310001, pos = { x = 316.971, y = 223.337, z = 803.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1534003, name = "ANY_MONSTER_DIE_534003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_534003", action = "action_EVENT_ANY_MONSTER_DIE_534003" },
	{ config_id = 1534007, name = "MONSTER_BATTLE_534007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_534007", action = "action_EVENT_MONSTER_BATTLE_534007" }
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
		monsters = { 534001 },
		gadgets = { 534002, 534006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_534003", "MONSTER_BATTLE_534007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 534004, 534005 },
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
function condition_EVENT_ANY_MONSTER_DIE_534003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_534003(context, evt)
	-- 将configid为 534002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 534002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_534007(context, evt)
	if 534001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_534007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104534, 2)
	
	return 0
end