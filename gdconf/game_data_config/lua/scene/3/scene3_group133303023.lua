-- 基础信息
local base_info = {
	group_id = 133303023
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23003, monster_id = 28020313, pos = { x = -1665.447, y = 331.845, z = 3721.615 }, rot = { x = 0.000, y = 196.186, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, area_id = 23 },
	{ config_id = 23004, monster_id = 28020313, pos = { x = -1664.717, y = 331.280, z = 3719.373 }, rot = { x = 0.000, y = 329.289, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, area_id = 23 },
	{ config_id = 23005, monster_id = 28020313, pos = { x = -1666.126, y = 331.904, z = 3718.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 23007, shape = RegionShape.SPHERE, radius = 80, pos = { x = -1669.449, y = 333.364, z = 3726.222 }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 触发注目专用
	{ config_id = 1023001, name = "ANY_MONSTER_DIE_23001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_23001", action = "action_EVENT_ANY_MONSTER_DIE_23001" },
	{ config_id = 1023002, name = "ANY_MONSTER_DIE_23002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_23002", action = "action_EVENT_ANY_MONSTER_DIE_23002" }
}

-- 变量
variables = {
	{ config_id = 1, name = "cameraLookActivated", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		regions = { 23007 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 23003, 23004, 23005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_23001", "ANY_MONSTER_DIE_23002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_23001(context, evt)
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	-- 判断变量"cameraLookActivated"为0
	if ScriptLib.GetGroupVariableValue(context, "cameraLookActivated") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_23001(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1666.142, y=335.3841, z=3739.553}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1666.142, y=335.3841, z=3739.553}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 2,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "cameraLookActivated" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "cameraLookActivated", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_23002(context, evt)
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_23002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7302302_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end