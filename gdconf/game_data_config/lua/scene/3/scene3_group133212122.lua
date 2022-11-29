-- 基础信息
local base_info = {
	group_id = 133212122
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 122008, monster_id = 21010201, pos = { x = -3485.698, y = 200.573, z = -2088.324 }, rot = { x = 0.000, y = 244.791, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9016, area_id = 13 },
	{ config_id = 122009, monster_id = 21010701, pos = { x = -3475.607, y = 200.876, z = -2096.679 }, rot = { x = 0.000, y = 86.060, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9013, area_id = 13 },
	{ config_id = 122010, monster_id = 21010201, pos = { x = -3485.689, y = 200.894, z = -2091.587 }, rot = { x = 0.000, y = 281.207, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9016, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 122001, gadget_id = 70220014, pos = { x = -3459.498, y = 200.295, z = -2103.243 }, rot = { x = 316.510, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 122002, gadget_id = 70220014, pos = { x = -3479.872, y = 201.558, z = -2100.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 122004, gadget_id = 70220014, pos = { x = -3487.167, y = 200.568, z = -2090.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 122006, gadget_id = 70220013, pos = { x = -3488.900, y = 200.090, z = -2088.995 }, rot = { x = 324.540, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 122007, gadget_id = 70220013, pos = { x = -3473.202, y = 199.946, z = -2096.569 }, rot = { x = 341.870, y = 317.990, z = 314.310 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1122003, name = "ANY_MONSTER_DIE_122003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_122003", action = "action_EVENT_ANY_MONSTER_DIE_122003" },
	{ config_id = 1122005, name = "MONSTER_BATTLE_122005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_122005", action = "action_EVENT_MONSTER_BATTLE_122005" }
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
		monsters = { 122008, 122009, 122010 },
		gadgets = { 122001, 122002, 122004, 122006, 122007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_122003", "MONSTER_BATTLE_122005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_122003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_122003(context, evt)
	-- 将configid为 17002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_122005(context, evt)
	if 122001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_122005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212122, 2)
	
	return 0
end