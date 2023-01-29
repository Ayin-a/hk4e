-- 基础信息
local base_info = {
	group_id = 220032002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2007, monster_id = 22010201, pos = { x = 401.838, y = -23.894, z = 131.946 }, rot = { x = 0.000, y = 357.945, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2008, monster_id = 21010401, pos = { x = 405.219, y = -24.050, z = 131.139 }, rot = { x = 0.000, y = 332.966, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2013, monster_id = 21010201, pos = { x = 404.734, y = -24.146, z = 135.378 }, rot = { x = 0.000, y = 341.104, z = 0.000 }, level = 1, pose_id = 9010 },
	{ config_id = 2014, monster_id = 21010201, pos = { x = 399.446, y = -24.150, z = 135.260 }, rot = { x = 0.000, y = 22.592, z = 0.000 }, level = 1, pose_id = 9010 },
	{ config_id = 2015, monster_id = 21010401, pos = { x = 398.646, y = -24.050, z = 130.722 }, rot = { x = 0.000, y = 21.797, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2030, monster_id = 20011001, pos = { x = 398.247, y = -24.160, z = 126.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2002, gadget_id = 70310001, pos = { x = 396.612, y = -23.887, z = 133.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70350002, pos = { x = 415.896, y = -24.160, z = 120.869 }, rot = { x = 0.000, y = 90.192, z = 0.000 }, level = 1 },
	{ config_id = 2006, gadget_id = 70900202, pos = { x = 448.424, y = -7.692, z = 130.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2009, gadget_id = 70310001, pos = { x = 407.313, y = -23.871, z = 133.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2010, gadget_id = 70310004, pos = { x = 403.283, y = -24.050, z = 122.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2011, gadget_id = 70220013, pos = { x = 413.245, y = -23.933, z = 110.275 }, rot = { x = 0.000, y = 325.719, z = 0.000 }, level = 1 },
	{ config_id = 2012, gadget_id = 70220014, pos = { x = 396.953, y = -24.139, z = 109.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2016, gadget_id = 70220014, pos = { x = 396.260, y = -23.791, z = 108.815 }, rot = { x = 271.282, y = 117.569, z = 26.342 }, level = 1 },
	{ config_id = 2017, gadget_id = 70220013, pos = { x = 398.679, y = -24.023, z = 109.483 }, rot = { x = 0.000, y = 299.373, z = 0.000 }, level = 1 },
	{ config_id = 2018, gadget_id = 70220026, pos = { x = 411.821, y = -23.933, z = 109.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2019, gadget_id = 70211101, pos = { x = 404.970, y = -23.434, z = 143.808 }, rot = { x = 0.000, y = 225.121, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 2020, gadget_id = 70220025, pos = { x = 396.525, y = -23.977, z = 109.904 }, rot = { x = 271.276, y = 284.403, z = 255.601 }, level = 1 },
	{ config_id = 2021, gadget_id = 70220025, pos = { x = 398.309, y = -23.871, z = 110.226 }, rot = { x = 271.276, y = 284.403, z = 255.601 }, level = 1 },
	{ config_id = 2022, gadget_id = 70310001, pos = { x = 414.043, y = -22.069, z = 114.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2023, gadget_id = 70310001, pos = { x = 414.102, y = -22.070, z = 126.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2024, gadget_id = 70220025, pos = { x = 389.153, y = -23.907, z = 118.421 }, rot = { x = 271.274, y = 284.403, z = 255.601 }, level = 1 },
	{ config_id = 2025, gadget_id = 70220025, pos = { x = 389.252, y = -23.968, z = 120.144 }, rot = { x = 271.274, y = 284.403, z = 255.601 }, level = 1 },
	{ config_id = 2026, gadget_id = 70220025, pos = { x = 389.298, y = -23.936, z = 121.623 }, rot = { x = 271.274, y = 284.403, z = 255.601 }, level = 1 },
	{ config_id = 2028, gadget_id = 70220025, pos = { x = 399.695, y = -23.375, z = 144.402 }, rot = { x = 271.276, y = 284.403, z = 255.601 }, level = 1 },
	{ config_id = 2029, gadget_id = 70220013, pos = { x = 389.046, y = -23.988, z = 120.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2003, shape = RegionShape.CUBIC, size = { x = 8.000, y = 10.000, z = 5.000 }, pos = { x = 406.284, y = -22.054, z = 106.850 } }
}

-- 触发器
triggers = {
	{ config_id = 1002001, name = "ANY_MONSTER_DIE_2001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2001", action = "action_EVENT_ANY_MONSTER_DIE_2001" },
	{ config_id = 1002003, name = "ENTER_REGION_2003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2003", action = "action_EVENT_ENTER_REGION_2003" },
	-- 保底-玩家在范围外杀怪也算任务完成
	{ config_id = 1002005, name = "ANY_MONSTER_DIE_2005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_2005" },
	{ config_id = 1002027, name = "QUEST_FINISH_2027", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_2027", action = "action_EVENT_QUEST_FINISH_2027" }
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
		monsters = { 2007, 2008, 2013, 2014, 2015, 2030 },
		gadgets = { 2002, 2004, 2009, 2010, 2011, 2012, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2028, 2029 },
		regions = { 2003 },
		triggers = { "ANY_MONSTER_DIE_2001", "ENTER_REGION_2003", "ANY_MONSTER_DIE_2005", "QUEST_FINISH_2027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "200322001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2003(context, evt)
	if evt.param1 ~= 2003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "200322003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220032001, monsters = {}, gadgets = {1017} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 将configid为 2022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "200322003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_2027(context, evt)
	--检查ID为1011111的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1011111 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2027(context, evt)
	-- 将configid为 2004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为2006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end