-- 基础信息
local base_info = {
	group_id = 133002385
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 385001, monster_id = 21020201, pos = { x = 1944.349, y = 229.835, z = -373.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 3 },
	{ config_id = 385002, monster_id = 21010401, pos = { x = 1949.175, y = 233.790, z = -365.437 }, rot = { x = 0.000, y = 305.260, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 385003, monster_id = 21010401, pos = { x = 1932.490, y = 231.984, z = -380.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 385004, monster_id = 21010201, pos = { x = 1950.625, y = 230.203, z = -380.196 }, rot = { x = 1.314, y = 316.834, z = 358.768 }, level = 10, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 385005, monster_id = 21010201, pos = { x = 1949.180, y = 230.509, z = -377.098 }, rot = { x = 0.000, y = 205.116, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 385006, monster_id = 21010201, pos = { x = 1948.152, y = 229.858, z = -380.059 }, rot = { x = 0.000, y = 51.896, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 385007, gadget_id = 70300083, pos = { x = 1938.521, y = 228.521, z = -374.526 }, rot = { x = 0.036, y = 359.000, z = 359.898 }, level = 10, area_id = 3 },
	{ config_id = 385008, gadget_id = 70300083, pos = { x = 1948.045, y = 229.447, z = -389.302 }, rot = { x = 0.000, y = 340.995, z = 0.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1385009, name = "ANY_GADGET_DIE_385009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_385009", action = "action_EVENT_ANY_GADGET_DIE_385009" },
	{ config_id = 1385024, name = "ANY_MONSTER_DIE_385024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_385024", action = "action_EVENT_ANY_MONSTER_DIE_385024" }
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
		monsters = { 385001, 385002, 385003, 385004, 385005, 385006 },
		gadgets = { 385007, 385008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_385009", "ANY_MONSTER_DIE_385024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_385009(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133002385}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_385009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "38102") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_385024(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_385024(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "38101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end