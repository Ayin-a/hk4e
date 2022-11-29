-- 基础信息
local base_info = {
	group_id = 133104175
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 175001, monster_id = 26030101, pos = { x = 1030.494, y = 200.226, z = 661.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 175002, monster_id = 26030101, pos = { x = 1034.150, y = 200.000, z = 665.465 }, rot = { x = 0.000, y = 231.447, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 6 },
	{ config_id = 175003, monster_id = 26040103, pos = { x = 1044.698, y = 200.000, z = 661.997 }, rot = { x = 2.327, y = 272.570, z = 0.104 }, level = 15, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 175010, gadget_id = 70220008, pos = { x = 1033.097, y = 199.761, z = 668.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 175011, gadget_id = 70220008, pos = { x = 1041.476, y = 199.690, z = 657.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1175008, name = "ANY_MONSTER_DIE_175008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_175008", action = "action_EVENT_ANY_MONSTER_DIE_175008" },
	{ config_id = 1175009, name = "ANY_MONSTER_DIE_175009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_175009", action = "action_EVENT_ANY_MONSTER_DIE_175009" }
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
		monsters = { 175001, 175002 },
		gadgets = { 175010, 175011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_175008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 175003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_175009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_175008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_175008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104175, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_175009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_175009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104175") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end