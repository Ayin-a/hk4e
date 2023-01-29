-- 基础信息
local base_info = {
	group_id = 133307239
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 239002, monster_id = 25210203, pos = { x = -1281.927, y = 49.874, z = 5372.596 }, rot = { x = 0.000, y = 77.218, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9002, area_id = 32 },
	{ config_id = 239003, monster_id = 25210303, pos = { x = -1274.861, y = 46.344, z = 5374.270 }, rot = { x = 0.000, y = 57.274, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9506, area_id = 32 },
	{ config_id = 239004, monster_id = 25210102, pos = { x = -1273.809, y = 46.463, z = 5375.437 }, rot = { x = 0.000, y = 209.502, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9505, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 239001, gadget_id = 70300094, pos = { x = -1272.571, y = 46.464, z = 5376.958 }, rot = { x = 2.765, y = 218.901, z = 1.966 }, level = 32, area_id = 32 },
	{ config_id = 239006, gadget_id = 70220128, pos = { x = -1274.505, y = 46.284, z = 5375.026 }, rot = { x = 359.960, y = 305.059, z = 4.338 }, level = 32, area_id = 32 },
	{ config_id = 239007, gadget_id = 70211002, pos = { x = -1274.844, y = 46.372, z = 5378.212 }, rot = { x = 357.809, y = 168.894, z = 355.323 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 239012, gadget_id = 70310018, pos = { x = -1276.636, y = 46.196, z = 5376.287 }, rot = { x = 358.494, y = 359.019, z = 5.847 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1239008, name = "ANY_MONSTER_DIE_239008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_239008", action = "action_EVENT_ANY_MONSTER_DIE_239008" }
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
		monsters = { 239002, 239003, 239004 },
		gadgets = { 239001, 239006, 239007, 239012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_239008" },
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
function condition_EVENT_ANY_MONSTER_DIE_239008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133307239) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_239008(context, evt)
	-- 将configid为 239007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 239007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end