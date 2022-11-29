-- 基础信息
local base_info = {
	group_id = 220028020
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 46, monster_id = 22010201, pos = { x = 133.427, y = -92.292, z = -210.855 }, rot = { x = 0.000, y = 324.406, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 47, monster_id = 22010301, pos = { x = 134.073, y = -92.292, z = -189.064 }, rot = { x = 0.000, y = 248.916, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000048, name = "MONSTER_BATTLE_48", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_48", action = "action_EVENT_MONSTER_BATTLE_48" },
	{ config_id = 1000049, name = "ANY_MONSTER_DIE_49", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49", action = "action_EVENT_ANY_MONSTER_DIE_49" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = false }
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
		monsters = { 46, 47 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_48", "ANY_MONSTER_DIE_49" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_48(context, evt)
	if 46 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_48(context, evt)
	-- 延迟1秒后,向groupId为：220028019的对象,请求一次调用,并将string参数："First" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220028019, "First", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220028020) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 改变指定group组220028010中， configid为107的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220028010, 107, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220028010, 107, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end