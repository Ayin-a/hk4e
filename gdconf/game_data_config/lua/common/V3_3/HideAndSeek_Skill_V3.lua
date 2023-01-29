local _radius = "radius"
------------------------------------------
--通用函数区
--获取球形范围内的u_list
function LF_Get_Uid_Around(context, radius)
	local list = {}
	local uid_list = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(uid_list) do
		if 1 == ScriptLib.GetGroupTempValue(context, HS_State.Play.name.."_"..v, {}) then
			if radius >= LF_Get_Player_Distance_To_Player(context, context.uid, v) then
				table.insert(list, v)
			end
		end
	end
	return list
end

--获取圆柱范围内的u_list（只找游侠prey）
function LF_Get_Uid_Cylinder(context, radius)
	local list = {}
	local uid_list = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(uid_list) do
		if 1 == ScriptLib.GetGroupTempValue(context, HS_State.Play.name.."_"..v, {}) then
			--if radius >= LF_Get_Player_Distance_To_Player(context, context.uid, v) then
			if radius >= LF_Get_Player_Distance_To_Player_2D(context, context.uid, v) then	
				table.insert(list, v)
			end
		end
	end
	return list
end

-- 获取某个玩家周围，球形范围内的幽灵诱饵
function LF_Get_Baits_Around(context, radius)
	local list = {}
	for i,v in ipairs(bait_list) do
		for m,n in ipairs(v) do
			if ScriptLib.CheckIsInGroup(context, 0, n) == true then
				local eid = ScriptLib.GetEntityIdByConfigId(context, n)
				if radius >= LF_Get_Player_Distance_To_Entity(context, context.uid, eid) then
					table.insert(list, n)
				end
			end
		end
	end
	return list
end

-- 【三期新增】获取某个玩家周围，球形范围内的隐身诱饵
function LF_Get_InvisibleBaits_Around(context, radius)
	local list = {}
	for i,v in ipairs(invisible_bait_list) do
		if ScriptLib.CheckIsInGroup(context, 0, v) == true then
			local eid = ScriptLib.GetEntityIdByConfigId(context, v)
			if radius >= LF_Get_Player_Distance_To_Entity(context, context.uid, eid) then
				table.insert(list, v)
			end
		end
	end
	return list
end

function LF_Get_Distance_Between_Point(context, pos_1, pos_2)
	local X = pos_1.x - pos_2.x
	local Y = pos_1.y - pos_2.y
	local Z = pos_1.z - pos_2.z
	return math.sqrt(X*X+Y*Y+Z*Z)
end

-- 【三期新增】获取某个点周围，球形范围内的所有诱饵
function LF_Get_AllBaits_Around(context, pos, radius)
	local list = {}
	for i,v in ipairs(invisible_bait_list) do
		if ScriptLib.CheckIsInGroup(context, 0, v) == true then
			local eid = ScriptLib.GetEntityIdByConfigId(context, v)
			local pos_1 = ScriptLib.GetPosByEntityId(context, eid)
			if radius >= LF_Get_Distance_Between_Point(context, pos_1, pos) then
				table.insert(list, v)
			end
		end
	end

	for i,v in ipairs(bait_list) do
		for m,n in ipairs(v) do
			if ScriptLib.CheckIsInGroup(context, 0, n) == true then
				local eid = ScriptLib.GetEntityIdByConfigId(context, n)
				local pos_1 = ScriptLib.GetPosByEntityId(context, eid)
				if radius >= LF_Get_Distance_Between_Point(context, pos_1, pos) then
					table.insert(list, n)
				end
			end
		end
	end
	return list
end

-- =====================【三期新增】计算两个点之间的y轴角度(pos2相对于pos1)-开始===========================
function LF_Get_YAngle_By_Pos(context, pos1, pos2)
	-- 其实只需要y轴旋转，即只需要xz平面上旋转
	local p = {}
	p.x = pos2.x - pos1.x
	p.y = pos2.z - pos1.z
	local r = math.atan2(p.y, p.x) * 180 / math.pi

	-- 计算出来的是和x正方向，-180到180的夹角，先转化成0-360（和x轴正方向逆时针）
	if r < 0 then
		r = 360 + r
	end
	-- unity里是和x轴正方向顺时针
	r = 360 - r
	-- 这个特效默认朝着z轴正方向播，得再加90度
	local actualR = r + 90
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : LF_Get_YAngle_By_Pos, pos1 = ("..pos1.x..","..pos1.y..","..pos1.z.."), pos2 = ("..
	pos2.x..","..pos2.y..","..pos2.z.."), rot = "..r..", actual rot = "..actualR)
	return actualR
end

-- =====================【三期新增】找游侠周围的隐身诱饵-开始===========================
function LF_Get_Invisible_Baits_Around(context, radius)
	local list = {}
	for i,v in ipairs(invisible_bait_list) do
		if ScriptLib.CheckIsInGroup(context, 0, v) == true then
			local eid = ScriptLib.GetEntityIdByConfigId(context, v)
			if radius >= LF_Get_Player_Distance_To_Entity(context, context.uid, eid) then
				table.insert(list, v)
			end
		end
	end
	return list
end
-- =====================【三期新增】找游侠周围的隐身诱饵-结束===========================

-- =====================【三期新增】找猎手投掷球周围的游侠-开始===========================
function LF_Get_Prey_Around_HunterNet(context, pos, radius)
	-- 找球形范围内的游侠
	local list = {}
	local uid_list = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(uid_list) do
		if 1 == ScriptLib.GetGroupTempValue(context, HS_State.Play.name.."_"..v, {}) then

			local eid_1 = ScriptLib.GetAvatarEntityIdByUid(context, v)
			local pos_1 = ScriptLib.GetPosByEntityId(context, eid_1)

			ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : prey player id = "..v..", eid = "..eid_1..
				", pos = ("..pos_1.x..", "..pos_1.y..", "..pos_1.z..")")

			local X = pos_1.x - pos.x
			local Y = pos_1.y - pos.y
			local Z = pos_1.z - pos.z
			
			if radius >= math.sqrt(X*X+Y*Y+Z*Z) then	
				table.insert(list, v)
			end
		end
	end
	return list
end
-- =====================【三期新增】找猎手投掷球周围的游侠-结束===========================

-- =====================【三期新增】用新增接口找游侠-开始===========================
function LF_Get_Prey_List(context)
	local _index = ScriptLib.GetHideAndSeekPlayIndex(context)
	return ScriptLib.GetHideAndSeekPreyUidList(context, _index)
end
-- =====================【三期新增】用新增接口找游侠-结束===========================

--判断3D距离
function LF_Get_Player_Distance_To_Player(context, uid_1, uid_2)
	local eid_1 = ScriptLib.GetAvatarEntityIdByUid(context, uid_1)
	local eid_2 = ScriptLib.GetAvatarEntityIdByUid(context, uid_2)
	return LF_Get_Distance_By_EntityId(context, eid_1, eid_2)
end

--判断2D距离
function LF_Get_Player_Distance_To_Player_2D(context, uid_1, uid_2)
	local eid_1 = ScriptLib.GetAvatarEntityIdByUid(context, uid_1)
	local eid_2 = ScriptLib.GetAvatarEntityIdByUid(context, uid_2)
	return LF_Get_Distance_By_EntityId_2D(context, eid_1, eid_2)
end

function LF_Get_Player_Distance_To_Entity(context, uid_1, eid_2)
	local eid_1 = ScriptLib.GetAvatarEntityIdByUid(context, uid_1)
	return LF_Get_Distance_By_EntityId(context, eid_1, eid_2)
end

function LF_Get_Distance_By_EntityId(context, eid_1, eid_2)
	local pos_1 = ScriptLib.GetPosByEntityId(context, eid_1)
	local pos_2 = ScriptLib.GetPosByEntityId(context, eid_2)
	local X = pos_1.x - pos_2.x
	local Y = pos_1.y - pos_2.y
	local Z = pos_1.z - pos_2.z
	return math.sqrt(X*X+Y*Y+Z*Z)
end

function LF_Get_Distance_By_EntityId_2D(context, eid_1, eid_2)
	local pos_1 = ScriptLib.GetPosByEntityId(context, eid_1)
	local pos_2 = ScriptLib.GetPosByEntityId(context, eid_2)
	local X = pos_1.x - pos_2.x
	local Z = pos_1.z - pos_2.z
	return math.sqrt(X*X+Z*Z)
end

function LF_Get_Skill_Info(context, skill, info)
	if skill_info[skill][info] ~= nil then
		return skill_info[skill][info]
	end
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_WARNING : Invalid Skill_Info : skill -> "..skill.." | key -> "..info)
	return 0
end

-- 【三期新增】判断指定config id的诱饵属于哪个uid的游侠
function LF_Get_Bait_Owner(context, cid)
	for i = 1, 3 do
		for j = 1, 3 do
			if bait_list[i][j] == cid then
				local player = ScriptLib.GetGroupTempValue(context, "const_prey_"..i, {})
				ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : bait cid = "..cid.." belongs to prey uid = "..player)
				return player
			end
		end
	end
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_WARNING : illegal bait cid = "..cid)
	return 0
end


------------------------------------------
function HideAndSeek_Skill_Init(context)
	local skill = "HideAndSeek_Skill_Init"
	LF_Handle_Skill(context, skill, context.uid, 0)
	return 0
end

--hunter技能响应
--抓捕
function HideAndSeek_Skill_CatchPrey(context)
	local skill = "HideAndSeek_Skill_CatchPrey"
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG catch_debug | skill = "..skill)
	local radius = LF_Get_Skill_Info(context, skill, _radius)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG catch_debug | radius = "..radius)
	--诱饵队列
	local bait_list = LF_Get_Baits_Around(context, radius)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG catch_debug | #bait = "..#bait_list)
	if #bait_list ~= 0 then
		for i,v in ipairs(bait_list) do
			LF_Handle_Skill(context, skill, 0, v)

			-- 【三期新增翻牌】幽灵放置的诱饵阻碍过几次猎手的视野
			-- 先判断这个诱饵是哪个游侠的
			local bait_owner = LF_Get_Bait_Owner(context, v)
			ScriptLib.AddExhibitionReplaceableData(context, bait_owner, "ghost_blind_hunter_by_bait", 1)

		end
		--通知hunter被致盲
		ScriptLib.AddTeamEntityGlobalFloatValue(context, {context.uid}, "HideAndSeek_Get_Blind", 1)
	end

	-- 【三期新增】隐身诱饵队列
	local invisible_bait_list = LF_Get_InvisibleBaits_Around(context, radius)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG catch_debug | #invisible bait = "..#invisible_bait_list)
	if #invisible_bait_list ~= 0 then
		for i,v in ipairs(invisible_bait_list) do
			-- LF_Handle_Skill(context, skill, 0, v)
			-- 走上面会导致隐身诱饵被算进幽灵诱饵的陈列室,直接在这里干掉隐身诱饵	
			ScriptLib.KillEntityByConfigId(context, {config_id = v, entity_type = EntityType.GADGET})
		end

		--通知hunter被致盲
		ScriptLib.AddTeamEntityGlobalFloatValue(context, {context.uid}, "HideAndSeek_Get_Blind", 1)

		-- 【三期新增翻牌】翻牌：摧毁隐身诱饵数量++
		ScriptLib.AddExhibitionReplaceableData(context, context.uid, "hunter_kill_invisible_bait", 1)
	end

	--玩家队列catch
	local prey_list = LF_Get_Uid_Around(context, radius)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG catch_debug | #prey = "..#prey_list)
	if #prey_list ~= 0 then
		for i,v in ipairs(prey_list) do
			--catch_speedup_prey 翻牌
			if ScriptLib.GetGroupTempValue(context, "prey_is_in_sprint_"..v, {}) == 1 then
				ScriptLib.AddExhibitionReplaceableData(context, context.uid, "catch_speedup_prey", 1)
			end
			--catch_invisible_prey 翻牌
			if ScriptLib.GetGroupTempValue(context, HS_State.Visible.name.."_"..v, {}) == 1 then
				ScriptLib.AddExhibitionReplaceableData(context, context.uid, "catch_invisible_prey", 1)
			end
			--catch_2_disguise_prey 翻牌
			if ScriptLib.GetGroupTempValue(context, HS_State.Transfer.name.."_"..v, {}) > 0 then
				ScriptLib.AddExhibitionReplaceableData(context, context.uid, "catch_2_disguise_prey", 1)
			end
			--is_in_final_time 最后60秒抓住的玩家数 翻牌
			if ScriptLib.GetGroupTempValue(context,"is_in_final_time",{}) == 1 then
				ScriptLib.AddExhibitionReplaceableData(context, context.uid, "catch_2_prey_in_60", 1)
			end
			LF_Handle_Skill(context, skill, v, 0)
			--Debug用↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
			ScriptLib.InitTimeAxis(context,"Debug_Check_Catched_Prey_State_"..v ,{5},false)
			--Debug用↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
		end

		-- 【三期新增翻牌】翻牌：一次抓到多个prey
		local max = ScriptLib.GetGroupTempValue(context, "catch_multiple_prey_max", {})
		if #prey_list >= max then
			ScriptLib.SetGroupTempValue(context, "catch_multiple_prey_max", #prey_list , {})
		end
	end
	return 0
end

--方向引导
function HideAndSeek_Skill_Guide(context)
	local skill = "HideAndSeek_Skill_Guide"
	LF_Handle_Skill(context, skill, context.uid, 0)
	return 0
end

--方向引导
function FireDirection(context)
	local skill = "FireDirection"
	local hunter = ScriptLib.GetGroupTempValue(context, "hunter", {})
	LF_Handle_Skill(context, skill, hunter, 0)
	return 0
end

--为侦测到诱饵
function HideAndSeek_Skill_Detect_F(context)
	local skill = "HideAndSeek_Skill_Detect_F"
	local radius = LF_Get_Skill_Info(context, skill, _radius)
	--玩家队列
	--local prey_list = LF_Get_Uid_Around(context, radius)
	local prey_list = LF_Get_Uid_Cylinder(context, radius)
	if #prey_list > 0 then
		LF_Handle_Skill(context, skill, context.uid, 1)
		--统计：感应光环成功数
		ScriptLib.AddExhibitionAccumulableData(context, context.uid, "hunter_detect_prey", #prey_list)
		for i,v in ipairs(prey_list) do
			--记录被探查的次数
			LF_Change_Temp_Value(context, "prey_win_by_detect_"..v, 1)
			LF_Set_Player_State_Value(context, v, HS_State.Is_Detected.name, 1)
		end
	else
		LF_Handle_Skill(context, skill, context.uid, -1)
	end
	return 0
end
--重置上面的技能
function HideAndSeek_Skill_Detect_F_Reset(context)
	local skill = "HideAndSeek_Skill_Detect_F"
	LF_Handle_Skill(context, skill, context.uid, 0)
	return 0
end

--无敌定位
function HideAndSeek_Skill_UltraMark(context)
	local skill = "HideAndSeek_Skill_UltraMark"
	local radius = LF_Get_Skill_Info(context, skill, _radius)
	--玩家队列
	local prey_list = LF_Get_Uid_Around(context, radius)
	if #prey_list ~= 0 then
		math.randomseed(ScriptLib.GetServerTime(context))
		local ran = math.random(#prey_list)
		LF_Handle_Skill(context, skill, prey_list[ran], 0)
		LF_Notify_Skill_Info(context, skill, context.uid, prey_list[ran])
	end
	return 0
end

--无敌定位结束
function HideAndSeek_Out_UltraMark(context)
	local skill = "HideAndSeek_Out_UltraMark"
	LF_Handle_Skill(context, skill, context.uid, 0)
	return 0
end

--全部出来
function HideAndSeek_Skill_GlobalSight(context)
	local skill = "HideAndSeek_Skill_GlobalSight"
	local radius = LF_Get_Skill_Info(context, skill, _radius)
	local prey_list = LF_Get_Uid_Around(context, radius)
	--V2新增：以前在Action里修改gv，现改为由lua修改
	LF_Set_Player_State_Value(context, context.uid, HS_State.GlobalSight.name, 0)
	--V2新增结束
	for i,v in ipairs(prey_list) do
		LF_Handle_Skill(context, skill, v, 0)
	end
	LF_Notify_Skill_Info(context, skill, context.uid, 0)
	return 0
end

--全不出来
function HideAndSeek_Out_GlobalSight(context)
	local skill = "HideAndSeek_Out_GlobalSight"
	LF_Handle_Skill(context, skill, context.uid, 0)
	return 0
end

--超级锁定
function HideAndSeek_Skill_SuperPrison(context)
	local skill = "HideAndSeek_Skill_SuperPrison"
	local radius = LF_Get_Skill_Info(context, skill, _radius)
	--玩家队列
	local prey_list = LF_Get_Uid_Around(context, radius)
	if #prey_list ~= 0 then
		math.randomseed(ScriptLib.GetServerTime(context))
		local ran = math.random(#prey_list)
		LF_Handle_Skill(context, skill, prey_list[ran], 0)
		LF_Notify_Skill_Info(context, skill, context.uid, prey_list[ran])
	end
	return 0
end

--锁定过期
function HideAndSeek_Out_SuperPrison(context)
	local skill = "HideAndSeek_Out_SuperPrison"
	LF_Handle_Skill(context, skill, context.uid, 0)
	return 0
end

--猎人暴走
function HideAndSeek_Hunter_Rampage(context)
	local skill = "HideAndSeek_Hunter_Rampage"
	local hunter = ScriptLib.GetGroupTempValue(context, "hunter", {})
	LF_Handle_Skill(context, skill, hunter, 0)
	LF_Notify_Skill_Info(context, skill, hunter, 0)
	return 0
end

--隐身
function HideAndSeek_Skill_SelfInvisible(context)
	--服务器校验，幽灵状态不允许使用
	local _State_Play = ScriptLib.GetGroupTempValue(context,HS_State.Play.name.."_"..context.uid,{})
	if _State_Play == 2 then 
		ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_WARNING "..context.uid .."尝试使用隐身技能失败：服务器校验，幽灵状态不允许使用")
		return 0 
	end
	--校验结束

	local skill = "HideAndSeek_Skill_SelfInvisible"
	LF_Handle_Skill(context, skill, context.uid, 0)
	--LF_Change_Temp_Value(context, "prey_win_without_skill_"..context.uid, 1)
	return 0
end

-- =========================【三期新增】幽灵A技能+游侠E技能+猎人E技能===================================
-- =========================【三期新增】游侠-隐身诱饵-开始===================================
-- 隐身诱饵-创建gadget
function SLC_HideAndSeek_Skill_InvisibleBait_Place(context)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG "..context.uid .."called SLC_HideAndSeek_Skill_InvisibleBait_Place")

	local skill = "HideAndSeek_Skill_InvisibleBait_Place"
	LF_Handle_Skill(context, skill, context.uid, 0)
	return 0
end

-- 隐身诱饵-判周围游侠玩家
function SLC_HideAndSeek_Skill_InvisibleBait_Check(context)
	--服务器校验，非游侠状态不允许隐身(3是准备阶段，也允许隐身)
	local _State_Play = ScriptLib.GetGroupTempValue(context, HS_State.Play.name.."_"..context.uid, {})
	if _State_Play == 0 or _State_Play == 2 then 
		ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_WARNING player id = "..context.uid .." is near a invisible bait, playerState = ".._State_Play..", invisible not allowed")
		return 0 
	end

	-- 状态合法的玩家是否是游侠（state 3的猎人也不能隐身）
	local legal = false
	for i = 1,3 do
		if context.uid == ScriptLib.GetGroupTempValue(context, "const_prey_"..i, {}) then
			legal = true
			break
		end
	end

	if legal == false then return 0 end
	--校验结束

	-- 放置幽灵诱饵之后，如果游侠判断自己周围有隐身诱饵，触发这个slc，服务器再判一次
	local skill = "HideAndSeek_Skill_InvisibleBait_Check"
	local radius = LF_Get_Skill_Info(context, skill, _radius)

	-- 游侠旁边的隐身诱饵list
	local invisible_bait_list = LF_Get_Invisible_Baits_Around(context, radius)
	LF_PrintList(context, "## HideAndSeek_V3_LOG uid = "..context.uid..", invisible baits", invisible_bait_list)

	if #invisible_bait_list ~= 0 then
		-- 服务器也觉得这个游侠旁边有隐身诱饵，允许这个游侠隐身
		LF_Handle_Skill(context, skill, context.uid, 0)
	end

	-- if #invisible_bait_list ~= 0 and param1 == 1 then
	-- 	-- 服务器也觉得这个游侠旁边有隐身诱饵，允许这个游侠隐身
	-- 	LF_Handle_Skill(context, skill, context.uid, 0)
	-- elseif #invisible_bait_list == 0 and param1 == 2 then
	-- 	-- 没有，游侠现身
	-- 	LF_Handle_Skill(context, skill, context.uid, -1)
	-- end
	return 0
end

function SLC_HideAndSeek_Skill_InvisibleBait_Quit(context)
	local skill = "HideAndSeek_Skill_InvisibleBait_Quit"
	LF_Handle_Skill(context, skill, context.uid, 0)
	return 0
end

function SLC_HideAndSeek_Invisible_Real_Quit(context, param1)
	-- 真正退出隐身
	-- 如果param1 == 2，看玩家是不是在主动隐身技能生效过程中（为了处理先主动隐身再离开隐身诱饵时的回包顺序问题）
	if param1 == 2 then
		local temp = ScriptLib.GetGroupTempValue(context, "Visible"..context.uid, {})
		if temp == 1 then
			ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_WARNING uid = "..context.uid..", SLC_HideAndSeek_Skill_InvisibleBait_Quit is called during invisible skill, return immediately")
			return 0
		end
	end

	local skill = "HideAndSeek_Skill_Invisible_Real_Quit"
	LF_Handle_Skill(context, skill, context.uid, 0)
	return 0
end

-- =========================【三期新增】游侠-隐身诱饵-结束===================================

-- =========================【三期新增】(原游侠自选技能)幽灵-放置诱饵-开始===================================
--诱饵放置
function SLC_HideAndSeek_Skill_PlaceBait(context)
	local skill = "HideAndSeek_Skill_PlaceBait"
	LF_Handle_Skill(context, skill, context.uid, 0)
	--LF_Change_Temp_Value(context, "prey_win_without_skill_"..context.uid, 1)

	-- 【三期新增-翻牌】放置多少次幽灵诱饵
	ScriptLib.AddExhibitionReplaceableData(context, context.uid, "ghost_place_ghost_bait", 1)

	return 0
end
-- =========================【三期新增】(原游侠自选技能)幽灵-放置诱饵-结束===================================

-- =========================【三期新增】猎人-四方八方之网-开始===================================
function SLC_HideAndSeek_Skill_HunterNet(context, param1, param2, param3)
	local skill = "HideAndSeek_Skill_HunterNet"
	local pos = {x = param1, y = param2, z = param3}
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG hunter net bullet landed, pos = ("..param1..", "..param2..", "..param3..")")

	local radius = LF_Get_Skill_Info(context, skill, _radius)

	-- 找投掷球落地位置周围的玩家
	local prey_list = LF_Get_Prey_Around_HunterNet(context, pos, radius)
	for i,v in ipairs(prey_list) do
		LF_Handle_Skill(context, skill, v, 0)
	end

	if #prey_list > 0 then
		ScriptLib.AddTeamEntityGlobalFloatValue(context, {context.uid}, "HideAndSeek_HunterNet_Notify", 1)
	end
	
	-- 【三期新增翻牌】猎人-使用捕网累计侦查到几位游侠watcher
	ScriptLib.AddExhibitionAccumulableData(context, context.uid, "hunter_discover_prey_by_hunter_net", #prey_list)

	-- 找投掷球落地位置周围的所有诱饵
	local all_bait_list = LF_Get_AllBaits_Around(context, pos, radius)
	for i,v in ipairs(all_bait_list) do
		ScriptLib.KillEntityByConfigId(context, {config_id = v, entity_type = EntityType.GADGET})
	end

	-- if #all_bait_list > 0 then
	-- 	ScriptLib.AddTeamEntityGlobalFloatValue(context, {context.uid}, "HideAndSeek_Get_Blind", 1)
	-- end

	return 0
end
-- =========================【三期新增】猎人-四方八方之网-结束===================================

--伪装
function HideAndSeek_Skill_Transfer(context)
	--服务器校验，超级标记状态不允许使用
	local _temp = ScriptLib.GetGroupTempValue(context,HS_State.UltraMark.name.."_"..context.uid,{})
	if _temp == 1 then 
		ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_WARNING"..context.uid .."尝试使用变身技能失败：服务器校验，超级标记状态不允许使用")
		return 0 
	end
	--服务器校验，被洞察状态不允许使用
	local _temp = ScriptLib.GetGroupTempValue(context,HS_State.GlobalSight.name.."_"..context.uid,{})
	if _temp == 1 then 
		ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_WARNING"..context.uid .."尝试使用变身技能失败：服务器校验，被洞察状态不允许使用")
		return 0 
	end
	--服务器校验，幽灵状态不允许使用
	local _temp = ScriptLib.GetGroupTempValue(context,HS_State.Play.name.."_"..context.uid,{})
	if _temp == 2 then 
		ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_WARNING"..context.uid .."尝试使用变身技能失败：服务器校验，幽灵状态不允许使用")
		return 0 
	end
	--校验结束

	local skill = "HideAndSeek_Skill_Transfer"
	LF_Handle_Skill(context, skill, context.uid, 0)
	LF_Change_Temp_Value(context, "prey_win_without_skill_"..context.uid, 1)
	return 0
end

--解除伪装
function HideAndSeek_Skill_Transfer_Quit(context)
	local skill = "HideAndSeek_Skill_Transfer_Quit"
	LF_Handle_Skill(context, skill, context.uid, 0)
	return 0
end

--获取能量
function HideAndSeek_Skill_Get_Energy(context)
	local skill = "HideAndSeek_Skill_Get_Energy"
	--统计：眷顾之能
	ScriptLib.AddExhibitionReplaceableData(context, context.uid, "player_get_energy", 1)
	LF_Notify_Skill_Info(context, skill, context.uid, 0)
	return 0
end

--疾跑
function HideAndSeek_Skill_Sprint(context)
	local skill = "HideAndSeek_Skill_Sprint"
	LF_Notify_Skill_Info(context, skill, context.uid, 0)
	--翻牌 局内变量 是否处于疾跑状态
	ScriptLib.SetGroupTempValue(context, "prey_is_in_sprint_"..context.uid, 1, {})
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : 翻牌:prey_is_in_sprint_"..context.uid .." = 1")
	--统计：正义的加护
	ScriptLib.AddExhibitionReplaceableData(context, context.uid, "extra_skill_user", 1)
	return 0
end
--疾跑结束
function HideAndSeek_Skill_Sprint_Quit(context)
	local skill = "HideAndSeek_Skill_Sprint_Quit"
	LF_Notify_Skill_Info(context, skill, context.uid, 0)
	--翻牌 局内变量 是否处于疾跑状态
	ScriptLib.SetGroupTempValue(context, "prey_is_in_sprint_"..context.uid, 0, {})
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : 翻牌:prey_is_in_sprint_"..context.uid .." = 0")
	return 0
end

--致盲
function HideAndSeek_Skill_Blind(context, config_id)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : skill_debug : blind cid = "..config_id)
	for i,v in ipairs(bait_list) do
		for p,q in ipairs(v) do
			if q == config_id then
				local _prey = ScriptLib.GetGroupTempValue(context, "const_prey_"..i, {})
				ScriptLib.AddExhibitionReplaceableData(context, _prey, "prey_cheat_hunter", 1)
				ScriptLib.AddExhibitionAccumulableData(context, _prey, "prey_cheat_hunter", 1)
				return 0
			end
		end
	end
	return -1
end

--退出被侦测状态（当被抓方被扫描后，进行移动时调用；或者被侦测状态时间到）
function HideAndSeek_Skill_Is_Detected_Quit(context)
	local skill = "HideAndSeek_Skill_Is_Detected_Quit"
	LF_Handle_Skill(context, skill, context.uid, 0)
	return 0
end
function LF_Change_Temp_Value(context, key, delta)
	local cnt = ScriptLib.GetGroupTempValue(context, key, {})
	ScriptLib.SetGroupTempValue(context, key, cnt + delta, {})
end
--退出隐身状态（游侠的5秒隐身）
function HideAndSeek_Skill_SelfInvisible_Quit(context)
	local skill = "HideAndSeek_Skill_SelfInvisible_Quit"
	LF_Handle_Skill(context,skill,context.uid,0)
	return 0
end

-------------------------------------------
--技能分发管理器
function LF_Handle_Skill(context, skill, uid, cid)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : skill -> "..skill.." | uid -> "..uid.." | cid -> "..cid)
	if skill == "HideAndSeek_Skill_Init" then
		-- ActivityAbility_HideSeek_StateHandle_PlayerState_V3 这个ability上身后，如果玩家的play值是3或4（在逃跑阶段），每过一会儿（10s）就会slc过来走这里
		-- 先处理猎人play值在4的猎人
		if uid == ScriptLib.GetGroupTempValue(context, "hunter", {}) then
			ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_WARNING [准备阶段bug] : if uid == ScriptLib.GetGroupTempValue(context, , {}) then")
			--服务器可能在忽悠我，还是要处理hunter进的晚没有初始化的情况，处理完强制结束
			-- 先按初始化玩家的SGVs
			LF_Init_Player_State(context, uid)
			-- 如果不在逃跑阶段（但猎人的play值还是4），设置成猎人的值0
			if 1 ~= ScriptLib.GetGroupTempValue(context, "in_escape", {}) then
				ScriptLib.PrintContextLog(context,"## HideAndSeek_V3_LOG in_escape ~= 1")
				LF_Set_Player_State_Value(context, uid, HS_State.Play.name, 0)
			end
			ScriptLib.SetPlayerGroupVisionType(context, {uid}, {0})
			return 0
		end

		--先判断游侠玩家有没有注册成功（应该在逃跑阶段一开始就注册）
		local reg = 0
		for i=1,3 do
			if uid == ScriptLib.GetGroupTempValue(context, "const_prey_"..i, {}) then
				reg = 1
				break
			end
		end
		if reg == 0 then
			ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_WARNING [准备阶段bug] : if reg == 0 then")
			--处理未注册的玩家，不可能是hunter
			--初始化一次，然后更新阵营参数
			LF_Init_Player_State(context, uid)
			LF_Set_Player_State_Value(context, uid, HS_State.Play.name, 1)
			ScriptLib.SetPlayerGroupVisionType(context, {uid}, {0})
		else
			ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_WARNING [准备阶段bug] : if reg == 0 then else!")
			--对已经在入场的玩家还原客户端状态
			for k,v in pairs(HS_State) do
				local _temp = ScriptLib.GetGroupTempValue(context, v.name.."_"..uid, {})
				--重连直接清隐身保平安
				if k ~= "Visible" then
					LF_Set_Player_State_Value(context, uid, v.name, _temp)
				else
					LF_Set_Player_State_Value(context, uid, v.name, 0)
				end
			end
			ScriptLib.SetPlayerGroupVisionType(context, {uid}, {0})
		end
	elseif skill == "HideAndSeek_Skill_CatchPrey" then
		if uid ~= 0 then
			LF_Set_Prey_Die(context, uid)
		elseif uid == 0 and cid ~= 0 then
			ScriptLib.KillEntityByConfigId(context, {config_id = cid, entity_type = EntityType.GADGET})
			HideAndSeek_Skill_Blind(context, cid)
		end
	elseif skill == "HideAndSeek_Skill_Guide" then
		ScriptLib.SetGroupTempValue(context, "guide_cnt", 0, {})
		local uid_list = ScriptLib.GetSceneUidList(context)
		-- for i,v in ipairs(uid_list) do
		-- 	local _playValue = ScriptLib.GetGroupTempValue(context, HS_State.Play.name.."_"..v, {})
		-- 	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : skill_debug "..skill.." | uid = "..v.." | key = "..HS_State.Play.name.." | value = ".._playValue)
		-- 	if 1 == _playValue then
		-- 		--创建guide gadget之前刷一下authority为猎人。
		-- 		local hunter = ScriptLib.GetGroupTempValue(context, "hunter", {})
		-- 		ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.gadget_prison, hunter)
		-- 		--对存活的玩家执行action
		-- 		for j=1,3 do
		-- 			if v == ScriptLib.GetGroupTempValue(context, "prey_"..j, {}) then
		-- 				ScriptLib.KillEntityByConfigId(context, {config_id=defs.gadget_guide[j], entity_type=EntityType.GADGET})
		-- 				local eid = ScriptLib.GetAvatarEntityIdByUid(context, v)
		-- 				local pos = ScriptLib.GetPosByEntityId(context, eid)
		-- 				ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : skill_debug "..skill.." | prey_"..j.." = "..v.." | cid = "..defs.gadget_guide[j])
		-- 				local ret = ScriptLib.CreateGadgetByConfigIdByPos(context, defs.gadget_guide[j], {x=pos.x,y=pos.y,z=pos.z}, {x=0,y=0,z=0})
		-- 				ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : Create_Gadget_Guide_"..j.." -> "..ret)
		-- 			end
		-- 		end
		-- 	end
		-- end

		-- 【三期新增】新增了协议，直接由lua通知客户端在指定pos,rot播指定特效
		-- 先存猎人的pos
		local hunter_eid = ScriptLib.GetAvatarEntityIdByUid(context, uid)
		local hunter_pos = ScriptLib.GetPosByEntityId(context, hunter_eid)
		
		for i,v in ipairs(uid_list) do
			local _playValue = ScriptLib.GetGroupTempValue(context, HS_State.Play.name.."_"..v, {})
			ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : skill_debug "..skill.." | uid = "..v.." | key = "..HS_State.Play.name.." | value = ".._playValue)
			
			-- 找所有游侠
			if 1 == _playValue then
				--每个活着的游侠存pos，计算出一个rotation传给客户端播特效
				for j = 1,3 do
					if v == ScriptLib.GetGroupTempValue(context, "prey_"..j, {}) then
						local eid = ScriptLib.GetAvatarEntityIdByUid(context, v)
						local pos = ScriptLib.GetPosByEntityId(context, eid)

						local rot = LF_Get_YAngle_By_Pos(context, hunter_pos, pos)
						ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : skill_debug "..skill.." | prey_"..j.." = "..v.." | rot = "..rot)
						-- 在猎人的team上播特效
						local teamEntityId = ScriptLib.GetTeamEntityIdByUid(context, uid)
						local ret = ScriptLib.NotifyAllPlayerPerformOperation(context, teamEntityId, 1, j, {x=hunter_pos.x,y=hunter_pos.y,z=hunter_pos.z}, {x=0,y=rot,z=0})
						ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : Create_Effect_Guide | effect_index = "..j.."| hunter team = "..teamEntityId.."| ret = "..ret)
					end
				end
			end
		end
	elseif skill == "FireDirection" then
		ScriptLib.ChangeGroupTempValue(context, "guide_cnt", 1, {})
		local guide_cnt = ScriptLib.GetGroupTempValue(context, "guide_cnt", {})
		local catch_sum = ScriptLib.GetGroupVariableValue(context, "catch_sum")
		local prey_sum = ScriptLib.GetGroupTempValue(context, "prey_sum", {})
		ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : skill_debug : guide_cnt = "..guide_cnt.." | catch_sum = "..catch_sum.." | prey_sum = "..prey_sum)
		if guide_cnt == prey_sum - catch_sum then
			--这个状态不用存档，所以不执行lf_set_player_state
			ScriptLib.AddTeamEntityGlobalFloatValue(context, {uid}, "FireDirection", 1)
			--guide后抓人统计
			ScriptLib.InitTimeAxis(context, "hunter_catch_by_guide", {hunter_catch_by_guide}, false)
			ScriptLib.SetGroupTempValue(context, "hunter_catch_by_guide", 1, {})
			LF_Change_Temp_Value(context, "prey_win_by_guide", 1)
		end
	elseif skill == "HideAndSeek_Skill_Detect_F" then
		LF_Set_Player_State_Value(context, uid, "SGV_HideAndSeek_Skill_Detect", cid)
	elseif skill == "HideAndSeek_Skill_UltraMark" then
		ScriptLib.InitTimeAxis(context, "hunter_win_by_EX", {hunter_win_by_EX}, false)
		ScriptLib.SetGroupTempValue(context, "hunter_win_by_EX", 1, {})
		LF_Set_Player_State_Value(context, uid, HS_State.OnMap.name, 1)
		LF_Set_Player_State_Value(context, uid, HS_State.Transfer.name, 0)
		LF_Set_Player_State_Value(context, uid, HS_State.UltraMark.name, 1)
		--翻牌：记录被globalsight过
		ScriptLib.AddExhibitionReplaceableData(context,uid,"escape_after_ultraMark",1)
	elseif skill == "HideAndSeek_Out_UltraMark" then
		LF_Set_Player_State_Value(context, uid, HS_State.OnMap.name, 0)
		LF_Set_Player_State_Value(context, uid, HS_State.UltraMark.name, 0)
	elseif skill == "HideAndSeek_Skill_GlobalSight" then
		ScriptLib.InitTimeAxis(context, "hunter_win_by_EX", {hunter_win_by_EX}, false)
		ScriptLib.SetGroupTempValue(context, "hunter_win_by_EX", 1, {})
		LF_Set_Player_State_Value(context, uid, HS_State.Transfer.name, 0)
		LF_Set_Player_State_Value(context, uid, HS_State.OnMap.name, 1)
		LF_Set_Player_State_Value(context, uid, HS_State.GlobalSight.name, 1)
		--翻牌：记录被globalsight过
		ScriptLib.AddExhibitionReplaceableData(context,uid,"escape_after_globalsight",1)
	elseif skill == "HideAndSeek_Out_GlobalSight" then
		LF_Set_Player_State_Value(context, uid, HS_State.OnMap.name, 0)
		LF_Set_Player_State_Value(context, uid, HS_State.GlobalSight.name, 0)
	elseif skill == "HideAndSeek_Skill_SuperPrison" then
		ScriptLib.InitTimeAxis(context, "hunter_win_by_EX", {hunter_win_by_EX}, false)
		ScriptLib.SetGroupTempValue(context, "hunter_win_by_EX", 1, {})
		LF_Set_Player_State_Value(context, uid, HS_State.Transfer.name, 0)
		LF_Set_Player_State_Value(context, uid, HS_State.Moveable.name, 1)
		LF_Set_Player_State_Value(context, uid, HS_State.SuperPrison.name, 1)
		--翻牌：记录被globalsight过
		ScriptLib.AddExhibitionReplaceableData(context,uid,"escape_after_superprison",1)
	elseif skill == "HideAndSeek_Out_SuperPrison" then
		LF_Set_Player_State_Value(context, uid, HS_State.Moveable.name, 0)
		LF_Set_Player_State_Value(context, uid, HS_State.SuperPrison.name, 0)
	elseif skill == "HideAndSeek_Hunter_Rampage" then
		LF_Set_Player_State_Value(context, uid, HS_State.Rampage.name, 1)
	elseif skill == "HideAndSeek_Skill_SelfInvisible" then
		LF_Set_Player_State_Value(context, uid, HS_State.Transfer.name, 0)
		LF_Set_Player_State_Value(context, uid, HS_State.Visible.name, 1)
		LF_Set_Player_State_Value(context, uid, HS_State.Visible_Mark.name, 1)
	elseif skill == "HideAndSeek_Skill_PlaceBait" then
		local eid = ScriptLib.GetAvatarEntityIdByUid(context, uid)
		local pos = ScriptLib.GetPosByEntityId(context, eid)
		local pos_table = { x = pos.x, y = pos.y, z = pos.z + 0.1 }
		local rot_table = { x = 0, y = 0, z = 0 }
		ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG bait_debug | stage_1 ")
		for i=  1, 3 do	
			local player = ScriptLib.GetGroupTempValue(context, "const_prey_"..i, {})
			if player == 0 then
				break
			end
			if player == uid then
				ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG bait_debug | player = "..player)
				-- 只有幽灵状态下才能放
				if 2 == ScriptLib.GetGroupTempValue(context, HS_State.Play.name.."_"..player, {}) then
					--这里要处理一个人的复数bait序列问题
					local bait_ptr = 1
					--重定位诱饵ptr,遍历比3-8译码效率高
					for j = 1,#bait_list[i] do
						if ScriptLib.CheckIsInGroup(context, 0, bait_list[i][j]) == false then
							bait_ptr = j
							break
						end
					end
					local bait = bait_list[i][bait_ptr]
					ScriptLib.KillEntityByConfigId(context, {config_id=bait, entity_type=EntityType.GADGET})
					-- local _value = ScriptLib.GetGroupTempValue(context, HS_State.TransferCache.name.."_"..player, {})
					-- --如果玩家未变身,就用第一个transfer处理
					-- if _value == 0 then
					-- 	local _index = ScriptLib.GetHideAndSeekPlayIndex(context)
					-- 	local _map = ScriptLib.GetHideAndSeekMap(context, _index)
					-- 	_value = map_info[_map].list[1]
					-- end

					-- 【三期新增】幽灵放诱饵都随机
					local _index = ScriptLib.GetHideAndSeekPlayIndex(context)
					local _map = ScriptLib.GetHideAndSeekMap(context, _index)
					
					math.randomseed(ScriptLib.GetServerTime(context))
					-- local baitPool = map_info[_map].list
					local randomIdx = math.random(#disguiseList)
					local _value = disguiseList[randomIdx]

					ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : bait_detail_info : player = "..player.." | ptr = "..bait_ptr.." | bait = "..bait.." value = ".._value)
					local ret = ScriptLib.CreateGadgetByParamTable(context, {config_id = bait, pos = pos_table, rot = rot_table, sgv_key = {"SGV_HideAndSeek_Bait_Transfer"}, sgv_value = {_value}})
					ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : bait_detail_ret : "..ret)

					-- 【三期新增翻牌】游侠-使用几次隐身诱饵watcher
					ScriptLib.AddExhibitionAccumulableData(context, player, "prey_use_invisible_bait", 1)
					break
				end
			end
		end
	elseif skill == "HideAndSeek_Skill_Transfer" then
		--根据地图翻译next
		--默认地图变身配置
		-- local list = {0,1,2,3}
		-- local _index = ScriptLib.GetHideAndSeekPlayIndex(context)
		-- local _map = 1
		-- _map = ScriptLib.GetHideAndSeekMap(context, _index)
		-- ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : Get_Map_Info : ".._map)
		-- for k,v in pairs(map_info) do
		-- 	if k == _map then
		-- 		list = v.list
		-- 		break
		-- 	end
		-- end
		local t = ScriptLib.GetGroupTempValue(context, HS_State.TransferCache.name.."_"..uid, {})
		ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : Get_Player_Transform_Info : uid="..uid.." | value = "..t)
		--先处理transfer初始值带来的问题
		local t_next = 1
		if t ~= 0 then
			for i,v in ipairs(disguiseList) do
				if t == v then
					t_next = i + 1
					if t_next > #disguiseList then
						t_next = 1
					end	
				end
			end
		end 
		LF_Set_Player_State_Value(context, uid, HS_State.Visible.name, 0)
		LF_Set_Player_State_Value(context, uid, HS_State.Transfer.name, disguiseList[t_next])
		LF_Set_Player_State_Value(context, uid, HS_State.TransferCache.name, disguiseList[t_next])
	elseif skill == "HideAndSeek_Skill_Transfer_Quit" then
		--取消变身保留cache
		LF_Set_Player_State_Value(context, uid, HS_State.Transfer.name, 0)
	elseif skill == "HideAndSeek_Skill_Is_Detected_Quit" then
		--游侠退出被侦测状态（被侦测状态时间到或移动时触发）
		LF_Set_Player_State_Value(context, uid, HS_State.Is_Detected.name, 0)
	elseif skill == "HideAndSeek_Skill_SelfInvisible_Quit" then
		--游侠退出5秒隐身
		LF_Set_Player_State_Value(context, uid, HS_State.Visible.name, 0)
	-- =========================【三期新增】游侠-隐身诱饵-开始===========================
	elseif skill == "HideAndSeek_Skill_InvisibleBait_Place" then
		-- 第一步：游侠放置隐身诱饵（用上一次变身的gadget）
		local eid = ScriptLib.GetAvatarEntityIdByUid(context, uid)
		local pos = ScriptLib.GetPosByEntityId(context, eid)
		local pos_table = { x = pos.x, y = pos.y, z = pos.z + 0.1 }
		local rot_table = { x = 0, y = 0, z = 0 }
		for i=1,3 do
			-- 先判断使用技能的玩家是不是被捕方
			local player = ScriptLib.GetGroupTempValue(context, "const_prey_"..i, {})
			if player == 0 then
				break
			end

			-- 再判断使用技能的玩家是不是未死亡的游侠（逃跑时间段内游侠的playstate == 3，但是也可以放隐身诱饵）
			if player == uid then
				if 2 ~= ScriptLib.GetGroupTempValue(context, HS_State.Play.name.."_"..player, {}) then -- todo这里可能要再看下怎么判更好
					local invisible_bait = invisible_bait_list[i]
					if ScriptLib.CheckIsInGroup(context, 0, invisible_bait) == true then
						-- 如果场上存在这个游侠的隐身诱饵，把上一个干掉
						ScriptLib.KillEntityByConfigId(context, {config_id=invisible_bait, entity_type=EntityType.GADGET})
					end

					local _value = ScriptLib.GetGroupTempValue(context, HS_State.TransferCache.name.."_"..player, {})
					if _value == 0 then
						--如果玩家未变身,就用此地图的第一个transfer处理
						local _index = ScriptLib.GetHideAndSeekPlayIndex(context)
						local _map = ScriptLib.GetHideAndSeekMap(context, _index)
						-- _value = map_info[_map].list[1]
						_value = disguiseList[1]
					end
				
					ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : invisible_bait_detail_info : player = "..player.." | ptr = ".._value.." | bait = "..invisible_bait)
					local ret = ScriptLib.CreateGadgetByParamTable(context, {config_id = invisible_bait, pos = pos_table, rot = rot_table, sgv_key = {"SGV_HideAndSeek_InvisibleBait_Transfer"}, sgv_value = {_value}})
					ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : invisible_bait_detail_ret : "..ret)

				end
			end
		end
	elseif skill == "HideAndSeek_Skill_InvisibleBait_Check" then
		-- 第二步：隐身诱饵周围的游侠隐身/不隐身
		LF_Set_Player_State_Value(context, uid, HS_State.Visible_Bait.name, 1)
		LF_Set_Player_State_Value(context, uid, HS_State.Visible_Mark.name, 1)

	elseif skill == "HideAndSeek_Skill_InvisibleBait_Quit" then
		-- 第三步：隐身诱饵周围的游侠不隐身
		LF_Set_Player_State_Value(context, uid, HS_State.Visible_Bait.name, 0)
	-- =========================【三期新增】游侠替换技能：隐身诱饵-结束===========================
	
	-- =========================【三期新增】真的解除隐身-开始===========================
	elseif skill == "HideAndSeek_Skill_Invisible_Real_Quit" then
		LF_Set_Player_State_Value(context, uid, HS_State.Visible_Mark.name, 0)
	-- =========================【三期新增】真的解除隐身-结束===========================

	-- =========================【三期新增】猎人技能-四方八方之网-开始===========================
	elseif skill == "HideAndSeek_Skill_HunterNet" then
		-- 周围有没有游侠解除游侠变身状态
		LF_Set_Player_State_Value(context, uid, HS_State.Transfer.name, 0)
		-- 【三期新增翻牌】游侠-被捕网打中
		ScriptLib.AddExhibitionReplaceableData(context, uid, "prey_discovered_by_hunter_net", 1)
	-- =========================【三期新增】猎人技能-四方八方之网-结束===========================
	end
	return 0
end

function LF_Set_Player_State_Value(context, uid, key, value)
	ScriptLib.PrintContextLog(context, "尝试设置sgv## HideAndSeek_V3_LOG : Set_State_Value : uid = "..uid.." | key = "..key.." | value = "..value)
	ScriptLib.SetGroupTempValue(context, key.."_"..uid, value, {})
	--重要状态改为Team_SGV实现
	--ScriptLib.SetTeamEntityGlobalFloatValue(context, {uid}, key, value)
	ScriptLib.SetTeamServerGlobalValue(context,uid, key, value)

	-- 【三期新增】Visible的sgv需要拿一个temp value记录，用来预防离开诱饵前主动隐身，隐身没生效的情况
	if key == HS_State.Visible.name then
		ScriptLib.SetGroupTempValue(context, "Visible"..context.uid, value, {})
	-- 【三期新增翻牌】游侠-一共隐身多久
	elseif key == HS_State.Visible_Mark.name then
		if 1 ~= ScriptLib.GetGroupTempValue(context, HS_State.Play.name.."_"..uid, {}) and
			3 ~= ScriptLib.GetGroupTempValue(context, HS_State.Play.name.."_"..uid, {}) then
			-- 只允许游侠，3是在逃跑阶段的游侠，后面要校验下开始的时间
			return 0
		end

		local visible_mark_current = ScriptLib.GetGroupTempValue(context, "Visible_Mark"..uid, {})
		ScriptLib.SetGroupTempValue(context, "Visible_Mark"..uid, value, {})

		if visible_mark_current == value then
			-- 隐身状态没变，不计算
			-- 这个temp value在开挑战之后才创建的，这里有可能取不到，返回了-1，能通过这个判定
			ScriptLib.PrintContextLog(context, "HideAndSeek_V3_WARNING : uid = "..uid..", visible_mark = "..visible_mark_current..", dest value = "..value)
			return 0
		end

		local _escape = ScriptLib.GetGroupTempValue(context, "in_escape", {})
		if _escape == 1 then
			-- 逃跑阶段不计算
			ScriptLib.PrintContextLog(context, "HideAndSeek_V3_WARNING : uid = "..uid..", trying to calculate exhibition time during escape stage")
			return 0
		end

		if value == 1 then
			-- 开始隐身
			local startTime = ScriptLib.GetServerTime(context)
			ScriptLib.SetGroupTempValue(context, "VisibleStart"..uid, startTime, {})
			ScriptLib.PrintContextLog(context, "HideAndSeek_V3_LOG : visible start : uid = "..uid.." | time = "..startTime)
		else
			-- 结束隐身
			local endTime = ScriptLib.GetServerTime(context)
			local startTime = ScriptLib.GetGroupTempValue(context, "VisibleStart"..uid, {})

			if startTime == 0 then
				-- 没开始过，不计算
				ScriptLib.PrintContextLog(context, "HideAndSeek_V3_WARNING : uid = "..uid..", visible start time = 0")
				return 0
			end

			local duration = endTime - startTime
			ScriptLib.AddExhibitionReplaceableData(context, uid, "prey_keep_invisible", duration)
			ScriptLib.PrintContextLog(context, "HideAndSeek_V3_LOG : uid = "..uid.." | visible start time = "..startTime.." | end time = "..endTime.." | duration = "..duration)

		end
	end
end

function LF_Notify_Player_Visible(context)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : Modify_On_Map")
	local list = {}
	for i=1,3 do
		local uid = ScriptLib.GetGroupTempValue(context, "const_prey_"..i, {})
		if ScriptLib.GetGroupTempValue(context, HS_State.OnMap.name.."_"..uid, {}) == 1 then
			table.insert(list, uid)
		end
	end
	local _gallery = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG [b1315327]将玩家显示在地图上，list数量："..#list)
	ScriptLib.UpdatePlayerGalleryScore(context, _gallery, {["update_type"]="updateVisibleUidList", ["uid_list"] = list})
	for i,v in ipairs(list) do
		ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG OnMap_Debug : list["..i.."] = "..v)
	end
end

function LF_Notify_Player_Die_Effect(context, uid)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : Prepare_Die_Effect : uid = "..uid)
	ScriptLib.InitTimeAxis(context, tostring(uid), {3}, false)
end

function LF_Notify_Skill_Info(context, skill, uid_1, uid_2)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : LF_Notify_Skill_Info : skill -> "..skill)
	local uid_list = ScriptLib.GetSceneUidList(context)
	if skill == "HideAndSeek_Skill_UltraMark" then
		ScriptLib.AssignPlayerShowTemplateReminder(context, 124, {param_vec={skill_info[skill].duration},param_uid_vec={uid_1,uid_2},uid_vec=uid_list})
	elseif skill == "HideAndSeek_Skill_GlobalSight" then
		ScriptLib.AssignPlayerShowTemplateReminder(context, 125, {param_vec={skill_info[skill].duration},param_uid_vec={uid_1},uid_vec=uid_list})
	elseif skill == "HideAndSeek_Skill_SuperPrison" then
		ScriptLib.AssignPlayerShowTemplateReminder(context, 126, {param_vec={skill_info[skill].duration},param_uid_vec={uid_1,uid_2},uid_vec=uid_list})
	elseif skill == "HideAndSeek_Skill_CatchPrey" then
		ScriptLib.AssignPlayerUidOpNotify(context, {param_index = 11,param_list={},param_uid_list={uid_1,uid_2},duration=3,target_uid_list=uid_list})
	elseif skill == "HideAndSeek_Hunter_Rampage" then
		ScriptLib.AssignPlayerUidOpNotify(context, {param_index = 13,param_list={},param_uid_list={uid_1},duration=3,target_uid_list=uid_list})
	elseif skill == "HideAndSeek_Skill_Get_Energy" then
		local notify_id = 15
		if uid_1 == ScriptLib.GetGroupTempValue(context, "hunter", {}) then
			notify_id = 14
		end
		ScriptLib.AssignPlayerUidOpNotify(context, {param_index = notify_id,param_list={},param_uid_list={uid_1},duration=3,target_uid_list=uid_list})	
	end
end

function LF_Set_Prey_Die(context, uid)
	ScriptLib.PrintContextLog(context,"## HideAndSeek_V3_LOG LF_Set_Prey_Die")
	local hunter = ScriptLib.GetGroupTempValue(context, "hunter", {})
	local _gallery = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	ScriptLib.UpdatePlayerGalleryScore(context, _gallery, {["update_type"]="updateCaughtUid", ["caught_uid"]=uid})
	LF_Set_Player_State_Value(context, uid, HS_State.Transfer.name, 0)
	LF_Set_Player_State_Value(context, uid, HS_State.Visible.name, 0)
	LF_Set_Player_State_Value(context, uid, HS_State.Visible_Bait.name, 0)
	LF_Set_Player_State_Value(context, uid, HS_State.Visible_Mark.name, 0)
	LF_Set_Player_State_Value(context, uid, HS_State.OnMap.name, 0)
	LF_Set_Player_State_Value(context, uid, HS_State.Moveable.name, 0)
	LF_Set_Player_State_Value(context, uid, HS_State.Play.name, 2)
	local catch_sum = ScriptLib.GetGroupVariableValue(context, "catch_sum")
	local prey_sum = ScriptLib.GetGroupTempValue(context, "prey_sum", {})
	--处理prey死亡的exhibition统计
	if 1 == ScriptLib.GetGroupTempValue(context, "hunter_catch_by_guide", {}) then
		--统计：神秘预感后捕获
		ScriptLib.AddExhibitionReplaceableData(context, hunter, "hunter_catch_by_guide", 1)
	end
	if catch_sum == 0 then
		--统计：强行侦察
		ScriptLib.AddExhibitionReplaceableData(context, uid, "prey_dead_first", 1)
	end
	if catch_sum == 1 then
		--统计：阵脚大乱
		ScriptLib.AddExhibitionReplaceableData(context, uid, "prey_dead_second", 1)
	end
	if catch_sum == prey_sum - 1 then
		--统计：功败垂成
		ScriptLib.AddExhibitionReplaceableData(context, uid, "prey_dead_final", 1)
	end
	--处理玩家死亡表现
	if catch_sum < prey_sum - 1 then
		ScriptLib.PrintContextLog(context,"## HideAndSeek_V3_LOG catch_sum = " .. catch_sum .."|prey_sum = ".. prey_sum)
		LF_Notify_Skill_Info(context, "HideAndSeek_Skill_CatchPrey", hunter, uid)
		LF_Notify_Player_Die_Effect(context, uid)
	end
	ScriptLib.ChangeGroupVariableValue(context, "catch_sum", 1)
	--最后执行prey_清档比较安全
	local idx = 0
	for j = 1,3 do
		if uid == ScriptLib.GetGroupTempValue(context, "prey_"..j, {}) then
			idx = j
			ScriptLib.SetGroupTempValue(context, "prey_"..j, 0, {})
			break
		end	
	end
	ScriptLib.StopChallenge(context, idx*math.pow(10,5)+9013, 0)
end
-------------------------------------------
-- 一些通用LF
function LF_GetTableLength(t)
    local count = 0
    for _ in pairs(t) do count = count + 1 end
    return count
end

function LF_PrintList(context, name, list)
    local emptyStr = name
    for k, v in pairs(list) do
        emptyStr = emptyStr..", "..v
    end

    ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG "..emptyStr)
end