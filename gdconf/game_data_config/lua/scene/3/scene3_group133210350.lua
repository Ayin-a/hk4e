-- 基础信息
local base_info = {
	group_id = 133210350
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
	{ config_id = 350001, gadget_id = 70290104, pos = { x = -3544.350, y = 187.417, z = -1157.620 }, rot = { x = 0.000, y = 42.316, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 350002, shape = RegionShape.SPHERE, radius = 6, pos = { x = -3540.164, y = 187.417, z = -1153.274 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1350002, name = "ENTER_REGION_350002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_350002", action = "action_EVENT_ENTER_REGION_350002" }
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
			{ config_id = 350001, state = 0 }
		},
		monsters = {
		},
		regions = { 350002 },
		triggers = { "ENTER_REGION_350002" },
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
function condition_EVENT_ENTER_REGION_350002(context, evt)
	if evt.param1 ~= 350002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_350002(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210350, 2)
	
	return 0
end