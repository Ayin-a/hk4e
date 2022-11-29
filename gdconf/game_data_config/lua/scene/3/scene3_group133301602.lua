-- 基础信息
local base_info = {
	group_id = 133301602
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 602005, monster_id = 26090201, pos = { x = -748.024, y = 129.954, z = 3432.181 }, rot = { x = 0.000, y = 214.554, z = 0.000 }, level = 30, drop_tag = "蕈兽", isOneoff = true, pose_id = 101, area_id = 23 },
	{ config_id = 602006, monster_id = 26090201, pos = { x = -743.321, y = 129.248, z = 3430.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", isOneoff = true, pose_id = 104, area_id = 23 },
	{ config_id = 602007, monster_id = 26090201, pos = { x = -741.578, y = 129.687, z = 3424.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", isOneoff = true, pose_id = 102, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 602001, gadget_id = 70310198, pos = { x = -747.208, y = 129.420, z = 3426.440 }, rot = { x = 357.712, y = 62.918, z = 358.405 }, level = 27, state = GadgetState.GearStop, area_id = 23 },
	{ config_id = 602002, gadget_id = 70330199, pos = { x = -747.769, y = 129.709, z = 3426.146 }, rot = { x = 5.556, y = 45.634, z = 358.878 }, level = 27, state = GadgetState.GearStop, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 正常态把草种子状态切换成0
	{ config_id = 1602003, name = "GADGET_STATE_CHANGE_602003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_602003", action = "action_EVENT_GADGET_STATE_CHANGE_602003", trigger_count = 0 },
	-- 枯萎态把草种子状态切换成202
	{ config_id = 1602004, name = "GADGET_STATE_CHANGE_602004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_602004", action = "action_EVENT_GADGET_STATE_CHANGE_602004", trigger_count = 0 },
	-- 正常态把草种子状态切换成0（刷怪专用）tc=1
	{ config_id = 1602008, name = "GADGET_STATE_CHANGE_602008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_602008", action = "action_EVENT_GADGET_STATE_CHANGE_602008" }
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
		gadgets = { 602001, 602002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_602003", "GADGET_STATE_CHANGE_602004", "GADGET_STATE_CHANGE_602008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 602005, 602006, 602007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_602003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 602002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_602003(context, evt)
	-- 将configid为 602001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 602001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_602004(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 602002 ~= evt.param2 then
		return false
	end
	if 3<1 or 3>3 then
	  return false
	end
	if 3 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 3 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 3 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_602004(context, evt)
	-- 将configid为 602001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 602001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_602008(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 602002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_602008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301602, 2)
	
	return 0
end