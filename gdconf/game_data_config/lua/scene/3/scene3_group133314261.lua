-- 基础信息
local base_info = {
	group_id = 133314261
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 261001, monster_id = 25210202, pos = { x = -121.532, y = -7.583, z = 4942.260 }, rot = { x = 0.000, y = 302.449, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 32 },
	{ config_id = 261004, monster_id = 25310101, pos = { x = -122.741, y = -7.613, z = 4946.159 }, rot = { x = 0.000, y = 345.017, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 32 },
	{ config_id = 261005, monster_id = 25310301, pos = { x = -122.693, y = -7.579, z = 4939.538 }, rot = { x = 0.000, y = 349.064, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 32 },
	{ config_id = 261006, monster_id = 25210102, pos = { x = -125.204, y = -7.646, z = 4938.425 }, rot = { x = 0.000, y = 18.885, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 32 },
	{ config_id = 261013, monster_id = 28060901, pos = { x = -148.391, y = -13.262, z = 4931.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "驮兽镀金旅团", disableWander = true, pose_id = 2, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 261002, gadget_id = 70211002, pos = { x = -126.331, y = -7.564, z = 4941.833 }, rot = { x = 0.000, y = 282.953, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 261007, gadget_id = 70220048, pos = { x = -122.883, y = -7.584, z = 4937.540 }, rot = { x = 0.000, y = 265.034, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 261008, gadget_id = 70220050, pos = { x = -119.721, y = -7.574, z = 4949.192 }, rot = { x = 0.000, y = 338.744, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 261009, gadget_id = 70220052, pos = { x = -120.003, y = -7.557, z = 4942.179 }, rot = { x = 0.000, y = 321.877, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 261010, gadget_id = 70210101, pos = { x = -119.959, y = -6.449, z = 4946.987 }, rot = { x = 0.000, y = 343.557, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 261011, gadget_id = 70210101, pos = { x = -122.078, y = -7.586, z = 4936.302 }, rot = { x = 0.000, y = 343.557, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 261012, gadget_id = 70210101, pos = { x = -120.178, y = -7.576, z = 4941.951 }, rot = { x = 0.000, y = 343.557, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 261014, gadget_id = 71700430, pos = { x = -122.669, y = -7.581, z = 4935.180 }, rot = { x = 0.000, y = 292.348, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1261003, name = "ANY_MONSTER_DIE_261003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_261003", action = "action_EVENT_ANY_MONSTER_DIE_261003" }
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
		monsters = { 261001, 261004, 261005, 261006, 261013 },
		gadgets = { 261002, 261007, 261008, 261009, 261010, 261011, 261012, 261014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_261003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_261003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_261003(context, evt)
	-- 将configid为 261002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261002, GadgetState.Default) then
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