-- 基础信息
local base_info = {
	group_id = 133222143
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 143001, monster_id = 21010201, pos = { x = -4824.124, y = 214.655, z = -4708.802 }, rot = { x = 12.424, y = 94.679, z = 358.120 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 14 },
	{ config_id = 143005, monster_id = 21030601, pos = { x = -4823.510, y = 214.139, z = -4712.058 }, rot = { x = 0.000, y = 32.336, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 14 },
	{ config_id = 143008, monster_id = 21020301, pos = { x = -4817.477, y = 214.491, z = -4706.079 }, rot = { x = 359.710, y = 211.195, z = 359.899 }, level = 30, drop_tag = "丘丘暴徒", area_id = 14 },
	{ config_id = 143009, monster_id = 21020301, pos = { x = -4817.609, y = 214.490, z = -4713.792 }, rot = { x = 0.072, y = 295.374, z = 359.701 }, level = 30, drop_tag = "丘丘暴徒", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 143002, gadget_id = 70300085, pos = { x = -4817.488, y = 214.030, z = -4713.776 }, rot = { x = 0.000, y = 132.196, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 143004, gadget_id = 70300085, pos = { x = -4817.403, y = 214.032, z = -4706.081 }, rot = { x = 0.000, y = 132.196, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 143010, gadget_id = 70300107, pos = { x = -4822.087, y = 214.226, z = -4710.242 }, rot = { x = 0.122, y = 61.918, z = 359.962 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 143011, gadget_id = 70300086, pos = { x = -4813.759, y = 214.200, z = -4714.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 143012, gadget_id = 70300086, pos = { x = -4814.377, y = 214.217, z = -4704.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 143013, gadget_id = 70211011, pos = { x = -4816.619, y = 214.190, z = -4710.166 }, rot = { x = 0.000, y = 269.868, z = 0.000 }, level = 26, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1143003, name = "ANY_MONSTER_DIE_143003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_143003", action = "action_EVENT_ANY_MONSTER_DIE_143003" },
	{ config_id = 1143006, name = "ANY_MONSTER_DIE_143006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_143006", action = "action_EVENT_ANY_MONSTER_DIE_143006", trigger_count = 0 },
	-- 3
	{ config_id = 1143014, name = "GADGET_STATE_CHANGE_143014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_143014", action = "action_EVENT_GADGET_STATE_CHANGE_143014" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 143007, monster_id = 20060101, pos = { x = -4790.572, y = 208.869, z = -4705.971 }, rot = { x = 8.956, y = 61.083, z = 349.262 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 }
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
		monsters = { 143001, 143005 },
		gadgets = { 143002, 143004, 143010, 143011, 143012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_143006", "GADGET_STATE_CHANGE_143014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 143008, 143009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_143003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_143003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_143003(context, evt)
	-- 创建id为143013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 143013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_143006(context, evt)
	--判断死亡怪物的configid是否为 143005
	if evt.param1 ~= 143005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_143006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222143, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_143014(context, evt)
	if 143013 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_143014(context, evt)
	-- 将本组内变量名为 "unlock3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock3", 1, 133222338) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-4861.16，202.2，-4775.8），持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-4861.16, y=202.2, z=-4775.8}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end