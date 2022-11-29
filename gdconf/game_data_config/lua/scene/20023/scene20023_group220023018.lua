-- 基础信息
local base_info = {
	group_id = 220023018
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 25, monster_id = 20011201, pos = { x = 229.945, y = 18.766, z = 42.719 }, rot = { x = 0.000, y = 256.374, z = 0.000 }, level = 1 },
	{ config_id = 26, monster_id = 20011201, pos = { x = 223.719, y = 18.766, z = 39.251 }, rot = { x = 0.000, y = 30.743, z = 0.000 }, level = 1 },
	{ config_id = 28, monster_id = 20011201, pos = { x = 222.484, y = 18.767, z = 45.470 }, rot = { x = 0.000, y = 116.969, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 43, gadget_id = 70210102, pos = { x = 223.992, y = 19.465, z = 49.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 11010800, drop_count = 1 },
	{ config_id = 44, gadget_id = 70210102, pos = { x = 232.565, y = 21.636, z = 46.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 11010800, drop_count = 1 },
	{ config_id = 45, gadget_id = 70210102, pos = { x = 222.284, y = 21.598, z = 31.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 11010700, drop_count = 1 },
	{ config_id = 46, gadget_id = 70210102, pos = { x = 229.750, y = 13.700, z = 34.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 11010800, drop_count = 1 },
	{ config_id = 47, gadget_id = 70210102, pos = { x = 219.159, y = 19.096, z = 36.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 11010800, drop_count = 1 },
	{ config_id = 52, gadget_id = 70350003, pos = { x = 228.070, y = 18.588, z = 22.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 69, gadget_id = 70310002, pos = { x = 225.141, y = 22.770, z = 21.453 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 70, gadget_id = 70310002, pos = { x = 231.079, y = 22.773, z = 21.478 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 38, shape = RegionShape.CUBIC, size = { x = 20.770, y = 13.010, z = 9.080 }, pos = { x = 226.979, y = 17.886, z = 36.128 } }
}

-- 触发器
triggers = {
	{ config_id = 1000032, name = "GADGET_STATE_CHANGE_32", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32", action = "action_EVENT_GADGET_STATE_CHANGE_32" },
	{ config_id = 1000033, name = "ANY_MONSTER_DIE_33", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33", action = "action_EVENT_ANY_MONSTER_DIE_33" },
	{ config_id = 1000034, name = "GADGET_STATE_CHANGE_34", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_34", action = "action_EVENT_GADGET_STATE_CHANGE_34" },
	{ config_id = 1000037, name = "QUEST_FINISH_37", event = EventType.EVENT_QUEST_FINISH, source = "2010140", condition = "condition_EVENT_QUEST_FINISH_37", action = "action_EVENT_QUEST_FINISH_37" },
	{ config_id = 1000038, name = "ENTER_REGION_38", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_38", action = "action_EVENT_ENTER_REGION_38", forbid_guest = false }
}

-- 变量
variables = {
	{ config_id = 1, name = "isdone", value = 0, no_refresh = false }
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
		gadgets = { 43, 44, 46, 47, 52, 69, 70 },
		regions = { 38 },
		triggers = { "GADGET_STATE_CHANGE_32", "ANY_MONSTER_DIE_33", "GADGET_STATE_CHANGE_34", "QUEST_FINISH_37", "ENTER_REGION_38" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32(context, evt)
	if 44 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 25, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 26, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 28, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33(context, evt)
	-- 获取本组内变量名为 "isdone" 的变量值
	if ScriptLib.GetGroupVariableValue(context, "isdone") == 1 then
	
	-- 创生gadget 45
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 45 }) then
		return -1
	end
	
	end
	
	
	if ScriptLib.GetGroupVariableValue(context, "isdone") == 0 then
	
	
	    -- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	   if 0 ~= ScriptLib.AddQuestProgress(context, "220023018") then
	     return -1
	   end
	
	    -- 将configid为 52 的物件更改为状态 GadgetState.GearStart
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52, GadgetState.GearStart) then
			return -1
	    end 
	
	 -- 将configid为 52 的物件更改为状态 GadgetState.GearStart
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69, GadgetState.Default) then
			return -1
	    end 
	
	 -- 将configid为 52 的物件更改为状态 GadgetState.GearStart
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 70, GadgetState.Default) then
			return -1
	    end 
	
	end
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_34(context, evt)
	if 45 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_34(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220023018") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 52 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 69 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 70 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 70, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_37(context, evt)
	--检查ID为2010140的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2010140 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_37(context, evt)
	-- 将本组内变量名为 "isdone" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isdone", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_38(context, evt)
	if evt.param1 ~= 38 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_38(context, evt)
	-- 将configid为 52 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220023012, monsters = {}, gadgets = {12004} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end