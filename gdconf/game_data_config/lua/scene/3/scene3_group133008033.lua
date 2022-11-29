-- 基础信息
local base_info = {
	group_id = 133008033
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 33001, monster_id = 21010901, pos = { x = 1274.382, y = 273.699, z = -1179.126 }, rot = { x = 0.000, y = 1.016, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, climate_area_id = 1, area_id = 10 },
	{ config_id = 33004, monster_id = 21011401, pos = { x = 1275.078, y = 274.056, z = -1174.267 }, rot = { x = 0.000, y = 11.670, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 33005, monster_id = 21030501, pos = { x = 1274.605, y = 274.288, z = -1170.916 }, rot = { x = 0.000, y = 207.664, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 33006, monster_id = 21010901, pos = { x = 1272.233, y = 275.674, z = -1165.437 }, rot = { x = 0.000, y = 152.420, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 33002, gadget_id = 70211012, pos = { x = 1272.696, y = 274.021, z = -1172.410 }, rot = { x = 355.228, y = 84.485, z = 355.830 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1033003, name = "ANY_MONSTER_DIE_33003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33003", action = "action_EVENT_ANY_MONSTER_DIE_33003" },
	{ config_id = 1033007, name = "MONSTER_BATTLE_33007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_33007", action = "action_EVENT_MONSTER_BATTLE_33007" }
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
		monsters = { 33004, 33005 },
		gadgets = { 33002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_33003", "MONSTER_BATTLE_33007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33003(context, evt)
	-- 将configid为 33002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_33007(context, evt)
	if 33004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_33007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 33001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 33006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end