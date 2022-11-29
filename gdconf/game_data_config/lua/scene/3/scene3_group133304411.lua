-- 基础信息
local base_info = {
	group_id = 133304411
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 411001, monster_id = 22010301, pos = { x = -1839.060, y = 314.740, z = 2297.005 }, rot = { x = 0.000, y = 316.478, z = 0.000 }, level = 30, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 21 },
	{ config_id = 411005, monster_id = 21010201, pos = { x = -1841.693, y = 313.889, z = 2300.263 }, rot = { x = 0.000, y = 316.688, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 21 },
	{ config_id = 411007, monster_id = 21010701, pos = { x = -1815.053, y = 318.036, z = 2315.783 }, rot = { x = 0.000, y = 316.688, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 21 },
	{ config_id = 411008, monster_id = 22010401, pos = { x = -1812.420, y = 318.513, z = 2312.525 }, rot = { x = 0.000, y = 316.478, z = 0.000 }, level = 30, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 21 },
	{ config_id = 411009, monster_id = 22010201, pos = { x = -1821.118, y = 316.603, z = 2294.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "深渊法师", area_id = 21 },
	{ config_id = 411010, monster_id = 21020201, pos = { x = -1822.729, y = 315.978, z = 2299.977 }, rot = { x = 0.000, y = 333.366, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 411002, gadget_id = 70211012, pos = { x = -1807.188, y = 320.551, z = 2322.478 }, rot = { x = 5.020, y = 206.849, z = 342.336 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 411004, gadget_id = 70300107, pos = { x = -1840.335, y = 314.351, z = 2298.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 411006, gadget_id = 70300107, pos = { x = -1813.696, y = 318.307, z = 2314.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 刷出suite2怪物
	{ config_id = 1411003, name = "ANY_MONSTER_DIE_411003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_411003", action = "action_EVENT_ANY_MONSTER_DIE_411003" },
	{ config_id = 1411011, name = "ANY_MONSTER_DIE_411011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_411011", action = "action_EVENT_ANY_MONSTER_DIE_411011", trigger_count = 0 },
	{ config_id = 1411012, name = "ANY_MONSTER_DIE_411012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_411012", action = "action_EVENT_ANY_MONSTER_DIE_411012", trigger_count = 0 },
	{ config_id = 1411013, name = "ANY_MONSTER_DIE_411013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_411013", action = "action_EVENT_ANY_MONSTER_DIE_411013", trigger_count = 0 }
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
		monsters = { 411001, 411005, 411007, 411008 },
		gadgets = { 411002, 411004, 411006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_411003", "ANY_MONSTER_DIE_411012", "ANY_MONSTER_DIE_411013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 411009, 411010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_411011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_411003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_411003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304411, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_411011(context, evt)
	if 411009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_411011(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133304411, monsters = {411010}, gadgets = {} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 将configid为 411002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411002, GadgetState.Default) then
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
function condition_EVENT_ANY_MONSTER_DIE_411012(context, evt)
	--判断死亡怪物的configid是否为 411008
	if evt.param1 ~= 411008 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_411012(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133304411, monsters = {411007}, gadgets = {} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_411013(context, evt)
	--判断死亡怪物的configid是否为 411001
	if evt.param1 ~= 411001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_411013(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133304411, monsters = {411005}, gadgets = {} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end