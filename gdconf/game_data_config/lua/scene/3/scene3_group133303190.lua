-- 基础信息
local base_info = {
	group_id = 133303190
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 190007, monster_id = 26090201, pos = { x = -1636.189, y = 309.138, z = 3098.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", isOneoff = true, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 190001, gadget_id = 70290472, pos = { x = -1636.084, y = 309.128, z = 3091.531 }, rot = { x = 4.102, y = 122.646, z = 2.513 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 190002, gadget_id = 70230112, pos = { x = -1646.367, y = 311.581, z = 3096.584 }, rot = { x = 271.047, y = 25.791, z = 275.782 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 190004, gadget_id = 70290472, pos = { x = -1636.162, y = 309.146, z = 3098.732 }, rot = { x = 4.102, y = 122.646, z = 2.513 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 190005, gadget_id = 70290472, pos = { x = -1643.361, y = 309.292, z = 3099.553 }, rot = { x = 4.102, y = 122.646, z = 2.513 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 190006, gadget_id = 70220109, pos = { x = -1636.162, y = 309.132, z = 3091.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 190008, gadget_id = 70330216, pos = { x = -1645.258, y = 309.279, z = 3097.894 }, rot = { x = 0.000, y = 229.783, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1190003, name = "ANY_GADGET_DIE_190003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_190003", action = "action_EVENT_ANY_GADGET_DIE_190003" },
	{ config_id = 1190010, name = "GADGET_STATE_CHANGE_190010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_190010", action = "action_EVENT_GADGET_STATE_CHANGE_190010" },
	{ config_id = 1190012, name = "ANY_GADGET_DIE_190012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_190012", action = "action_EVENT_ANY_GADGET_DIE_190012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 190009, gadget_id = 70290472, pos = { x = -1639.246, y = 307.981, z = 3097.532 }, rot = { x = 4.102, y = 122.646, z = 2.513 }, level = 30, persistent = true, area_id = 23 }
	},
	triggers = {
		{ config_id = 1190011, name = "GROUP_LOAD_190011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_190011", action = "action_EVENT_GROUP_LOAD_190011" }
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
		gadgets = { 190001, 190002, 190004, 190005, 190008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_190003", "GADGET_STATE_CHANGE_190010", "ANY_GADGET_DIE_190012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_190003(context, evt)
	if 190004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_190003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 190007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_190010(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 190008 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_190010(context, evt)
	-- 将本组内变量名为 "No_5" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "No_5", 1, 133303153) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 190002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 190002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_190012(context, evt)
	if 190001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_190012(context, evt)
	-- 创建id为190006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 190006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end