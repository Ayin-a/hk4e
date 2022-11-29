-- 基础信息
local base_info = {
	group_id = 111101150
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 150001, monster_id = 28020801, pos = { x = 2599.632, y = 237.772, z = -1186.672 }, rot = { x = 0.000, y = 120.707, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫第一个到的点，它的MarkFlag要配成101
	{ config_id = 150002, gadget_id = 70360277, pos = { x = 2597.093, y = 237.271, z = -1193.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 101 },
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 150003, gadget_id = 70360273, pos = { x = 2602.869, y = 237.386, z = -1198.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 1 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 150004, gadget_id = 70360273, pos = { x = 2607.315, y = 238.127, z = -1195.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 2 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 150005, gadget_id = 70360274, pos = { x = 2608.787, y = 238.168, z = -1201.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 3 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 150007, gadget_id = 70310001, pos = { x = 2608.787, y = 238.168, z = -1201.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 150009, gadget_id = 70210101, pos = { x = 2609.919, y = 238.599, z = -1200.524 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物蒙德", isOneoff = true, persistent = true },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 150010, gadget_id = 70360276, pos = { x = 2608.311, y = 238.183, z = -1200.778 }, rot = { x = 88.787, y = 238.167, z = 238.694 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1150006, name = "ANY_MONSTER_DIE_150006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_150006", action = "action_EVENT_ANY_MONSTER_DIE_150006" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1150008, name = "GADGET_STATE_CHANGE_150008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150008", action = "action_EVENT_GADGET_STATE_CHANGE_150008" }
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
			{ config_id = 150002, state = 0 },
			{ config_id = 150003, state = 0 },
			{ config_id = 150004, state = 0 },
			{ config_id = 150005, state = 0 }
		},
		monsters = {
			{ config_id = 150001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_150006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 150007, state = 0 },
			{ config_id = 150010, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_150008" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 150009, state = 0 }
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
function condition_EVENT_ANY_MONSTER_DIE_150006(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_150006(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 111101150, 2, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 111101150, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150008(context, evt)
	if 150007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 150010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 150007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 111101150, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 111101150, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end