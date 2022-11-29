-- 基础信息
local base_info = {
	group_id = 144002093
}

-- Trigger变量
local defs = {
	group_id = 144002093,
	gadget_signal_id = 93001
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
	{ config_id = 93001, gadget_id = 70360001, pos = { x = 584.474, y = 288.379, z = -509.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
	{ config_id = 93003, shape = RegionShape.SPHERE, radius = 10, pos = { x = 584.474, y = 288.379, z = -509.928 }, area_id = 101 }
}

-- 触发器
triggers = {
	{ config_id = 1093003, name = "ENTER_REGION_93003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_93003", action = "action_EVENT_ENTER_REGION_93003", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 93004, pos = { x = 593.207, y = 286.541, z = -509.108 }, rot = { x = 0.000, y = 104.594, z = 0.000 }, area_id = 101 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 93002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 584.999, y = 288.355, z = -509.266 }, area_id = 101 }
	},
	triggers = {
		{ config_id = 1093002, name = "ENTER_REGION_93002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_93002", action = "action_EVENT_ENTER_REGION_93002" }
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
		gadgets = { 93001 },
		regions = { 93003 },
		triggers = { "ENTER_REGION_93003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_93003(context, evt)
	if evt.param1 ~= 93003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_93003(context, evt)
	ScriptLib.UnlockFloatSignal(context, defs.group_id, defs.gadget_signal_id)
	
	return 0
end