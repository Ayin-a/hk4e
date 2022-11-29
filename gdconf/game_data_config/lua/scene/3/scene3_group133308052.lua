-- 基础信息
local base_info = {
	group_id = 133308052
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 52001, monster_id = 23010201, pos = { x = -2668.799, y = 277.516, z = 4018.418 }, rot = { x = 0.000, y = 311.708, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, isOneoff = true, pose_id = 9011, area_id = 26 },
	{ config_id = 52002, monster_id = 23010401, pos = { x = -2656.053, y = 277.776, z = 4017.458 }, rot = { x = 0.000, y = 322.012, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, isOneoff = true, area_id = 26 },
	{ config_id = 52003, monster_id = 23020101, pos = { x = -2673.126, y = 278.275, z = 4010.120 }, rot = { x = 0.000, y = 345.355, z = 0.000 }, level = 32, drop_tag = "债务处理人", disableWander = true, isOneoff = true, area_id = 26 },
	{ config_id = 52014, monster_id = 23030101, pos = { x = -2662.031, y = 278.694, z = 4005.830 }, rot = { x = 0.000, y = 19.621, z = 0.000 }, level = 32, drop_tag = "召唤师", isOneoff = true, area_id = 26 },
	{ config_id = 52015, monster_id = 23010601, pos = { x = -2647.488, y = 280.003, z = 4003.937 }, rot = { x = 0.000, y = 347.598, z = 0.000 }, level = 32, drop_tag = "先遣队", isOneoff = true, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 52004, gadget_id = 70211022, pos = { x = -2662.582, y = 277.716, z = 4013.439 }, rot = { x = 0.279, y = 2.950, z = 2.383 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 52005, gadget_id = 70310009, pos = { x = -2670.591, y = 277.575, z = 4020.048 }, rot = { x = 1.761, y = 123.087, z = 1.297 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 52008, gadget_id = 70220048, pos = { x = -2670.954, y = 278.924, z = 4003.867 }, rot = { x = 0.337, y = 312.019, z = 348.356 }, level = 32, area_id = 26 },
	{ config_id = 52009, gadget_id = 70210101, pos = { x = -2676.494, y = 278.487, z = 4020.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 26 },
	{ config_id = 52010, gadget_id = 70220052, pos = { x = -2677.266, y = 277.872, z = 4013.450 }, rot = { x = 11.655, y = 297.423, z = 351.232 }, level = 32, area_id = 26 },
	{ config_id = 52011, gadget_id = 70330397, pos = { x = -2651.311, y = 279.041, z = 4021.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 52012, gadget_id = 70330397, pos = { x = -2673.205, y = 277.507, z = 4025.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 52013, gadget_id = 70220051, pos = { x = -2671.214, y = 278.585, z = 4005.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 52016, gadget_id = 70220048, pos = { x = -2649.602, y = 278.330, z = 4012.510 }, rot = { x = 0.000, y = 342.904, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 52017, gadget_id = 70220052, pos = { x = -2647.188, y = 279.021, z = 4014.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 52018, gadget_id = 70220050, pos = { x = -2649.212, y = 278.382, z = 4013.910 }, rot = { x = 0.000, y = 235.797, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 52020, gadget_id = 70210101, pos = { x = -2656.494, y = 279.181, z = 4002.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1052006, name = "ANY_MONSTER_DIE_52006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_52006", action = "action_EVENT_ANY_MONSTER_DIE_52006" },
	{ config_id = 1052007, name = "MONSTER_BATTLE_52007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_52007", action = "action_EVENT_MONSTER_BATTLE_52007" },
	{ config_id = 1052019, name = "ANY_MONSTER_DIE_52019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_52019", action = "action_EVENT_ANY_MONSTER_DIE_52019" },
	{ config_id = 1052021, name = "GROUP_LOAD_52021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_52021", action = "action_EVENT_GROUP_LOAD_52021", trigger_count = 0 }
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
		monsters = { 52001, 52002 },
		gadgets = { 52004, 52005, 52008, 52009, 52010, 52011, 52012, 52013, 52016, 52017, 52018, 52020 },
		regions = { },
		triggers = { "MONSTER_BATTLE_52007", "ANY_MONSTER_DIE_52019", "GROUP_LOAD_52021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 52003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 52014, 52015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_52006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_52006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_52006(context, evt)
	-- 将configid为 52004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52004, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_52007(context, evt)
	if 52001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_52007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308052, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_52019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_52019(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308052, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_52021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_52021(context, evt)
	-- 将configid为 52004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end