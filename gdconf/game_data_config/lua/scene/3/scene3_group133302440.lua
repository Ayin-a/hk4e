-- 基础信息
local base_info = {
	group_id = 133302440
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 440005, monster_id = 28020313, pos = { x = -1029.017, y = 242.269, z = 2913.003 }, rot = { x = 0.000, y = 185.326, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 23 },
	{ config_id = 440006, monster_id = 28050106, pos = { x = -1019.121, y = 239.648, z = 2898.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 23 },
	{ config_id = 440007, monster_id = 21010701, pos = { x = -1004.425, y = 238.130, z = 2915.283 }, rot = { x = 0.000, y = 180.925, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 440001, gadget_id = 70330199, pos = { x = -1029.152, y = 242.091, z = 2913.085 }, rot = { x = 11.248, y = 175.762, z = 352.999 }, level = 27, state = GadgetState.GearStop, area_id = 23 },
	{ config_id = 440002, gadget_id = 70330199, pos = { x = -1018.056, y = 237.513, z = 2899.244 }, rot = { x = 12.104, y = 192.645, z = 10.357 }, level = 27, state = GadgetState.GearStop, area_id = 23 },
	{ config_id = 440003, gadget_id = 70330199, pos = { x = -1004.307, y = 237.051, z = 2916.276 }, rot = { x = 350.658, y = 211.315, z = 24.766 }, level = 27, state = GadgetState.GearStop, area_id = 23 },
	{ config_id = 440010, gadget_id = 70211102, pos = { x = -1016.368, y = 239.641, z = 2907.281 }, rot = { x = 9.861, y = 180.494, z = 7.908 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1440004, name = "GADGET_STATE_CHANGE_440004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_440004", action = "action_EVENT_GADGET_STATE_CHANGE_440004" },
	{ config_id = 1440008, name = "GADGET_STATE_CHANGE_440008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_440008", action = "action_EVENT_GADGET_STATE_CHANGE_440008" },
	{ config_id = 1440009, name = "GADGET_STATE_CHANGE_440009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_440009", action = "action_EVENT_GADGET_STATE_CHANGE_440009" },
	{ config_id = 1440011, name = "ANY_MONSTER_DIE_440011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_440011", action = "action_EVENT_ANY_MONSTER_DIE_440011" }
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
		gadgets = { 440001, 440002, 440003, 440010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_440004", "GADGET_STATE_CHANGE_440008", "GADGET_STATE_CHANGE_440009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 440005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 440006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 440007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_440011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_440004(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 440001 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_440004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302440, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_440008(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 440002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_440008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302440, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_440009(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 440003 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_440009(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302440, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_440011(context, evt)
	--判断死亡怪物的configid是否为 440007
	if evt.param1 ~= 440007 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_440011(context, evt)
	-- 将configid为 440010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 440010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end