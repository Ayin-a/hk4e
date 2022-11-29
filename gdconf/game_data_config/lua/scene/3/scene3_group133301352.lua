-- 基础信息
local base_info = {
	group_id = 133301352
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 352001, monster_id = 21010701, pos = { x = -703.282, y = 137.269, z = 4049.764 }, rot = { x = 0.000, y = 86.637, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, area_id = 25 },
	{ config_id = 352004, monster_id = 21020201, pos = { x = -691.283, y = 137.788, z = 4046.746 }, rot = { x = 0.000, y = 199.870, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 25 },
	{ config_id = 352010, monster_id = 21010701, pos = { x = -697.734, y = 138.613, z = 4052.794 }, rot = { x = 0.000, y = 185.156, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, area_id = 25 },
	{ config_id = 352011, monster_id = 21010701, pos = { x = -695.422, y = 137.343, z = 4033.901 }, rot = { x = 0.000, y = 37.610, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 352002, gadget_id = 70211002, pos = { x = -694.589, y = 137.724, z = 4048.113 }, rot = { x = 0.000, y = 163.743, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 25 },
	{ config_id = 352005, gadget_id = 70300086, pos = { x = -699.585, y = 138.648, z = 4055.388 }, rot = { x = 347.053, y = 67.575, z = 12.587 }, level = 33, area_id = 25 },
	{ config_id = 352006, gadget_id = 70300086, pos = { x = -700.895, y = 134.827, z = 4033.776 }, rot = { x = 344.107, y = 354.813, z = 21.987 }, level = 33, area_id = 25 },
	{ config_id = 352007, gadget_id = 70300086, pos = { x = -688.888, y = 137.098, z = 4039.495 }, rot = { x = 19.459, y = 92.081, z = 0.827 }, level = 33, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1352003, name = "ANY_MONSTER_DIE_352003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_352003", action = "action_EVENT_ANY_MONSTER_DIE_352003" },
	{ config_id = 1352012, name = "MONSTER_BATTLE_352012", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_352012", action = "action_EVENT_MONSTER_BATTLE_352012" },
	{ config_id = 1352013, name = "QUEST_FINISH_352013", event = EventType.EVENT_QUEST_FINISH, source = "7303510", condition = "", action = "action_EVENT_QUEST_FINISH_352013", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 352008, gadget_id = 70290009, pos = { x = -692.736, y = 137.711, z = 4044.328 }, rot = { x = 359.106, y = 359.979, z = 2.684 }, level = 33, area_id = 25 },
		{ config_id = 352009, gadget_id = 70500000, pos = { x = -692.736, y = 137.711, z = 4044.328 }, rot = { x = 359.106, y = 359.979, z = 2.684 }, level = 33, point_type = 3005, owner = 352008, area_id = 25 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
	end_suite = 1,
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
		monsters = { 352004 },
		gadgets = { 352002, 352005, 352006, 352007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_352003", "MONSTER_BATTLE_352012", "QUEST_FINISH_352013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 352001, 352010, 352011 },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_352013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_352013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_352003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_352003(context, evt)
	-- 将configid为 352002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 352002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_352012(context, evt)
	if 352004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_352012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301352, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_352013(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301352, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"