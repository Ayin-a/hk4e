-- 基础信息
local base_info = {
	group_id = 133314114
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 114001, monster_id = 28060901, pos = { x = -396.272, y = 39.083, z = 4505.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "驮兽镀金旅团", disableWander = true, pose_id = 3, area_id = 32 },
	{ config_id = 114002, monster_id = 25210503, pos = { x = -392.321, y = 44.658, z = 4495.561 }, rot = { x = 0.000, y = 257.986, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9511, area_id = 32 },
	{ config_id = 114003, monster_id = 25210303, pos = { x = -394.818, y = 44.677, z = 4495.607 }, rot = { x = 0.000, y = 97.862, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9512, area_id = 32 },
	{ config_id = 114004, monster_id = 25210402, pos = { x = -388.542, y = 44.932, z = 4493.620 }, rot = { x = 0.000, y = 303.687, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 32 },
	{ config_id = 114005, monster_id = 25310201, pos = { x = -385.002, y = 40.175, z = 4508.290 }, rot = { x = 0.000, y = 274.332, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 9001, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 114006, gadget_id = 70211002, pos = { x = -389.671, y = 40.187, z = 4506.938 }, rot = { x = 0.000, y = 348.181, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 114007, gadget_id = 71700519, pos = { x = -393.121, y = 44.677, z = 4494.708 }, rot = { x = 0.000, y = 257.986, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 114008, gadget_id = 71700519, pos = { x = -394.343, y = 44.677, z = 4494.709 }, rot = { x = 0.000, y = 257.986, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 114009, gadget_id = 70220128, pos = { x = -393.711, y = 44.554, z = 4495.458 }, rot = { x = 0.000, y = 180.815, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 114010, gadget_id = 71700434, pos = { x = -392.240, y = 44.753, z = 4491.674 }, rot = { x = 0.000, y = 180.815, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 114011, gadget_id = 70220050, pos = { x = -380.960, y = 40.156, z = 4509.511 }, rot = { x = 0.000, y = 180.815, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 114012, gadget_id = 70220051, pos = { x = -385.362, y = 45.051, z = 4495.352 }, rot = { x = 0.000, y = 180.815, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 114013, gadget_id = 70220052, pos = { x = -384.802, y = 45.042, z = 4496.128 }, rot = { x = 0.000, y = 180.815, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 114015, gadget_id = 70220048, pos = { x = -394.740, y = 44.596, z = 4491.970 }, rot = { x = 0.000, y = 211.786, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 114016, gadget_id = 70210101, pos = { x = -384.969, y = 45.033, z = 4496.204 }, rot = { x = 0.000, y = 126.725, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 32 },
	{ config_id = 114017, gadget_id = 70210101, pos = { x = -381.415, y = 40.950, z = 4509.717 }, rot = { x = 0.000, y = 316.694, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 32 },
	{ config_id = 114018, gadget_id = 71700430, pos = { x = -390.762, y = 44.771, z = 4493.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1114014, name = "ANY_MONSTER_DIE_114014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_114014", action = "action_EVENT_ANY_MONSTER_DIE_114014" }
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
		monsters = { 114001, 114002, 114003, 114004, 114005 },
		gadgets = { 114006, 114007, 114008, 114009, 114010, 114011, 114012, 114013, 114015, 114016, 114017, 114018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_114014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_114014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_114014(context, evt)
	-- 将configid为 114006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 114006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end