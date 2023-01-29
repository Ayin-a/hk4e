-- 基础信息
local base_info = {
	group_id = 133314069
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 69002, monster_id = 28060301, pos = { x = -151.279, y = -42.303, z = 4880.180 }, rot = { x = 0.000, y = 200.458, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 69003, monster_id = 28060301, pos = { x = -150.786, y = -39.034, z = 4853.284 }, rot = { x = 0.000, y = 266.380, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 69004, monster_id = 28020108, pos = { x = -150.353, y = -47.077, z = 4880.125 }, rot = { x = 0.000, y = 96.961, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, area_id = 32 },
	{ config_id = 69008, monster_id = 25410401, pos = { x = -149.561, y = -46.710, z = 4880.691 }, rot = { x = 0.000, y = 182.489, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", pose_id = 9001, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 69001, gadget_id = 70211002, pos = { x = -146.584, y = -48.000, z = 4878.020 }, rot = { x = 13.444, y = 179.997, z = 343.277 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 69005, gadget_id = 70290703, pos = { x = -165.886, y = -49.239, z = 4870.743 }, rot = { x = 0.000, y = 295.572, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 69006, gadget_id = 70330342, pos = { x = -165.736, y = -48.278, z = 4869.666 }, rot = { x = 0.000, y = 342.978, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1069007, name = "ANY_GADGET_DIE_69007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_69007", action = "action_EVENT_ANY_GADGET_DIE_69007" },
	{ config_id = 1069009, name = "ANY_MONSTER_DIE_69009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_69009", action = "action_EVENT_ANY_MONSTER_DIE_69009" }
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
		monsters = { 69002, 69003, 69004, 69008 },
		gadgets = { 69001, 69005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_69007", "ANY_MONSTER_DIE_69009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_69007(context, evt)
	if 69005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_69007(context, evt)
	-- 创建id为69006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 69006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_69009(context, evt)
	--判断死亡怪物的configid是否为 69008
	if evt.param1 ~= 69008 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_69009(context, evt)
	-- 将configid为 69001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end