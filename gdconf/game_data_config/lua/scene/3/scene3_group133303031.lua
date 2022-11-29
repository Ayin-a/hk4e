-- 基础信息
local base_info = {
	group_id = 133303031
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31001, monster_id = 26120101, pos = { x = -1846.747, y = -4.046, z = 3301.461 }, rot = { x = 0.000, y = 230.738, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1050, 5211, 1010 }, pose_id = 103, title_id = 10127, special_name_id = 10178, area_id = 23 },
	{ config_id = 31003, monster_id = 26090201, pos = { x = -1841.156, y = -4.650, z = 3300.781 }, rot = { x = 0.000, y = 245.558, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 31004, monster_id = 26090201, pos = { x = -1842.667, y = -4.635, z = 3304.052 }, rot = { x = 0.000, y = 228.898, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 31005, monster_id = 26120301, pos = { x = -1846.437, y = -4.389, z = 3306.661 }, rot = { x = 0.000, y = 186.664, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 31006, monster_id = 26090501, pos = { x = -1851.136, y = -4.297, z = 3305.166 }, rot = { x = 0.000, y = 29.846, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 31007, monster_id = 26090501, pos = { x = -1852.684, y = -4.265, z = 3302.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 31008, monster_id = 26120201, pos = { x = -1853.414, y = -4.276, z = 3298.968 }, rot = { x = 0.000, y = 79.204, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 201, area_id = 23 },
	{ config_id = 31009, monster_id = 26090101, pos = { x = -1851.224, y = -4.277, z = 3296.055 }, rot = { x = 0.000, y = 319.414, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 31010, monster_id = 26090101, pos = { x = -1847.196, y = -4.387, z = 3295.625 }, rot = { x = 0.000, y = 319.414, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 31011, monster_id = 26120301, pos = { x = -1842.755, y = -4.583, z = 3296.481 }, rot = { x = 0.000, y = 319.414, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 31013, gadget_id = 70290479, pos = { x = -1847.823, y = -4.488, z = 3301.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1031002, name = "ANY_MONSTER_DIE_31002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31002", action = "action_EVENT_ANY_MONSTER_DIE_31002" },
	{ config_id = 1031012, name = "MONSTER_BATTLE_31012", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_31012", action = "action_EVENT_MONSTER_BATTLE_31012" }
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
		monsters = { 31001 },
		gadgets = { 31013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_31002", "MONSTER_BATTLE_31012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 31003, 31004, 31005, 31006, 31007, 31008, 31009, 31010, 31011 },
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
function condition_EVENT_ANY_MONSTER_DIE_31002(context, evt)
	--判断死亡怪物的configid是否为 31001
	if evt.param1 ~= 31001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301820_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	--销毁编号为98（该怪物潮的识别id)的怪物潮
	if 0 ~= ScriptLib.KillMonsterTide(context, 133303031, 98) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_tide")
		return -1
	end
	
	-- 将configid为 31013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_31012(context, evt)
	if 31001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_31012(context, evt)
	-- 创建编号为98（该怪物潮的识别id)的怪物潮，创建怪物总数为27，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 98, 133303031, {31003,31004,31005,31006,31007,31008,31009,31010,31011}, 27, 2, 2) then
		return -1
	end
	
	-- 将configid为 31013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 1111403 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111403) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end