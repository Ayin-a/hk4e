-- 基础信息
local base_info = {
	group_id = 133103351
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 351001, monster_id = 28020802, pos = { x = 692.128, y = 411.000, z = 1857.156 }, rot = { x = 0.000, y = 72.665, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 351002, gadget_id = 70360273, pos = { x = 701.535, y = 409.581, z = 1863.177 }, rot = { x = 0.000, y = 230.999, z = 0.000 }, level = 30, mark_flag = 1, area_id = 6 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 351003, gadget_id = 70360273, pos = { x = 715.668, y = 405.918, z = 1862.244 }, rot = { x = 0.000, y = 265.527, z = 0.000 }, level = 30, mark_flag = 2, area_id = 6 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 351004, gadget_id = 70360274, pos = { x = 801.325, y = 329.815, z = 1829.939 }, rot = { x = 0.000, y = 318.599, z = 0.000 }, level = 30, mark_flag = 10, area_id = 6 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 351005, gadget_id = 70360273, pos = { x = 787.281, y = 350.888, z = 1882.145 }, rot = { x = 0.000, y = 319.113, z = 0.000 }, level = 30, mark_flag = 7, area_id = 6 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 351007, gadget_id = 70360273, pos = { x = 787.007, y = 345.025, z = 1866.316 }, rot = { x = 0.000, y = 9.349, z = 0.000 }, level = 30, mark_flag = 8, area_id = 6 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 351008, gadget_id = 70360273, pos = { x = 800.586, y = 337.071, z = 1857.457 }, rot = { x = 0.000, y = 318.599, z = 0.000 }, level = 30, mark_flag = 9, area_id = 6 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 351011, gadget_id = 70360273, pos = { x = 735.230, y = 398.240, z = 1873.421 }, rot = { x = 0.000, y = 244.620, z = 0.000 }, level = 30, mark_flag = 3, area_id = 6 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 351012, gadget_id = 70360273, pos = { x = 747.500, y = 388.673, z = 1879.995 }, rot = { x = 0.000, y = 231.678, z = 0.000 }, level = 30, mark_flag = 4, area_id = 6 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 351013, gadget_id = 70360273, pos = { x = 762.407, y = 369.735, z = 1871.664 }, rot = { x = 0.000, y = 281.271, z = 0.000 }, level = 30, mark_flag = 5, area_id = 6 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 351014, gadget_id = 70360273, pos = { x = 771.359, y = 361.703, z = 1890.869 }, rot = { x = 0.000, y = 202.588, z = 0.000 }, level = 30, mark_flag = 6, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1351006, name = "ANY_MONSTER_DIE_351006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_351006", action = "action_EVENT_ANY_MONSTER_DIE_351006", trigger_count = 0 }
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
		monsters = { 351001 },
		gadgets = { 351002, 351003, 351004, 351005, 351007, 351008, 351011, 351012, 351013, 351014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_351006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_351006(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_351006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7226105") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end