-- 基础信息
local base_info = {
	group_id = 133307051
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 51001, monster_id = 25030201, pos = { x = -1853.627, y = 156.986, z = 5488.930 }, rot = { x = 0.000, y = 338.997, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9003, area_id = 27 },
	{ config_id = 51004, monster_id = 25010301, pos = { x = -1850.441, y = 155.240, z = 5480.334 }, rot = { x = 0.000, y = 30.307, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9003, area_id = 27 },
	{ config_id = 51005, monster_id = 25010201, pos = { x = -1852.004, y = 155.829, z = 5482.401 }, rot = { x = 0.000, y = 101.929, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9003, area_id = 27 },
	{ config_id = 51006, monster_id = 25310201, pos = { x = -1869.348, y = 156.065, z = 5482.283 }, rot = { x = 0.000, y = 204.908, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 51002, gadget_id = 70211002, pos = { x = -1857.475, y = 157.171, z = 5488.237 }, rot = { x = 0.000, y = 188.765, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 51007, gadget_id = 70210101, pos = { x = -1849.655, y = 155.340, z = 5482.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 },
	{ config_id = 51008, gadget_id = 70210101, pos = { x = -1870.299, y = 158.099, z = 5493.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 },
	{ config_id = 51009, gadget_id = 70210101, pos = { x = -1844.905, y = 154.707, z = 5478.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1051003, name = "ANY_MONSTER_DIE_51003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51003", action = "action_EVENT_ANY_MONSTER_DIE_51003" }
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
		monsters = { 51001, 51004, 51005, 51006 },
		gadgets = { 51002, 51007, 51008, 51009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_51003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51003(context, evt)
	-- 将configid为 51002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 51002, GadgetState.Default) then
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