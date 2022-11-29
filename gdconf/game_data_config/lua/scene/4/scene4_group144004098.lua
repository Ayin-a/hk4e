-- 基础信息
local base_info = {
	group_id = 144004098
}

-- Trigger变量
local defs = {
	group_id = 144004098,
	gadget_signal_id = 98001
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
	{ config_id = 98001, gadget_id = 70360001, pos = { x = -338.348, y = 230.159, z = -652.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
	-- 靠近海上浮标后更新信号源
	{ config_id = 98003, shape = RegionShape.SPHERE, radius = 10, pos = { x = -335.314, y = 229.888, z = -655.726 }, area_id = 100 }
}

-- 触发器
triggers = {
	-- 靠近海上浮标后更新信号源
	{ config_id = 1098003, name = "ENTER_REGION_98003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_98003", action = "action_EVENT_ENTER_REGION_98003", trigger_count = 0 }
}

-- 点位
points = {
	-- 声明创建船只的transform
	{ config_id = 98004, pos = { x = -332.335, y = 228.506, z = -647.114 }, rot = { x = 0.000, y = 53.872, z = 0.000 }, area_id = 100 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 98002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -338.902, y = 230.252, z = -651.456 }, area_id = 100 }
	},
	triggers = {
		{ config_id = 1098002, name = "ENTER_REGION_98002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_98002", action = "action_EVENT_ENTER_REGION_98002" }
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
		monsters = { },
		gadgets = { 98001 },
		regions = { 98003 },
		triggers = { "ENTER_REGION_98003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_98003(context, evt)
	if evt.param1 ~= 98003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_98003(context, evt)
	ScriptLib.UnlockFloatSignal(context, defs.group_id, defs.gadget_signal_id)
	
	return 0
end