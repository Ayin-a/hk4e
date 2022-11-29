-- 基础信息
local base_info = {
	group_id = 133301062
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 62001, monster_id = 25030201, pos = { x = -786.102, y = 144.338, z = 3386.459 }, rot = { x = 0.000, y = 286.849, z = 0.000 }, level = 33, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 23 },
	{ config_id = 62004, monster_id = 25070101, pos = { x = -788.082, y = 144.103, z = 3387.572 }, rot = { x = 0.000, y = 123.935, z = 0.000 }, level = 33, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 23 },
	{ config_id = 62006, monster_id = 25010201, pos = { x = -777.458, y = 144.316, z = 3387.119 }, rot = { x = 0.000, y = 6.905, z = 0.000 }, level = 33, drop_tag = "盗宝团", pose_id = 9006, area_id = 23 },
	{ config_id = 62009, monster_id = 25020201, pos = { x = -791.511, y = 145.124, z = 3373.344 }, rot = { x = 0.000, y = 292.208, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 23 },
	{ config_id = 62010, monster_id = 25010201, pos = { x = -782.753, y = 144.241, z = 3378.189 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "盗宝团", area_id = 23 },
	{ config_id = 62011, monster_id = 25010201, pos = { x = -773.790, y = 144.298, z = 3383.398 }, rot = { x = 0.000, y = 293.416, z = 0.000 }, level = 30, drop_tag = "盗宝团", area_id = 23 },
	{ config_id = 62012, monster_id = 25010201, pos = { x = -776.904, y = 144.301, z = 3392.450 }, rot = { x = 0.000, y = 222.246, z = 0.000 }, level = 30, drop_tag = "盗宝团", area_id = 23 },
	{ config_id = 62013, monster_id = 25010201, pos = { x = -782.470, y = 144.286, z = 3395.075 }, rot = { x = 0.000, y = 172.783, z = 0.000 }, level = 30, drop_tag = "盗宝团", area_id = 23 },
	{ config_id = 62014, monster_id = 25010201, pos = { x = -788.704, y = 144.232, z = 3384.871 }, rot = { x = 0.000, y = 60.951, z = 0.000 }, level = 30, drop_tag = "盗宝团", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 62002, gadget_id = 70217020, pos = { x = -773.915, y = 135.505, z = 3375.446 }, rot = { x = 355.081, y = 308.090, z = 350.434 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 62003, gadget_id = 70217020, pos = { x = -737.121, y = 152.115, z = 3454.432 }, rot = { x = 356.986, y = 245.110, z = 358.276 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 62005, gadget_id = 70310006, pos = { x = -785.966, y = 144.036, z = 3395.814 }, rot = { x = 356.968, y = 286.427, z = 355.424 }, level = 33, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 62007, gadget_id = 70211151, pos = { x = -783.068, y = 144.487, z = 3389.377 }, rot = { x = 0.544, y = 166.280, z = 2.237 }, level = 26, chest_drop_id = 21910052, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 62008, gadget_id = 70300105, pos = { x = -790.568, y = 144.039, z = 3396.013 }, rot = { x = 0.000, y = 47.372, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 62017, gadget_id = 70220048, pos = { x = -786.298, y = 144.420, z = 3380.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 62018, gadget_id = 70220048, pos = { x = -786.491, y = 144.036, z = 3398.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 62019, gadget_id = 70220048, pos = { x = -784.380, y = 144.036, z = 3398.912 }, rot = { x = 0.000, y = 24.686, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 62020, gadget_id = 70220050, pos = { x = -785.025, y = 144.046, z = 3397.443 }, rot = { x = 0.000, y = 297.481, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 62021, gadget_id = 70220052, pos = { x = -789.242, y = 144.037, z = 3396.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 62022, gadget_id = 70220051, pos = { x = -788.670, y = 144.134, z = 3397.377 }, rot = { x = 327.364, y = 183.431, z = 263.656 }, level = 30, area_id = 23 },
	{ config_id = 62023, gadget_id = 70220052, pos = { x = -780.020, y = 154.019, z = 3367.020 }, rot = { x = 0.000, y = 312.807, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1062015, name = "ANY_MONSTER_DIE_62015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_62015", action = "action_EVENT_ANY_MONSTER_DIE_62015" },
	{ config_id = 1062016, name = "ANY_MONSTER_DIE_62016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_62016", action = "action_EVENT_ANY_MONSTER_DIE_62016" }
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
		monsters = { 62001, 62004, 62006, 62009 },
		gadgets = { 62002, 62003, 62005, 62007, 62008, 62017, 62018, 62019, 62020, 62021, 62022, 62023 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_62015", "ANY_MONSTER_DIE_62016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 62010, 62011, 62012, 62013, 62014 },
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
function condition_EVENT_ANY_MONSTER_DIE_62015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_62015(context, evt)
	-- 将configid为 62007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 62007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_62016(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_62016(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301062, 2)
	
	return 0
end