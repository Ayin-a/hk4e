-- 基础信息
local base_info = {
	group_id = 244007003
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
	{ config_id = 3010, gadget_id = 70900205, pos = { x = -5.293, y = -7.791, z = 3.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3008, shape = RegionShape.SPHERE, radius = 30, pos = { x = -0.063, y = -0.082, z = 0.157 } },
	-- 额外多刷小怪
	{ config_id = 3012, shape = RegionShape.SPHERE, radius = 30, pos = { x = 0.265, y = -0.083, z = -0.287 } }
}

-- 触发器
triggers = {
	{ config_id = 1003008, name = "ENTER_REGION_3008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3008", action = "action_EVENT_ENTER_REGION_3008", forbid_guest = false },
	{ config_id = 1003009, name = "TIMER_EVENT_3009", event = EventType.EVENT_TIMER_EVENT, source = "T3", condition = "", action = "action_EVENT_TIMER_EVENT_3009" },
	-- 额外多刷小怪
	{ config_id = 1003012, name = "ENTER_REGION_3012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3012", action = "action_EVENT_ENTER_REGION_3012", forbid_guest = false }
}

-- 点位
points = {
	{ config_id = 3001, pos = { x = 10.103, y = -0.102, z = -2.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 3002, pos = { x = 10.669, y = -0.102, z = -0.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 3003, pos = { x = 13.503, y = -0.102, z = -3.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 3004, pos = { x = 13.332, y = -0.102, z = 1.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 3005, pos = { x = 17.370, y = -0.102, z = -3.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 3006, pos = { x = 18.035, y = -0.102, z = 0.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 3007, pos = { x = 13.971, y = -0.102, z = -6.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 3011, pos = { x = 11.954, y = -0.102, z = 6.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 }
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
		gadgets = { 3010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3010 },
		regions = { 3008, 3012 },
		triggers = { "ENTER_REGION_3008", "TIMER_EVENT_3009", "ENTER_REGION_3012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3008(context, evt)
	if evt.param1 ~= 3008 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 244007001) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3008(context, evt)
	
	--  在Group244007003从怪物潮池{13033}中随机创建一个TideIndex为3的怪物潮，创建怪物总数为4，场上怪物最少4只，最多4只, pointTag 为 4  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 3, 244007003, {13033},0,{},{}, {total_count = 4, min_count = 4, max_count = 4, tag = 4, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	-- 延迟30秒后,向groupId为：244007003的对象,请求一次调用,并将string参数："T3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 244007003, "T3", 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3009(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244007003, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244007004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3012(context, evt)
	if evt.param1 ~= 3012 then return false end
	
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
function action_EVENT_ENTER_REGION_3012(context, evt)
	
	--  在Group244007003从怪物潮池{13040}中随机创建一个TideIndex为31的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只, pointTag 为 8  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 31, 244007003, {13040},0,{},{}, {total_count = 1, min_count = 1, max_count = 1, tag = 8, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	return 0
end