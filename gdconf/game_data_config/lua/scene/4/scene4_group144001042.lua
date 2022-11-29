-- 基础信息
local base_info = {
	group_id = 144001042
}

-- Trigger变量
local defs = {
	group_id = 144001042,
	gadget_signal_id = 42001
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
	{ config_id = 42001, gadget_id = 70360001, pos = { x = 210.143, y = 215.354, z = 316.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
	-- 靠近海上浮标后更新信号源
	{ config_id = 42003, shape = RegionShape.SPHERE, radius = 10, pos = { x = 205.115, y = 215.109, z = 318.508 }, area_id = 102 }
}

-- 触发器
triggers = {
	-- 靠近海上浮标后更新信号源
	{ config_id = 1042003, name = "ENTER_REGION_42003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_42003", action = "action_EVENT_ENTER_REGION_42003", trigger_count = 0 }
}

-- 点位
points = {
	-- 声明创建船只的transform
	{ config_id = 42004, pos = { x = 216.941, y = 212.493, z = 320.899 }, rot = { x = 0.000, y = 53.872, z = 0.000 }, area_id = 102 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 42002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 210.380, y = 215.327, z = 316.537 }, area_id = 102 }
	},
	triggers = {
		{ config_id = 1042002, name = "ENTER_REGION_42002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_42002", action = "action_EVENT_ENTER_REGION_42002" }
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
		gadgets = { 42001 },
		regions = { 42003 },
		triggers = { "ENTER_REGION_42003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_42003(context, evt)
	if evt.param1 ~= 42003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_42003(context, evt)
	ScriptLib.UnlockFloatSignal(context, defs.group_id, defs.gadget_signal_id)
	
	return 0
end