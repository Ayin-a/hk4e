-- 基础信息
local base_info = {
	group_id = 199004015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15003, monster_id = 20010601, pos = { x = -307.578, y = 118.904, z = -1006.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 400 },
	{ config_id = 15004, monster_id = 20010701, pos = { x = -302.874, y = 118.904, z = -1007.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 15001, gadget_id = 70211002, pos = { x = -305.544, y = 118.528, z = -1007.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050196, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 1 }, area_id = 400 }
}

-- 区域
regions = {
	{ config_id = 15002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -305.196, y = 118.904, z = -1006.944 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1015002, name = "ENTER_REGION_15002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15002", action = "action_EVENT_ENTER_REGION_15002" },
	{ config_id = 1015005, name = "ANY_MONSTER_DIE_15005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15005", action = "action_EVENT_ANY_MONSTER_DIE_15005", trigger_count = 0 }
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
		monsters = { 15003, 15004 },
		gadgets = { 15001 },
		regions = { 15002 },
		triggers = { "ENTER_REGION_15002", "ANY_MONSTER_DIE_15005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_15002(context, evt)
	if evt.param1 ~= 15002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15002(context, evt)
	    if ScriptLib.GetHostQuestState(context,7902001)==3 then
	-- 调用提示id为 1111230 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111230) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	end
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15005(context, evt)
	-- 将configid为 15001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end