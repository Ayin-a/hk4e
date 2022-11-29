-- 基础信息
local base_info = {
	group_id = 133304517
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
	{ config_id = 517001, gadget_id = 70290544, pos = { x = -1658.885, y = 197.327, z = 2795.233 }, rot = { x = 19.440, y = 98.913, z = 1.433 }, level = 30, isOneoff = true, persistent = true, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 517002, shape = RegionShape.SPHERE, radius = 35, pos = { x = -1665.069, y = 179.947, z = 2789.663 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1517002, name = "ENTER_REGION_517002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_517002", action = "action_EVENT_ENTER_REGION_517002", trigger_count = 0 },
	{ config_id = 1517003, name = "GROUP_LOAD_517003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_517003", action = "action_EVENT_GROUP_LOAD_517003", trigger_count = 0 }
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
	end_suite = 2,
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
			{ config_id = 517001, state = 0 }
		},
		monsters = {
		},
		regions = { 517002 },
		triggers = { "ENTER_REGION_517002", "GROUP_LOAD_517003" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
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
function condition_EVENT_ENTER_REGION_517002(context, evt)
	if evt.param1 ~= 517002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7302712)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_517002(context, evt)
	-- 将configid为 517001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 517001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133304517, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_517003(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7302712)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_517003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133304517, 2)
	
	return 0
end