-- 基础信息
local base_info = {
	group_id = 133304077
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 77001, monster_id = 22010101, pos = { x = -1268.055, y = 180.332, z = 2958.866 }, rot = { x = 0.000, y = 41.938, z = 0.000 }, level = 30, drop_tag = "深渊法师", area_id = 21 },
	{ config_id = 77002, monster_id = 22010201, pos = { x = -1270.669, y = 180.689, z = 2962.619 }, rot = { x = 0.000, y = 59.779, z = 0.000 }, level = 30, drop_tag = "深渊法师", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 77003, gadget_id = 70360001, pos = { x = -1269.565, y = 180.322, z = 2964.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 77006, gadget_id = 70360001, pos = { x = -1263.459, y = 177.764, z = 2968.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 检测深渊法师死亡
	{ config_id = 1077004, name = "ANY_MONSTER_DIE_77004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_77004", action = "action_EVENT_ANY_MONSTER_DIE_77004", trigger_count = 0 },
	{ config_id = 1077005, name = "GROUP_LOAD_77005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_77005", action = "action_EVENT_GROUP_LOAD_77005", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 77006 },
		regions = { },
		triggers = { "GROUP_LOAD_77005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 77001, 77002 },
		gadgets = { 77003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_77004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_77004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133304077) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_77004(context, evt)
	-- 将configid为 77003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_77005(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7306210)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_77005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304077, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end