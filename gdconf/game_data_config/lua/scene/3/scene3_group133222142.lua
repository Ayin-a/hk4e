-- 基础信息
local base_info = {
	group_id = 133222142
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 142001, monster_id = 21030601, pos = { x = -4855.761, y = 200.366, z = -4795.923 }, rot = { x = 0.000, y = 147.731, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 14 },
	{ config_id = 142005, monster_id = 21010201, pos = { x = -4851.429, y = 200.259, z = -4796.435 }, rot = { x = 0.000, y = 222.105, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 14 },
	{ config_id = 142008, monster_id = 21020701, pos = { x = -4853.667, y = 201.584, z = -4801.449 }, rot = { x = 7.276, y = 27.008, z = 4.032 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, area_id = 14 },
	{ config_id = 142015, monster_id = 21010501, pos = { x = -4858.727, y = 202.086, z = -4804.595 }, rot = { x = 0.000, y = 40.340, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 142002, gadget_id = 70211001, pos = { x = -4853.829, y = 201.598, z = -4801.554 }, rot = { x = 9.897, y = 19.983, z = 2.041 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 142009, gadget_id = 70300085, pos = { x = -4853.909, y = 201.164, z = -4801.763 }, rot = { x = 355.698, y = 235.660, z = 352.710 }, level = 30, area_id = 14 },
	{ config_id = 142010, gadget_id = 70300107, pos = { x = -4853.833, y = 200.456, z = -4798.768 }, rot = { x = 0.000, y = 298.778, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 142013, gadget_id = 70300086, pos = { x = -4850.758, y = 201.377, z = -4807.086 }, rot = { x = 354.025, y = 343.812, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 142014, gadget_id = 70300086, pos = { x = -4859.820, y = 201.339, z = -4805.902 }, rot = { x = 354.025, y = 343.812, z = 14.010 }, level = 30, area_id = 14 },
	{ config_id = 142017, gadget_id = 70220013, pos = { x = -4846.523, y = 201.444, z = -4805.085 }, rot = { x = 0.000, y = 24.084, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 142018, gadget_id = 70220013, pos = { x = -4846.002, y = 201.063, z = -4802.659 }, rot = { x = 0.000, y = 340.579, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1142003, name = "ANY_MONSTER_DIE_142003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_142003", action = "action_EVENT_ANY_MONSTER_DIE_142003" },
	{ config_id = 1142011, name = "ANY_MONSTER_DIE_142011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_142011", action = "action_EVENT_ANY_MONSTER_DIE_142011", trigger_count = 0 },
	{ config_id = 1142012, name = "GADGET_STATE_CHANGE_142012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142012", action = "action_EVENT_GADGET_STATE_CHANGE_142012", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 142007, monster_id = 21020701, pos = { x = -4856.212, y = 202.402, z = -4801.070 }, rot = { x = 0.000, y = 357.457, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, area_id = 14 },
		{ config_id = 142016, monster_id = 21010301, pos = { x = -4843.580, y = 200.291, z = -4793.426 }, rot = { x = 1.318, y = 313.814, z = 2.503 }, level = 30, drop_tag = "丘丘人", area_id = 14 }
	},
	gadgets = {
		{ config_id = 142004, gadget_id = 70300089, pos = { x = -4842.213, y = 201.529, z = -4806.435 }, rot = { x = 4.417, y = 269.673, z = 351.120 }, level = 30, area_id = 14 },
		{ config_id = 142006, gadget_id = 70300089, pos = { x = -4847.990, y = 201.586, z = -4807.016 }, rot = { x = 3.477, y = 258.653, z = 355.396 }, level = 30, area_id = 14 }
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
		monsters = { 142001, 142005, 142015 },
		gadgets = { 142009, 142010, 142013, 142014, 142017, 142018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_142011", "GADGET_STATE_CHANGE_142012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 142008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_142003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_142003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_142003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 创建id为142002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 142002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_142011(context, evt)
	--判断死亡怪物的configid是否为 142001
	if evt.param1 ~= 142001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_142011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222142, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142012(context, evt)
	if 142002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142012(context, evt)
	-- 将本组内变量名为 "unlock1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock1", 1, 133222338) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-4872.141，203.631，-4784.863），持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-4872.141, y=203.631, z=-4784.863}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end