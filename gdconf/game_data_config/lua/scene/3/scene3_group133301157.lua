-- 基础信息
local base_info = {
	group_id = 133301157
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 157001, monster_id = 26120101, pos = { x = -587.003, y = 127.586, z = 3723.172 }, rot = { x = 0.000, y = 204.894, z = 0.000 }, level = 33, drop_tag = "大蕈兽", affix = { 6117 }, isOneoff = true, pose_id = 201, area_id = 25 },
	{ config_id = 157002, monster_id = 26090201, pos = { x = -585.453, y = 126.637, z = 3716.390 }, rot = { x = 0.000, y = 317.992, z = 0.000 }, level = 33, drop_tag = "蕈兽", affix = { 6117 }, isOneoff = true, pose_id = 101, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 157003, gadget_id = 70230107, pos = { x = -578.460, y = 128.813, z = 3722.752 }, rot = { x = 1.639, y = 123.631, z = 358.744 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 157009, gadget_id = 70290596, pos = { x = -580.150, y = 127.290, z = 3721.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 }
}

-- 区域
regions = {
	{ config_id = 157004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -585.971, y = 128.039, z = 3720.170 }, area_id = 25 }
}

-- 触发器
triggers = {
	{ config_id = 1157004, name = "ENTER_REGION_157004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157004", action = "action_EVENT_ENTER_REGION_157004", trigger_count = 0 },
	-- 7303633完成刷灭
	{ config_id = 1157005, name = "QUEST_FINISH_157005", event = EventType.EVENT_QUEST_FINISH, source = "7303633", condition = "", action = "action_EVENT_QUEST_FINISH_157005", trigger_count = 0 },
	-- 7323001开始变亮
	{ config_id = 1157007, name = "QUEST_START_157007", event = EventType.EVENT_QUEST_START, source = "7323001", condition = "", action = "action_EVENT_QUEST_START_157007", trigger_count = 0 },
	-- 7323001完成闪烁
	{ config_id = 1157008, name = "QUEST_FINISH_157008", event = EventType.EVENT_QUEST_FINISH, source = "7323001", condition = "", action = "action_EVENT_QUEST_FINISH_157008", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 157006, gadget_id = 70310191, pos = { x = -580.098, y = 127.549, z = 3719.564 }, rot = { x = 0.000, y = 128.940, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 25 }
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
		gadgets = { 157003, 157009 },
		regions = { 157004 },
		triggers = { "ENTER_REGION_157004", "QUEST_FINISH_157005", "QUEST_START_157007", "QUEST_FINISH_157008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_157004(context, evt)
	if evt.param1 ~= 157004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 157001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 157002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_157005(context, evt)
	-- 将configid为 157003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 157003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_157007(context, evt)
	-- 将configid为 157003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 157003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_157008(context, evt)
	-- 将configid为 157003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 157003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"