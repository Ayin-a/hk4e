-- 基础信息
local base_info = {
	group_id = 133106029
}

-- Trigger变量
local defs = {
	region_Enter = 29008,
	region_Leave = 29009,
	group_id = 133106029,
	gallery_id = 12004,
	monsterWave = {18003,18002,18003,18003,18002,18003},
	prospect_id = {29002,29003,29004},
	gadget_1 = 0
}

-- DEFS_MISCS
local Pursina = {
	{29002,29005},	
	{29003,29006},
	{29004,29007},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 29001, gadget_id = 70800054, pos = { x = -833.325, y = 155.493, z = 1171.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 29002, gadget_id = 70800044, pos = { x = -829.958, y = 155.233, z = 1159.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 29003, gadget_id = 70800044, pos = { x = -842.750, y = 155.365, z = 1179.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 29004, gadget_id = 70800044, pos = { x = -858.796, y = 155.337, z = 1157.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 29005, gadget_id = 70800047, pos = { x = -829.958, y = 155.233, z = 1159.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 8 },
	{ config_id = 29006, gadget_id = 70800048, pos = { x = -842.750, y = 155.365, z = 1179.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 8 },
	{ config_id = 29007, gadget_id = 70800049, pos = { x = -858.796, y = 155.337, z = 1157.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 29008, shape = RegionShape.SPHERE, radius = 50, pos = { x = -835.021, y = 156.587, z = 1174.616 }, area_id = 8 },
	{ config_id = 29009, shape = RegionShape.SPHERE, radius = 50, pos = { x = -835.021, y = 156.587, z = 1174.616 }, area_id = 8 },
	{ config_id = 29057, shape = RegionShape.SPHERE, radius = 12, pos = { x = -835.021, y = 156.587, z = 1174.616 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1029010, name = "SELECT_OPTION_29010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_29010", action = "action_EVENT_SELECT_OPTION_29010" },
	{ config_id = 1029011, name = "TIME_AXIS_PASS_29011", event = EventType.EVENT_TIME_AXIS_PASS, source = "looptime", condition = "", action = "action_EVENT_TIME_AXIS_PASS_29011", trigger_count = 0 },
	{ config_id = 1029012, name = "VARIABLE_CHANGE_29012", event = EventType.EVENT_VARIABLE_CHANGE, source = "refreshMonster", condition = "", action = "action_EVENT_VARIABLE_CHANGE_29012", trigger_count = 0 },
	{ config_id = 1029019, name = "VARIABLE_CHANGE_29019", event = EventType.EVENT_VARIABLE_CHANGE, source = "IsFinished", condition = "condition_EVENT_VARIABLE_CHANGE_29019", action = "action_EVENT_VARIABLE_CHANGE_29019" },
	{ config_id = 1029056, name = "TIMER_EVENT_29056", event = EventType.EVENT_TIMER_EVENT, source = "starttime", condition = "", action = "action_EVENT_TIMER_EVENT_29056" },
	{ config_id = 1029057, name = "ENTER_REGION_29057", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_29057", action = "action_EVENT_ENTER_REGION_29057" },
	{ config_id = 1029058, name = "GADGET_STATE_CHANGE_29058", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29058", action = "action_EVENT_GADGET_STATE_CHANGE_29058" }
}

-- 点位
points = {
	{ config_id = 29020, pos = { x = -818.962, y = 157.060, z = 1154.933 }, rot = { x = 0.000, y = 283.932, z = 0.000 }, area_id = 8, tag = 2 },
	{ config_id = 29021, pos = { x = -820.296, y = 156.975, z = 1157.701 }, rot = { x = 0.000, y = 283.932, z = 0.000 }, area_id = 8, tag = 2 },
	{ config_id = 29022, pos = { x = -815.586, y = 158.722, z = 1159.939 }, rot = { x = 0.000, y = 283.932, z = 0.000 }, area_id = 8, tag = 2 },
	{ config_id = 29023, pos = { x = -817.386, y = 157.811, z = 1157.627 }, rot = { x = 0.000, y = 283.932, z = 0.000 }, area_id = 8, tag = 2 },
	{ config_id = 29024, pos = { x = -819.322, y = 157.423, z = 1161.515 }, rot = { x = 0.000, y = 248.909, z = 0.000 }, area_id = 8, tag = 2 },
	{ config_id = 29025, pos = { x = -818.618, y = 156.792, z = 1151.357 }, rot = { x = 0.000, y = 307.540, z = 0.000 }, area_id = 8, tag = 2 },
	{ config_id = 29026, pos = { x = -846.008, y = 156.904, z = 1189.742 }, rot = { x = 0.000, y = 184.109, z = 0.000 }, area_id = 8, tag = 4 },
	{ config_id = 29027, pos = { x = -841.956, y = 156.936, z = 1195.452 }, rot = { x = 0.000, y = 184.109, z = 0.000 }, area_id = 8, tag = 4 },
	{ config_id = 29028, pos = { x = -847.064, y = 156.915, z = 1194.822 }, rot = { x = 0.000, y = 184.109, z = 0.000 }, area_id = 8, tag = 4 },
	{ config_id = 29029, pos = { x = -849.293, y = 157.244, z = 1193.436 }, rot = { x = 0.000, y = 184.109, z = 0.000 }, area_id = 8, tag = 4 },
	{ config_id = 29030, pos = { x = -841.153, y = 157.045, z = 1190.098 }, rot = { x = 0.000, y = 206.045, z = 0.000 }, area_id = 8, tag = 4 },
	{ config_id = 29031, pos = { x = -845.922, y = 156.902, z = 1192.902 }, rot = { x = 0.000, y = 184.109, z = 0.000 }, area_id = 8, tag = 4 },
	{ config_id = 29032, pos = { x = -851.000, y = 155.200, z = 1151.015 }, rot = { x = 0.000, y = 312.238, z = 0.000 }, area_id = 8, tag = 8 },
	{ config_id = 29033, pos = { x = -848.184, y = 155.200, z = 1147.170 }, rot = { x = 0.000, y = 312.238, z = 0.000 }, area_id = 8, tag = 8 },
	{ config_id = 29034, pos = { x = -846.010, y = 155.200, z = 1147.933 }, rot = { x = 0.000, y = 312.238, z = 0.000 }, area_id = 8, tag = 8 },
	{ config_id = 29035, pos = { x = -851.912, y = 155.200, z = 1147.138 }, rot = { x = 0.000, y = 312.238, z = 0.000 }, area_id = 8, tag = 8 },
	{ config_id = 29036, pos = { x = -849.914, y = 155.200, z = 1144.203 }, rot = { x = 0.000, y = 312.238, z = 0.000 }, area_id = 8, tag = 8 },
	{ config_id = 29037, pos = { x = -845.545, y = 155.200, z = 1142.645 }, rot = { x = 0.000, y = 312.238, z = 0.000 }, area_id = 8, tag = 8 },
	{ config_id = 29038, pos = { x = -823.277, y = 156.245, z = 1157.243 }, rot = { x = 0.000, y = 278.804, z = 0.000 }, area_id = 8, tag = 16 },
	{ config_id = 29039, pos = { x = -825.085, y = 155.731, z = 1161.795 }, rot = { x = 0.000, y = 278.804, z = 0.000 }, area_id = 8, tag = 16 },
	{ config_id = 29040, pos = { x = -840.948, y = 156.854, z = 1185.368 }, rot = { x = 0.000, y = 199.598, z = 0.000 }, area_id = 8, tag = 16 },
	{ config_id = 29041, pos = { x = -847.069, y = 156.102, z = 1184.803 }, rot = { x = 0.000, y = 199.598, z = 0.000 }, area_id = 8, tag = 16 },
	{ config_id = 29042, pos = { x = -844.009, y = 157.072, z = 1188.899 }, rot = { x = 0.000, y = 177.690, z = 0.000 }, area_id = 8, tag = 16 },
	{ config_id = 29043, pos = { x = -838.524, y = 156.193, z = 1182.476 }, rot = { x = 0.000, y = 239.775, z = 0.000 }, area_id = 8, tag = 16 },
	{ config_id = 29044, pos = { x = -842.857, y = 157.164, z = 1186.799 }, rot = { x = 0.000, y = 195.974, z = 0.000 }, area_id = 8, tag = 32 },
	{ config_id = 29045, pos = { x = -848.475, y = 156.175, z = 1185.176 }, rot = { x = 0.000, y = 195.974, z = 0.000 }, area_id = 8, tag = 32 },
	{ config_id = 29046, pos = { x = -851.532, y = 155.200, z = 1161.330 }, rot = { x = 0.000, y = 258.123, z = 0.000 }, area_id = 8, tag = 32 },
	{ config_id = 29047, pos = { x = -851.541, y = 155.200, z = 1158.761 }, rot = { x = 0.000, y = 284.946, z = 0.000 }, area_id = 8, tag = 32 },
	{ config_id = 29048, pos = { x = -849.815, y = 155.200, z = 1155.363 }, rot = { x = 0.000, y = 284.946, z = 0.000 }, area_id = 8, tag = 32 },
	{ config_id = 29049, pos = { x = -855.893, y = 155.200, z = 1153.966 }, rot = { x = 0.000, y = 284.946, z = 0.000 }, area_id = 8, tag = 32 },
	{ config_id = 29050, pos = { x = -851.617, y = 155.200, z = 1151.407 }, rot = { x = 0.000, y = 288.801, z = 0.000 }, area_id = 8, tag = 64 },
	{ config_id = 29051, pos = { x = -854.745, y = 155.200, z = 1157.103 }, rot = { x = 0.000, y = 288.801, z = 0.000 }, area_id = 8, tag = 64 },
	{ config_id = 29052, pos = { x = -822.595, y = 156.021, z = 1153.947 }, rot = { x = 0.000, y = 264.251, z = 0.000 }, area_id = 8, tag = 64 },
	{ config_id = 29053, pos = { x = -820.302, y = 157.054, z = 1159.122 }, rot = { x = 0.000, y = 264.251, z = 0.000 }, area_id = 8, tag = 64 },
	{ config_id = 29054, pos = { x = -827.238, y = 155.309, z = 1162.940 }, rot = { x = 0.000, y = 264.251, z = 0.000 }, area_id = 8, tag = 64 },
	{ config_id = 29055, pos = { x = -826.644, y = 155.402, z = 1155.677 }, rot = { x = 0.000, y = 296.974, z = 0.000 }, area_id = 8, tag = 64 },
	{ config_id = 29059, pos = { x = -833.160, y = 155.657, z = 1177.952 }, rot = { x = 0.000, y = 168.851, z = 0.000 }, area_id = 8 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finalWave", value = 3, no_refresh = false },
	{ config_id = 2, name = "refreshMonster", value = 0, no_refresh = false },
	{ config_id = 3, name = "isTimeout", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1029013, name = "POOL_MONSTER_TIDE_DIE_29013", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_29013", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_29013", trigger_count = 0 },
		{ config_id = 1029014, name = "POOL_MONSTER_TIDE_DIE_29014", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_29014", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_29014", trigger_count = 0 },
		{ config_id = 1029015, name = "POOL_MONSTER_TIDE_DIE_29015", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_29015", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_29015", trigger_count = 0 },
		{ config_id = 1029016, name = "POOL_MONSTER_TIDE_DIE_29016", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_29016", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_29016", trigger_count = 0 },
		{ config_id = 1029017, name = "POOL_MONSTER_TIDE_DIE_29017", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_29017", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_29017", trigger_count = 0 },
		{ config_id = 1029018, name = "POOL_MONSTER_TIDE_DIE_29018", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_29018", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_29018", trigger_count = 0 }
	}
}

-- 视野组
sight_groups = {
	{ 29002, 29003, 29004, 29005, 29006, 29007 }
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
		gadgets = { 29001, 29002, 29003, 29004 },
		regions = { 29008, 29009, 29057 },
		triggers = { "SELECT_OPTION_29010", "TIME_AXIS_PASS_29011", "VARIABLE_CHANGE_29012", "VARIABLE_CHANGE_29019", "TIMER_EVENT_29056", "ENTER_REGION_29057", "GADGET_STATE_CHANGE_29058" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_29010(context, evt)
	-- 判断是gadgetid 29001 option_id 175
	if 29001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_29010(context, evt)
	-- 将configid为 29001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_29011(context, evt)
	-- 判断剩余怪物数量是否是0.
	
	-- 如果不为0设置超时标记，返回0
	--if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
	--	ScriptLib.SetGroupVariableValue(context, "isTimeout", 1)
	--	return 0
	-- 如果为0通知刷新下一波怪物
	--else
		--如果不是最后一波，设置至下一波，否则循环到第一波
	if ScriptLib.GetGroupVariableValue(context, "refreshMonster") ~= ScriptLib.GetGroupVariableValue(context, "finalWave") then
		ScriptLib.ChangeGroupVariableValue(context, "refreshMonster", 1)
	else
		ScriptLib.SetGroupVariableValue(context, "refreshMonster", 1)	
	end
	--end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_29012(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	
	
	
	--三个电桩进度全满跳出
	if ScriptLib.GetGalleryProgressScore(context, "digProgress0", defs.gallery_id)>=100 and ScriptLib.GetGalleryProgressScore(context, "digProgress1", defs.gallery_id)>=100 and ScriptLib.GetGalleryProgressScore(context, "digProgress2", defs.gallery_id)>=100 then
		return 0
	end
	--三个电桩全部没有激活跳出
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[1]) ~= GadgetState.GearStop and ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[2]) ~= GadgetState.GearStop and ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[3]) ~= GadgetState.GearStop then
		return 0
	end
	
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 1)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 2)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 3)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 4)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 5)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 6)
	
	-- refreshMonster=1，刷第1波.A点刷新
	if ScriptLib.GetGroupVariableValue(context, "refreshMonster") == 1 then
		if ScriptLib.GetGalleryProgressScore(context, "digProgress0", defs.gallery_id)>=100 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[1]) ~= GadgetState.GearStop then
			ScriptLib.ChangeGroupVariableValueByGroup(context, "refreshMonster", 1,defs.group_id )
			return 0
		else
			ScriptLib.ShowReminder(context, 600082)
			ScriptLib.AutoPoolMonsterTide(context, 1, defs.group_id, {defs.monsterWave[1]}, 0, {}, {}, {total_count=10, min_count=3, max_count=5, tag=2, fill_time=0, fill_count=0})
			return 0
		end
	-- refreshMonster=2，刷第2波.B点刷新
	elseif ScriptLib.GetGroupVariableValue(context, "refreshMonster") == 2  then
		if ScriptLib.GetGalleryProgressScore(context, "digProgress1", defs.gallery_id)>=100 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[2]) ~= GadgetState.GearStop then
			ScriptLib.ChangeGroupVariableValueByGroup(context, "refreshMonster", 1,defs.group_id )
			return 0
		else
			ScriptLib.ShowReminder(context, 600082)
			ScriptLib.AutoPoolMonsterTide(context, 2, defs.group_id, {defs.monsterWave[2]}, 0, {}, {},  {total_count=10, min_count=3, max_count=5, tag=4, fill_time=0, fill_count=0})
			return 0
		end
	-- refreshMonster=5，刷第3波.C点刷新
	elseif ScriptLib.GetGroupVariableValue(context, "refreshMonster") == 3  then
		if ScriptLib.GetGalleryProgressScore(context, "digProgress2", defs.gallery_id)>=100 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[3]) ~= GadgetState.GearStop then
			ScriptLib.SetGroupVariableValue(context, "refreshMonster", 1)
			return 0
		else
			ScriptLib.ShowReminder(context, 600082)
			ScriptLib.AutoPoolMonsterTide(context, 3, defs.group_id, {defs.monsterWave[3]}, 0, {}, {}, {total_count=10, min_count=3, max_count=5, tag=8, fill_time=0, fill_count=0})
			return 0
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_29019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "IsFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_29019(context, evt)
	-- 停止标识为"looptime"的时间轴
	ScriptLib.EndTimeAxis(context, "looptime")
	-- 删除所有怪物
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 1)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 2)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 3)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 4)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 5)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_29056(context, evt)
	-- 创建标识为"looptime"，时间节点为{60,120}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "looptime", {60,120}, true)
	
	
	-- 针对当前group内变量名为 "refreshMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "refreshMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_29057(context, evt)
	if evt.param1 ~= 29057 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_29057(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,146,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29058(context, evt)
	if (defs.prospect_id[1] ~= evt.param2 and defs.prospect_id[2] ~= evt.param2 and defs.prospect_id[3] ~= evt.param2) or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29058(context, evt)
	-- 延迟10秒后,向groupId为：133106029的对象,请求一次调用,并将string参数："starttime" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133106029, "starttime", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

require "V2_2/Dig"