-- 基础信息
local base_info = {
	group_id = 220134075
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
	{ config_id = 75001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 499.998, y = 606.313, z = -1569.724 } },
	{ config_id = 75002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 499.998, y = 606.313, z = -1569.724 } }
}

-- 触发器
triggers = {
	{ config_id = 1075001, name = "ENTER_REGION_75001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_75001", action = "action_EVENT_ENTER_REGION_75001", trigger_count = 0 },
	{ config_id = 1075002, name = "ENTER_REGION_75002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_75002", action = "action_EVENT_ENTER_REGION_75002", trigger_count = 0 }
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
	suite = 2,
	end_suite = 1,
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
		regions = { 75001, 75002 },
		triggers = { "ENTER_REGION_75001", "ENTER_REGION_75002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 75001, 75002 },
		triggers = { "ENTER_REGION_75001", "ENTER_REGION_75002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_75001(context, evt)
	if evt.param1 ~= 75001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_75001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monahouse") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_75002(context, evt)
	if evt.param1 ~= 75002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_75002(context, evt)
	if ScriptLib.GetHostQuestState(context,4007609)==3 then
		if evt.uid ~= nil then
	    local t_pos = {x=514, y=847, z=-1205}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=1, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	end
	return 0
end