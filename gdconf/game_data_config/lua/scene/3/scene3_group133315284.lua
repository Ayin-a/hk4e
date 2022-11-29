-- 基础信息
local base_info = {
	group_id = 133315284
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 284009, monster_id = 26120101, pos = { x = 116.874, y = 284.402, z = 2436.158 }, rot = { x = 0.000, y = 17.918, z = 0.000 }, level = 27, drop_tag = "大蕈兽", pose_id = 201, area_id = 20 },
	{ config_id = 284014, monster_id = 26090201, pos = { x = 144.543, y = 285.673, z = 2462.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 284020, monster_id = 26090201, pos = { x = 142.973, y = 285.673, z = 2462.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 284026, monster_id = 26090201, pos = { x = 143.404, y = 285.842, z = 2463.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 284001, gadget_id = 70330218, pos = { x = 140.008, y = 286.043, z = 2436.589 }, rot = { x = 9.765, y = 149.357, z = 356.607 }, level = 27, persistent = true, area_id = 20 },
	-- 右
	{ config_id = 284002, gadget_id = 70330199, pos = { x = 116.075, y = 284.722, z = 2435.801 }, rot = { x = 0.000, y = 11.003, z = 0.000 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
	{ config_id = 284004, gadget_id = 70310198, pos = { x = 123.928, y = 280.988, z = 2458.918 }, rot = { x = 1.967, y = 199.666, z = 341.864 }, level = 27, persistent = true, area_id = 20 },
	-- 中
	{ config_id = 284005, gadget_id = 70330199, pos = { x = 124.555, y = 280.701, z = 2458.370 }, rot = { x = 9.008, y = 285.228, z = 0.311 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
	-- 左
	{ config_id = 284006, gadget_id = 70330199, pos = { x = 144.215, y = 285.755, z = 2462.877 }, rot = { x = 0.000, y = 183.673, z = 0.000 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
	{ config_id = 284007, gadget_id = 70211102, pos = { x = 140.030, y = 287.904, z = 2436.195 }, rot = { x = 341.154, y = 147.961, z = 1.077 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	-- 怪
	{ config_id = 284013, gadget_id = 70230111, pos = { x = 141.167, y = 289.063, z = 2434.485 }, rot = { x = 66.100, y = 10.185, z = 119.374 }, level = 27, persistent = true, area_id = 20 },
	-- 中
	{ config_id = 284015, gadget_id = 70230110, pos = { x = 141.345, y = 290.356, z = 2434.520 }, rot = { x = 321.674, y = 93.214, z = 137.513 }, level = 27, persistent = true, area_id = 20 },
	-- 左
	{ config_id = 284016, gadget_id = 70230110, pos = { x = 142.198, y = 289.944, z = 2435.315 }, rot = { x = 359.523, y = 63.916, z = 148.002 }, level = 27, persistent = true, area_id = 20 },
	-- 右
	{ config_id = 284017, gadget_id = 70230110, pos = { x = 140.257, y = 290.112, z = 2434.158 }, rot = { x = 302.002, y = 154.788, z = 89.008 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 中,抬起创草种子
	{ config_id = 1284003, name = "GADGET_STATE_CHANGE_284003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_284003", action = "action_EVENT_GADGET_STATE_CHANGE_284003", trigger_count = 0 },
	-- 右，抬起刷怪
	{ config_id = 1284011, name = "GADGET_STATE_CHANGE_284011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_284011", action = "action_EVENT_GADGET_STATE_CHANGE_284011" },
	-- 左，抬起刷怪
	{ config_id = 1284012, name = "GADGET_STATE_CHANGE_284012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_284012", action = "action_EVENT_GADGET_STATE_CHANGE_284012" },
	-- 怪死亮涂鸦
	{ config_id = 1284018, name = "ANY_MONSTER_DIE_284018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_284018", action = "action_EVENT_ANY_MONSTER_DIE_284018", trigger_count = 0 },
	-- 涂鸦全亮开宝箱
	{ config_id = 1284019, name = "GADGET_STATE_CHANGE_284019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_284019", action = "action_EVENT_GADGET_STATE_CHANGE_284019", trigger_count = 0 },
	-- 中,降下删草种子
	{ config_id = 1284021, name = "GADGET_STATE_CHANGE_284021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_284021", action = "action_EVENT_GADGET_STATE_CHANGE_284021", trigger_count = 0 },
	-- 中，降下删草种子
	{ config_id = 1284022, name = "GROUP_LOAD_284022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_284022", trigger_count = 0 },
	-- 怪死亮涂鸦
	{ config_id = 1284023, name = "ANY_MONSTER_DIE_284023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_284023", action = "action_EVENT_ANY_MONSTER_DIE_284023", trigger_count = 0 },
	-- 怪死亮涂鸦
	{ config_id = 1284024, name = "ANY_MONSTER_DIE_284024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_284024", action = "action_EVENT_ANY_MONSTER_DIE_284024", trigger_count = 0 },
	-- 怪死亮涂鸦
	{ config_id = 1284025, name = "ANY_MONSTER_DIE_284025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_284025", action = "action_EVENT_ANY_MONSTER_DIE_284025", trigger_count = 0 },
	-- 保底涂鸦全亮开宝箱
	{ config_id = 1284027, name = "GROUP_LOAD_284027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_284027", action = "action_EVENT_GROUP_LOAD_284027", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 284010, gadget_id = 70210101, pos = { x = 143.239, y = 285.818, z = 2462.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 20 }
	},
	triggers = {
		{ config_id = 1284008, name = "ANY_GADGET_DIE_284008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_284008", action = "action_EVENT_ANY_GADGET_DIE_284008", trigger_count = 0 }
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
		gadgets = { 284001, 284002, 284005, 284006, 284007, 284013, 284015, 284016, 284017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_284003", "GADGET_STATE_CHANGE_284011", "GADGET_STATE_CHANGE_284012", "ANY_MONSTER_DIE_284018", "GADGET_STATE_CHANGE_284019", "GADGET_STATE_CHANGE_284021", "GROUP_LOAD_284022", "ANY_MONSTER_DIE_284023", "ANY_MONSTER_DIE_284024", "ANY_MONSTER_DIE_284025", "GROUP_LOAD_284027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 284004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 284009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 284014, 284020, 284026 },
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
function condition_EVENT_GADGET_STATE_CHANGE_284003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 284005 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_284003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315284, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_284011(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 284002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_284011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315284, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_284012(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 284006 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_284012(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315284, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_284018(context, evt)
	--判断死亡怪物的configid是否为 284009
	if evt.param1 ~= 284009 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_284018(context, evt)
	-- 将configid为 284013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_284019(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315284, 284013) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315284, 284015) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315284, 284016) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315284, 284017) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_284019(context, evt)
	-- 将configid为 284007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_284021(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 284005 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_284021(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315284, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_284022(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315284, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_284023(context, evt)
	--判断死亡怪物的configid是否为 284014
	if evt.param1 ~= 284014 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_284023(context, evt)
	-- 将configid为 284015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_284024(context, evt)
	--判断死亡怪物的configid是否为 284020
	if evt.param1 ~= 284020 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_284024(context, evt)
	-- 将configid为 284016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_284025(context, evt)
	--判断死亡怪物的configid是否为 284026
	if evt.param1 ~= 284026 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_284025(context, evt)
	-- 将configid为 284017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_284027(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315284, 284013) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315284, 284015) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315284, 284016) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315284, 284017) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_284027(context, evt)
	-- 将configid为 284007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end