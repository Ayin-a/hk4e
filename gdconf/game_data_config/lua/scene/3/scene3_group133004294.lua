-- 基础信息
local base_info = {
	group_id = 133004294
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
	{ config_id = 294004, gadget_id = 70211111, pos = { x = 2146.028, y = 211.361, z = -460.288 }, rot = { x = 0.000, y = 163.296, z = 0.000 }, level = 11, drop_tag = "解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 294005, gadget_id = 70220024, pos = { x = 2148.421, y = 211.473, z = -464.113 }, rot = { x = 0.000, y = 354.421, z = 0.000 }, level = 15, isOneoff = true, oneoff_reset_version = 2, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 294001, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2145.768, y = 211.450, z = -459.297 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1294001, name = "ENTER_REGION_294001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_294001", action = "action_EVENT_ENTER_REGION_294001", trigger_count = 0 },
	{ config_id = 1294003, name = "ANY_GADGET_DIE_294003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_294003", action = "action_EVENT_ANY_GADGET_DIE_294003" }
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
		gadgets = { 294004, 294005 },
		regions = { 294001 },
		triggers = { "ENTER_REGION_294001", "ANY_GADGET_DIE_294003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_294001(context, evt)
	if evt.param1 ~= 294001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_294001(context, evt)
	-- 将configid为 294004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 294004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_294003(context, evt)
	if 294005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_294003(context, evt)
	-- 将configid为 294004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 294004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2012, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end