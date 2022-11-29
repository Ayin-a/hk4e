-- 基础信息
local base_info = {
	group_id = 133003123
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 553, monster_id = 21010501, pos = { x = 2456.333, y = 266.418, z = -1517.626 }, rot = { x = 0.000, y = 15.193, z = 0.000 }, level = 13, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 554, monster_id = 21010501, pos = { x = 2464.321, y = 264.946, z = -1508.254 }, rot = { x = 0.000, y = 80.126, z = 0.000 }, level = 13, drop_tag = "远程丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 555, monster_id = 21010201, pos = { x = 2457.101, y = 264.626, z = -1505.959 }, rot = { x = 0.000, y = 295.573, z = 0.000 }, level = 13, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 1201, monster_id = 21010301, pos = { x = 2452.903, y = 264.780, z = -1508.130 }, rot = { x = 0.000, y = 305.862, z = 0.000 }, level = 13, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1758, monster_id = 21010501, pos = { x = 2456.609, y = 266.645, z = -1518.670 }, rot = { x = 0.000, y = 15.193, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 1 },
	{ config_id = 1759, monster_id = 21010101, pos = { x = 2470.991, y = 264.660, z = -1514.061 }, rot = { x = 0.000, y = 80.126, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 1760, monster_id = 21020201, pos = { x = 2457.377, y = 264.574, z = -1507.003 }, rot = { x = 0.000, y = 163.311, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 1 },
	{ config_id = 1761, monster_id = 21010301, pos = { x = 2453.180, y = 264.873, z = -1509.174 }, rot = { x = 0.000, y = 305.862, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9002, area_id = 1 },
	{ config_id = 1762, monster_id = 21010501, pos = { x = 2464.428, y = 264.860, z = -1508.622 }, rot = { x = 0.000, y = 15.193, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3813, gadget_id = 70310001, pos = { x = 2466.676, y = 264.856, z = -1506.330 }, rot = { x = 0.000, y = 35.705, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3814, gadget_id = 70211012, pos = { x = 2465.954, y = 264.863, z = -1508.057 }, rot = { x = 0.000, y = 91.456, z = 356.815 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 3815, gadget_id = 70220014, pos = { x = 2457.244, y = 264.863, z = -1503.362 }, rot = { x = 0.000, y = 270.471, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 3816, gadget_id = 70220014, pos = { x = 2458.082, y = 267.103, z = -1520.776 }, rot = { x = 0.000, y = 270.471, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 3817, gadget_id = 70220013, pos = { x = 2467.207, y = 264.659, z = -1510.185 }, rot = { x = 0.000, y = 181.636, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 3818, gadget_id = 70220013, pos = { x = 2460.037, y = 264.769, z = -1504.011 }, rot = { x = 0.000, y = 222.307, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 3819, gadget_id = 70220005, pos = { x = 2459.764, y = 264.630, z = -1505.639 }, rot = { x = 0.000, y = 270.617, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 3820, gadget_id = 70310001, pos = { x = 2452.203, y = 266.377, z = -1515.927 }, rot = { x = 4.536, y = 35.705, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3822, gadget_id = 70310004, pos = { x = 2460.761, y = 264.583, z = -1509.331 }, rot = { x = 0.000, y = 5.824, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4357, gadget_id = 70310001, pos = { x = 2466.610, y = 264.939, z = -1506.346 }, rot = { x = 0.000, y = 35.705, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4358, gadget_id = 70220014, pos = { x = 2457.184, y = 264.859, z = -1503.377 }, rot = { x = 0.000, y = 270.471, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 4359, gadget_id = 70220014, pos = { x = 2458.024, y = 267.109, z = -1520.791 }, rot = { x = 0.000, y = 270.471, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 4360, gadget_id = 70220013, pos = { x = 2467.211, y = 264.656, z = -1510.202 }, rot = { x = 0.000, y = 181.636, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 4361, gadget_id = 70220013, pos = { x = 2459.977, y = 264.822, z = -1504.026 }, rot = { x = 0.000, y = 222.307, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 4362, gadget_id = 70220005, pos = { x = 2459.704, y = 264.675, z = -1505.654 }, rot = { x = 0.000, y = 270.617, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 4363, gadget_id = 70310001, pos = { x = 2452.177, y = 266.392, z = -1515.896 }, rot = { x = 4.536, y = 35.705, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4364, gadget_id = 70310004, pos = { x = 2460.701, y = 264.580, z = -1509.346 }, rot = { x = 0.000, y = 5.824, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000476, name = "ANY_MONSTER_DIE_476", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_476", action = "action_EVENT_ANY_MONSTER_DIE_476" },
	{ config_id = 1000591, name = "ANY_MONSTER_DIE_591", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_591", action = "action_EVENT_ANY_MONSTER_DIE_591", trigger_count = 0 },
	{ config_id = 1000592, name = "MONSTER_BATTLE_592", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_592", trigger_count = 0 },
	{ config_id = 1000593, name = "QUEST_FINISH_593", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_593", action = "action_EVENT_QUEST_FINISH_593", trigger_count = 0 },
	{ config_id = 1000594, name = "QUEST_FINISH_594", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_594", action = "action_EVENT_QUEST_FINISH_594", trigger_count = 0 }
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
		monsters = { 553, 554, 555, 1201 },
		gadgets = { 3813, 3814, 3815, 3816, 3817, 3818, 3819, 3820, 3822 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_476" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1758, 1760, 1761, 1762 },
		gadgets = { 4357, 4358, 4359, 4360, 4361, 4362, 4363, 4364 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_591", "MONSTER_BATTLE_592", "QUEST_FINISH_593", "QUEST_FINISH_594" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
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
function condition_EVENT_ANY_MONSTER_DIE_476(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_476(context, evt)
	-- 解锁目标3814
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3814, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_591(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_591(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330031231") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_592(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330031232") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_593(context, evt)
	--检查ID为2001007的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2001007 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_593(context, evt)
	-- 通知groupid为133003123中,configid为：1758的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1758, 133003123) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133003123中,configid为：1760的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1760, 133003123) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133003123中,configid为：1761的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1761, 133003123) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133003123中,configid为：1762的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1762, 133003123) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1759, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_594(context, evt)
	--检查ID为2001010的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2001010 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_594(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1759, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end