-- 基础信息
local base_info = {
	group_id = 133315094
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 94001, monster_id = 26090901, pos = { x = 33.624, y = 102.039, z = 2969.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 20 },
	{ config_id = 94004, monster_id = 26120101, pos = { x = 39.472, y = 103.016, z = 2965.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大蕈兽", affix = { 1007, 1009 }, pose_id = 201, area_id = 20 },
	{ config_id = 94005, monster_id = 26090901, pos = { x = 45.897, y = 102.105, z = 2970.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 20 },
	{ config_id = 94006, monster_id = 26090901, pos = { x = 43.627, y = 101.844, z = 2957.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 20 },
	{ config_id = 94007, monster_id = 26090901, pos = { x = 31.478, y = 101.597, z = 2960.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 94008, gadget_id = 70211151, pos = { x = 38.794, y = 101.819, z = 2973.080 }, rot = { x = 0.000, y = 172.530, z = 0.000 }, level = 26, chest_drop_id = 21910079, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1094003, name = "ANY_MONSTER_DIE_94003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_94003", action = "action_EVENT_ANY_MONSTER_DIE_94003" }
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
		monsters = { 94001, 94004, 94005, 94006, 94007 },
		gadgets = { 94008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_94003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_94003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_94003(context, evt)
	-- 将configid为 94008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "battle2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "battle2", 1, 133315331) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end