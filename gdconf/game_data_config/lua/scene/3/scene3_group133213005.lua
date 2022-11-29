-- 基础信息
local base_info = {
	group_id = 133213005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 21010101, pos = { x = -3150.679, y = 200.357, z = -3533.976 }, rot = { x = 357.907, y = 285.502, z = 1.476 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 12 },
	{ config_id = 5004, monster_id = 21010101, pos = { x = -3150.165, y = 200.335, z = -3527.682 }, rot = { x = 13.588, y = 232.207, z = 16.763 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 12 },
	{ config_id = 5005, monster_id = 22010101, pos = { x = -3156.618, y = 200.986, z = -3531.240 }, rot = { x = 8.323, y = 75.993, z = 346.288 }, level = 27, drop_tag = "深渊法师", area_id = 12 },
	{ config_id = 5006, monster_id = 21010201, pos = { x = -3147.593, y = 200.243, z = -3530.888 }, rot = { x = 13.588, y = 232.207, z = 16.763 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 12 },
	{ config_id = 5012, monster_id = 22010401, pos = { x = -3152.422, y = 200.357, z = -3530.743 }, rot = { x = 5.349, y = 92.929, z = 0.273 }, level = 27, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5002, gadget_id = 70211002, pos = { x = -3147.981, y = 200.243, z = -3528.826 }, rot = { x = 357.278, y = 235.780, z = 0.769 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 5007, gadget_id = 70300089, pos = { x = -3150.290, y = 200.334, z = -3530.753 }, rot = { x = 351.154, y = 359.977, z = 0.300 }, level = 27, area_id = 12 },
	{ config_id = 5008, gadget_id = 70900393, pos = { x = -3150.893, y = 200.367, z = -3536.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 5009, gadget_id = 70900393, pos = { x = -3145.219, y = 200.144, z = -3531.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 5010, gadget_id = 70900393, pos = { x = -3150.159, y = 200.335, z = -3524.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 5011, gadget_id = 70900393, pos = { x = -3155.429, y = 200.796, z = -3530.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005003, name = "ANY_MONSTER_DIE_5003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5003", action = "action_EVENT_ANY_MONSTER_DIE_5003" }
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
		monsters = { 5001, 5004, 5005, 5006, 5012 },
		gadgets = { 5002, 5007, 5008, 5009, 5010, 5011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5003(context, evt)
	-- 将configid为 5002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.Default) then
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