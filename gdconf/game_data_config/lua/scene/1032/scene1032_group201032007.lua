-- 基础信息
local base_info = {
	group_id = 201032007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 22010101, pos = { x = -74.093, y = 279.579, z = -190.496 }, rot = { x = 0.000, y = 39.640, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 } },
	{ config_id = 7002, monster_id = 20011101, pos = { x = -62.437, y = 279.579, z = -185.596 }, rot = { x = 0.000, y = 292.639, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 } },
	{ config_id = 7003, monster_id = 20011101, pos = { x = -71.238, y = 279.579, z = -177.732 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 } },
	{ config_id = 7004, monster_id = 21030301, pos = { x = -64.344, y = 279.565, z = -192.037 }, rot = { x = 0.000, y = 285.525, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 } },
	{ config_id = 7005, monster_id = 21030101, pos = { x = -78.737, y = 279.559, z = -180.342 }, rot = { x = 0.000, y = 114.861, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7006, gadget_id = 70211022, pos = { x = -72.072, y = 279.579, z = -187.875 }, rot = { x = 0.000, y = 38.901, z = 0.000 }, level = 11, drop_tag = "战斗高级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007007, name = "ANY_MONSTER_DIE_7007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7007", action = "action_EVENT_ANY_MONSTER_DIE_7007" },
	{ config_id = 1007008, name = "QUEST_FINISH_7008", event = EventType.EVENT_QUEST_FINISH, source = "1110205", condition = "", action = "action_EVENT_QUEST_FINISH_7008" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7001, 7002, 7003, 7004, 7005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7007", "QUEST_FINISH_7008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 7006 },
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
function condition_EVENT_ANY_MONSTER_DIE_7007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1110206") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 7006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_7008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201032007, 3)
	
	return 0
end