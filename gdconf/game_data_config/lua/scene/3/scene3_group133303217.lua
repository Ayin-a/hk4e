-- 基础信息
local base_info = {
	group_id = 133303217
}

-- Trigger变量
local defs = {
	point_camera = 217002,
	gadget_lookEntity = 217001,
	look_duration = 3
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 0,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = true,
    delay = 0,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[217004] = { config_id = 217004, monster_id = 21010101, pos = { x = -1284.910, y = 268.810, z = 3572.954 }, rot = { x = 0.000, y = 163.950, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 23 },
	[217005] = { config_id = 217005, monster_id = 21020201, pos = { x = -1314.971, y = 278.144, z = 3619.331 }, rot = { x = 0.000, y = 304.849, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 23 },
	[217006] = { config_id = 217006, monster_id = 21010101, pos = { x = -1326.203, y = 280.711, z = 3625.836 }, rot = { x = 0.000, y = 266.983, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9013, area_id = 23 },
	[217007] = { config_id = 217007, monster_id = 21010101, pos = { x = -1299.162, y = 269.063, z = 3589.361 }, rot = { x = 0.000, y = 338.530, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 402, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 封印门占位
	[217001] = { config_id = 217001, gadget_id = 70290579, pos = { x = -1285.034, y = 268.343, z = 3570.366 }, rot = { x = 0.000, y = 355.112, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	-- 上塔取消封印
	[217003] = { config_id = 217003, shape = RegionShape.SPHERE, radius = 4, pos = { x = -1283.865, y = 284.498, z = 3565.041 }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 上塔取消封印
	{ config_id = 1217003, name = "ENTER_REGION_217003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_217003", action = "action_EVENT_ENTER_REGION_217003" }
}

-- 点位
points = {
	[217002] = { config_id = 217002, pos = { x = -1277.514, y = 287.943, z = 3598.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
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
		monsters = { 217004, 217005, 217006, 217007 },
		gadgets = { 217001 },
		regions = { 217003 },
		triggers = { "ENTER_REGION_217003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_217003(context, evt)
	if evt.param1 ~= 217003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_217003(context, evt)
	-- 将configid为 217001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	LF_PointLook(context)
	return 0
end

require "V3_0/CameraLook"