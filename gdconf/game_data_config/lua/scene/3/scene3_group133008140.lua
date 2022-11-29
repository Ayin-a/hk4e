-- 基础信息
local base_info = {
	group_id = 133008140
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
	{ config_id = 140002, npc_id = 20200, pos = { x = 1180.493, y = 254.660, z = -584.586 }, rot = { x = 19.620, y = 157.717, z = 15.428 }, area_id = 10 }
}

-- 装置
gadgets = {
	{ config_id = 140001, gadget_id = 70360101, pos = { x = 1179.920, y = 254.109, z = -584.320 }, rot = { x = 336.447, y = 340.847, z = 327.265 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 140003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1179.562, y = 255.850, z = -584.779 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1140003, name = "ENTER_REGION_140003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_140003", action = "action_EVENT_ENTER_REGION_140003" }
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
		gadgets = { 140001 },
		regions = { 140003 },
		triggers = { "ENTER_REGION_140003" },
		npcs = { 140002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_140003(context, evt)
	if evt.param1 ~= 140003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_140003(context, evt)
	-- 将configid为 140001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6015, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end