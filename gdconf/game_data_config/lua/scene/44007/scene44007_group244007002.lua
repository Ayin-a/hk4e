-- 基础信息
local base_info = {
	group_id = 244007002
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
	{ config_id = 2010, gadget_id = 70900205, pos = { x = 0.436, y = -5.894, z = -5.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2008, shape = RegionShape.SPHERE, radius = 30, pos = { x = 0.265, y = -0.083, z = -0.287 } },
	-- 额外多刷小怪
	{ config_id = 2012, shape = RegionShape.SPHERE, radius = 30, pos = { x = 0.265, y = -0.083, z = -0.287 } }
}

-- 触发器
triggers = {
	{ config_id = 1002008, name = "ENTER_REGION_2008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2008", action = "action_EVENT_ENTER_REGION_2008", forbid_guest = false },
	{ config_id = 1002009, name = "TIMER_EVENT_2009", event = EventType.EVENT_TIMER_EVENT, source = "T2", condition = "", action = "action_EVENT_TIMER_EVENT_2009" },
	-- 额外多刷小怪
	{ config_id = 1002012, name = "ENTER_REGION_2012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2012", action = "action_EVENT_ENTER_REGION_2012", forbid_guest = false }
}

-- 点位
points = {
	{ config_id = 2001, pos = { x = 3.051, y = -0.102, z = -10.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 2002, pos = { x = -0.600, y = -0.102, z = -11.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 2003, pos = { x = 0.160, y = -0.102, z = -14.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 2004, pos = { x = 4.124, y = -0.102, z = -13.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 2005, pos = { x = -4.472, y = -0.102, z = -13.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 2006, pos = { x = -4.858, y = -0.102, z = -10.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 2007, pos = { x = 0.525, y = -0.102, z = -7.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 2011, pos = { x = -7.804, y = -0.102, z = -7.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 }
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
		gadgets = { 2010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2010 },
		regions = { 2008, 2012 },
		triggers = { "ENTER_REGION_2008", "TIMER_EVENT_2009", "ENTER_REGION_2012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_2008(context, evt)
	if evt.param1 ~= 2008 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 244007001) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2008(context, evt)
	
	--  在Group244007002从怪物潮池{13032}中随机创建一个TideIndex为2的怪物潮，创建怪物总数为4，场上怪物最少4只，最多4只, pointTag 为 4  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 2, 244007002, {13032},0,{},{}, {total_count = 4, min_count = 4, max_count = 4, tag = 4, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	-- 延迟30秒后,向groupId为：244007002的对象,请求一次调用,并将string参数："T2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 244007002, "T2", 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2009(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244007002, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244007003, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2012(context, evt)
	if evt.param1 ~= 2012 then return false end
	
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
function action_EVENT_ENTER_REGION_2012(context, evt)
	
	--  在Group244007002从怪物潮池{13040}中随机创建一个TideIndex为21的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只, pointTag 为 8  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 21, 244007002, {13040},0,{},{}, {total_count = 1, min_count = 1, max_count = 1, tag = 8, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	return 0
end