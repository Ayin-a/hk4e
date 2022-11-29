-- 基础信息
local base_info = {
	group_id = 133002310
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 310001, monster_id = 28030307, pos = { x = 1972.771, y = 202.545, z = -800.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 3 },
	{ config_id = 310002, monster_id = 28030308, pos = { x = 1973.987, y = 202.611, z = -799.186 }, rot = { x = 0.000, y = 248.365, z = 0.000 }, level = 10, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 3 },
	{ config_id = 310003, monster_id = 28030310, pos = { x = 1974.466, y = 202.593, z = -801.576 }, rot = { x = 0.000, y = 95.480, z = 0.000 }, level = 10, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 3 },
	{ config_id = 310004, monster_id = 28030307, pos = { x = 1974.831, y = 202.673, z = -800.352 }, rot = { x = 0.000, y = 136.708, z = 0.000 }, level = 10, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 3 }
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
	{ config_id = 1310010, name = "ANY_MONSTER_DIE_310010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_310010", action = "action_EVENT_ANY_MONSTER_DIE_310010" }
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
		-- description = suite_2,
		monsters = { 310001, 310002, 310003, 310004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_310010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_310010(context, evt)
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_310010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330023101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end