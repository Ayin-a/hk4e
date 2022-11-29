-- 基础信息
local base_info = {
	group_id = 166001469
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 469001, monster_id = 21011201, pos = { x = 215.656, y = 302.302, z = 434.801 }, rot = { x = 0.000, y = 148.126, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9002, area_id = 300 },
	{ config_id = 469002, monster_id = 21011201, pos = { x = 212.419, y = 301.473, z = 428.167 }, rot = { x = 0.000, y = 53.361, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9003, area_id = 300 },
	{ config_id = 469003, monster_id = 21011201, pos = { x = 215.491, y = 301.604, z = 429.643 }, rot = { x = 0.000, y = 250.219, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 300 },
	{ config_id = 469005, monster_id = 21010201, pos = { x = 219.155, y = 302.156, z = 433.521 }, rot = { x = 0.000, y = 25.203, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9016, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 469004, gadget_id = 70211002, pos = { x = 214.604, y = 302.457, z = 436.553 }, rot = { x = 3.501, y = 149.922, z = 351.833 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1469006, name = "ANY_MONSTER_DIE_469006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_469006", action = "action_EVENT_ANY_MONSTER_DIE_469006" },
	{ config_id = 1469007, name = "MONSTER_BATTLE_469007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_469007" }
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
		-- description = suite_1,
		monsters = { 469001 },
		gadgets = { 469004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_469006", "MONSTER_BATTLE_469007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 469002, 469003, 469005 },
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
function condition_EVENT_ANY_MONSTER_DIE_469006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_469006(context, evt)
	-- 将configid为 469004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 469004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_469007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001469, 2)
	
	return 0
end