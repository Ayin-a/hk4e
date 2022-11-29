-- 基础信息
local base_info = {
	group_id = 133308109
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 109001, monster_id = 24040201, pos = { x = -1450.582, y = 41.327, z = 4413.768 }, rot = { x = 0.000, y = 326.644, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1004, area_id = 26 },
	{ config_id = 109005, monster_id = 24040101, pos = { x = -1455.236, y = 40.882, z = 4412.634 }, rot = { x = 0.000, y = 9.630, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1004, title_id = 10137, area_id = 26 },
	{ config_id = 109007, monster_id = 24040301, pos = { x = -1459.142, y = 41.327, z = 4415.349 }, rot = { x = 0.000, y = 66.498, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1004, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 109002, gadget_id = 70211022, pos = { x = -1455.678, y = 40.882, z = 4409.001 }, rot = { x = 0.000, y = 8.733, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 109004, gadget_id = 70330416, pos = { x = -1454.971, y = 53.043, z = 4413.516 }, rot = { x = 0.000, y = 9.207, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 109006, shape = RegionShape.CYLINDER, radius = 5, pos = { x = -1454.141, y = 57.216, z = 4419.111 }, height = 10.000, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1109003, name = "ANY_MONSTER_DIE_109003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_109003", action = "action_EVENT_ANY_MONSTER_DIE_109003" },
	{ config_id = 1109006, name = "ENTER_REGION_109006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_109006", action = "action_EVENT_ENTER_REGION_109006" },
	{ config_id = 1109008, name = "GROUP_LOAD_109008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_109008", action = "action_EVENT_GROUP_LOAD_109008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		monsters = { 109001, 109005, 109007 },
		gadgets = { 109002, 109004 },
		regions = { 109006 },
		triggers = { "ANY_MONSTER_DIE_109003", "ENTER_REGION_109006", "GROUP_LOAD_109008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 109002 },
		regions = { },
		triggers = { "GROUP_LOAD_109008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_109003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_109003(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7329304") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 109002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 109002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 109004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 109004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133308109, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_109006(context, evt)
	if evt.param1 ~= 109006 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_109006(context, evt)
	-- 将configid为 109004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 109004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-1454.971, y=53.04321, z=4413.516}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1454.971, y=53.04321, z=4413.516}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_109008(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_109008(context, evt)
	ScriptLib.AddQuestProgress(context, "7329304")
	
	ScriptLib.SetGadgetStateByConfigId(context, 109002, GadgetState.Default)
	
	ScriptLib.GoToGroupSuite(context, 133308109, 2)
	
	
	return 0
end