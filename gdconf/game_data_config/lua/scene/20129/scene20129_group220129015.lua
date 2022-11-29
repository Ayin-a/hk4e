-- 基础信息
local base_info = {
	group_id = 220129015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15001, monster_id = 22090101, pos = { x = 330.375, y = 199.997, z = 75.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 15002, gadget_id = 42209001, pos = { x = 343.207, y = 200.012, z = 87.127 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, mark_flag = 1 },
	{ config_id = 15003, gadget_id = 42209001, pos = { x = 346.002, y = 200.012, z = 83.127 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, mark_flag = 2 },
	{ config_id = 15004, gadget_id = 42209001, pos = { x = 347.426, y = 200.012, z = 79.127 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, mark_flag = 3 },
	{ config_id = 15005, gadget_id = 42209001, pos = { x = 348.171, y = 200.012, z = 75.127 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, mark_flag = 4 },
	{ config_id = 15006, gadget_id = 42209001, pos = { x = 347.511, y = 199.925, z = 71.127 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, mark_flag = 5 },
	{ config_id = 15007, gadget_id = 42209001, pos = { x = 345.898, y = 200.012, z = 67.126 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, mark_flag = 6 },
	{ config_id = 15008, gadget_id = 42209001, pos = { x = 346.660, y = 200.012, z = 67.125 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 15009, gadget_id = 42209001, pos = { x = 346.660, y = 200.012, z = 67.125 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 15010, gadget_id = 42209001, pos = { x = 330.259, y = 199.997, z = 75.014 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, mark_flag = 10 },
	{ config_id = 15011, gadget_id = 42209001, pos = { x = 339.315, y = 200.012, z = 90.538 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, mark_flag = 11 },
	{ config_id = 15012, gadget_id = 42209001, pos = { x = 335.315, y = 200.012, z = 92.524 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, mark_flag = 12 },
	{ config_id = 15013, gadget_id = 42209001, pos = { x = 331.315, y = 200.052, z = 93.511 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, mark_flag = 13 },
	{ config_id = 15014, gadget_id = 42209001, pos = { x = 327.315, y = 200.058, z = 92.718 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, mark_flag = 14 },
	{ config_id = 15015, gadget_id = 42209001, pos = { x = 323.315, y = 200.012, z = 91.503 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, mark_flag = 15 },
	{ config_id = 15016, gadget_id = 42209001, pos = { x = 319.315, y = 200.012, z = 88.853 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, mark_flag = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015017, name = "ANY_MONSTER_DIE_15017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15017", action = "action_EVENT_ANY_MONSTER_DIE_15017" }
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
		monsters = { 15001 },
		gadgets = { 15002, 15003, 15004, 15005, 15006, 15007, 15010, 15011, 15012, 15013, 15014, 15015, 15016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_15017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "103018") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end