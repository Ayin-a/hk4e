-- 基础信息
local base_info = {
	group_id = 133106245
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 245001, monster_id = 22010301, pos = { x = -889.039, y = 171.911, z = 881.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 8 },
	{ config_id = 245004, monster_id = 21011001, pos = { x = -886.916, y = 171.496, z = 878.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 32, area_id = 8 },
	{ config_id = 245005, monster_id = 21011001, pos = { x = -892.503, y = 172.005, z = 879.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 32, area_id = 8 },
	{ config_id = 245006, monster_id = 21010901, pos = { x = -883.446, y = 171.281, z = 890.498 }, rot = { x = 0.000, y = 216.937, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 32, area_id = 8 },
	{ config_id = 245007, monster_id = 21010901, pos = { x = -891.184, y = 172.261, z = 888.706 }, rot = { x = 0.000, y = 151.777, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 32, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 245002, gadget_id = 70211022, pos = { x = -888.973, y = 171.922, z = 884.751 }, rot = { x = 2.444, y = 182.554, z = 7.889 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1245003, name = "ANY_MONSTER_DIE_245003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_245003", action = "action_EVENT_ANY_MONSTER_DIE_245003" },
	{ config_id = 1245008, name = "MONSTER_BATTLE_245008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_245008", action = "action_EVENT_MONSTER_BATTLE_245008" }
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
		monsters = { 245001 },
		gadgets = { 245002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_245003", "MONSTER_BATTLE_245008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 245004, 245005, 245006, 245007 },
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
function condition_EVENT_ANY_MONSTER_DIE_245003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_245003(context, evt)
	-- 将configid为 245002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_245008(context, evt)
	if 245001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_245008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106245, 2)
	
	return 0
end