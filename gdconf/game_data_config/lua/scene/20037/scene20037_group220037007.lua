-- 基础信息
local base_info = {
	group_id = 220037007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 23010401, pos = { x = 162.845, y = 9.475, z = 34.239 }, rot = { x = 0.000, y = 331.320, z = 0.000 }, level = 1 },
	{ config_id = 7002, monster_id = 23010401, pos = { x = 155.430, y = 9.530, z = 34.188 }, rot = { x = 0.000, y = 33.687, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 7005, shape = RegionShape.SPHERE, radius = 10, pos = { x = 158.549, y = 9.385, z = 42.428 } }
}

-- 触发器
triggers = {
	{ config_id = 1007004, name = "ANY_MONSTER_DIE_7004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7004", action = "action_EVENT_ANY_MONSTER_DIE_7004" },
	{ config_id = 1007005, name = "ENTER_REGION_7005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7005", action = "action_EVENT_ENTER_REGION_7005" }
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
		regions = { 7005 },
		triggers = { "ENTER_REGION_7005" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7001, 7002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7004" },
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
function condition_EVENT_ANY_MONSTER_DIE_7004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7004(context, evt)
	-- 改变指定group组220037001中， configid为1013的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037001, 1013, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1012216") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220037006, monsters = {}, gadgets = {6007} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7005(context, evt)
	if evt.param1 ~= 7005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7005(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=151.7,y=9.5,z=44.7}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 200370101, pos, 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220037007, 2)
	
	return 0
end