-- 基础信息
local base_info = {
	group_id = 133104832
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
	{ config_id = 832004, gadget_id = 70360001, pos = { x = 894.141, y = 256.333, z = 329.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 832003, shape = RegionShape.SPHERE, radius = 7, pos = { x = 894.342, y = 256.496, z = 329.215 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1832003, name = "ENTER_REGION_832003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_832003", action = "action_EVENT_ENTER_REGION_832003", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1832002, name = "GADGET_STATE_CHANGE_832002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_832002", action = "action_EVENT_GADGET_STATE_CHANGE_832002", trigger_count = 0 }
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
		gadgets = { 832004 },
		regions = { 832003 },
		triggers = { "ENTER_REGION_832003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_832003(context, evt)
	if evt.param1 ~= 832003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_832003(context, evt)
	-- 将configid为 832004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 832004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end