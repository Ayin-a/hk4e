-- 基础信息
local base_info = {
	group_id = 244007004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4010, gadget_id = 70900205, pos = { x = -2.003, y = -6.567, z = 4.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 4008, shape = RegionShape.SPHERE, radius = 30, pos = { x = 0.026, y = -0.083, z = -0.795 } },
	-- 额外多刷小怪
	{ config_id = 4012, shape = RegionShape.SPHERE, radius = 30, pos = { x = 0.265, y = -0.083, z = -0.287 } }
}

-- 触发器
triggers = {
	{ config_id = 1004008, name = "ENTER_REGION_4008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4008", action = "action_EVENT_ENTER_REGION_4008", forbid_guest = false },
	{ config_id = 1004009, name = "TIMER_EVENT_4009", event = EventType.EVENT_TIMER_EVENT, source = "T4", condition = "", action = "action_EVENT_TIMER_EVENT_4009" },
	-- 额外多刷小怪
	{ config_id = 1004012, name = "ENTER_REGION_4012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4012", action = "action_EVENT_ENTER_REGION_4012", forbid_guest = false }
}

-- 点位
points = {
	{ config_id = 4001, pos = { x = 0.966, y = -0.102, z = 10.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 4002, pos = { x = -2.978, y = -0.102, z = 9.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 4003, pos = { x = -7.710, y = -0.102, z = 9.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 4004, pos = { x = 0.864, y = -0.102, z = 14.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 4005, pos = { x = -2.135, y = -0.102, z = 13.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 4006, pos = { x = -7.103, y = -0.102, z = 12.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 4007, pos = { x = -4.358, y = -0.102, z = 15.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 4011, pos = { x = -11.917, y = -0.102, z = 8.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 }
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
		gadgets = { 4010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4010 },
		regions = { 4008, 4012 },
		triggers = { "ENTER_REGION_4008", "TIMER_EVENT_4009", "ENTER_REGION_4012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_4008(context, evt)
	if evt.param1 ~= 4008 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 244007001) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4008(context, evt)
	
	--  在Group244007004从怪物潮池{13034}中随机创建一个TideIndex为4的怪物潮，创建怪物总数为5，场上怪物最少5只，最多5只, pointTag 为 4  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 4, 244007004, {13034},0,{},{}, {total_count = 5, min_count = 5, max_count = 5, tag = 4, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	-- 延迟30秒后,向groupId为：244007004的对象,请求一次调用,并将string参数："T4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 244007004, "T4", 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244007005, 2)
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244007004, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4012(context, evt)
	if evt.param1 ~= 4012 then return false end
	
	-- 判断变量"EXTRA_MONSTER"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "EXTRA_MONSTER", 244007001) ~= 1 then
			return false
	end
	
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 244007001) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4012(context, evt)
	
	--  在Group244007004从怪物潮池{13040}中随机创建一个TideIndex为41的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只, pointTag 为 8  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 41, 244007004, {13040},0,{},{}, {total_count = 1, min_count = 1, max_count = 1, tag = 8, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	return 0
end