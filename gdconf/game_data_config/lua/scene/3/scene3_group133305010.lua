-- 基础信息
local base_info = {
	group_id = 133305010
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
	{ config_id = 10002, gadget_id = 70360386, pos = { x = -2285.079, y = 278.204, z = 3912.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, interact_id = 145, area_id = 26 },
	-- 调查点死亡切201
	{ config_id = 10003, gadget_id = 70360001, pos = { x = -2281.441, y = 277.484, z = 3927.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 10004, gadget_id = 70360040, pos = { x = -2285.091, y = 278.267, z = 3912.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 10007, gadget_id = 70210102, pos = { x = -2288.192, y = 268.612, z = 3871.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050253, drop_count = 1, isOneoff = true, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 操作台已使用
	{ config_id = 1010005, name = "GADGET_STATE_CHANGE_10005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10005", action = "action_EVENT_GADGET_STATE_CHANGE_10005" },
	-- 调查点死亡
	{ config_id = 1010009, name = "ANY_GADGET_DIE_10009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_10009", action = "action_EVENT_ANY_GADGET_DIE_10009" }
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
		gadgets = { 10002, 10004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 10002, 10003, 10004, 10007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_10005", "ANY_GADGET_DIE_10009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10005(context, evt)
	if 10002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133305010, EntityType.GADGET, 10004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7321004") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_10009(context, evt)
	if 10007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_10009(context, evt)
	-- 将configid为 10003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end