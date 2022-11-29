-- 基础信息
local base_info = {
	group_id = 133301330
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 330001, monster_id = 21010501, pos = { x = -552.996, y = 164.938, z = 3891.354 }, rot = { x = 0.000, y = 280.578, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 25 },
	{ config_id = 330004, monster_id = 21011001, pos = { x = -547.538, y = 165.362, z = 3898.233 }, rot = { x = 0.000, y = 287.803, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 25 },
	{ config_id = 330005, monster_id = 21010901, pos = { x = -552.057, y = 164.705, z = 3887.387 }, rot = { x = 0.000, y = 253.926, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 25 },
	{ config_id = 330006, monster_id = 21010401, pos = { x = -552.306, y = 164.625, z = 3896.070 }, rot = { x = 0.000, y = 289.909, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 330002, gadget_id = 70211151, pos = { x = -563.645, y = 163.127, z = 3896.472 }, rot = { x = 339.897, y = 111.330, z = 355.852 }, level = 26, chest_drop_id = 21910053, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 25 },
	{ config_id = 330007, gadget_id = 70300088, pos = { x = -558.483, y = 164.656, z = 3898.278 }, rot = { x = 1.261, y = 16.984, z = 359.611 }, level = 33, area_id = 25 },
	{ config_id = 330008, gadget_id = 70300088, pos = { x = -560.093, y = 163.901, z = 3892.439 }, rot = { x = 352.734, y = 359.186, z = 12.774 }, level = 33, area_id = 25 },
	{ config_id = 330009, gadget_id = 70300088, pos = { x = -558.264, y = 163.413, z = 3886.801 }, rot = { x = 0.000, y = 346.419, z = 0.000 }, level = 33, area_id = 25 },
	{ config_id = 330010, gadget_id = 70300088, pos = { x = -553.550, y = 164.954, z = 3902.341 }, rot = { x = 0.835, y = 35.637, z = 359.171 }, level = 33, area_id = 25 },
	{ config_id = 330011, gadget_id = 70300086, pos = { x = -545.815, y = 164.681, z = 3906.882 }, rot = { x = 354.479, y = 352.459, z = 347.857 }, level = 33, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1330003, name = "ANY_MONSTER_DIE_330003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_330003", action = "action_EVENT_ANY_MONSTER_DIE_330003" },
	{ config_id = 1330012, name = "QUEST_FINISH_330012", event = EventType.EVENT_QUEST_FINISH, source = "7303510", condition = "", action = "action_EVENT_QUEST_FINISH_330012", trigger_count = 0 }
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
	suite = 2,
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
		monsters = { 330001, 330004, 330005, 330006 },
		gadgets = { 330002, 330007, 330008, 330009, 330010, 330011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_330003", "QUEST_FINISH_330012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_330012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_330003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_330003(context, evt)
	-- 将configid为 330002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 330002, GadgetState.Default) then
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

-- 触发操作
function action_EVENT_QUEST_FINISH_330012(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301330, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"