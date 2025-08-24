return function(self, gunKitVersion, info)
	local equipped = false
	local activated = false
	
	if gunKitVersion == "Old" then
		local bypassMode = info[1]
		local speaker = info[2]
		local projectileHandler = info[3]
		local setEquippedTool = info[4]
		local playAudio = info[5]
		local kill = info[6]
		local remotes = info[7]
		local miscs = info[8]

		-- 関数 --
		if bypassMode then
			setEquippedTool()
		end

		local tool = Instance.new("Tool", speaker.Backpack)
		tool.Name = "Goku Blast"
		tool.RequiresHandle = false

		tool.Equipped:Connect(function()
			equipped = true
			if self.Modules.core:IsRigType(speaker.Character, "R15") then
				self.Modules.core:PlayAnimation(17747125537) else
				self.Modules.core:PlayAnimation(95383474)
			end
		end)
		tool.Unequipped:Connect(function()
			equipped = false
			self.Modules.core:StopAnimation()
		end)

		self.addConn("GOKU_BLAST_ACTIVATE", self.Services.UserInputService.InputBegan:Connect(function(input, gpe)
			if gpe then
				return
			end

			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				if equipped then
					activated = true
				end	
			end
		end))
		self.addConn("GOKU_BLAST_DEACTIVATE", self.Services.UserInputService.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				if equipped then
					activated = false
				end	
			end
		end))

		while tool do
			if activated then
				local fakeTool
				if self.Modules.core:IsRigType(speaker.Character, "R15") then
					fakeTool = speaker.Character.RightHand else
					fakeTool = speaker.Character["Right Arm"]
				end

				local rayOrigin = self.Camera.CFrame.Position
				local mouseRay = self.Camera:ScreenPointToRay(self.Mouse.X, self.Mouse.Y)
				local maxDistance = 10000
				local rayDirection = mouseRay.Direction * maxDistance

				local raycastParams = RaycastParams.new()
				raycastParams.FilterDescendantsInstances = {game.Players.LocalPlayer.Character}
				raycastParams.FilterType = Enum.RaycastFilterType.Exclude

				local raycastResult = workspace:Raycast(rayOrigin, rayDirection, raycastParams)

				local hitPosition = raycastResult and raycastResult.Position or (rayOrigin + rayDirection)

				local direction = (hitPosition - fakeTool.Position)

				local args = {
					fakeTool,
					fakeTool,
					nil,
					{
						TacticalReloadAnimationSpeed = 1,
						AngleX_Min = 1,
						Lifesteal = 0,
						WindSpeed = 10,
						Spread = 5,
						BaseDamage = 1000,
						WhizDistance = 25,
						ProjectileMotion = false,
						MeleeDebuffChance = 100,
						SpreadRedutionS = 0.6,
						VisibleTime = 0.01,
						HoldDownAnimationSpeed = 1,
						DebuffName = "",
						ScopeSwaySpeed = 15,
						HoldingTime = 1,
						HeatPerFireMax = 8,
						MeleeBloodEnabled = true,
						VMShotgunClipinAnimationSpeed = 1,
						MeleeKnockback = 0,
						VMFireAnimationSpeed = 1,
						MeleeDamage = 20,
						VMSecondaryFireAnimationSpeed = 1,
						MeleeBloodWoundTexture = {
							2078626
						},
						WhizSoundPitchMin = 1,
						WhizSoundPitchMax = 1,
						EasingStyleNAD = Enum.EasingStyle.Quint,
						LockOnRadius = 10,
						ScopeKnockbackMultiplier = 5,
						BulletHoleVisibleTime = 3,
						AltAnimationSpeed = 1,
						AimIdleAnimationSpeed = 1,
						MeleeHitSoundIDs = {
							6000828622
						},
						PreShotgunReload = false,
						BulletPerBurst = 3,
						RicochetAmount = 0,
						MeleeHitSoundPitchMin = 1,
						ShotsForDepletion = 12,
						AlignToAimPoint = true,
						VMReloadAnimationSpeed = 1,
						HitmarkerSoundID = {
							3748776946,
							3748777642,
							3748780065
						},
						MarkerEffectEnabled = true,
						MuzzleLightEnabled = true,
						RecoilRedution = 0.5,
						EasingStyle = Enum.EasingStyle.Quint,
						MotionBlur = true,
						CrossExpansion = 100,
						BloodWoundFadeTime = 1,
						MeleeLifesteal = 0,
						MeleeDebuff = false,
						ExplosionSoundIDs = {
							163064102
						},
						WindResistance = 1,
						LockOnOnHovering = false,
						TouchEventOnTimeout = false,
						VMMeleeAttackAnimationSpeed = 1,
						KeepAimingOnReloading = true,
						ExplosionKnockbackMultiplierOnPlayer = 2,
						VMShotgunPumpinAnimationSpeed = 1,
						TurnRatePerSecond = 1,
						ShotgunPumpinSpeed = 0.5,
						PenetrationType = "WallPenetration",
						HitmarkerSoundPitchHS = 1,
						LowAmmo = false,
						BulletShellRotVelocity = 40,
						MeleeBloodWoundFadeTime = 1,
						EasingDirectionNAD = Enum.EasingDirection.Out,
						Auto = true,
						LightBrightness = 4,
						HitmarkerFadeTime = 0.4,
						SelfKnockbackMultiplier = 2,
						BulletHoleFadeTime = 1,
						MaximumTime = 3,
						ChargingTime = 1,
						InspectAnimationSpeed = 1,
						BulletSpeed = 2000,
						SelfKnockback = false,
						VMInspectAnimationSpeed = 1,
						MeleeHitCharSndPitchMax = 1,
						CrossScaleIS = 0,
						DualFireEnabled = false,
						SpreadPattern = {
							{
								0,
								-0.4
							},
							{
								-0.35,
								0.2
							},
							{
								0.35,
								0.2
							},
							{
								0,
								1
							},
							{
								0.95,
								0.31
							},
							{
								0.59,
								-0.81
							},
							{
								-0.59,
								-0.81
							},
							{
								-0.95,
								0.31
							}
						},
						SmokeTrailEnabled = false,
						MeleeAttackEnabled = true,
						HeadshotEnabled = true,
						BulletLifetime = 1,
						AngleZ_Max = 1.4,
						MinigunRevDownAnimationSpeed = 1,
						DebuffChance = 100,
						FieldOfViewIS = 65,
						IdleAnimationSpeed = 1,
						DelayBeforeFiring = 1,
						ScopeSwayDamper = 0.65,
						SpreadRedutionIS = 0.6,
						VMReloadAnimationID = 11268774008,
						TimeBeforeCooldown = 3,
						MouseSensitiveS = 0.2,
						ReloadAnimationID = 11268894290,
						VMFireAnimationID = 11268573293,
						EquipTime = 0,
						BurstFireEnabled = false,
						MarkerPartColor = true,
						MarkerEffectTexture = {
							2078626
						},
						FireAnimationID = 11268591274,
						ViewmodelRecoilInfluence = 0.3,
						TweenLengthNAD = 0.8,
						CriticalBaseChance = 5,
						VMIdleAnimationSpeed = 1,
						MeleeBloodWoundEnabled = true,
						GoreEffectEnabled = true,
						HoldDownAnimationID = 11268950861,
						MeleeBloodWoundPartColor = true,
						BurstRate = 0.075,
						ShellTextureID = 5710577470,
						BulletHoleTexture = {
							2078626
						},
						AimAnimationsEnabled = true,
						Recoil = 25,
						MeleeAttackRange = 4,
						HitCharSndPitchMax = 1,
						BloodEnabled = true,
						MaxHeat = 100,
						Debuff = false,
						HitmarkerSoundPitch = 1,
						ScopeKnockbackSpeed = 15,
						BulletShellParticles = false,
						ShotgunPumpinAnimationSpeed = 1,
						HitEffectEnabled = true,
						MeleeHeadshotEnabled = true,
						Homing = false,
						WhizSoundEnabled = true,
						HoldAndReleaseEnabled = false,
						AngleX_Max = 1.3,
						Level1ChargingTime = 1,
						VMTacticalReloadAnimationSpeed = 1,
						SelectiveFireEnabled = true,
						CriticalDamageEnabled = false,
						AllowCollide = true,
						SwitchAnimationSpeed = 1,
						ShotgunEnabled = false,
						EasingDirection = Enum.EasingDirection.Out,
						MouseSensitiveIS = 0.2,
						Knockback = 0,
						AimSecondaryFireAnimationSpeed = 1,
						FullyGibbedLimbChance = 100,
						MeleeHitCharSndIDs = {
							6398015798,
							6398016125,
							6398016391,
							6398016618
						},
						ShotgunPump = false,
						IdleAnimationID = 11268432475,
						MuzzleFlashEnabled = true,
						HitscanMode = false,
						OverheatTime = 2.5,
						MeleeCriticalBaseChance = 5,
						BloodWoundVisibleTime = 3,
						WhizSoundVolume = 1,
						OverheatAnimationSpeed = 1,
						VMAltAnimationSpeed = 1,
						ScopeSensitive = 0.25,
						FireRate = 0.205,
						IronsightEnabled = true,
						AimFireAnimationSpeed = 1,
						BloodWoundPartColor = true,
						ChargingAnimationSpeed = 1,
						HitCharSndVolume = 1,
						MeleeHitSoundPitchMax = 1.5,
						MarkerEffectFadeTime = 1,
						ChargingSoundIncreasePitch = true,
						MeleeCriticalDamageMultiplier = 3,
						MeleeAttackAnimationSpeed = 1,
						AnimationKeyframes = {},
						CrossScaleS = 0,
						VMChargingAnimationSpeed = 1,
						ZeroDamageDistance = 1500,
						AngleY_Max = 0.1,
						BulletSize = 0.4,
						HoldDownEnabled = true,
						BulletHoleEnabled = true,
						PreShotgunReloadAnimationSpeed = 1,
						VMHoldDownAnimationSpeed = 1,
						MinigunEnabled = false,
						ModuleName = "1",
						VMSwitchAnimationSpeed = 1,
						CrossDamper = 0.8,
						AimIdleAnimationID = 11268620013,
						SpinX = 3,
						ShellMeshID = 5710574682,
						ExplosionSoundPitchMax = 1.5,
						BloodWoundTextureColor = Color3.new(1, 0, 0),
						LightColor = Color3.new(1, 1.1098039150238037, 0),
						AltTime = 1,
						LightRange = 15,
						ShellScale = vector.create(0.003000000026077032, 0.003000000026077032, 0.003000000026077032),
						FireRates = {
							0,
							0,
							0,
							0
						},
						GoreSoundPitchMin = 1,
						BounceElasticity = 0,
						PenetrationAmount = 0,
						ChargingSoundPitchRange = {
							1,
							1.5
						},
						MeleeHeadshotDamageMultiplier = 2,
						CriticalDamageMultiplier = 3,
						ExplosiveEnabled = true,
						BulletBloom = 0.005,
						ExplosionCraterSize = 3,
						VMSecondaryShotgunPumpinAnimationSpeed = 1,
						FullDamageDistance = 500,
						VMEquippedAnimationSpeed = 1,
						TweenLength = 0.8,
						ShellSize = vector.create(0.20000000298023224, 0.10000000149011612, 0.10000000149011612),
						ScopeDelay = 0,
						SecondaryFireAnimationEnabled = false,
						InspectAnimationEnabled = false,
						PartColor = true,
						Level2ChargingTime = 2,
						HeatPerFireMin = 7,
						SwitchAnimationID = 11269117176,
						TacticalReloadTime = 3,
						SelfDamageRedution = 0.5,
						SecondaryFireAnimationSpeed = 1,
						CooldownRate = 1,
						HitSoundIDs = {
							186809061,
							186809249,
							186809250,
							186809252
						},
						Ammo = math.huge,
						ExplosionKnockback = false,
						HitSoundVolume = 1,
						SmokeTrailRateIncrement = 1,
						VMMinigunRevDownAnimationSpeed = 1,
						RaisePitch = false,
						Accuracy = 0.15,
						MinDepletion = 2,
						HitCharSndIDs = {
							3802437008,
							3802437361,
							3802437696,
							3802440043,
							3802440388,
							3802442962
						},
						ExplosionCraterVisibleTime = 3,
						DelayAfterFiring = 1,
						MaxDepletion = 4,
						FireModes = {
							1,
							true
						},
						HitmarkerColorHS = Color3.new(1, 0, 0),
						BulletAcceleration = vector.zero,
						MeleeHitCharSndVolume = 1,
						HomingDistance = 250,
						SpinZ = 0,
						SelfDamage = false,
						HitSoundPitchMax = 1.5,
						BulletPerShot = 8,
						SpinY = 0,
						HitmarkerFadeTimeHS = 0.4,
						AdvancedChargingTime = 5,
						MeleeBloodWoundTextureColor = Color3.new(1, 0, 0),
						VMHoldDownAnimationID = 11268987419,
						MaxAmmo = math.huge,
						ExplosionKnockbackMultiplierOnTarget = 2,
						VMMeleeAttackRange = 4,
						GoreSoundPitchMax = 1.5,
						VisibleBullet = true,
						ShotgunPattern = false,
						MarkerEffectVisibleTime = 3,
						ExplosionCraterEnabled = true,
						CustomExplosion = true,
						DamageDropOffEnabled = true,
						ReduceSelfDamageOnAirOnly = false,
						ScopeKnockbackDamper = 0.65,
						VMPreShotgunReloadAnimationSpeed = 1,
						MarkerEffectSize = 0.5,
						AngleZ_Min = -1,
						ChargingAnimationEnabled = false,
						ExplosionSoundPitchMin = 1,
						MinigunRevUpAnimationSpeed = 1,
						ExplosionRadius = 16,
						WhizSoundID = {
							3809084884,
							3809085250,
							3809085650,
							3809085996,
							3809086455
						},
						ExplosionSoundVolume = 1,
						VMOverheatAnimationSpeed = 1,
						ExplosionSoundEnabled = true,
						ChargedShotAdvanceEnabled = false,
						AmmoPerMag = 25,
						StopBouncingOnHitHumanoid = false,
						VMAnimationKeyframes = {},
						SecondaryShotgunPump = false,
						PenetrationDepth = 15,
						ReloadTime = 2,
						HomeThroughWall = false,
						SwitchTime = 0.2,
						HitmarkerEnabled = true,
						ExplosionCraterTexture = {
							53875997
						},
						BurstRates = {
							0,
							0.075,
							0.075
						},
						MeleeBloodWoundVisibleTime = 3,
						DamageBasedOnDistance = false,
						SecondaryShotgunPumpinAnimationSpeed = 1,
						RecoilSpeed = 15,
						LightShadows = true,
						HitmarkerColor = Color3.new(1, 1, 1),
						PreShotgunReloadSpeed = 0.5,
						CooldownTime = 0.05,
						BulletHoleSize = 0.2,
						MaximumRate = 4,
						ExplosionCraterPartColor = true,
						FriendlyFire = false,
						ProjectileType = "C52",
						ShotgunReload = false,
						CustomHitEffect = false,
						AngleY_Min = 0.05,
						NoExplosionWhileBouncing = false,
						HitSoundPitchMin = 1,
						ChargedShotEnabled = false,
						VMMinigunRevUpAnimationSpeed = 1,
						ExplosionKnockbackPower = 50,
						BulletShellEnabled = false,
						DisappearTime = 5,
						ShellClipinSpeed = 0.5,
						BatteryEnabled = false,
						BulletShellVelocity = 17,
						AimFireAnimationID = 11268636286,
						LimitedAmmoEnabled = true,
						SecondaryShotgunPumpinSpeed = 0.5,
						RecoilDamper = 0.65,
						FireAnimationSpeed = 1,
						BloodWoundTexture = {
							2078626
						},
						SilenceEffect = false,
						EquippedAnimationSpeed = 1,
						HitCharSndPitchMin = 1,
						FrictionConstant = 0,
						TacticalReloadAnimationEnabled = false,
						SelfKnockbackRedution = 0.8,
						BloodWoundSize = 0.5,
						GoreSoundVolume = 1,
						GoreSoundIDs = {
							1930359546
						},
						VMSwitchAnimationID = 11269136180,
						ChargeAlterTable = {},
						FieldOfViewS = 12.5,
						SniperEnabled = false,
						AimChargingAnimationSpeed = 1,
						CameraRecoilingEnabled = false,
						BloodWoundEnabled = true,
						HeadshotDamageMultiplier = 2,
						MeleeHitCharSndPitchMin = 1,
						ShotgunClipinAnimationSpeed = 1,
						BulletType = "Normal",
						MeleeBloodWoundSize = 0.5,
						BulletShellDelay = 0,
						EchoEffect = false,
						SelfKnockbackPower = 50,
						BulletBrightness = 400,
						MeleeHitSoundVolume = 1,
						MeleeDebuffName = "",
						SuperRicochet = false,
						CrossSize = 5,
						CrossSpeed = 15
					},
					nil,
					{
						direction,
					},
					{
						WorldCFrame = {
							Position = Vector3.new(0,0,0),
							LookVector = Vector3.new(0,0,0),
						},
						WorldPosition = fakeTool.Position,
					},
					fakeTool,
					{
						ChargeLevel = 0,
						ExplosionEffectFolder = miscs:WaitForChild("GunVisualEffects"):WaitForChild("Common"):WaitForChild("ExplosionEffect"),
						MuzzleFolder = miscs:WaitForChild("GunVisualEffects"):WaitForChild("Common"):WaitForChild("MuzzleEffect"),
						HitEffectFolder = miscs:WaitForChild("GunVisualEffects"):WaitForChild("Common"):WaitForChild("HitEffect"),
						GoreEffect = miscs:WaitForChild("GunVisualEffects"):WaitForChild("Common"):WaitForChild("GoreEffect"),
						BloodEffectFolder = miscs:WaitForChild("GunVisualEffects"):WaitForChild("Common"):WaitForChild("BloodEffect")
					},
					not bypassMode,
				}

				if bypassMode then
					remotes.VisualizeBullet:FireServer(unpack(args))
					projectileHandler:SimulateProjectile(unpack(args))

					local origin = fakeTool.Position
					local direction = direction

					local raycastParams = RaycastParams.new()
					raycastParams.FilterDescendantsInstances = {speaker.Character}
					raycastParams.FilterType = Enum.RaycastFilterType.Exclude
					raycastParams.IgnoreWater = true

					local rayResult = workspace:Raycast(origin, direction * 1000, raycastParams)

					if rayResult and rayResult.Instance then
						local hitPart = rayResult.Instance
						local character = hitPart:FindFirstAncestorOfClass("Model")
						if character and character:FindFirstChildWhichIsA("Humanoid") then
							kill(character)
						end
						if hitPart.Name == "_glass" then
							remotes.ShatterGlass:FireServer(hitPart, hitPart.Position, Vector3.new(0,0,0))
						end
					end
				else
					projectileHandler:SimulateProjectile(unpack(args))
				end
				playAudio(8561500387, 1, 1, fakeTool, false, false)
			end
			task.wait()
		end
	elseif gunKitVersion == "New" then
		local speaker = info[1]
		local setEquippedTool = info[2]
		local kill = info[3]
		local remotes = info[4]

		local tool = Instance.new("Tool", speaker.Backpack)
		tool.Name = "Goku Blast"
		tool.RequiresHandle = false
		
		local function playSound(audioInst)
			if not audioInst then
				return
			end
			
			if audioInst:IsA("Sound") then
				local hrp = self.fetchHrp(speaker.Character)
				if not hrp then
					return
				end
				
				audioInst:Play()
				remotes.PlayAudio:FireServer({
					{
						Instance = audioInst,
						Origin = hrp,
						Echo = true,
						Silenced = false,
					},
					{
						Instance = false,
						Origin = false,
						Echo = false,
						Silenced = false,
					},
					nil,
					true
				})
			end
		end

		local weaponTool = setEquippedTool()

		tool.Equipped:Connect(function()
			equipped = true
			
			if weaponTool then
				weaponTool.tool.Enabled = false
				weaponTool.tool.Parent = speaker.Character
			end
			
			if self.Modules.core:IsRigType(speaker.Character, "R15") then
				self.Modules.core:PlayAnimation(17747125537) else
				self.Modules.core:PlayAnimation(95383474)
			end
		end)
		tool.Unequipped:Connect(function()
			equipped = false
			
			if weaponTool then
				weaponTool.tool.Enabled = true
				weaponTool.tool.Parent = speaker.Backpack
			end
			
			self.Modules.core:StopAnimation()
		end)

		self.addConn("GOKU_BLAST_ACTIVATE", self.Services.UserInputService.InputBegan:Connect(function(input, gpe)
			if gpe then
				return
			end

			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				if equipped then
					activated = true
				end	
			end
		end))
		self.addConn("GOKU_BLAST_DEACTIVATE", self.Services.UserInputService.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				if equipped then
					activated = false
				end	
			end
		end))
		
		while tool do
			while activated do
				if not weaponTool then
					return
				end
				
				local fireSound = weaponTool.tool:FindFirstChild("FireSound", true)
				if fireSound then
					playSound(fireSound)
				end
				
				local fakeTool
				if self.Modules.core:IsRigType(speaker.Character, "R15") then
					fakeTool = speaker.Character.RightHand else
					fakeTool = speaker.Character["Right Arm"]
				end
				
				local rayOrigin = self.Camera.CFrame.Position
				local mouseRay = self.Camera:ScreenPointToRay(self.Mouse.X, self.Mouse.Y)
				local maxDistance = 10000
				local rayDirection = mouseRay.Direction * maxDistance

				local raycastParams = RaycastParams.new()
				raycastParams.FilterDescendantsInstances = {speaker.Character}
				raycastParams.FilterType = Enum.RaycastFilterType.Exclude

				local raycastResult = workspace:Raycast(rayOrigin, rayDirection, raycastParams)

				local hitPosition = raycastResult and raycastResult.Position or (rayOrigin + rayDirection)
				local direction = (hitPosition - fakeTool.Position)
				local origin = fakeTool.Position

				local raycastParams = RaycastParams.new()
				raycastParams.FilterDescendantsInstances = {speaker.Character}
				raycastParams.FilterType = Enum.RaycastFilterType.Exclude
				raycastParams.IgnoreWater = true

				local rayResult = workspace:Raycast(origin, direction * 1000, raycastParams)

				if rayResult and rayResult.Instance then
					local hitPart = rayResult.Instance
					local character = hitPart:FindFirstAncestorOfClass("Model")
					if character and character:FindFirstChildWhichIsA("Humanoid") then
						kill(character)
					end
					if hitPart.Name == "_glass" then
						remotes.ShatterGlass:FireServer(hitPart, hitPart.Position, Vector3.new(0,0,0))
					end
				end
				task.wait(.05)
			end
			task.wait()
		end
	end
end
