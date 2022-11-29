-- 基础信息
local base_info = {
	group_id = 133008691
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 691001, monster_id = 28020802, pos = { x = 1067.385, y = 303.773, z = -1140.657 }, rot = { x = 0.000, y = 120.707, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 691002, gadget_id = 70360273, pos = { x = 1058.675, y = 310.729, z = -1136.719 }, rot = { x = 0.000, y = 125.964, z = 0.000 }, level = 30, mark_flag = 1, area_id = 10 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 691003, gadget_id = 70360273, pos = { x = 1040.826, y = 315.608, z = -1127.600 }, rot = { x = 0.000, y = 112.983, z = 0.000 }, level = 30, mark_flag = 2, area_id = 10 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 691004, gadget_id = 70360274, pos = { x = 1035.787, y = 316.125, z = -1126.536 }, rot = { x = 0.000, y = 100.896, z = 0.000 }, level = 30, mark_flag = 3, area_id = 10 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 691005, gadget_id = 70310001, pos = { x = 1074.687, y = 304.902, z = -1151.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 691007, gadget_id = 70360276, pos = { x = 1074.211, y = 304.918, z = -1150.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
	-- 提示 300868304
	{ config_id = 691011, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1067.439, y = 303.697, z = -1140.907 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1691009, name = "ANY_MONSTER_DIE_691009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_691009", action = "action_EVENT_ANY_MONSTER_DIE_691009" },
	-- 提示 300868304
	{ config_id = 1691011, name = "ENTER_REGION_691011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_691011", action = "action_EVENT_ENTER_REGION_691011" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 691006, gadget_id = 70210101, pos = { x = 1075.819, y = 305.333, z = -1150.510 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物蒙德", persistent = true, area_id = 10 }
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
	end_suite = 3,
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
		monsters = { 691001 },
		gadgets = { 691002, 691003, 691004 },
		regions = { 691011 },
		triggers = { "ANY_MONSTER_DIE_691009", "ENTER_REGION_691011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 691005, 691007 },
		regions = { },
		triggers = { },
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
	},
	{
		-- suite_id = 4,
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
function condition_EVENT_ANY_MONSTER_DIE_691009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_691009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7226405") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008691, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_691011(context, evt)
	if evt.param1 ~= 691011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_691011(context, evt)
	-- 调用提示id为 300868304 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300868304) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end