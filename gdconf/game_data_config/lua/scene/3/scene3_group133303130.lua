-- 基础信息
local base_info = {
	group_id = 133303130
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 130001, monster_id = 25210401, pos = { x = -1753.141, y = 289.240, z = 3928.236 }, rot = { x = 0.000, y = 274.532, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 130003, monster_id = 25010209, pos = { x = -1765.940, y = 290.600, z = 3928.181 }, rot = { x = 0.000, y = 89.093, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 130004, monster_id = 25210301, pos = { x = -1753.182, y = 289.223, z = 3931.644 }, rot = { x = 0.000, y = 258.234, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 130005, monster_id = 25010210, pos = { x = -1764.284, y = 290.490, z = 3929.946 }, rot = { x = 0.000, y = 107.084, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 130006, monster_id = 25010211, pos = { x = -1764.703, y = 291.690, z = 3924.280 }, rot = { x = 0.000, y = 31.178, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 26 },
	{ config_id = 130007, monster_id = 25210303, pos = { x = -1762.875, y = 290.855, z = 3925.855 }, rot = { x = 0.000, y = 85.313, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 26 }
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
	{ config_id = 1130002, name = "ANY_MONSTER_DIE_130002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_130002", action = "action_EVENT_ANY_MONSTER_DIE_130002" }
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
		monsters = { 130001, 130003, 130004, 130005, 130006, 130007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_130002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_130002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_130002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "301917") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end