-- 基础信息
local base_info = {
	group_id = 244007005
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
	{ config_id = 5009, gadget_id = 70900205, pos = { x = 6.422, y = -5.010, z = 0.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5008, shape = RegionShape.SPHERE, radius = 30, pos = { x = -0.015, y = -0.102, z = -2.926 } },
	-- 额外多刷小怪
	{ config_id = 5011, shape = RegionShape.SPHERE, radius = 30, pos = { x = 0.265, y = -0.083, z = -0.287 } }
}

-- 触发器
triggers = {
	{ config_id = 1005008, name = "ENTER_REGION_5008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5008", action = "action_EVENT_ENTER_REGION_5008", forbid_guest = false },
	-- 额外多刷小怪
	{ config_id = 1005011, name = "ENTER_REGION_5011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5011", action = "action_EVENT_ENTER_REGION_5011", forbid_guest = false },
	{ config_id = 1005012, name = "TIMER_EVENT_5012", event = EventType.EVENT_TIMER_EVENT, source = "T5", condition = "", action = "action_EVENT_TIMER_EVENT_5012" }
}

-- 点位
points = {
	{ config_id = 5001, pos = { x = -8.170, y = -0.102, z = -4.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 5002, pos = { x = -7.313, y = -0.102, z = -1.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 5003, pos = { x = -8.053, y = -0.102, z = 1.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 5004, pos = { x = -12.662, y = -0.102, z = -4.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 5005, pos = { x = -12.211, y = -0.102, z = -0.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 5006, pos = { x = -12.775, y = -0.102, z = 2.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 5007, pos = { x = -16.973, y = -0.102, z = -1.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 5010, pos = { x = -5.115, y = -0.102, z = -8.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 }
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
		gadgets = { 5009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5009 },
		regions = { 5008, 5011 },
		triggers = { "ENTER_REGION_5008", "ENTER_REGION_5011", "TIMER_EVENT_5012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5008(context, evt)
	if evt.param1 ~= 5008 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 244007001) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5008(context, evt)
	
	--  在Group244007005从怪物潮池{13035}中随机创建一个TideIndex为5的怪物潮，创建怪物总数为5，场上怪物最少5只，最多5只, pointTag 为 4  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 5, 244007005, {13035},0,{},{}, {total_count = 5, min_count = 5, max_count = 5, tag = 4, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	-- 延迟30秒后,向groupId为：244007005的对象,请求一次调用,并将string参数："T5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 244007005, "T5", 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5011(context, evt)
	if evt.param1 ~= 5011 then return false end
	
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
function action_EVENT_ENTER_REGION_5011(context, evt)
	
	--  在Group244007005从怪物潮池{13040}中随机创建一个TideIndex为51的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只, pointTag 为 8  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 51, 244007005, {13040},0,{},{}, {total_count = 1, min_count = 1, max_count = 1, tag = 8, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_5012(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244007005, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244007005, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end