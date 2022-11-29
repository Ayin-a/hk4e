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

--获取圆柱范围内的u_list
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

function LF_Get_Baits_Around(context, radius)
	local list = {}
	for i,v in ipairs(defs.bait_list) do
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
	ScriptLib.PrintContextLog(context, "## H&S_WARNING : Invalid Skill_Info : skill -> "..skill.." | key -> "..info)
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
	ScriptLib.PrintContextLog(context, "## catch_debug | skill = "..skill)
	local radius = LF_Get_Skill_Info(context, skill, _radius)
	ScriptLib.PrintContextLog(context, "## catch_debug | radius = "..radius)
	--诱饵队列
	local bait_list = LF_Get_Baits_Around(context, radius)
	ScriptLib.PrintContextLog(context, "## catch_debug | #bait = "..#bait_list)
	if #bait_list ~= 0 then
		for i,v in ipairs(bait_list) do
			LF_Handle_Skill(context, skill, 0, v)
		end
		--通知hunter被致盲
		ScriptLib.AddTeamEntityGlobalFloatValue(context, {context.uid}, "HideAndSeek_Get_Blind", 1)
	end
	--玩家队列
	local prey_list = LF_Get_Uid_Around(context, radius)
	ScriptLib.PrintContextLog(context, "## catch_debug | #prey = "..#prey_list)
	if #prey_list ~= 0 then
		for i,v in ipairs(prey_list) do
			LF_Handle_Skill(context, skill, v, 0)
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
	local skill = "HideAndSeek_Skill_SelfInvisible"
	LF_Handle_Skill(context, skill, context.uid, 0)
	--LF_Change_Temp_Value(context, "prey_win_without_skill_"..context.uid, 1)
	return 0
end

--诱饵放置
function HideAndSeek_Skill_PlaceBait(context)
	local skill = "HideAndSeek_Skill_PlaceBait"
	LF_Handle_Skill(context, skill, context.uid, 0)
	--LF_Change_Temp_Value(context, "prey_win_without_skill_"..context.uid, 1)
	return 0
end

--伪装
function HideAndSeek_Skill_Transfer(context)
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
	--LF_Change_Temp_Value(context, "prey_win_without_skill_"..context.uid, 1)
	--统计：正义的加护
	ScriptLib.AddExhibitionReplaceableData(context, context.uid, "extra_skill_user", 1)
	return 0
end

--致盲
function HideAndSeek_Skill_Blind(context, config_id)
	ScriptLib.PrintContextLog(context, "## H&S_LOG : skill_debug : blind cid = "..config_id)
	for i,v in ipairs(defs.bait_list) do
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

--退出被侦测状态（当被抓方被扫描后，进行移动时调用）
function HideAndSeek_Skill_Is_Detected_Quit(context)
	local skill = "HideAndSeek_Skill_Is_Detected_Quit"
	LF_Handle_Skill(context, skill, context.uid, 0)
	return 0
end
function LF_Change_Temp_Value(context, key, delta)
	local cnt = ScriptLib.GetGroupTempValue(context, key, {})
	ScriptLib.SetGroupTempValue(context, key, cnt + delta, {})
end

-------------------------------------------
--技能分发管理器
function LF_Handle_Skill(context, skill, uid, cid)
	ScriptLib.PrintContextLog(context, "## H&S_WARNING : skill -> "..skill.." | uid -> "..uid.." | cid -> "..cid)
	if skill == "HideAndSeek_Skill_Init" then
		--先判断玩家有没有注册成功
		local reg = 0
		for i=1,3 do
			if uid == ScriptLib.GetGroupTempValue(context, "const_prey_"..i, {}) then
				reg = 1
				break
			end
		end
		if uid == ScriptLib.GetGroupTempValue(context, "hunter", {}) then
			--服务器可能在忽悠我，还是要处理hunter进的晚没有初始化的情况，处理完强制结束
			LF_Init_Player_State(context, uid)
			LF_Set_Player_State_Value(context, uid, HS_State.Play.name, 0)
			ScriptLib.SetPlayerGroupVisionType(context, {uid}, {0})
			return 0
		end
		if reg == 0 then
			--处理未注册的玩家，不可能是hunter
			--初始化一次，然后更新阵营参数
			LF_Init_Player_State(context, uid)
			LF_Set_Player_State_Value(context, uid, HS_State.Play.name, 1)
			ScriptLib.SetPlayerGroupVisionType(context, {uid}, {0})
		else
			--对已经在入场的玩家还原客户端状态
			for k,v in pairs(HS_State) do
				local _temp = ScriptLib.GetGroupTempValue(context, v.name.."_"..uid, {})
				--重连直接清隐身保平安
				if k ~= "Visible" then
					LF_Set_Player_State_Value(context, uid, v.name, _temp)
				else
					LF_Set_Player_State_Value(context, uid, v.name, 1)
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
		for i,v in ipairs(uid_list) do
			local _playValue = ScriptLib.GetGroupTempValue(context, HS_State.Play.name.."_"..v, {})
			ScriptLib.PrintContextLog(context, "## H&S_LOG : skill_debug "..skill.." | uid = "..v.." | key = "..HS_State.Play.name.." | value = ".._playValue)
			if 1 == _playValue then
				--对存活的玩家执行action
				for j=1,3 do
					if v == ScriptLib.GetGroupTempValue(context, "prey_"..j, {}) then
						ScriptLib.KillEntityByConfigId(context, {config_id=defs.gadget_guide[j], entity_type=EntityType.GADGET})
						local eid = ScriptLib.GetAvatarEntityIdByUid(context, v)
						local pos = ScriptLib.GetPosByEntityId(context, eid)
						ScriptLib.PrintContextLog(context, "## H&S_LOG : skill_debug "..skill.." | prey_"..j.." = "..v.." | cid = "..defs.gadget_guide[j])
						local ret = ScriptLib.CreateGadgetByConfigIdByPos(context, defs.gadget_guide[j], {x=pos.x,y=pos.y,z=pos.z}, {x=0,y=0,z=0})
						ScriptLib.PrintContextLog(context, "## H&S_LOG : Create_Gadget_Guide_"..j.." -> "..ret)
					end
				end
			end
		end
	elseif skill == "FireDirection" then
		ScriptLib.ChangeGroupTempValue(context, "guide_cnt", 1, {})
		local guide_cnt = ScriptLib.GetGroupTempValue(context, "guide_cnt", {})
		local catch_sum = ScriptLib.GetGroupVariableValue(context, "catch_sum")
		local prey_sum = ScriptLib.GetGroupTempValue(context, "prey_sum", {})
		ScriptLib.PrintContextLog(context, "## H&S_LOG : skill_debug : guide_cnt = "..guide_cnt.." | catch_sum = "..catch_sum.." | prey_sum = "..prey_sum)
		if guide_cnt == prey_sum - catch_sum then
			--这个状态不用存档，所以不执行lf_set_player_state
			ScriptLib.AddTeamEntityGlobalFloatValue(context, {uid}, "FireDirection", 1)
			--guide后抓人统计
			ScriptLib.InitTimeAxis(context, "hunter_catch_by_guide", {hunter_catch_by_guide}, false)
			ScriptLib.SetGroupTempValue(context, "hunter_catch_by_guide", 1, {})
			LF_Change_Temp_Value(context, "prey_win_by_guide", 1)
		end
	elseif skill == "HideAndSeek_Skill_Detect_F" then
		LF_Set_Player_State_Value(context, uid, "HideAndSeek_Skill_Detect", cid)
	elseif skill == "HideAndSeek_Skill_UltraMark" then
		ScriptLib.InitTimeAxis(context, "hunter_win_by_EX", {hunter_win_by_EX}, false)
		ScriptLib.SetGroupTempValue(context, "hunter_win_by_EX", 1, {})
		LF_Set_Player_State_Value(context, uid, HS_State.OnMap.name, 1)
		LF_Set_Player_State_Value(context, uid, HS_State.Transfer.name, 0)
		LF_Set_Player_State_Value(context, uid, HS_State.UltraMark.name, 1)
	elseif skill == "HideAndSeek_Out_UltraMark" then
		LF_Set_Player_State_Value(context, uid, HS_State.OnMap.name, 0)
		LF_Set_Player_State_Value(context, uid, HS_State.UltraMark.name, 0)
	elseif skill == "HideAndSeek_Skill_GlobalSight" then
		ScriptLib.InitTimeAxis(context, "hunter_win_by_EX", {hunter_win_by_EX}, false)
		ScriptLib.SetGroupTempValue(context, "hunter_win_by_EX", 1, {})
		LF_Set_Player_State_Value(context, uid, HS_State.Transfer.name, 0)
		LF_Set_Player_State_Value(context, uid, HS_State.OnMap.name, 1)
		LF_Set_Player_State_Value(context, uid, HS_State.GlobalSight.name, 1)
	elseif skill == "HideAndSeek_Out_GlobalSight" then
		LF_Set_Player_State_Value(context, uid, HS_State.OnMap.name, 0)
		LF_Set_Player_State_Value(context, uid, HS_State.GlobalSight.name, 0)
	elseif skill == "HideAndSeek_Skill_SuperPrison" then
		ScriptLib.InitTimeAxis(context, "hunter_win_by_EX", {hunter_win_by_EX}, false)
		ScriptLib.SetGroupTempValue(context, "hunter_win_by_EX", 1, {})
		LF_Set_Player_State_Value(context, uid, HS_State.Transfer.name, 0)
		LF_Set_Player_State_Value(context, uid, HS_State.Moveable.name, 0)
		LF_Set_Player_State_Value(context, uid, HS_State.SuperPrison.name, 1)
	elseif skill == "HideAndSeek_Out_SuperPrison" then
		LF_Set_Player_State_Value(context, uid, HS_State.Moveable.name, 1)
		LF_Set_Player_State_Value(context, uid, HS_State.SuperPrison.name, 0)
	elseif skill == "HideAndSeek_Hunter_Rampage" then
		LF_Set_Player_State_Value(context, uid, HS_State.Rampage.name, 1)
	elseif skill == "HideAndSeek_Skill_SelfInvisible" then
		LF_Set_Player_State_Value(context, uid, HS_State.Transfer.name, 0)
		LF_Set_Player_State_Value(context, uid, HS_State.Visible.name, 0)
	elseif skill == "HideAndSeek_Skill_PlaceBait" then
		local eid = ScriptLib.GetAvatarEntityIdByUid(context, uid)
		local pos = ScriptLib.GetPosByEntityId(context, eid)
		local pos_table = { x = pos.x, y = pos.y, z = pos.z + 0.1 }
		local rot_table = { x = 0, y = 0, z = 0 }
		ScriptLib.PrintContextLog(context, "## bait_debug | stage_1 ")
		for i=1,3 do	
			local player = ScriptLib.GetGroupTempValue(context, "const_prey_"..i, {})
			if player == 0 then
				break
			end
			if player == uid then
				ScriptLib.PrintContextLog(context, "## bait_debug | player = "..player)
				if 2 ~= ScriptLib.GetGroupTempValue(context, HS_State.Play.name.."_"..player, {}) then
					--这里要处理一个人的复数bait序列问题
					local bait_ptr = 1
					--重定位诱饵ptr,遍历比3-8译码效率高
					for j = 1,#defs.bait_list[i] do
						if ScriptLib.CheckIsInGroup(context, 0, defs.bait_list[i][j]) == false then
							bait_ptr = j
							break
						end
					end
					local bait = defs.bait_list[i][bait_ptr]
					ScriptLib.KillEntityByConfigId(context, {config_id=bait, entity_type=EntityType.GADGET})
					local _value = ScriptLib.GetGroupTempValue(context, HS_State.TransferCache.name.."_"..player, {})
					--如果玩家未变身,就用第一个transfer处理
					if _value == 0 then
						local _index = ScriptLib.GetHideAndSeekPlayIndex(context)
						local _map = ScriptLib.GetHideAndSeekMap(context, _index)
						_value = map_info[_map].list[1]
					end
					ScriptLib.PrintContextLog(context, "## H&S_LOG : bait_detail_info : player = "..player.." | ptr = "..bait_ptr.." | bait = "..bait.." value = ".._value)
					local ret = ScriptLib.CreateGadgetByParamTable(context, {config_id = bait, pos = pos_table, rot = rot_table, sgv_key = {"SGV_HideAndSeek_Bait_Transfer"}, sgv_value = {_value}})
					ScriptLib.PrintContextLog(context, "## H&S_LOG : bait_detail_ret : "..ret)
					break
				end
			end
		end
	elseif skill == "HideAndSeek_Skill_Transfer" then
		--根据地图翻译next
		--默认地图变身配置
		local list = {0,1,2,3}
		local _index = ScriptLib.GetHideAndSeekPlayIndex(context)
		local _map = 1
		_map = ScriptLib.GetHideAndSeekMap(context, _index)
		ScriptLib.PrintContextLog(context, "## HS_LOG : Get_Map_Info : ".._map)
		for k,v in pairs(map_info) do
			if k == _map then
				list = v.list
				break
			end
		end
		local t = ScriptLib.GetGroupTempValue(context, HS_State.TransferCache.name.."_"..uid, {})
		ScriptLib.PrintContextLog(context, "## H&S_LOG : Get_Player_Transform_Info : uid="..uid.." | value = "..t)
		--先处理transfer初始值带来的问题
		local t_next = 1
		if t ~= 0 then
			for i,v in ipairs(list) do
				if t == v then
					t_next = i + 1
					if t_next > #list then
						t_next = 1
					end	
				end
			end
		end 
		LF_Set_Player_State_Value(context, uid, HS_State.Visible.name, 1)
		LF_Set_Player_State_Value(context, uid, HS_State.Transfer.name, list[t_next])
		LF_Set_Player_State_Value(context, uid, HS_State.TransferCache.name, list[t_next])
	elseif skill == "HideAndSeek_Skill_Transfer_Quit" then
		--取消变身保留cache
		LF_Set_Player_State_Value(context, uid, HS_State.Transfer.name, 0)
	elseif skill == "HideAndSeek_Skill_Is_Detected_Quit" then
		LF_Set_Player_State_Value(context, uid, HS_State.Is_Detected.name, 0)
	end
	return 0
end

function LF_Set_Player_State_Value(context, uid, key, value)
	--ScriptLib.PrintContextLog(context, "## H&S_LOG : Set_State_Value : uid = "..uid.." | key = "..key.." | value = "..value)
	ScriptLib.SetGroupTempValue(context, key.."_"..uid, value, {})
	ScriptLib.SetTeamEntityGlobalFloatValue(context, {uid}, key, value)
end

function LF_Notify_Player_Visible(context, uid)
	ScriptLib.PrintContextLog(context, "## H&S_LOG : Modify_On_Map : uid = "..uid)
	local list = {}
	for i=1,3 do
		if uid == ScriptLib.GetGroupTempValue(context, "const_prey_"..i, {}) then
			if ScriptLib.GetGroupTempValue(context, HS_State.OnMap.name.."_"..uid, {}) == 1 then
				table.insert(list, uid)
				break
			end
		end
	end
	local _gallery = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	ScriptLib.UpdatePlayerGalleryScore(context, _gallery, {["update_type"]="updateVisibleUidList", ["uid_list"] = list})
	for i,v in ipairs(list) do
		ScriptLib.PrintContextLog(context, "## OnMap_Debug : list["..i.."] = "..v)
	end
end

function LF_Notify_Player_Die_Effect(context, uid)
	ScriptLib.PrintContextLog(context, "## H&S_LOG : Prepare_Die_Effect : uid = "..uid)
	ScriptLib.InitTimeAxis(context, tostring(uid), {3}, false)
end

function LF_Notify_Skill_Info(context, skill, uid_1, uid_2)
	ScriptLib.PrintContextLog(context, "## H&S_LOG : LF_Notify_Skill_Info : skill -> "..skill)
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
	local hunter = ScriptLib.GetGroupTempValue(context, "hunter", {})
	local _gallery = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	ScriptLib.UpdatePlayerGalleryScore(context, _gallery, {["update_type"]="updateCaughtUid", ["caught_uid"]=uid})
	LF_Set_Player_State_Value(context, uid, HS_State.Transfer.name, 0)
	LF_Set_Player_State_Value(context, uid, HS_State.Visible.name, 1)
	LF_Set_Player_State_Value(context, uid, HS_State.OnMap.name, 0)
	LF_Set_Player_State_Value(context, uid, HS_State.Moveable.name, 1)
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