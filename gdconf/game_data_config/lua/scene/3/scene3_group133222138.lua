-- 基础信息
local base_info = {
	group_id = 133222138
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 138001, monster_id = 21030601, pos = { x = -4915.451, y = 203.051, z = -4718.311 }, rot = { x = 0.000, y = 342.747, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 14 },
	{ config_id = 138005, monster_id = 21010201, pos = { x = -4911.918, y = 203.054, z = -4715.900 }, rot = { x = 0.000, y = 284.188, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 14 },
	{ config_id = 138007, monster_id = 21020201, pos = { x = -4917.979, y = 203.958, z = -4710.989 }, rot = { x = 0.000, y = 141.427, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, area_id = 14 },
	{ config_id = 138008, monster_id = 21010701, pos = { x = -4923.827, y = 203.875, z = -4713.218 }, rot = { x = 0.000, y = 153.799, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 14 },
	{ config_id = 138009, monster_id = 21011601, pos = { x = -4912.506, y = 203.705, z = -4712.190 }, rot = { x = 14.354, y = 181.282, z = 345.863 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 138002, gadget_id = 70211001, pos = { x = -4918.086, y = 203.417, z = -4710.901 }, rot = { x = 359.966, y = 143.317, z = 359.694 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 138004, gadget_id = 70300089, pos = { x = -4913.946, y = 202.617, z = -4723.376 }, rot = { x = 0.000, y = 199.700, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 138011, gadget_id = 70300107, pos = { x = -4914.888, y = 203.069, z = -4714.832 }, rot = { x = 0.000, y = 199.700, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1138003, name = "ANY_MONSTER_DIE_138003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_138003", action = "action_EVENT_ANY_MONSTER_DIE_138003" },
	{ config_id = 1138010, name = "GADGET_STATE_CHANGE_138010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_138010", action = "action_EVENT_GADGET_STATE_CHANGE_138010" },
	{ config_id = 1138013, name = "ANY_MONSTER_DIE_138013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_138013", action = "action_EVENT_ANY_MONSTER_DIE_138013", trigger_count = 0 },
	-- 2
	{ config_id = 1138014, name = "GADGET_STATE_CHANGE_138014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_138014", action = "action_EVENT_GADGET_STATE_CHANGE_138014" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 138006, gadget_id = 70300089, pos = { x = -4926.280, y = 202.787, z = -4705.130 }, rot = { x = 0.000, y = 131.656, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 138012, gadget_id = 70300085, pos = { x = -4918.644, y = 194.559, z = -4709.912 }, rot = { x = 0.880, y = 61.222, z = 353.631 }, level = 30, area_id = 14 }
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
		monsters = { 138001, 138005 },
		gadgets = { 138004, 138011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_138010", "ANY_MONSTER_DIE_138013", "GADGET_STATE_CHANGE_138014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 138007, 138008, 138009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_138003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_138003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_138003(context, evt)
	-- 创建id为138002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138002 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_138010(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133222138, 138002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_138010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133222141, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_138013(context, evt)
	--判断死亡怪物的configid是否为 138001
	if evt.param1 ~= 138001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_138013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222138, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_138014(context, evt)
	if 138002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_138014(context, evt)
	-- 触发镜头注目，注目位置为坐标（-4870.97，203.51，-4770.14），持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-4870.97, y=203.51, z=-4770.14}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "unlock2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock2", 1, 133222338) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end