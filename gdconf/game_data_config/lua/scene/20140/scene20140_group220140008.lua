-- 基础信息
local base_info = {
	group_id = 220140008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 25080401, pos = { x = 64.212, y = 56.850, z = 400.331 }, rot = { x = 0.000, y = 182.593, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 8002, monster_id = 25050301, pos = { x = 59.982, y = 56.850, z = 401.232 }, rot = { x = 0.000, y = 164.393, z = 0.000 }, level = 1 },
	{ config_id = 8003, monster_id = 25050301, pos = { x = 61.467, y = 56.850, z = 396.080 }, rot = { x = 0.000, y = 244.746, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 8005, shape = RegionShape.CUBIC, size = { x = 30.000, y = 10.000, z = 30.000 }, pos = { x = 59.617, y = 56.850, z = 394.794 } }
}

-- 触发器
triggers = {
	{ config_id = 1008005, name = "ENTER_REGION_8005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8005", action = "action_EVENT_ENTER_REGION_8005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1008006, name = "ANY_MONSTER_DIE_8006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8006", action = "action_EVENT_ANY_MONSTER_DIE_8006" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 8005 },
		triggers = { "ENTER_REGION_8005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 8001, 8002, 8003 },
		gadgets = { },
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
function condition_EVENT_ENTER_REGION_8005(context, evt)
	if evt.param1 ~= 8005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220140008, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end