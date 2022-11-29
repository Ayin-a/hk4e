-- 基础信息
local base_info = {
	group_id = 133301219
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 219002, monster_id = 24020201, pos = { x = -866.652, y = 19.390, z = 3224.502 }, rot = { x = 0.000, y = 159.999, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 219004, monster_id = 24030201, pos = { x = -823.868, y = 17.901, z = 3281.702 }, rot = { x = 0.000, y = 225.227, z = 0.000 }, level = 30, drop_tag = "遗迹龙兽", pose_id = 101, area_id = 23 },
	{ config_id = 219006, monster_id = 24020101, pos = { x = -862.470, y = 14.140, z = 3211.431 }, rot = { x = 0.000, y = 41.682, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 219005, gadget_id = 70211022, pos = { x = -863.888, y = 15.372, z = 3220.398 }, rot = { x = 0.000, y = 172.416, z = 11.543 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 219001, shape = RegionShape.POLYGON, pos = { x = -858.662, y = 18.156, z = 3237.440 }, height = 45.548, point_array = { { x = -889.957, y = 3210.112 }, { x = -879.088, y = 3242.104 }, { x = -861.847, y = 3264.715 }, { x = -837.896, y = 3279.861 }, { x = -827.368, y = 3266.518 }, { x = -832.866, y = 3229.502 }, { x = -845.282, y = 3211.305 }, { x = -850.701, y = 3195.020 }, { x = -867.622, y = 3195.245 } }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1219001, name = "ENTER_REGION_219001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_219001", action = "action_EVENT_ENTER_REGION_219001" },
	{ config_id = 1219003, name = "ANY_MONSTER_DIE_219003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_219003", action = "action_EVENT_ANY_MONSTER_DIE_219003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 219007, gadget_id = 70950157, pos = { x = -820.052, y = 18.074, z = 3286.693 }, rot = { x = 352.304, y = 33.974, z = 4.298 }, level = 30, area_id = 23 }
	}
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
		monsters = { 219002, 219006 },
		gadgets = { 219005 },
		regions = { 219001 },
		triggers = { "ENTER_REGION_219001", "ANY_MONSTER_DIE_219003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_219001(context, evt)
	if evt.param1 ~= 219001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_219001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 219004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_219003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_219003(context, evt)
	-- 将configid为 219005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 219005, GadgetState.Default) then
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