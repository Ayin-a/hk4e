-- 基础信息
local base_info = {
	group_id = 220129011
}

-- DEFS_MISCS
function SLC_Active_Portal(context)
        ScriptLib.PrintContextLog(context, "SLC_Active_Portal:run func")
        if ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id}) == 11002 then
                ScriptLib.PrintContextLog(context, "SLC_Active_Portal:触发传送")
                ScriptLib.CreateGadget(context, { config_id = 11003 })
        end
        return 0
end

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
	{ config_id = 11002, gadget_id = 70800140, pos = { x = -456.436, y = -1.932, z = -85.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked },
	{ config_id = 11003, gadget_id = 70800172, pos = { x = -456.436, y = -1.932, z = -85.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 11001, shape = RegionShape.SPHERE, radius = 100, pos = { x = -455.335, y = -1.932, z = -64.483 } }
}

-- 触发器
triggers = {
	{ config_id = 1011001, name = "ENTER_REGION_11001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11001", action = "action_EVENT_ENTER_REGION_11001", trigger_count = 0 }
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
		regions = { 11001 },
		triggers = { "ENTER_REGION_11001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 11002 },
		regions = { 11001 },
		triggers = { "ENTER_REGION_11001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 11003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_11001(context, evt)
	if evt.param1 ~= 11001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11001(context, evt)
	-- 立刻切换天气
	ScriptLib.EnterWeatherArea(context, 10098)
	--设置时间通道的变量
	ScriptLib.SetGroupVariableValueByGroup(context, "time", 1, 220129014)
	
	return 0
	
end