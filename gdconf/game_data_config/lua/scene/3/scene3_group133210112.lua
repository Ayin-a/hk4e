-- 基础信息
local base_info = {
	group_id = 133210112
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 112001, monster_id = 22010401, pos = { x = -3768.711, y = 202.949, z = -500.014 }, rot = { x = 0.000, y = 322.257, z = 0.000 }, level = 32, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 17 },
	{ config_id = 112004, monster_id = 22010401, pos = { x = -3779.379, y = 202.362, z = -486.707 }, rot = { x = 0.000, y = 118.908, z = 0.000 }, level = 30, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 112002, gadget_id = 70211002, pos = { x = -3772.649, y = 204.729, z = -493.194 }, rot = { x = 346.250, y = 290.720, z = 356.113 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 112005, gadget_id = 70300107, pos = { x = -3775.945, y = 201.893, z = -489.882 }, rot = { x = 7.870, y = 359.267, z = 349.380 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 112006, gadget_id = 70300085, pos = { x = -3778.950, y = 201.932, z = -487.408 }, rot = { x = 9.940, y = 37.445, z = 358.688 }, level = 30, area_id = 17 },
	{ config_id = 112007, gadget_id = 70300085, pos = { x = -3768.911, y = 202.470, z = -499.933 }, rot = { x = 354.146, y = 233.377, z = 352.186 }, level = 30, area_id = 17 },
	{ config_id = 112008, gadget_id = 70220014, pos = { x = -3775.222, y = 199.852, z = -477.150 }, rot = { x = 329.192, y = 299.140, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 112009, gadget_id = 70220014, pos = { x = -3782.754, y = 200.429, z = -476.575 }, rot = { x = 0.000, y = 0.000, z = 36.234 }, level = 30, area_id = 17 },
	{ config_id = 112010, gadget_id = 70300107, pos = { x = -3771.036, y = 202.038, z = -497.039 }, rot = { x = 11.409, y = 358.815, z = 356.260 }, level = 30, state = GadgetState.GearStart, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1112003, name = "ANY_MONSTER_DIE_112003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_112003", action = "action_EVENT_ANY_MONSTER_DIE_112003" }
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
		monsters = { 112001, 112004 },
		gadgets = { 112002, 112005, 112006, 112007, 112008, 112009, 112010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_112003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_112003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_112003(context, evt)
	-- 将configid为 112002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end