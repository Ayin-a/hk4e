-- 基础信息
local base_info = {
	group_id = 133314195
}

-- Trigger变量
local defs = {
	point_camera = 195002,
	gadget_lookEntity = 195003,
	look_duration = 4
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,  --镜头的移动路径，球面0，直线1
    blend_duration = 2, --镜头的移动时间
    is_force_walk = false, --强制玩家行走
    is_allow_input = false, --允许输入
    delay = 0, --触发延迟
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
	[195003] = { config_id = 195003, gadget_id = 70360001, pos = { x = -953.619, y = -43.464, z = 4968.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	[195001] = { config_id = 195001, shape = RegionShape.SPHERE, radius = 20, pos = { x = -976.114, y = -36.069, z = 4970.890 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1195001, name = "ENTER_REGION_195001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_195001", action = "action_EVENT_ENTER_REGION_195001" }
}

-- 点位
points = {
	[195002] = { config_id = 195002, pos = { x = -976.241, y = -28.963, z = 4951.458 }, rot = { x = 0.000, y = 50.209, z = 0.000 }, area_id = 32 }
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
		monsters = { },
		gadgets = { },
		regions = { 195001 },
		triggers = { "ENTER_REGION_195001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_195001(context, evt)
	if evt.param1 ~= 195001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_195001(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/CameraLook"