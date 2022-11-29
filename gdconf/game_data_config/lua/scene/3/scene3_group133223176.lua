-- 基础信息
local base_info = {
	group_id = 133223176
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 176002, monster_id = 22050201, pos = { x = -5808.812, y = 204.565, z = -2680.267 }, rot = { x = 359.521, y = 40.505, z = 359.425 }, level = 33, drop_tag = "兽境猎犬", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 176001, gadget_id = 70330064, pos = { x = -5804.794, y = 203.832, z = -2674.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStop, persistent = true, interact_id = 35, area_id = 18 },
	{ config_id = 176004, gadget_id = 70211001, pos = { x = -5809.301, y = 204.716, z = -2672.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1176003, name = "ANY_MONSTER_DIE_176003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_176003", action = "action_EVENT_ANY_MONSTER_DIE_176003" }
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
		monsters = { 176002 },
		gadgets = { 176001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_176003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_176003(context, evt)
	if 176002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_176003(context, evt)
	-- 将configid为 176001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为176004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 176004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end