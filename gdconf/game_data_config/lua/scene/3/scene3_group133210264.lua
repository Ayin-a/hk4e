-- 基础信息
local base_info = {
	group_id = 133210264
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 264001, monster_id = 28020801, pos = { x = -3558.051, y = 207.547, z = -721.506 }, rot = { x = 0.000, y = 137.229, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 2, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫第一个到的点，它的MarkFlag要配成101
	{ config_id = 264002, gadget_id = 70360277, pos = { x = -3561.348, y = 209.376, z = -715.068 }, rot = { x = 0.000, y = 161.458, z = 0.000 }, level = 30, mark_flag = 101, area_id = 17 },
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 264003, gadget_id = 70360273, pos = { x = -3561.935, y = 213.533, z = -701.664 }, rot = { x = 0.000, y = 181.515, z = 0.000 }, level = 30, mark_flag = 1, area_id = 17 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 264005, gadget_id = 70360274, pos = { x = -3565.606, y = 209.886, z = -692.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 17 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 264006, gadget_id = 70900008, pos = { x = -3565.892, y = 209.756, z = -692.524 }, rot = { x = 0.000, y = 359.747, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 264007, gadget_id = 70210101, pos = { x = -3565.606, y = 209.886, z = -692.534 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 17 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 264008, gadget_id = 70360276, pos = { x = -3565.911, y = 210.162, z = -692.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1264004, name = "GADGET_STATE_CHANGE_264004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_264004", action = "action_EVENT_GADGET_STATE_CHANGE_264004" },
	{ config_id = 1264009, name = "ANY_MONSTER_DIE_264009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_264009", action = "action_EVENT_ANY_MONSTER_DIE_264009" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1264010, name = "GADGET_STATE_CHANGE_264010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_264010", action = "action_EVENT_GADGET_STATE_CHANGE_264010" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 264011, gadget_id = 70360276, pos = { x = -3561.754, y = 209.886, z = -693.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 264012, gadget_id = 70360276, pos = { x = -3570.373, y = 208.707, z = -696.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 264013, gadget_id = 70360276, pos = { x = -3573.191, y = 207.422, z = -701.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 264002, state = 0 },
			{ config_id = 264003, state = 0 },
			{ config_id = 264005, state = 0 }
		},
		monsters = {
			{ config_id = 264001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_264009" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 264006, state = 0 },
			{ config_id = 264008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_264010" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 264007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_264004" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_264004(context, evt)
	if 264007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_264004(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210264, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_264009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_264009(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133210264, 2, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210264, 2)
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210265, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_264010(context, evt)
	if 264006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_264010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 264008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 264006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210264, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133210264, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 判断变量"start"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "start", 133210265) ~= 3 then
	
	-- 改变指定group组133210265中， configid为265001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133210265, 265001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133210265中， configid为265002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133210265, 265002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133210265中， configid为265003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133210265, 265003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	end
	
	return 0
end