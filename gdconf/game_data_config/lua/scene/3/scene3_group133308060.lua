-- 基础信息
local base_info = {
	group_id = 133308060
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60001, monster_id = 28060302, pos = { x = -2018.944, y = 332.710, z = 4284.110 }, rot = { x = 0.000, y = 198.556, z = 0.000 }, level = 1, drop_id = 1000100, ban_excel_drop = true, disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 60002, monster_id = 28060302, pos = { x = -2019.638, y = 332.612, z = 4281.731 }, rot = { x = 0.000, y = 30.340, z = 0.000 }, level = 1, drop_id = 1000100, ban_excel_drop = true, disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 60003, monster_id = 28060302, pos = { x = -2018.070, y = 332.670, z = 4282.847 }, rot = { x = 0.000, y = 254.832, z = 0.000 }, level = 1, drop_id = 1000100, ban_excel_drop = true, disableWander = true, pose_id = 101, area_id = 26 }
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
	{ config_id = 1060004, name = "ANY_MONSTER_DIE_60004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_60004", action = "action_EVENT_ANY_MONSTER_DIE_60004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 60005, gadget_id = 70710868, pos = { x = -2019.423, y = 332.641, z = 4282.641 }, rot = { x = 0.000, y = 147.565, z = 0.000 }, level = 1, area_id = 26 },
		{ config_id = 60006, gadget_id = 70710868, pos = { x = -2020.076, y = 332.696, z = 4284.163 }, rot = { x = 0.000, y = 11.602, z = 0.000 }, level = 1, area_id = 26 },
		{ config_id = 60007, gadget_id = 70710868, pos = { x = -2020.043, y = 332.735, z = 4284.948 }, rot = { x = 0.000, y = 47.181, z = 0.000 }, level = 1, area_id = 26 }
	}
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
		monsters = { 60001, 60002, 60003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_60004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_60004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_60004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2304003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end