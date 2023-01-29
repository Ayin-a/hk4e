-- 基础信息
local base_info = {
	group_id = 133314228
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 228001, monster_id = 28060301, pos = { x = -254.478, y = -13.459, z = 4620.707 }, rot = { x = 0.000, y = 320.850, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 228002, monster_id = 28060301, pos = { x = -297.066, y = -9.439, z = 4601.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 228003, monster_id = 28060301, pos = { x = -307.025, y = 4.092, z = 4603.353 }, rot = { x = 0.000, y = 103.008, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 228004, monster_id = 28060301, pos = { x = -280.984, y = -23.712, z = 4618.851 }, rot = { x = 0.000, y = 105.456, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 228005, monster_id = 28060301, pos = { x = -216.652, y = -23.653, z = 4762.020 }, rot = { x = 0.000, y = 51.141, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 },
	-- 盘旋
	{ config_id = 228007, monster_id = 28060301, pos = { x = -293.981, y = -1.981, z = 4620.079 }, rot = { x = 0.000, y = 43.643, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 111, area_id = 32 },
	{ config_id = 228008, monster_id = 28060301, pos = { x = -192.364, y = -14.319, z = 4824.861 }, rot = { x = 0.000, y = 161.979, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 228009, monster_id = 28060301, pos = { x = -189.235, y = -47.205, z = 4848.508 }, rot = { x = 0.000, y = 100.138, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 101, area_id = 32 },
	{ config_id = 228010, monster_id = 28060301, pos = { x = -144.741, y = 1.012, z = 4912.479 }, rot = { x = 0.000, y = 20.807, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 228006, shape = RegionShape.SPHERE, radius = 20, pos = { x = -277.707, y = -8.942, z = 4581.097 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1228006, name = "ENTER_REGION_228006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_228006", action = "action_EVENT_ENTER_REGION_228006" }
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
		monsters = { 228001, 228002, 228003, 228004, 228005, 228007, 228008, 228009, 228010 },
		gadgets = { },
		regions = { 228006 },
		triggers = { "ENTER_REGION_228006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_228006(context, evt)
	if evt.param1 ~= 228006 then return false end
	
	-- 判断是区域228006
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 228006 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_228006(context, evt)
	ScriptLib.SetMonsterBattleByGroup(context, 228001, 133314228)
	
	return 0
end