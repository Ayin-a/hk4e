-- 基础信息
local base_info = {
	group_id = 220137029
}

-- DEFS_MISCS
--激活梦境复苏之门
--key填regionid
--value为pointid
    local Check_Point_List = {
        [29001] = 9
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
}

-- 区域
regions = {
	-- 进入此区域触发梦境复苏之门
	{ config_id = 29001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 589.840, y = 73.959, z = -141.823 } }
}

-- 触发器
triggers = {
	-- 进入此区域触发梦境复苏之门
	{ config_id = 1029001, name = "ENTER_REGION_29001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_29001", action = "", trigger_count = 0 }
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
		regions = { 29001 },
		triggers = { "ENTER_REGION_29001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_29001(context, evt)
	if evt.param1 ~= 29001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

require "CheckPoint_Handler"