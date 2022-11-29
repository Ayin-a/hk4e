-- 基础信息
local base_info = {
	group_id = 133302531
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 531001, monster_id = 26090101, pos = { x = -929.612, y = 159.090, z = 2765.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 24 },
	{ config_id = 531004, monster_id = 26090101, pos = { x = -962.370, y = 150.790, z = 2764.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 24 },
	{ config_id = 531005, monster_id = 26090101, pos = { x = -969.234, y = 147.690, z = 2791.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 24 },
	{ config_id = 531006, monster_id = 26090101, pos = { x = -940.641, y = 159.919, z = 2800.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 24 },
	{ config_id = 531007, monster_id = 26120301, pos = { x = -952.627, y = 147.686, z = 2779.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大蕈兽", disableWander = true, pose_id = 101, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 531002, gadget_id = 70211012, pos = { x = -952.356, y = 147.647, z = 2780.695 }, rot = { x = 357.187, y = 19.164, z = 352.957 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 531008, gadget_id = 70220103, pos = { x = -965.855, y = 161.840, z = 2766.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 531009, gadget_id = 70220103, pos = { x = -940.805, y = 163.609, z = 2794.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 531010, gadget_id = 70220103, pos = { x = -928.831, y = 160.822, z = 2767.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 531011, gadget_id = 70220103, pos = { x = -967.737, y = 158.697, z = 2789.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 531012, gadget_id = 70220103, pos = { x = -953.393, y = 163.919, z = 2778.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1531003, name = "ANY_MONSTER_DIE_531003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_531003", action = "action_EVENT_ANY_MONSTER_DIE_531003" },
	{ config_id = 1531013, name = "ANY_MONSTER_DIE_531013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_531013", action = "action_EVENT_ANY_MONSTER_DIE_531013" }
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
		monsters = { 531001, 531004, 531005, 531006 },
		gadgets = { 531002, 531008, 531009, 531010, 531011, 531012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_531003", "ANY_MONSTER_DIE_531013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_531003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_531003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 531007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_531013(context, evt)
	--判断死亡怪物的configid是否为 531007
	if evt.param1 ~= 531007 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_531013(context, evt)
	-- 将configid为 531002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 531002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end