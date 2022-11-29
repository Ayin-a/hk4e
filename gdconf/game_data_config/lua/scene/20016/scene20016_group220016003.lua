-- 基础信息
local base_info = {
	group_id = 220016003
}

-- Trigger变量
local defs = {
	gadget_id_1 = 46306,
	gadget_id_2 = 1,
	gadget_id_3 = 3003
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
	{ config_id = 3001, gadget_id = 70350003, pos = { x = 353.196, y = -18.370, z = 322.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70350003, pos = { x = 333.299, y = -18.314, z = 322.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3003, gadget_id = 70350003, pos = { x = 343.299, y = -18.411, z = 322.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70350003, pos = { x = 343.269, y = -11.442, z = 291.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, gadget_id = 70350003, pos = { x = 353.307, y = -19.041, z = 368.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3006, gadget_id = 70350003, pos = { x = 333.170, y = -18.970, z = 368.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3007, gadget_id = 70350003, pos = { x = 343.399, y = -18.993, z = 368.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3008, gadget_id = 70350003, pos = { x = 333.304, y = -11.429, z = 291.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3009, gadget_id = 70350003, pos = { x = 353.153, y = -11.449, z = 291.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 10, shape = RegionShape.SPHERE, radius = 7.3, pos = { x = 342.833, y = -23.688, z = 384.190 } }
}

-- 触发器
triggers = {
	{ config_id = 1000008, name = "QUEST_FINISH_8", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_8", action = "action_EVENT_QUEST_FINISH_8", trigger_count = 0 },
	{ config_id = 1000009, name = "TIMER_EVENT_9", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_9", action = "action_EVENT_TIMER_EVENT_9" },
	{ config_id = 1000010, name = "ENTER_REGION_10", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10", action = "action_EVENT_ENTER_REGION_10", forbid_guest = false }
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
	rand_suite = true
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
		gadgets = { 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009 },
		regions = { 10 },
		triggers = { "QUEST_FINISH_8", "TIMER_EVENT_9", "ENTER_REGION_10" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_8(context, evt)
	--检查ID为46306的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if defs.gadget_id_1 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if defs.gadget_id_2 ~= evt.param2 then
		return false
	end
	
	ScriptLib.PrintLog("quest 46306 finish")
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_8(context, evt)
	-- 将configid为 12 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_3, GadgetState.GearStart) then
			return -1
		end 
	-- 延迟3秒后,向groupId为：220016003的对象,请求一次调用,并将string参数："Power" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220016003, "Power", 0) then
	  return -1
	end
	
	-- 调用提示id为 0 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1001001) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_9(context, evt)
	if  "Power" ~= evt.source_name then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9(context, evt)
	-- 通知groupid为220016008中,configid为：9的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 9, 220016008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 将configid为 3007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10(context, evt)
	if evt.param1 ~= 10 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10(context, evt)
	-- 将configid为 3007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end