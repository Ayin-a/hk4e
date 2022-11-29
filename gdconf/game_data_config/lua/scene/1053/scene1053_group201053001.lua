-- 基础信息
local base_info = {
	group_id = 201053001
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
	{ config_id = 1003, gadget_id = 70350070, pos = { x = -116.620, y = 33.180, z = 39.140 }, rot = { x = 294.700, y = 308.808, z = 178.700 }, level = 1 },
	{ config_id = 1005, gadget_id = 70220036, pos = { x = -118.860, y = 36.360, z = 40.840 }, rot = { x = 352.342, y = 121.046, z = 354.958 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1001, shape = RegionShape.SPHERE, radius = 8, pos = { x = -104.891, y = 33.351, z = 27.995 } }
}

-- 触发器
triggers = {
	{ config_id = 1001001, name = "ENTER_REGION_1001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1001", action = "action_EVENT_ENTER_REGION_1001" }
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
		-- description = 区域1,
		monsters = { },
		gadgets = { 1003, 1005 },
		regions = { 1001 },
		triggers = { "ENTER_REGION_1001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
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
function condition_EVENT_ENTER_REGION_1001(context, evt)
	if evt.param1 ~= 1001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1001(context, evt)
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "icon1Appear" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "icon1Appear", 1, 201053021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end