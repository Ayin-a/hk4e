-- 基础信息
local base_info = {
	group_id = 133003510
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
	{ config_id = 510002, gadget_id = 70710165, pos = { x = 2185.010, y = 211.053, z = -1047.433 }, rot = { x = 0.000, y = 282.770, z = 0.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 510001, shape = RegionShape.SPHERE, radius = 2.5, pos = { x = 2181.480, y = 210.088, z = -1038.790 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1510001, name = "ENTER_REGION_510001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_510001", action = "action_EVENT_ENTER_REGION_510001", trigger_count = 0 },
	{ config_id = 1510003, name = "QUEST_FINISH_510003", event = EventType.EVENT_QUEST_FINISH, source = "1050213", condition = "", action = "action_EVENT_QUEST_FINISH_510003" }
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
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 510001 },
		triggers = { "ENTER_REGION_510001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 510002 },
		regions = { },
		triggers = { "QUEST_FINISH_510003" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_510001(context, evt)
	if evt.param1 ~= 510001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_510001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003510") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_510003(context, evt)
	-- 将configid为 510002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 510002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end