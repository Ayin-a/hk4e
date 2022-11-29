-- 基础信息
local base_info = {
	group_id = 133106067
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 67001, monster_id = 21020201, pos = { x = -873.388, y = 155.437, z = 1290.307 }, rot = { x = 0.000, y = 322.564, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", disableWander = true, area_id = 8 },
	{ config_id = 67004, monster_id = 22010201, pos = { x = -877.546, y = 155.200, z = 1308.117 }, rot = { x = 0.000, y = 18.290, z = 0.000 }, level = 32, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 8 },
	{ config_id = 67005, monster_id = 21010901, pos = { x = -869.241, y = 158.858, z = 1295.917 }, rot = { x = 0.000, y = 322.564, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, area_id = 8 },
	{ config_id = 67006, monster_id = 21011201, pos = { x = -887.984, y = 155.320, z = 1285.781 }, rot = { x = 0.000, y = 219.302, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 8 },
	{ config_id = 67007, monster_id = 21011001, pos = { x = -867.614, y = 160.587, z = 1286.824 }, rot = { x = 0.000, y = 301.398, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, area_id = 8 },
	{ config_id = 67008, monster_id = 22010301, pos = { x = -862.413, y = 160.862, z = 1284.033 }, rot = { x = 0.000, y = 89.945, z = 0.000 }, level = 32, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 67002, gadget_id = 70211022, pos = { x = -870.945, y = 155.658, z = 1290.473 }, rot = { x = 0.000, y = 299.342, z = 0.000 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 67009, gadget_id = 70300087, pos = { x = -858.188, y = 160.573, z = 1284.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1067003, name = "ANY_MONSTER_DIE_67003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_67003", action = "action_EVENT_ANY_MONSTER_DIE_67003" },
	{ config_id = 1067010, name = "MONSTER_BATTLE_67010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_67010", action = "action_EVENT_MONSTER_BATTLE_67010" }
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
		monsters = { 67001, 67004, 67006, 67008 },
		gadgets = { 67002, 67009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_67003", "MONSTER_BATTLE_67010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 67005, 67007 },
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
function condition_EVENT_ANY_MONSTER_DIE_67003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_67003(context, evt)
	-- 将configid为 67002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 67002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_67010(context, evt)
	if 67001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_67010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106067, 2)
	
	return 0
end