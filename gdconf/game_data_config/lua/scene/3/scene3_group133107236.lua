-- 基础信息
local base_info = {
	group_id = 133107236
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 236001, monster_id = 28030307, pos = { x = -616.090, y = 215.218, z = 248.153 }, rot = { x = 0.000, y = 190.690, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 7 },
	{ config_id = 236002, monster_id = 28030307, pos = { x = -618.633, y = 215.866, z = 250.433 }, rot = { x = 0.000, y = 45.650, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 7 },
	{ config_id = 236003, monster_id = 28030307, pos = { x = -611.368, y = 215.038, z = 251.702 }, rot = { x = 0.000, y = 249.920, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 7 },
	{ config_id = 236004, monster_id = 28030307, pos = { x = -613.528, y = 215.218, z = 250.552 }, rot = { x = 0.000, y = 107.810, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 7 },
	{ config_id = 236005, monster_id = 28030307, pos = { x = -619.502, y = 215.198, z = 247.286 }, rot = { x = 0.000, y = 341.800, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 7 },
	{ config_id = 236006, monster_id = 28030307, pos = { x = -615.994, y = 216.815, z = 252.896 }, rot = { x = 0.000, y = 239.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 7 },
	{ config_id = 236007, monster_id = 28030307, pos = { x = -615.730, y = 215.867, z = 250.437 }, rot = { x = 0.000, y = 344.020, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 7 }
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
	{ config_id = 1236009, name = "ANY_MONSTER_DIE_236009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_236009", action = "action_EVENT_ANY_MONSTER_DIE_236009" }
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
		monsters = { 236001, 236002, 236003, 236004, 236005, 236006, 236007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_236009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_236009(context, evt)
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_236009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133107236") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end