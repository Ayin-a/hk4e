-- 基础信息
local base_info = {
	group_id = 220025001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 29010104, pos = { x = 0.000, y = -30.000, z = 0.000 }, rot = { x = 0.000, y = 8.860, z = 0.000 }, level = 1, title_id = 103, special_name_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 42901021, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 42901022, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 42901023, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 42901024, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 42901025, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 42901026, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 42901027, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 42901028, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 42901029, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70210106, pos = { x = 10.943, y = -0.114, z = 73.826 }, rot = { x = 0.000, y = 8.619, z = 0.000 }, level = 26, drop_tag = "风魔龙", showcutscene = true, persistent = true, boss_chest = { monster_config_id = 1001, resin=60, life_time = 1800, take_num = 1} },
	{ config_id = 1013, gadget_id = 70350038, pos = { x = 12.492, y = -22.000, z = -14.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2, shape = RegionShape.SPHERE, radius = 20, pos = { x = 11.250, y = 0.000, z = 74.150 } },
	{ config_id = 3, shape = RegionShape.CUBIC, size = { x = 50.000, y = 5.000, z = 10.000 }, pos = { x = 12.125, y = 0.000, z = 73.998 } }
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "CUTSCENE_END_1", event = EventType.EVENT_CUTSCENE_END, source = "", condition = "", action = "action_EVENT_CUTSCENE_END_1" },
	{ config_id = 1000002, name = "ENTER_REGION_2", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2", forbid_guest = false },
	{ config_id = 1000003, name = "ENTER_REGION_3", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3", action = "action_EVENT_ENTER_REGION_3", forbid_guest = false },
	{ config_id = 1001012, name = "DUNGEON_SETTLE_1012", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_1012", action = "action_EVENT_DUNGEON_SETTLE_1012", trigger_count = 0 },
	{ config_id = 1001014, name = "TIME_AXIS_PASS_1014", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS_1014" }
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
		gadgets = { 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1013 },
		regions = { 3 },
		triggers = { "ENTER_REGION_3", "DUNGEON_SETTLE_1012", "TIME_AXIS_PASS_1014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CUTSCENE_END_1(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1001, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_2(context, evt)
	-- 通知场景上的所有玩家播放名字为200201 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 200201, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3(context, evt)
	if evt.param1 ~= 3 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1001, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_1012(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_1012(context, evt)
	-- 创建标识为"delay"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay", {1}, false)
	
	
	-- 将configid为 1013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1014(context, evt)
	-- 创建id为1011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1011 }) then
	  return -1
	end
	
	local player = ScriptLib.GetSceneUidList(context)
	local t_pos = {x=13, y=1, z=81}
	ScriptLib.TransPlayerToPos(context, {uid_list = player, pos = t_pos, rot = {x=0, y=190, z=0}})
	return 0
end