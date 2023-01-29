-- 基础信息
local base_info = {
	group_id = 201006005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17, monster_id = 20011301, pos = { x = -1.962, y = 1.035, z = -38.508 }, rot = { x = 0.000, y = 12.768, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 18, monster_id = 21011001, pos = { x = 15.128, y = 1.143, z = -39.484 }, rot = { x = 0.000, y = 305.349, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 20, monster_id = 20011201, pos = { x = 3.409, y = 1.000, z = -39.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 21, monster_id = 21010501, pos = { x = -4.189, y = 1.000, z = -45.061 }, rot = { x = 0.000, y = 31.113, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 47, gadget_id = 70211111, pos = { x = 14.020, y = 11.973, z = -52.889 }, rot = { x = 0.000, y = 330.742, z = 0.000 }, level = 6, drop_tag = "解谜中级蒙德", isOneoff = true },
	{ config_id = 52, gadget_id = 70211012, pos = { x = 17.600, y = 1.000, z = -46.895 }, rot = { x = 0.000, y = 327.532, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 54, gadget_id = 70220004, pos = { x = -8.234, y = 0.911, z = -41.514 }, rot = { x = 0.000, y = 306.013, z = 0.000 }, level = 15 },
	{ config_id = 55, gadget_id = 70220004, pos = { x = 1.340, y = 1.000, z = -49.390 }, rot = { x = 0.000, y = 219.813, z = 0.000 }, level = 15 },
	{ config_id = 76, gadget_id = 70900201, pos = { x = 21.559, y = 8.032, z = -50.499 }, rot = { x = 0.000, y = 76.013, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 44, shape = RegionShape.SPHERE, radius = 5, pos = { x = 25.155, y = 8.148, z = -51.056 } }
}

-- 触发器
triggers = {
	{ config_id = 1000015, name = "ANY_MONSTER_DIE_15", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15", action = "action_EVENT_ANY_MONSTER_DIE_15" },
	{ config_id = 1000044, name = "ENTER_REGION_44", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_44", action = "action_EVENT_ENTER_REGION_44", forbid_guest = false }
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
	rand_suite = true
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
		monsters = { 17, 18, 20, 21 },
		gadgets = { 47, 52, 54, 55 },
		regions = { 44 },
		triggers = { "ANY_MONSTER_DIE_15", "ENTER_REGION_44" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15(context, evt)
	-- 解锁目标2
	if 0 ~= ScriptLib.UnlockForce(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_force")
		return -1
	end
	
	-- 创建id为76的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 76 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-6，4，-47），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6, y=4, z=-47}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 2,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将configid为 52 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_44(context, evt)
	if evt.param1 ~= 44 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_44(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201006005, monsters = {}, gadgets = {76} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end