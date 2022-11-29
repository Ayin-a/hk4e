-- 基础信息
local base_info = {
	group_id = 133212585
}

-- Trigger变量
local defs = {
	region_Enter = 585008,
	region_Leave = 585009,
	group_id = 133212585,
	gallery_id = 12005,
	monsterWave = {18002,18010,18002,18010,18002,18010},
	prospect_id = {585002,585003,585004},
	challenge_id = 2002004
}

-- DEFS_MISCS
local Pursina = {
	{585002,585005},	
	{585003,585006},
	{585004,585007},
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
	{ config_id = 585001, gadget_id = 70800054, pos = { x = -3861.317, y = 200.144, z = -2928.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 585002, gadget_id = 70800044, pos = { x = -3850.369, y = 200.300, z = -2935.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 585003, gadget_id = 70800044, pos = { x = -3876.052, y = 200.097, z = -2914.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 585004, gadget_id = 70800044, pos = { x = -3870.742, y = 200.219, z = -2930.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 585005, gadget_id = 70800047, pos = { x = -3850.369, y = 200.300, z = -2935.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 585006, gadget_id = 70800048, pos = { x = -3876.052, y = 200.097, z = -2914.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 585007, gadget_id = 70800049, pos = { x = -3870.742, y = 200.219, z = -2930.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 585008, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3864.823, y = 200.438, z = -2931.121 }, area_id = 12 },
	{ config_id = 585009, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3864.823, y = 200.438, z = -2931.121 }, area_id = 12 },
	{ config_id = 585057, shape = RegionShape.SPHERE, radius = 12, pos = { x = -3864.823, y = 200.438, z = -2931.121 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1585010, name = "SELECT_OPTION_585010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_585010", action = "action_EVENT_SELECT_OPTION_585010" },
	{ config_id = 1585011, name = "TIME_AXIS_PASS_585011", event = EventType.EVENT_TIME_AXIS_PASS, source = "looptime", condition = "", action = "action_EVENT_TIME_AXIS_PASS_585011", trigger_count = 0 },
	{ config_id = 1585012, name = "VARIABLE_CHANGE_585012", event = EventType.EVENT_VARIABLE_CHANGE, source = "refreshMonster", condition = "", action = "action_EVENT_VARIABLE_CHANGE_585012", trigger_count = 0 },
	{ config_id = 1585019, name = "VARIABLE_CHANGE_585019", event = EventType.EVENT_VARIABLE_CHANGE, source = "IsFinished", condition = "condition_EVENT_VARIABLE_CHANGE_585019", action = "action_EVENT_VARIABLE_CHANGE_585019" },
	{ config_id = 1585056, name = "TIMER_EVENT_585056", event = EventType.EVENT_TIMER_EVENT, source = "starttime", condition = "", action = "action_EVENT_TIMER_EVENT_585056" },
	{ config_id = 1585057, name = "ENTER_REGION_585057", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_585057", action = "action_EVENT_ENTER_REGION_585057" },
	{ config_id = 1585058, name = "GADGET_STATE_CHANGE_585058", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_585058", action = "action_EVENT_GADGET_STATE_CHANGE_585058" }
}

-- 点位
points = {
	{ config_id = 585020, pos = { x = -3844.801, y = 200.536, z = -2942.542 }, rot = { x = 0.000, y = 311.159, z = 0.000 }, area_id = 12, tag = 2 },
	{ config_id = 585021, pos = { x = -3846.319, y = 200.606, z = -2942.849 }, rot = { x = 0.000, y = 311.159, z = 0.000 }, area_id = 12, tag = 2 },
	{ config_id = 585022, pos = { x = -3841.595, y = 200.269, z = -2940.610 }, rot = { x = 0.000, y = 311.159, z = 0.000 }, area_id = 12, tag = 2 },
	{ config_id = 585023, pos = { x = -3842.058, y = 200.357, z = -2942.915 }, rot = { x = 0.000, y = 311.159, z = 0.000 }, area_id = 12, tag = 2 },
	{ config_id = 585024, pos = { x = -3843.890, y = 200.391, z = -2941.058 }, rot = { x = 0.000, y = 311.159, z = 0.000 }, area_id = 12, tag = 2 },
	{ config_id = 585025, pos = { x = -3839.694, y = 200.283, z = -2941.833 }, rot = { x = 0.000, y = 311.159, z = 0.000 }, area_id = 12, tag = 2 },
	{ config_id = 585026, pos = { x = -3874.835, y = 200.459, z = -2904.759 }, rot = { x = 0.000, y = 212.514, z = 0.000 }, area_id = 12, tag = 4 },
	{ config_id = 585027, pos = { x = -3871.439, y = 200.338, z = -2900.085 }, rot = { x = 0.000, y = 212.514, z = 0.000 }, area_id = 12, tag = 4 },
	{ config_id = 585028, pos = { x = -3876.663, y = 200.639, z = -2903.264 }, rot = { x = 0.000, y = 167.098, z = 0.000 }, area_id = 12, tag = 4 },
	{ config_id = 585029, pos = { x = -3876.129, y = 200.587, z = -2900.013 }, rot = { x = 0.000, y = 178.947, z = 0.000 }, area_id = 12, tag = 4 },
	{ config_id = 585030, pos = { x = -3879.493, y = 200.944, z = -2900.601 }, rot = { x = 0.000, y = 171.238, z = 0.000 }, area_id = 12, tag = 4 },
	{ config_id = 585031, pos = { x = -3873.306, y = 200.434, z = -2899.045 }, rot = { x = 0.000, y = 201.679, z = 0.000 }, area_id = 12, tag = 4 },
	{ config_id = 585032, pos = { x = -3879.110, y = 200.925, z = -2936.546 }, rot = { x = 0.000, y = 47.472, z = 0.000 }, area_id = 12, tag = 8 },
	{ config_id = 585033, pos = { x = -3881.684, y = 200.929, z = -2935.705 }, rot = { x = 0.000, y = 92.887, z = 0.000 }, area_id = 12, tag = 8 },
	{ config_id = 585034, pos = { x = -3880.891, y = 201.381, z = -2938.290 }, rot = { x = 0.000, y = 47.472, z = 0.000 }, area_id = 12, tag = 8 },
	{ config_id = 585035, pos = { x = -3879.889, y = 201.655, z = -2940.127 }, rot = { x = 0.000, y = 47.472, z = 0.000 }, area_id = 12, tag = 8 },
	{ config_id = 585036, pos = { x = -3877.860, y = 201.270, z = -2939.196 }, rot = { x = 0.000, y = 47.472, z = 0.000 }, area_id = 12, tag = 8 },
	{ config_id = 585037, pos = { x = -3876.067, y = 201.431, z = -2940.583 }, rot = { x = 0.000, y = 47.472, z = 0.000 }, area_id = 12, tag = 8 },
	{ config_id = 585038, pos = { x = -3845.078, y = 200.373, z = -2940.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 12, tag = 16 },
	{ config_id = 585039, pos = { x = -3852.231, y = 200.679, z = -2938.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 12, tag = 16 },
	{ config_id = 585040, pos = { x = -3873.298, y = 200.134, z = -2911.060 }, rot = { x = 0.000, y = 184.711, z = 0.000 }, area_id = 12, tag = 16 },
	{ config_id = 585041, pos = { x = -3879.372, y = 200.353, z = -2913.437 }, rot = { x = 0.000, y = 144.397, z = 0.000 }, area_id = 12, tag = 16 },
	{ config_id = 585042, pos = { x = -3877.672, y = 200.484, z = -2909.466 }, rot = { x = 0.000, y = 171.315, z = 0.000 }, area_id = 12, tag = 16 },
	{ config_id = 585043, pos = { x = -3871.478, y = 200.011, z = -2911.502 }, rot = { x = 0.000, y = 231.938, z = 0.000 }, area_id = 12, tag = 16 },
	{ config_id = 585044, pos = { x = -3873.427, y = 200.209, z = -2908.846 }, rot = { x = 0.000, y = 169.259, z = 0.000 }, area_id = 12, tag = 32 },
	{ config_id = 585045, pos = { x = -3878.796, y = 200.430, z = -2911.818 }, rot = { x = 0.000, y = 150.183, z = 0.000 }, area_id = 12, tag = 32 },
	{ config_id = 585046, pos = { x = -3868.345, y = 200.547, z = -2933.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 12, tag = 32 },
	{ config_id = 585047, pos = { x = -3875.309, y = 200.517, z = -2933.514 }, rot = { x = 0.000, y = 49.317, z = 0.000 }, area_id = 12, tag = 32 },
	{ config_id = 585048, pos = { x = -3870.219, y = 201.058, z = -2938.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 12, tag = 32 },
	{ config_id = 585049, pos = { x = -3873.972, y = 200.753, z = -2936.420 }, rot = { x = 0.000, y = 17.249, z = 0.000 }, area_id = 12, tag = 32 },
	{ config_id = 585050, pos = { x = -3868.745, y = 200.717, z = -2935.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 12, tag = 64 },
	{ config_id = 585051, pos = { x = -3875.963, y = 200.679, z = -2934.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 12, tag = 64 },
	{ config_id = 585052, pos = { x = -3847.973, y = 200.425, z = -2940.091 }, rot = { x = 0.000, y = 335.801, z = 0.000 }, area_id = 12, tag = 64 },
	{ config_id = 585053, pos = { x = -3845.460, y = 200.042, z = -2935.402 }, rot = { x = 0.000, y = 269.080, z = 0.000 }, area_id = 12, tag = 64 },
	{ config_id = 585054, pos = { x = -3851.725, y = 200.625, z = -2937.652 }, rot = { x = 0.000, y = 335.801, z = 0.000 }, area_id = 12, tag = 64 },
	{ config_id = 585055, pos = { x = -3851.380, y = 200.653, z = -2940.504 }, rot = { x = 0.000, y = 352.732, z = 0.000 }, area_id = 12, tag = 64 },
	{ config_id = 585059, pos = { x = -3857.368, y = 200.286, z = -2930.077 }, rot = { x = 0.000, y = 288.288, z = 0.000 }, area_id = 12 }
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
		{ config_id = 1585013, name = "POOL_MONSTER_TIDE_DIE_585013", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_585013", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_585013", trigger_count = 0 },
		{ config_id = 1585014, name = "POOL_MONSTER_TIDE_DIE_585014", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_585014", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_585014", trigger_count = 0 },
		{ config_id = 1585015, name = "POOL_MONSTER_TIDE_DIE_585015", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_585015", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_585015", trigger_count = 0 },
		{ config_id = 1585016, name = "POOL_MONSTER_TIDE_DIE_585016", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_585016", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_585016", trigger_count = 0 },
		{ config_id = 1585017, name = "POOL_MONSTER_TIDE_DIE_585017", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_585017", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_585017", trigger_count = 0 },
		{ config_id = 1585018, name = "POOL_MONSTER_TIDE_DIE_585018", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_585018", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_585018", trigger_count = 0 }
	}
}

-- 视野组
sight_groups = {
	{ 585002, 585003, 585004, 585005, 585006, 585007 }
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
		gadgets = { 585001, 585002, 585003, 585004 },
		regions = { 585008, 585009, 585057 },
		triggers = { "SELECT_OPTION_585010", "TIME_AXIS_PASS_585011", "VARIABLE_CHANGE_585012", "VARIABLE_CHANGE_585019", "TIMER_EVENT_585056", "ENTER_REGION_585057", "GADGET_STATE_CHANGE_585058" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_585010(context, evt)
	-- 判断是gadgetid 585001 option_id 175
	if 585001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_585010(context, evt)
	-- 将configid为 585001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 585001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_585011(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_585012(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_585019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "IsFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_585019(context, evt)
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
function action_EVENT_TIMER_EVENT_585056(context, evt)
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
function condition_EVENT_ENTER_REGION_585057(context, evt)
	if evt.param1 ~= 585057 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_585057(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,146,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_585058(context, evt)
	if (defs.prospect_id[1] ~= evt.param2 and defs.prospect_id[2] ~= evt.param2 and defs.prospect_id[3] ~= evt.param2) or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_585058(context, evt)
	-- 延迟10秒后,向groupId为：133212585的对象,请求一次调用,并将string参数："starttime" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133212585, "starttime", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

require "V2_2/Dig"