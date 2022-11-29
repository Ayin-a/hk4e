-- 基础信息
local base_info = {
	group_id = 133310116
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 116002, monster_id = 25310101, pos = { x = -2238.310, y = 230.150, z = 4576.252 }, rot = { x = 0.000, y = 296.492, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 9004, area_id = 26 },
	{ config_id = 116003, monster_id = 25210301, pos = { x = -2237.174, y = 226.587, z = 4564.551 }, rot = { x = 0.000, y = 202.683, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9007, area_id = 26 },
	{ config_id = 116004, monster_id = 25210302, pos = { x = -2246.565, y = 226.998, z = 4564.276 }, rot = { x = 0.000, y = 159.782, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9007, area_id = 26 },
	{ config_id = 116005, monster_id = 25210302, pos = { x = -2232.854, y = 227.461, z = 4569.859 }, rot = { x = 0.000, y = 137.737, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9007, area_id = 26 },
	{ config_id = 116006, monster_id = 28060901, pos = { x = -2242.257, y = 229.869, z = 4577.416 }, rot = { x = 0.000, y = 76.612, z = 0.000 }, level = 32, drop_tag = "驮兽镀金旅团", pose_id = 2, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 116001, gadget_id = 70211002, pos = { x = -2243.107, y = 228.890, z = 4572.669 }, rot = { x = 8.470, y = 167.203, z = 357.177 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 116007, gadget_id = 70330397, pos = { x = -2230.122, y = 227.796, z = 4572.444 }, rot = { x = 338.625, y = 359.656, z = 353.484 }, level = 32, state = GadgetState.GearStart, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1116008, name = "ANY_MONSTER_DIE_116008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_116008", action = "action_EVENT_ANY_MONSTER_DIE_116008" }
}

-- 变量
variables = {
}

-- 视野组
sight_groups = {
	{ 116002, 116003, 116004, 116005, 116006 }
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
		monsters = { 116002, 116003, 116004, 116005, 116006 },
		gadgets = { 116001, 116007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_116008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_116008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_116008(context, evt)
	-- 将configid为 116001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 116001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end