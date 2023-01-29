-- 基础信息
local base_info = {
	group_id = 133314002
}

-- Trigger变量
local defs = {
	direct_sandworm_id = 2015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 26090901, pos = { x = -994.346, y = 21.333, z = 4752.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 32 },
	{ config_id = 2005, monster_id = 26090901, pos = { x = -997.542, y = 20.598, z = 4755.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 32 },
	{ config_id = 2007, monster_id = 26100401, pos = { x = -994.914, y = 18.776, z = 4765.005 }, rot = { x = 0.000, y = 209.482, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 2008, monster_id = 26120401, pos = { x = -999.917, y = 19.816, z = 4755.712 }, rot = { x = 0.000, y = 45.888, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 32 },
	{ config_id = 2009, monster_id = 26090901, pos = { x = -992.595, y = 20.490, z = 4756.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 32 },
	{ config_id = 2010, monster_id = 28060401, pos = { x = -1005.007, y = 20.219, z = 4763.844 }, rot = { x = 0.000, y = 107.862, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 2011, monster_id = 28060401, pos = { x = -986.217, y = 21.363, z = 4756.320 }, rot = { x = 0.000, y = 290.544, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 2019, monster_id = 26090901, pos = { x = -988.520, y = 19.689, z = 4761.548 }, rot = { x = 0.000, y = 264.218, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2015, gadget_id = 70290628, pos = { x = -988.611, y = 19.958, z = 4755.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
	-- 任务沙虫
	{ config_id = 2003, shape = RegionShape.POLYGON, pos = { x = -1001.553, y = 30.181, z = 4741.322 }, height = 59.605, point_array = { { x = -978.758, y = 4775.162 }, { x = -991.720, y = 4791.982 }, { x = -995.111, y = 4771.733 }, { x = -1036.540, y = 4744.288 }, { x = -1027.976, y = 4699.921 }, { x = -1006.250, y = 4691.840 }, { x = -966.566, y = 4690.663 }, { x = -982.652, y = 4731.460 }, { x = -973.531, y = 4760.458 } }, area_id = 32 },
	-- 离开区域销毁沙虫
	{ config_id = 2014, shape = RegionShape.POLYGON, pos = { x = -1001.553, y = 30.181, z = 4741.322 }, height = 59.605, point_array = { { x = -978.758, y = 4775.162 }, { x = -991.720, y = 4791.982 }, { x = -995.111, y = 4771.733 }, { x = -1036.540, y = 4744.288 }, { x = -1027.976, y = 4699.921 }, { x = -1006.250, y = 4691.840 }, { x = -966.566, y = 4690.663 }, { x = -982.652, y = 4731.460 }, { x = -973.531, y = 4760.458 } }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 任务通知，停止沙虫
	{ config_id = 1002002, name = "ANY_MONSTER_DIE_2002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2002", action = "action_EVENT_ANY_MONSTER_DIE_2002" },
	-- 任务沙虫
	{ config_id = 1002003, name = "ENTER_REGION_2003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2003", trigger_count = 0 },
	{ config_id = 1002004, name = "TIME_AXIS_PASS_2004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_2004", action = "action_EVENT_TIME_AXIS_PASS_2004" },
	{ config_id = 1002006, name = "ANY_MONSTER_DIE_2006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2006", action = "action_EVENT_ANY_MONSTER_DIE_2006" },
	-- 战斗rEMINDER
	{ config_id = 1002012, name = "MONSTER_BATTLE_2012", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_2012", action = "action_EVENT_MONSTER_BATTLE_2012" },
	-- 沙虫循环攻击
	{ config_id = 1002013, name = "TIME_AXIS_PASS_2013", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_2013", action = "action_EVENT_TIME_AXIS_PASS_2013", trigger_count = 0 },
	-- 离开区域销毁沙虫
	{ config_id = 1002014, name = "LEAVE_REGION_2014", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_2014", trigger_count = 0 },
	{ config_id = 1002016, name = "GROUP_LOAD_2016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_2016" },
	{ config_id = 1002017, name = "TIME_AXIS_PASS_2017", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_2017", action = "action_EVENT_TIME_AXIS_PASS_2017" },
	{ config_id = 1002018, name = "GROUP_WILL_UNLOAD_2018", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_2018" }
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
		monsters = { 2001, 2005, 2008, 2009, 2019 },
		gadgets = { },
		regions = { 2003, 2014 },
		triggers = { "ENTER_REGION_2003", "ANY_MONSTER_DIE_2006", "MONSTER_BATTLE_2012", "TIME_AXIS_PASS_2013", "LEAVE_REGION_2014", "GROUP_LOAD_2016", "TIME_AXIS_PASS_2017", "GROUP_WILL_UNLOAD_2018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2007, 2010, 2011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2002", "TIME_AXIS_PASS_2004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2002(context, evt)
	-- 创建标识为"finish"，时间节点为{7}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "finish", {7}, false)
	
	
	-- 停止标识为"Sandworm_Attack"的时间轴
	ScriptLib.EndTimeAxis(context, "Sandworm_Attack")
	
	
	  --清理当前沙虫，如果已被别的group占用可能失败
	  LF_Remove_All_Sandworm(context)
	
	-- 调用提示id为 1000080000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_2003(context, evt)
	-- 重启标识为"Sandworm_Attack"的时间轴
	ScriptLib.ContinueTimeAxis(context, "Sandworm_Attack")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_2004(context, evt)
	if "finish" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7318604") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 停止标识为"finish"的时间轴
	ScriptLib.EndTimeAxis(context, "finish")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314002, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_2012(context, evt)
	if 2008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_2012(context, evt)
	-- 调用提示id为 1000080004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_2013(context, evt)
	if "Sandworm_Attack" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2013(context, evt)
	  --在主机玩家脚下召唤一只沙虫，并攻击若干次。可能失败
	  local uid = ScriptLib.GetSceneOwnerUid(context)
	  LF_Summon_Direct_Sandworm_By_Avatar(context,uid,1)
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_2014(context, evt)
	  --清理当前沙虫，如果已被别的group占用可能失败
	  LF_Remove_All_Sandworm(context)
	
	-- 暂停标识为"Sandworm_Attack"的时间轴
	ScriptLib.PauseTimeAxis(context, "Sandworm_Attack")
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2016(context, evt)
	-- 创建标识为"wait_create_sandworm"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wait_create_sandworm", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_2017(context, evt)
	if "wait_create_sandworm" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2017(context, evt)
	-- 创建标识为"Sandworm_Attack"，时间节点为{20}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Sandworm_Attack", {20}, true)
	
	
	  --召唤一只巡游沙虫，需输入一个沙虫参数。可能失败
	  LF_Create_Normal_Sandworm_By_Custom_Params(context, 2, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_2018(context, evt)
	  --清理当前沙虫，如果已被别的group占用可能失败
	  LF_Remove_All_Sandworm(context)
	
	return 0
end

require "V3_4/SandwormPlayControl"
require "V3_4/SandwormToolkit"