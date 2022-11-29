-- 基础信息
local base_info = {
	group_id = 133002406
}

-- Trigger变量
local defs = {
	bornPoints = {{gadget_id=406003,monster_id=406001},{gadget_id=406004,monster_id=406008},{gadget_id=406005,monster_id=406009},{gadget_id=406006,monster_id=406010},{gadget_id=406007,monster_id=406011},{gadget_id=406021,monster_id=406012},{gadget_id=406022,monster_id=406013},{gadget_id=406023,monster_id=406014},{gadget_id=406024,monster_id=406015},{gadget_id=406025,monster_id=406016},{gadget_id=406026,monster_id=406017},{gadget_id=406027,monster_id=406018},{gadget_id=406028,monster_id=406019},{gadget_id=406029,monster_id=406020}},
	groupRefreshTime = 43200
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 406001, monster_id = 21011501, pos = { x = 2028.728, y = 261.413, z = -303.193 }, rot = { x = 0.000, y = 315.250, z = 0.000 }, level = 15, drop_id = 1010400, pose_id = 9005, persistent = true, area_id = 3 },
	{ config_id = 406008, monster_id = 21011501, pos = { x = 2874.635, y = 286.986, z = -1188.585 }, rot = { x = 0.000, y = 176.400, z = 0.000 }, level = 15, drop_id = 1010400, pose_id = 9004, persistent = true, area_id = 1 },
	{ config_id = 406009, monster_id = 21011501, pos = { x = 1634.718, y = 345.097, z = -2130.693 }, rot = { x = 0.000, y = 165.770, z = 0.000 }, level = 15, drop_id = 1010400, pose_id = 9003, persistent = true, area_id = 2 },
	{ config_id = 406010, monster_id = 21011501, pos = { x = 1460.431, y = 271.974, z = -1546.584 }, rot = { x = 0.000, y = 254.900, z = 0.000 }, level = 15, drop_id = 1010400, pose_id = 9005, persistent = true, area_id = 2 },
	{ config_id = 406011, monster_id = 21011501, pos = { x = 1884.783, y = 203.452, z = -1269.112 }, rot = { x = 11.431, y = 22.317, z = 3.632 }, level = 15, drop_id = 1010400, pose_id = 9002, persistent = true, area_id = 2 },
	{ config_id = 406012, monster_id = 21011501, pos = { x = 2582.467, y = 257.436, z = 198.228 }, rot = { x = 0.000, y = 131.220, z = 0.000 }, level = 15, drop_id = 1010400, pose_id = 9005, persistent = true, area_id = 4 },
	{ config_id = 406013, monster_id = 21011501, pos = { x = 1571.295, y = 299.847, z = 174.423 }, rot = { x = 0.000, y = 281.500, z = 0.000 }, level = 15, drop_id = 1010400, pose_id = 9005, persistent = true, area_id = 5 },
	{ config_id = 406014, monster_id = 21011501, pos = { x = 1907.715, y = 219.556, z = 622.946 }, rot = { x = 0.000, y = 225.100, z = 0.000 }, level = 15, drop_id = 1010400, pose_id = 9002, persistent = true, area_id = 5 },
	{ config_id = 406015, monster_id = 21011501, pos = { x = 845.041, y = 388.961, z = 1466.902 }, rot = { x = 0.000, y = 340.800, z = 0.000 }, level = 15, drop_id = 1010400, pose_id = 9005, persistent = true, area_id = 6 },
	{ config_id = 406016, monster_id = 21011501, pos = { x = 405.427, y = 180.500, z = 865.864 }, rot = { x = 0.000, y = 335.500, z = 0.000 }, level = 15, drop_id = 1010400, pose_id = 9005, persistent = true, area_id = 6 },
	{ config_id = 406017, monster_id = 21011501, pos = { x = 157.418, y = 188.407, z = 1327.868 }, rot = { x = 0.000, y = 359.700, z = 0.000 }, level = 15, drop_id = 1010400, pose_id = 9005, persistent = true, area_id = 6 },
	{ config_id = 406018, monster_id = 21011501, pos = { x = -612.472, y = 184.204, z = 1064.074 }, rot = { x = 0.000, y = 26.800, z = 0.000 }, level = 15, drop_id = 1010400, pose_id = 9005, persistent = true, area_id = 8 },
	{ config_id = 406019, monster_id = 21011501, pos = { x = 653.256, y = 286.856, z = -391.669 }, rot = { x = 0.000, y = 233.100, z = 0.000 }, level = 15, drop_id = 1010400, pose_id = 9005, persistent = true, area_id = 9 },
	{ config_id = 406020, monster_id = 21011501, pos = { x = -184.309, y = 322.148, z = 130.446 }, rot = { x = 0.000, y = 295.700, z = 0.000 }, level = 15, drop_id = 1010400, pose_id = 9005, persistent = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 406003, gadget_id = 70360001, pos = { x = 2028.728, y = 261.413, z = -303.193 }, rot = { x = 0.000, y = 320.280, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 406004, gadget_id = 70360001, pos = { x = 2874.635, y = 286.986, z = -1188.585 }, rot = { x = 0.000, y = 176.400, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 406005, gadget_id = 70360001, pos = { x = 1634.718, y = 345.097, z = -2130.693 }, rot = { x = 0.000, y = 165.770, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 406006, gadget_id = 70360001, pos = { x = 1460.431, y = 271.974, z = -1546.584 }, rot = { x = 0.000, y = 254.900, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 406007, gadget_id = 70360001, pos = { x = 1884.783, y = 203.452, z = -1269.112 }, rot = { x = 6.920, y = 141.711, z = 344.732 }, level = 10, area_id = 2 },
	{ config_id = 406021, gadget_id = 70360001, pos = { x = 2582.467, y = 257.436, z = 198.228 }, rot = { x = 0.000, y = 131.220, z = 0.000 }, level = 5, area_id = 4 },
	{ config_id = 406022, gadget_id = 70360001, pos = { x = 1571.295, y = 299.847, z = 174.423 }, rot = { x = 0.000, y = 281.500, z = 0.000 }, level = 5, area_id = 5 },
	{ config_id = 406023, gadget_id = 70360001, pos = { x = 1907.715, y = 219.556, z = 622.946 }, rot = { x = 0.000, y = 225.100, z = 0.000 }, level = 5, area_id = 5 },
	{ config_id = 406024, gadget_id = 70360001, pos = { x = 845.041, y = 388.961, z = 1466.902 }, rot = { x = 0.000, y = 340.800, z = 0.000 }, level = 5, area_id = 6 },
	{ config_id = 406025, gadget_id = 70360001, pos = { x = 405.427, y = 180.500, z = 865.864 }, rot = { x = 0.000, y = 335.500, z = 0.000 }, level = 5, area_id = 6 },
	{ config_id = 406026, gadget_id = 70360001, pos = { x = 157.418, y = 188.407, z = 1327.868 }, rot = { x = 0.000, y = 359.700, z = 0.000 }, level = 5, area_id = 6 },
	{ config_id = 406027, gadget_id = 70360001, pos = { x = -612.472, y = 184.204, z = 1064.074 }, rot = { x = 0.000, y = 26.800, z = 0.000 }, level = 5, area_id = 8 },
	{ config_id = 406028, gadget_id = 70360001, pos = { x = 653.256, y = 286.856, z = -391.669 }, rot = { x = 0.000, y = 233.100, z = 0.000 }, level = 5, area_id = 9 },
	{ config_id = 406029, gadget_id = 70360001, pos = { x = -184.309, y = 322.148, z = 130.446 }, rot = { x = 0.000, y = 295.700, z = 0.000 }, level = 5, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1406002, name = "GROUP_REFRESH_406002", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_406002", trigger_count = 0 },
	{ config_id = 1406030, name = "ANY_MONSTER_DIE_406030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_406030", trigger_count = 0 },
	{ config_id = 1406032, name = "GROUP_LOAD_406032", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_406032", trigger_count = 0 },
	{ config_id = 1406033, name = "GROUP_LOAD_406033", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_406033" }
}

-- 变量
variables = {
	{ config_id = 1, name = "currentPointIndex", value = -1, no_refresh = true },
	{ config_id = 2, name = "lastRefreshTime", value = -1, no_refresh = true },
	{ config_id = 3, name = "currentHiliPosition", value = 0, no_refresh = true },
	{ config_id = 4, name = "isFirstLoad", value = 0, no_refresh = true },
	{ config_id = 5, name = "isDead", value = 0, no_refresh = true }
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
		gadgets = { 406003, 406004, 406005, 406006, 406007, 406021, 406022, 406023, 406024, 406025, 406026, 406027, 406028, 406029 },
		regions = { },
		triggers = { "GROUP_REFRESH_406002", "ANY_MONSTER_DIE_406030", "GROUP_LOAD_406033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 406003, 406004, 406005, 406006, 406007, 406021, 406022, 406023, 406024, 406025, 406026, 406027, 406028, 406029 },
		regions = { },
		triggers = { "GROUP_REFRESH_406002", "ANY_MONSTER_DIE_406030", "GROUP_LOAD_406032" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_REFRESH_406002(context, evt)
	ScriptLib.SetGroupVariableValue(context, "isDead", 0) 
	if ScriptLib.GetGroupVariableValue(context, "lastRefreshTime")== -1 then
	ScriptLib.SetGroupVariableValue(context, "lastRefreshTime", ScriptLib.GetServerTime(context)) 
	end
	--配置操作台数量为0时边界处理
	if #defs.bornPoints==0 then
	return 0
	end
	--配置操作台数量为1时边界处理
	if #defs.bornPoints==1 then
	ScriptLib.SetGroupVariableValue(context, "currentPointIndex", 1) 
	for i=1,#gadgets do
	if gadgets[i].config_id == defs.bornPoints[1].gadget_id then
	ScriptLib.CreateMonsterByConfigIdByPos(context, defs.bornPoints[1].monster_id, gadgets[i].pos, gadgets[i].rot) 
	end
	return 0
	end
	end
	--正常配置复数个
	local idx=ScriptLib.GetGroupVariableValue(context, "currentPointIndex")
	local newIdx= -1
	math.randomseed(ScriptLib.GetServerTime(context))
		newIdx=math.random(#defs.bornPoints-1)
		if newIdx>=idx then
			newIdx=newIdx+1
		end
	idx=newIdx
	ScriptLib.SetGroupVariableValue(context, "currentPointIndex", idx) 
	for i=1,#gadgets do
	if gadgets[i].config_id == defs.bornPoints[idx].gadget_id then
	ScriptLib.CreateMonsterByConfigIdByPos(context, defs.bornPoints[idx].monster_id, gadgets[i].pos, gadgets[i].rot) 
	local variablePosition=defs.bornPoints[idx].gadget_id
	ScriptLib.SetGroupVariableValue(context, "currentHiliPosition", variablePosition) 
	end
	end
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_406030(context, evt)
	ScriptLib.SetGroupVariableValue(context, "isDead", 1) 
	local lastRefreshTime=ScriptLib.GetGroupVariableValue(context, "lastRefreshTime")
	local currentTime=ScriptLib.GetServerTime(context)
	if (currentTime-lastRefreshTime)>=defs.groupRefreshTime then
	ScriptLib.RefreshGroup(context, { group_id = 133002406, suite = 2, refresh_level_revise = 0, exclude_prev =false })
	end
	ScriptLib.SetGroupVariableValue(context, "lastRefreshTime", ScriptLib.GetServerTime(context)) 
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_406032(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "isDead")==0 then
	local idx=ScriptLib.GetGroupVariableValue(context, "currentPointIndex")
	for i=1,#gadgets do
		if gadgets[i].config_id == defs.bornPoints[idx].gadget_id then
		ScriptLib.CreateMonsterByConfigIdByPos(context, defs.bornPoints[idx].monster_id, gadgets[i].pos, gadgets[i].rot) 
		end
		end
	end
	return 0
	 
end

-- 触发操作
function action_EVENT_GROUP_LOAD_406033(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "isFirstLoad")== 0 then
	ScriptLib.RefreshGroup(context, { group_id = 133002406, suite = 2, refresh_level_revise = 0, exclude_prev =false })
	ScriptLib.SetGroupVariableValue(context, "isFirstLoad", 1) 
	else
	ScriptLib.RefreshGroup(context, { group_id = 133002406, suite = 2, refresh_level_revise = 0, exclude_prev =false })
	end
	return 0
end