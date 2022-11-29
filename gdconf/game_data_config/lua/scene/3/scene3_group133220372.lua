-- 基础信息
local base_info = {
	group_id = 133220372
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 372001, monster_id = 28020801, pos = { x = -2730.725, y = 235.827, z = -4497.393 }, rot = { x = 0.000, y = 336.893, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 372002, gadget_id = 70360273, pos = { x = -2722.789, y = 238.076, z = -4491.976 }, rot = { x = 0.000, y = 256.661, z = 0.000 }, level = 27, mark_flag = 1, area_id = 11 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 372003, gadget_id = 70360273, pos = { x = -2708.609, y = 241.126, z = -4490.493 }, rot = { x = 0.000, y = 271.817, z = 0.000 }, level = 27, mark_flag = 2, area_id = 11 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 372004, gadget_id = 70360274, pos = { x = -2683.653, y = 246.225, z = -4485.034 }, rot = { x = 0.000, y = 287.547, z = 0.000 }, level = 27, mark_flag = 4, area_id = 11 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 372005, gadget_id = 70900393, pos = { x = -2683.492, y = 246.248, z = -4485.146 }, rot = { x = 352.252, y = 358.697, z = 19.062 }, level = 27, area_id = 11 },
	{ config_id = 372006, gadget_id = 70210101, pos = { x = -2683.854, y = 246.402, z = -4485.071 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 11 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 372007, gadget_id = 70360276, pos = { x = -2683.636, y = 246.234, z = -4485.015 }, rot = { x = 0.000, y = 258.110, z = 0.000 }, level = 27, area_id = 11 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 372008, gadget_id = 70360273, pos = { x = -2695.680, y = 243.694, z = -4485.793 }, rot = { x = 0.000, y = 261.714, z = 0.000 }, level = 27, mark_flag = 3, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1372009, name = "GADGET_STATE_CHANGE_372009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_372009", action = "action_EVENT_GADGET_STATE_CHANGE_372009" },
	{ config_id = 1372010, name = "ANY_MONSTER_DIE_372010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_372010", action = "action_EVENT_ANY_MONSTER_DIE_372010" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1372011, name = "GADGET_STATE_CHANGE_372011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_372011", action = "action_EVENT_GADGET_STATE_CHANGE_372011" }
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
			{ config_id = 372002, state = 0 },
			{ config_id = 372003, state = 0 },
			{ config_id = 372004, state = 0 },
			{ config_id = 372008, state = 0 }
		},
		monsters = {
			{ config_id = 372001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_372010" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 372005, state = 0 },
			{ config_id = 372007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_372011" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 372006, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_372009" },
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
function condition_EVENT_GADGET_STATE_CHANGE_372009(context, evt)
	if 372006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_372009(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133220372, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_372010(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_372010(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133220372, 2, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133220372, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_372011(context, evt)
	if 372005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_372011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 372007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 372005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133220372, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133220372, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end