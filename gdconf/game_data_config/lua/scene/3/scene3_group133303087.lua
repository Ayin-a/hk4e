-- 基础信息
local base_info = {
	group_id = 133303087
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 87001, monster_id = 25210301, pos = { x = -1099.228, y = 213.393, z = 3502.541 }, rot = { x = 0.000, y = 111.431, z = 0.000 }, level = 30, drop_tag = "镀金旅团", area_id = 23 },
	{ config_id = 87004, monster_id = 25210501, pos = { x = -1085.639, y = 202.229, z = 3514.693 }, rot = { x = 0.000, y = 313.698, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 23 },
	{ config_id = 87005, monster_id = 25210201, pos = { x = -1102.882, y = 211.371, z = 3513.710 }, rot = { x = 0.000, y = 119.022, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 23 },
	{ config_id = 87006, monster_id = 25210201, pos = { x = -1089.074, y = 208.454, z = 3517.188 }, rot = { x = 0.000, y = 305.837, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9506, area_id = 23 },
	{ config_id = 87009, monster_id = 25210403, pos = { x = -1091.289, y = 208.434, z = 3518.418 }, rot = { x = 0.000, y = 121.421, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 87002, gadget_id = 70211012, pos = { x = -1101.176, y = 211.367, z = 3514.765 }, rot = { x = 0.000, y = 111.868, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 87007, gadget_id = 70210101, pos = { x = -1092.824, y = 208.678, z = 3518.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 23 },
	{ config_id = 87008, gadget_id = 70220103, pos = { x = -1096.869, y = 228.712, z = 3499.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 87010, gadget_id = 70220103, pos = { x = -1100.550, y = 222.275, z = 3514.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1087003, name = "ANY_MONSTER_DIE_87003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_87003", action = "action_EVENT_ANY_MONSTER_DIE_87003" }
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
		monsters = { 87001, 87004, 87005, 87006, 87009 },
		gadgets = { 87002, 87007, 87008, 87010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_87003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_87003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_87003(context, evt)
	-- 将configid为 87002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 87002, GadgetState.Default) then
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