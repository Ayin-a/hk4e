-- 基础信息
local base_info = {
	group_id = 144001109
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 109001, monster_id = 21030101, pos = { x = 745.654, y = 202.521, z = 205.737 }, rot = { x = 0.000, y = 341.969, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 102, guest_ban_drop = 1000100 },
	{ config_id = 109009, monster_id = 20011001, pos = { x = 746.977, y = 202.327, z = 206.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 102, guest_ban_drop = 1000100 },
	{ config_id = 109010, monster_id = 20011001, pos = { x = 744.483, y = 202.433, z = 206.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 102, guest_ban_drop = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	-- 检测玩家探索到
	{ config_id = 109002, shape = RegionShape.SPHERE, radius = 11, pos = { x = 745.324, y = 203.102, z = 206.057 }, area_id = 102 }
}

-- 触发器
triggers = {
	-- 检测玩家探索到
	{ config_id = 1109002, name = "ENTER_REGION_109002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_109002", action = "action_EVENT_ENTER_REGION_109002" },
	{ config_id = 1109003, name = "ANY_MONSTER_DIE_109003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_109003", action = "action_EVENT_ANY_MONSTER_DIE_109003" },
	{ config_id = 1109004, name = "QUEST_START_109004", event = EventType.EVENT_QUEST_START, source = "7900204", condition = "", action = "action_EVENT_QUEST_START_109004" },
	{ config_id = 1109011, name = "ANY_MONSTER_DIE_109011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_109011", action = "action_EVENT_ANY_MONSTER_DIE_109011" },
	{ config_id = 1109012, name = "TIMER_EVENT_109012", event = EventType.EVENT_TIMER_EVENT, source = "createmonster", condition = "", action = "action_EVENT_TIMER_EVENT_109012" }
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
		regions = { 109002 },
		triggers = { "ENTER_REGION_109002", "ANY_MONSTER_DIE_109003", "QUEST_START_109004", "ANY_MONSTER_DIE_109011", "TIMER_EVENT_109012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 109001, 109009, 109010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_109002(context, evt)
	if evt.param1 ~= 109002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_109002(context, evt)
	-- 针对当前group内变量名为 "findpoint" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "findpoint", 1, 144001002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "4001002" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "4001002", 1, 144001002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_109003(context, evt)
	--判断死亡怪物的configid是否为 109001
	if evt.param1 ~= 109001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_109003(context, evt)
	-- 针对当前group内变量名为 "samandie" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "samandie", 1, 144001002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_109004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001109, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_109011(context, evt)
	--判断死亡怪物的configid是否为 109001
	if evt.param1 ~= 109001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_109011(context, evt)
	-- 延迟5秒后,向groupId为：144001109的对象,请求一次调用,并将string参数："createmonster" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001109, "createmonster", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_109012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001115, 2)
	
	return 0
end