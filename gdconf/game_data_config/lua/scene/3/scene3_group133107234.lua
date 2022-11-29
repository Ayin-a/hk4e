-- 基础信息
local base_info = {
	group_id = 133107234
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 234001, monster_id = 20011401, pos = { x = -148.523, y = 258.749, z = -11.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 7 },
	{ config_id = 234002, monster_id = 20011401, pos = { x = -151.671, y = 255.787, z = -19.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 7 },
	{ config_id = 234003, monster_id = 20011501, pos = { x = -152.616, y = 258.523, z = -12.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 7 },
	{ config_id = 234004, monster_id = 26030101, pos = { x = -153.098, y = 256.830, z = -17.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 7 },
	{ config_id = 234009, monster_id = 26030101, pos = { x = -146.766, y = 256.709, z = -16.379 }, rot = { x = 0.000, y = 325.010, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 234007, gadget_id = 70710609, pos = { x = -144.250, y = 255.810, z = -18.459 }, rot = { x = 0.000, y = 252.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1234005, name = "ANY_MONSTER_DIE_234005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_234005", action = "action_EVENT_ANY_MONSTER_DIE_234005" },
	{ config_id = 1234006, name = "ANY_MONSTER_DIE_234006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_234006", action = "action_EVENT_ANY_MONSTER_DIE_234006" },
	{ config_id = 1234008, name = "ANY_GADGET_DIE_234008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_234008", action = "action_EVENT_ANY_GADGET_DIE_234008" }
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
		monsters = { 234001, 234002, 234003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_234005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 234004, 234009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_234006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 234007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_234008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_234005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_234005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107234, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_234006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_234006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072341") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_234008(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133107234}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_234008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072342") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end