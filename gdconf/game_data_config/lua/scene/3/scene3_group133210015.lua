-- 基础信息
local base_info = {
	group_id = 133210015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15001, monster_id = 21030601, pos = { x = -4022.955, y = 207.791, z = -994.931 }, rot = { x = 346.342, y = 66.489, z = 356.527 }, level = 32, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 17 },
	{ config_id = 15002, monster_id = 21010601, pos = { x = -4016.261, y = 207.932, z = -995.665 }, rot = { x = 355.628, y = 300.046, z = 352.154 }, level = 32, drop_tag = "丘丘人", pose_id = 9012, area_id = 17 },
	{ config_id = 15003, monster_id = 21010601, pos = { x = -4017.417, y = 207.672, z = -990.834 }, rot = { x = 358.662, y = 205.163, z = 354.445 }, level = 32, drop_tag = "丘丘人", pose_id = 9012, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 15004, gadget_id = 70211002, pos = { x = -4018.821, y = 208.169, z = -993.776 }, rot = { x = 350.419, y = 255.376, z = 358.559 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 15007, gadget_id = 70220014, pos = { x = -4031.812, y = 199.633, z = -994.289 }, rot = { x = 0.000, y = 49.567, z = 35.796 }, level = 30, area_id = 17 },
	{ config_id = 15008, gadget_id = 70220014, pos = { x = -4027.715, y = 199.610, z = -1001.301 }, rot = { x = 0.000, y = 36.374, z = 331.041 }, level = 30, area_id = 17 },
	{ config_id = 15009, gadget_id = 70300086, pos = { x = -4023.379, y = 206.086, z = -991.502 }, rot = { x = 338.079, y = 198.297, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 15010, gadget_id = 70300086, pos = { x = -4020.792, y = 206.227, z = -997.171 }, rot = { x = 16.253, y = 116.710, z = 341.370 }, level = 30, area_id = 17 },
	{ config_id = 15011, gadget_id = 70300107, pos = { x = -4021.398, y = 207.663, z = -994.551 }, rot = { x = 354.823, y = 146.198, z = 6.651 }, level = 30, state = GadgetState.GearStart, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015006, name = "ANY_MONSTER_DIE_15006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15006", action = "action_EVENT_ANY_MONSTER_DIE_15006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 15005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4034.883, y = 201.150, z = -1000.122 }, area_id = 17 }
	},
	triggers = {
		{ config_id = 1015005, name = "ENTER_REGION_15005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15005", action = "action_EVENT_ENTER_REGION_15005" }
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
		-- description = suite_1,
		monsters = { 15001, 15002, 15003 },
		gadgets = { 15004, 15007, 15008, 15009, 15010, 15011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_15006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_15006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15006(context, evt)
	-- 将configid为 15004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end