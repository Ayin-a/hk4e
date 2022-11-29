-- 基础信息
local base_info = {
	group_id = 133308275
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 275001, monster_id = 25310201, pos = { x = -1889.669, y = 102.748, z = 4885.403 }, rot = { x = 0.000, y = 59.102, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 26 },
	{ config_id = 275006, monster_id = 25210301, pos = { x = -1889.870, y = 102.826, z = 4888.025 }, rot = { x = 0.000, y = 119.097, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9512, area_id = 26 },
	{ config_id = 275007, monster_id = 25310301, pos = { x = -1888.499, y = 102.914, z = 4893.065 }, rot = { x = 0.000, y = 227.858, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", area_id = 26 },
	{ config_id = 275008, monster_id = 25210302, pos = { x = -1887.122, y = 102.924, z = 4885.344 }, rot = { x = 0.000, y = 340.739, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9511, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 275002, gadget_id = 70211151, pos = { x = -1884.799, y = 103.098, z = 4890.011 }, rot = { x = 0.000, y = 239.340, z = 0.000 }, level = 26, chest_drop_id = 21910095, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 275004, gadget_id = 70330396, pos = { x = -1880.758, y = 102.974, z = 4879.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 275005, gadget_id = 70330397, pos = { x = -1893.081, y = 102.711, z = 4893.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 275009, gadget_id = 71700431, pos = { x = -1879.343, y = 103.376, z = 4887.072 }, rot = { x = 359.447, y = 359.986, z = 2.845 }, level = 32, area_id = 26 },
	{ config_id = 275010, gadget_id = 71700432, pos = { x = -1885.252, y = 103.064, z = 4895.692 }, rot = { x = 359.091, y = 0.109, z = 7.123 }, level = 32, area_id = 26 },
	{ config_id = 275011, gadget_id = 70210101, pos = { x = -1880.564, y = 103.977, z = 4887.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 26 },
	{ config_id = 275012, gadget_id = 70210101, pos = { x = -1885.626, y = 103.364, z = 4895.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 26 },
	{ config_id = 275013, gadget_id = 70220128, pos = { x = -1888.406, y = 102.844, z = 4886.772 }, rot = { x = 357.595, y = 40.585, z = 2.266 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1275003, name = "ANY_MONSTER_DIE_275003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_275003", action = "action_EVENT_ANY_MONSTER_DIE_275003" }
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
		monsters = { 275001, 275006, 275007, 275008 },
		gadgets = { 275002, 275004, 275005, 275009, 275010, 275011, 275012, 275013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_275003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_275003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_275003(context, evt)
	-- 将configid为 275002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 275002, GadgetState.Default) then
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