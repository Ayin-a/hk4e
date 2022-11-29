-- 基础信息
local base_info = {
	group_id = 133301300
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 300001, monster_id = 25020201, pos = { x = -749.885, y = 241.089, z = 3445.718 }, rot = { x = 0.000, y = 15.302, z = 0.000 }, level = 33, drop_tag = "盗宝团", pose_id = 9005, area_id = 23 },
	{ config_id = 300004, monster_id = 25010201, pos = { x = -730.380, y = 239.497, z = 3459.031 }, rot = { x = 0.000, y = 10.854, z = 0.000 }, level = 33, drop_tag = "盗宝团", pose_id = 9002, area_id = 23 },
	{ config_id = 300006, monster_id = 25010501, pos = { x = -744.185, y = 236.840, z = 3459.475 }, rot = { x = 0.000, y = 59.068, z = 0.000 }, level = 33, drop_tag = "盗宝团", area_id = 23 },
	{ config_id = 300007, monster_id = 25010301, pos = { x = -736.925, y = 238.903, z = 3442.522 }, rot = { x = 0.000, y = 274.852, z = 0.000 }, level = 33, drop_tag = "盗宝团", pose_id = 9003, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 300002, gadget_id = 70211012, pos = { x = -740.952, y = 240.706, z = 3447.171 }, rot = { x = 358.437, y = 72.646, z = 14.838 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 300008, gadget_id = 70220050, pos = { x = -748.299, y = 241.362, z = 3444.398 }, rot = { x = 0.000, y = 58.569, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 300009, gadget_id = 70220048, pos = { x = -749.201, y = 238.613, z = 3454.946 }, rot = { x = 347.718, y = 261.193, z = 344.568 }, level = 33, area_id = 23 },
	{ config_id = 300010, gadget_id = 70220048, pos = { x = -748.124, y = 238.039, z = 3456.159 }, rot = { x = 338.917, y = 225.472, z = 352.200 }, level = 33, area_id = 23 },
	{ config_id = 300011, gadget_id = 70210101, pos = { x = -738.048, y = 239.756, z = 3442.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 300012, gadget_id = 70210101, pos = { x = -750.635, y = 241.701, z = 3445.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1300003, name = "ANY_MONSTER_DIE_300003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_300003", action = "action_EVENT_ANY_MONSTER_DIE_300003" }
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
		monsters = { 300001, 300004, 300006, 300007 },
		gadgets = { 300002, 300008, 300009, 300010, 300011, 300012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_300003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_300003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_300003(context, evt)
	-- 将configid为 300002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 300002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end