-- 基础信息
local base_info = {
	group_id = 201015003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21011001, pos = { x = -82.148, y = 29.968, z = 147.409 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 3002, monster_id = 21010501, pos = { x = -85.405, y = 29.999, z = 148.787 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 3003, monster_id = 21010501, pos = { x = -86.841, y = 29.910, z = 150.537 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 3005, monster_id = 21011001, pos = { x = -80.146, y = 29.999, z = 149.615 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3006, gadget_id = 70350002, pos = { x = -82.919, y = 30.032, z = 160.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003007, name = "ANY_MONSTER_DIE_3007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3007", action = "action_EVENT_ANY_MONSTER_DIE_3007" },
	{ config_id = 1003008, name = "TIMER_EVENT_3008", event = EventType.EVENT_TIMER_EVENT, source = "Delay", condition = "", action = "action_EVENT_TIMER_EVENT_3008" }
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
		monsters = { 3001, 3002, 3003, 3005 },
		gadgets = { 3006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3007", "TIMER_EVENT_3008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201015003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3007(context, evt)
	-- 延迟3秒后,向groupId为：201015003的对象,请求一次调用,并将string参数："Delay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201015003, "Delay", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201015001, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3008(context, evt)
	-- 将configid为 3006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end