-- 基础信息
local base_info = {
	group_id = 144003059
}

-- Trigger变量
local defs = {
	group_id = 144003059,
	gadget_signal_id = 59001
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
	{ config_id = 59001, gadget_id = 70360001, pos = { x = -620.117, y = 207.578, z = 32.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
	-- 靠近海上浮标后更新信号源
	{ config_id = 59003, shape = RegionShape.SPHERE, radius = 10, pos = { x = -624.327, y = 207.620, z = 32.061 }, area_id = 103 }
}

-- 触发器
triggers = {
	-- 靠近海上浮标后更新信号源
	{ config_id = 1059003, name = "ENTER_REGION_59003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59003", action = "action_EVENT_ENTER_REGION_59003", trigger_count = 0 }
}

-- 点位
points = {
	-- 声明创建船只的transform
	{ config_id = 59004, pos = { x = -613.557, y = 206.320, z = 36.772 }, rot = { x = 0.000, y = 53.872, z = 0.000 }, area_id = 103 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 59002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -620.117, y = 207.578, z = 32.411 }, area_id = 103 }
	},
	triggers = {
		{ config_id = 1059002, name = "ENTER_REGION_59002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59002", action = "action_EVENT_ENTER_REGION_59002" }
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
		gadgets = { 59001 },
		regions = { 59003 },
		triggers = { "ENTER_REGION_59003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_59003(context, evt)
	if evt.param1 ~= 59003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59003(context, evt)
	ScriptLib.UnlockFloatSignal(context, defs.group_id, defs.gadget_signal_id)
	
	return 0
end