local Module = {
--	====================
--	BASIC
--	A basic settings for the gun
--	====================
	
		ModuleName = script.Name; --For security purpose
	
		Auto = true;
		BaseDamage = 17;
		FireRate = 0.205; --In second
		ReloadTime = 2.00; --In second
		AmmoPerMag = 25; --Put "math.huge" to make this gun has infinite ammo and never reload
		Spread = 5; --In degree
		HeadshotEnabled = true; --Enable the gun to do extra damage on headshot
		HeadshotDamageMultiplier = 2;
		EquipTime = 0;
		EquippedAnimationID = nil;
		EquippedAnimationSpeed = 1;
	    IdleAnimationID = 11268432475; --Set to "nil" if you don't want to animate
		IdleAnimationSpeed = 1;
	    FireAnimationID = 11268591274; --Set to "nil" if you don't want to animate
		FireAnimationSpeed = 1;
	    ReloadAnimationID = 11268894290; --Set to "nil" if you don't want to animate
		ReloadAnimationSpeed = 1;
	
		--Viewmodel
		VMEquippedAnimationID = nil;
		VMEquippedAnimationSpeed = 1;
	    VMIdleAnimationID = nil; --Set to "nil" if you don't want to animate
		VMIdleAnimationSpeed = 1;
	    VMFireAnimationID = 11268573293; --Set to "nil" if you don't want to animate
		VMFireAnimationSpeed = 1;
	    VMReloadAnimationID = 11268774008; --Set to "nil" if you don't want to animate
		VMReloadAnimationSpeed = 1;
	
		--Enable the user to play second animation. Useful for dual wield 
		SecondaryFireAnimationEnabled = false; --You need an animation ID in order to enable it
		SecondaryFireAnimationID = nil; --Set to "nil" if you don't want to animate
		SecondaryFireAnimationSpeed = 1;
	
		--Viewmodel
		VMSecondaryFireAnimationID = nil; --Set to "nil" if you don't want to animate
		VMSecondaryFireAnimationSpeed = 1;
	
		--Enable the user to play aim animations
		AimAnimationsEnabled = true;
	    AimIdleAnimationID = 11268620013; --Set to "nil" if you don't want to animate
		AimIdleAnimationSpeed = 1;
	    AimFireAnimationID = 11268636286; --Set to "nil" if you don't want to animate
		AimFireAnimationSpeed = 1;
	    AimSecondaryFireAnimationID = nil; --Set to "nil" if you don't want to animate. NOTE: Make sure "SecondaryFireAnimation" setting is enabled
		AimSecondaryFireAnimationSpeed = 1;	
	
		--Must enable "AltFire" first
		AltTime = 1;	
		AltAnimationID = nil;
		AltAnimationSpeed = 1;
	
		--Viewmodel
		VMAltAnimationID = nil; --Set to "nil" if you don't want to animate
		VMAltAnimationSpeed = 1;
	
		KeepAimingOnReloading = true; --Enable user to keep aiming on reloading
		AlignToAimPoint = true; --Enable user to align viewmodel to aim point on aiming
	
--  ====================
--  MELEE ATTACK
--  Gain an ability to perform melee attack
--  ====================
	
		MeleeAttackEnabled = true;
		
		MeleeAttackAnimationID = nil;
		MeleeAttackAnimationSpeed = 1;
	
		--Viewmodel
		VMMeleeAttackAnimationID = nil; --Set to "nil" if you don't want to animate
		VMMeleeAttackAnimationSpeed = 1;
	
		MeleeDamage = 20;
		MeleeHeadshotEnabled = true;
		MeleeHeadshotDamageMultiplier = 2;
		MeleeAttackRange = 4;
	
		--Viewmodel
		VMMeleeAttackRange = 4;
	
		--Marker effect
		MarkerEffectEnabled = true;
		MarkerEffectSize = 0.5;
		MarkerEffectTexture = {2078626}; --You can insert more IDs
		MarkerEffectVisibleTime = 3; --In second
		MarkerEffectFadeTime = 1; --In second
		MarkerPartColor = true; --Set to hit object color
	
		--Hit effect
		MeleeHitEffectEnabled = true;
		MeleeHitSoundIDs = {6000828622};
		MeleeHitSoundPitchMin = 1; --Minimum pitch factor you will acquire
		MeleeHitSoundPitchMax = 1.5; --Maximum pitch factor you will acquire
		MeleeHitSoundVolume = 1;
		CustomMeleeHitEffect = false; --Emits your custom hit effect. NOTE: If you this setting disabled, hit effect will set to default(material tracker included)
	
		--Blood effect
		MeleeBloodEnabled = true;
		MeleeHitCharSndIDs = {6398015798, 6398016125, 6398016391, 6398016618};
		MeleeHitCharSndPitchMin = 1; --Minimum pitch factor you will acquire
		MeleeHitCharSndPitchMax = 1; --Maximum pitch factor you will acquire
		MeleeHitCharSndVolume = 1;
	
		--Blood wound
		MeleeBloodWoundEnabled = true;
		MeleeBloodWoundSize = 0.5;
		MeleeBloodWoundTexture = {2078626}; --You can insert more IDs
		MeleeBloodWoundTextureColor = Color3.fromRGB(255, 0, 0);
		MeleeBloodWoundVisibleTime = 3; --In second
		MeleeBloodWoundFadeTime = 1; --In second
		MeleeBloodWoundPartColor = true; --Set to hit object color
	
		--Miscs
		MeleeKnockback = 0; --Setting above 0 will enabling the gun to push enemy back.
		MeleeLifesteal = 0; --In percent - Setting above 0 will allow user to steal enemy's health by dealing a damage to them.
		MeleeDebuff = false; --Enable the bullet to give enemy a debuff. Source of affliction can be found inside "GunScript_Server"
		MeleeDebuffName = "";
		MeleeDebuffChance = 100;
	
		--Critical
		MeleeCriticalDamageEnabled = false;
		MeleeCriticalBaseChance = 5; --In percent
		MeleeCriticalDamageMultiplier = 3;
	
--		To make this feature functional, the animation must be included with "KeyFrameMarker" named "MeleeDamageSequence". Learn more about it here:
--		https://developer.roblox.com/en-us/api-reference/function/AnimationTrack/GetMarkerReachedSignal
--		https://developer.roblox.com/en-us/api-reference/class/KeyframeMarker	
--		https://developer.roblox.com/en-us/articles/using-animation-editor (Animation Events part)
	
--	====================
--	LIMITED AMMO
--	Make a gun has a limit ammo
--	====================

		LimitedAmmoEnabled = true;
		Ammo = math.huge;
	    MaxAmmo = math.huge; --Put "math.huge" to allow user to carry unlimited ammo	
	
--	====================
--	CROSSHAIR
--	A gun cursor
--	====================

	    CrossSize = 5;
        CrossExpansion = 100;
        CrossSpeed = 15;
        CrossDamper	= 0.8;	
	
--	====================
--	HITMARKER
--	Mark on somewhere when a bullet hit character
--	====================

        HitmarkerEnabled = true;
        HitmarkerSoundID = {3748776946, 3748777642, 3748780065};
        --Normal
        HitmarkerColor = Color3.fromRGB(255, 255, 255);
        HitmarkerFadeTime = 0.4;
        HitmarkerSoundPitch = 1;
        --Headshot
        HitmarkerColorHS = Color3.fromRGB(255, 0, 0);
        HitmarkerFadeTimeHS = 0.4;
        HitmarkerSoundPitchHS = 1;	
	
--	====================
--	CAMERA RECOILING
--	Make user's camera recoiling when shooting
--	====================

	CameraRecoilingEnabled = true;
	Recoil = 25;
	AngleX_Min = 1; --In degree
	AngleX_Max = 1.3; --In degree
	AngleY_Min = 0.05; --In degree
	AngleY_Max = 0.1; --In degree
	AngleZ_Min = -1; --In degree
	AngleZ_Max = 1.4; --In degree
	Accuracy = 0.15; --In percent. For example: 0.5 is 50%
	RecoilSpeed = 15; 
	RecoilDamper = 0.65;
	RecoilRedution = 0.5; --In percent.	
	
		--Viewmodel
		ViewmodelRecoilInfluence = 0.3;	
	
--	====================
--	TWEEN SETTING
--	Part of ironsight and sniper aim
--	====================

        TweenLength = 0.8; --In second
        EasingStyle = Enum.EasingStyle.Quint; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
        EasingDirection = Enum.EasingDirection.Out; --In, Out or InOut?

--	====================
--	TWEEN SETTING(NO AIM DOWN)
--	Part of ironsight and sniper aim
--	====================

        TweenLengthNAD = 0.8; --In second
        EasingStyleNAD = Enum.EasingStyle.Quint; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
		EasingDirectionNAD = Enum.EasingDirection.Out; --In, Out or InOut?
	
--	====================
--	IRONSIGHT
--	Allow user to ironsighting
--	====================

		IronsightEnabled = true; --NOTE: If "SniperEnabled" is enabled, this setting is not work
		FieldOfViewIS = 65;
		MouseSensitiveIS = 0.2; --In percent
		SpreadRedutionIS = 0.6; --In percent. NOTE: Must be the same value as "SpreadRedutionS"
		CrossScaleIS = 0.0;	
	
--	====================
--	SNIPER
--	Enable user to use scope
--	====================

		SniperEnabled = false; --NOTE: If "IronsightEnabled" is enabled, this setting is not work
		FieldOfViewS = 12.5;
		MouseSensitiveS = 0.2; --In percent
		SpreadRedutionS = 0.6; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		CrossScaleS = 0;
		ScopeSensitive = 0.25;
		ScopeDelay = 0;
		ScopeKnockbackMultiplier = 5;
		ScopeKnockbackSpeed = 15;
        ScopeKnockbackDamper = 0.65;
		ScopeSwaySpeed = 15;
		ScopeSwayDamper	= 0.65;

--      You can edit knockback offset by go to GunScript_Local, and scroll down until you reach line 421 and 486	
	
--  ====================
--  SMOKE TRAIL
--  Emit smoke trail while firing. NOTE: This setting is only for client
--  ====================

		SmokeTrailEnabled = false;
		SmokeTrailRateIncrement = 1;
		MaximumRate = 4; --Beyond this will return "CurrentRate" to 0 and emit smoke trail. NOTE: Last smoke trail will be terminated after this
		MaximumTime = 3; --Maximum time that smoke trail won't be emitted
	
--	====================
--	FIRE SOUND EFFECTS
--	Special effects for fire sound
--	====================
		
		SilenceEffect = false; --Lower volume
		EchoEffect = false; --Create echo effect from distance
		LowAmmo = false; --Play sound when low ammo
		RaisePitch = false; --"LowAmmo" only. The lower ammo is, the higher pitch will play
	
--	====================
--	GORE VISUALIZER
--	Create gore effect when humanoid died
--	====================

        GoreEffectEnabled = false;
		GoreSoundIDs = {1930359546};
		GoreSoundPitchMin = 1; --Minimum pitch factor you will acquire
	    GoreSoundPitchMax = 1.5; --Maximum pitch factor you will acquire
		GoreSoundVolume = 1;
		FullyGibbedLimbChance = 50; --In percent
	
--	====================
--	INSPECT ANIMATION
--	Inspect the gun just to see how it looks
--	====================

		InspectAnimationEnabled = false;
		InspectAnimationID = nil; --Set to "nil" if you don't want to animate
		InspectAnimationSpeed = 1;
	
		--Viewmodel
    	VMInspectAnimationID = nil; --Set to "nil" if you don't want to animate
		VMInspectAnimationSpeed = 1;
	
--	====================
--	TACTICAL RELOAD ANIMATION
--	Reload the gun that has only fired a few rounds out of its magazine
--	====================

		TacticalReloadAnimationEnabled = false;
		TacticalReloadAnimationID = nil; --Set to "nil" if you don't want to animate
		TacticalReloadAnimationSpeed = 1;
		TacticalReloadTime = 3;
	
		--Viewmodel
		VMTacticalReloadAnimationID = nil; --Set to "nil" if you don't want to animate
		VMTacticalReloadAnimationSpeed = 1;
	
--	====================
--	HOLD DOWN ANIMATION
--	Character won't fire if hold down the gun
--	====================

        HoldDownEnabled = true;
	    HoldDownAnimationID = 11268950861;
        HoldDownAnimationSpeed = 1;	
	
		--Viewmodel
	   VMHoldDownAnimationID = 11268987419;
        VMHoldDownAnimationSpeed = 1;
	
--  ====================
--  DAMAGE DROPOFF
--  Calculate how the damage of a single shot decreases when the target hit is at a distance away from the gun shot. NOTE: This setting won't apply with "ExplosiveEnabled"
--  ====================

		DamageDropOffEnabled = true;
		ZeroDamageDistance = 1500; --Anything hit at or beyond this distance will receive no damage; default is 10000
		FullDamageDistance = 500; --Maximum distance that shots will do full damage. Default is 1000 and anything hit beyond this distance will receive less and less damage as the distance nears "ZeroDamageDistance"
		
--	====================
--	CRITICAL DAMAGE
--	Damage critically within its chance
--	====================

        CriticalDamageEnabled = false;
        CriticalBaseChance = 5; --In percent
        CriticalDamageMultiplier = 3;
		
--	====================
--	HIT VISUALIZER
--	Create hit effect when a bullet hit something but not character(And hit sound, too)
--	====================

        HitEffectEnabled = true;
		HitSoundIDs = {186809061, 186809249, 186809250, 186809252};
		HitSoundPitchMin = 1; --Minimum pitch factor you will acquire
	    HitSoundPitchMax = 1.5; --Maximum pitch factor you will acquire
		HitSoundVolume = 1;
		CustomHitEffect = false; --Emits your custom hit effect. NOTE: If you this setting disabled, hit effect will set to default(material tracker included)
	
		BulletHoleEnabled = true;
        BulletHoleSize = 0.2;
        BulletHoleTexture = {2078626}; --You can insert more IDs
        BulletHoleVisibleTime = 3; --In second
        BulletHoleFadeTime = 1; --In second
        PartColor = true; --Set to hit object color
	
--	====================
--	BLOOD VISUALIZER
--	Create blood when a bullet hit character(And hit character sound, too)
--	====================

        BloodEnabled = true;
		HitCharSndIDs = {3802437008, 3802437361, 3802437696, 3802440043, 3802440388, 3802442962};
		HitCharSndPitchMin = 1; --Minimum pitch factor you will acquire
	    HitCharSndPitchMax = 1; --Maximum pitch factor you will acquire
		HitCharSndVolume = 1;
	
		BloodWoundEnabled = true;
		BloodWoundSize = 0.5;
		BloodWoundTexture = {2078626}; --You can insert more IDs
		BloodWoundTextureColor = Color3.fromRGB(255, 0, 0);
		BloodWoundVisibleTime = 3; --In second
		BloodWoundFadeTime = 1; --In second
		BloodWoundPartColor = true; --Set to hit object color
	
--	====================
--	BULLET WHIZZING SOUND
--	Create a sound when a bullet travelling through character
--	====================

        WhizSoundEnabled = true;
        WhizSoundID = {3809084884, 3809085250, 3809085650, 3809085996, 3809086455};
		WhizSoundVolume = 1;
		WhizSoundPitchMin = 1; --Minimum pitch factor you will acquire
	    WhizSoundPitchMax = 1; --Maximum pitch factor you will acquire
	    WhizDistance = 25;
	
--		Make sure "CanMovePart" is enabled. Otherwise, it won't work	
	
--	====================
--	MUZZLE
--	Create a muzzle flash when firing
--	====================
        
        MuzzleFlashEnabled = true;
        MuzzleLightEnabled = true;
        LightBrightness = 4;
        LightColor = Color3.new(255/255, 283/255, 0/255);
        LightRange = 15;
        LightShadows = true;
        VisibleTime = 0.01; --In second
	
--	====================
--	BULLET SHELL EJECTION
--	Eject bullet shells when firing
--	====================

		BulletShellEnabled = true;
		BulletShellDelay = 0;
		BulletShellVelocity = 17;
		BulletShellRotVelocity = 40;
	    ShellSize = Vector3.new(0.2, 0.1,0.1); --Scale the part
		AllowCollide = true; --If false, a bullet shell will go through any parts
	    ShellScale = Vector3.new(0.003, 0.003, 0.003); --Scale mesh
	    ShellMeshID = 5710574682;
 	    ShellTextureID = 5710577470;
		DisappearTime = 5; --In second
		BulletShellParticles = false;
		
--      You can edit velocity by go to GunScript_Local, and scroll down until you see "function EjectShell(ShootingHandle)"
	
--	====================
--	SHOTGUN
--	Enable the gun to fire multiple bullet in one shot
--	====================

		ShotgunEnabled = false;
		BulletPerShot = 8;
		
		ShotgunPump = false; --Make user pumping like Shotgun after firing
		ShotgunPumpinAnimationID = nil; --Set to "nil" if you don't want to animate
		ShotgunPumpinAnimationSpeed = 1;
		ShotgunPumpinSpeed = 0.5; --In second
	
		--Viewmodel
		VMShotgunPumpinAnimationID = nil; --Set to "nil" if you don't want to animate
		VMShotgunPumpinAnimationSpeed = 1;
	
		SecondaryShotgunPump = false; --Only for dual wield
		SecondaryShotgunPumpinAnimationID = nil; --Set to "nil" if you don't want to animate
		SecondaryShotgunPumpinAnimationSpeed = 1;
		SecondaryShotgunPumpinSpeed = 0.5; --In second
	
		--Viewmodel
		VMSecondaryShotgunPumpinAnimationID = nil; --Set to "nil" if you don't want to animate
		VMSecondaryShotgunPumpinAnimationSpeed = 1;
	
		ShotgunReload = false; --Make user reloading like Shotgun, which user clipin shell one by one
		ShotgunClipinAnimationID = nil; --Set to "nil" if you don't want to animate
		ShotgunClipinAnimationSpeed = 1;
		ShellClipinSpeed = 0.5; --In second
		PreShotgunReload = false; --Make user pre-reloading before consecutive reload. NOTE: "ShotgunReload" must be enabled
		PreShotgunReloadAnimationID = nil; --Set to "nil" if you don't want to animate
		PreShotgunReloadAnimationSpeed = 1;
		PreShotgunReloadSpeed = 0.5; --In second
	
		--Viewmodel
		VMShotgunClipinAnimationID = nil; --Set to "nil" if you don't want to animate
		VMShotgunClipinAnimationSpeed = 1;
		VMPreShotgunReloadAnimationID = nil; --Set to "nil" if you don't want to animate
		VMPreShotgunReloadAnimationSpeed = 1;
	
		ShotgunPattern = false;
		SpreadPattern = { --{x, y}. This should be the same as "BulletPerShot"
			-- inner 3
			{0, -0.4};
			{-0.35, 0.2};
			{0.35, 0.2};
		
			-- outer five
			{0, 1};
			{0.95, 0.31};
			{0.59, -0.81};
			{-0.59, -0.81};
			{-0.95, 0.31};
		};
		
--		How "ShotgunPump" works [Example 1]:

--      Fire a (shot)gun
--		>>>
--		After "FireRate", user will pump it, creates pumpin delay + "PumpSound"
		
--		How "ShotgunReload" works [Example 2]:

--		Play "ShotgunClipinAnimation" + Play "ShotgunClipin" Audio
--		>>>
--		Wait "ShellClipinSpeed" second(s)
--		>>>
--		Repeat "AmmoPerClip" - "Current Ammo" times
--		>>>
--		Play "ReloadAnimation" + Play "ReloadSound"
--		>>>
--		Wait "ReloadTime"
		
--	====================
--	BURST FIRE
--	Enable the gun to do burst firing like Assault Rifle
--	====================

		BurstFireEnabled = false;
		BulletPerBurst = 3;
		BurstRate = 0.075; --In second
	
--	====================
--	SELECTIVE FIRE
--	Enable the user to switch firemode. NOTE: The following settings: "Auto", "FireRate", "BurstFireEnabled", "BulletPerBurst", "BurstRate" and "ChargedShotAdvanceEnabled" will be disabled if "SelectiveFireEnabled" is enabled
--	====================

	   SelectiveFireEnabled = true;
 	   FireModes = {1, true}; --"true" is a boolean which uses for autofire, while integer is being used for burst counts
	   FireRates = {0.0,0,0,0};
 	   BurstRates = {0, 0.075, 0.075};
       FireModeTexts = {"SEMI-AUTO", "AUTO"};
	   SwitchTime = 0.20; --In second

	    SwitchAnimationID = 11269117176; --Set to "nil" if you don't want to animate
		SwitchAnimationSpeed = 1;
	
		--Viewmodel
	    VMSwitchAnimationID = 11269136180; --Set to "nil" if you don't want to animate
		VMSwitchAnimationSpeed = 1;
	
--		The priority of firemode is from left to right
	
--	====================
--	EXPLOSIVE
--	Make a bullet explosive so user can deal a damage to multiple enemy in single shot. NOTE: Explosion won't break joints
--	====================

		ExplosiveEnabled = false;
		ExplosionSoundEnabled = true;
		ExplosionSoundIDs = {163064102};
		ExplosionSoundVolume = 1;
		ExplosionSoundPitchMin = 1; --Minimum pitch factor you will acquire
	    ExplosionSoundPitchMax = 1.5; --Maximum pitch factor you will acquire
		ExplosionRadius = 8;
		DamageBasedOnDistance = false;
		SelfDamage = false;
		SelfDamageRedution = 0.5; --In percent
		ReduceSelfDamageOnAirOnly = false;
		CustomExplosion = false;
		ExplosionKnockback = false; --Enable the explosion to knockback player. Useful for rocket jumping
		ExplosionKnockbackPower = 50;
		ExplosionKnockbackMultiplierOnPlayer = 2;
		ExplosionKnockbackMultiplierOnTarget = 2;
        ExplosionCraterEnabled = true;
      	ExplosionCraterSize = 3;
        ExplosionCraterTexture = {53875997}; --You can insert more IDs
        ExplosionCraterVisibleTime = 3; --In second
        ExplosionCraterFadeTime = 1; --In second
        ExplosionCraterPartColor = false; --Set to hit object color

--	====================
--	PROJECTILE VISUALIZER
--	Display a travelling projectile
--	====================

		BulletSpeed = 2000; --Studs/second
		BulletAcceleration = Vector3.new(0, 0, 0); --The amount of force applied to the bullet in world space. Useful for wind effects
		MotionBlur = true;
		BulletSize = 0.4;
		BulletBloom = 0.005;
		BulletBrightness = 400;
		WindSpeed = 10;
		WindResistance = 1;
		BulletLifetime = 1;
		VisibleBullet = true;
		BulletType = "Normal";
		ProjectileType = "None";
		CanSpinPart = false;
		SpinX = 3;
		SpinY = 0;
		SpinZ = 0;
		Homing = false; --Allow projectile to move towards target. NOTE: "BulletAcceleration", "Penetration" and "Ricochet" won't work if this setting is enabled
		HomingDistance = 250;
		TurnRatePerSecond = 1;
		HomeThroughWall = false;
		LockOnOnHovering = false;
		LockOnRadius = 10;
	
		HitscanMode = false; --Enable the bullet to insta-hit regardless of its traveling speed
	
--		NOTE: Enabling "HitscanMode" will restrict the following physic-based settings:
--		"BulletAcceleration"
--		Spinning bullet effect ("CanSpinPart", "SpinX", "SpinY", "SpinZ")
--		Homing bullet effect ("Homing", "HomingDistance", "TurnRatePerSecond", "HomeThroughWall", "LockOnOnHovering", "LockOnRadius")
--		Ricochet effect ("BounceElasticity", "FrictionConstant", "SuperRicochet", "TouchEventOnTimeout") [Ricochet effect still works for hitscan however. But only physic-based settings are disabled]
--		"ProjectileMotion"
--		Raycast hitbox
		
--	====================
--	CHARGED SHOT
--	Make a gun charging before firing. Useful for a gun like "Railgun" or "Laser Cannon"
--	====================
		
		ChargedShotEnabled = false;
		ChargingTime = 1;
		
--	====================
--	MINIGUN
--	Make a gun delay before/after firing
--	====================

		MinigunEnabled = false;
		DelayBeforeFiring = 1;
		DelayAfterFiring = 1;
		MinigunRevUpAnimationID = nil;
		MinigunRevUpAnimationSpeed = 1;
		MinigunRevDownAnimationID = nil;
		MinigunRevDownAnimationSpeed = 1;
	
		--Viewmodel
		VMMinigunRevUpAnimationID = nil;
		VMMinigunRevUpAnimationSpeed = 1;
		VMMinigunRevDownAnimationID = nil;
		VMMinigunRevDownAnimationSpeed = 1;	
	
--	====================
--	BATTERY
--	Make a gun overheat when overcharge
--	====================

		BatteryEnabled = false;
		MaxHeat = 100;
		TimeBeforeCooldown = 3;
		CooldownTime = 0.05;
		CooldownRate = 1; 
		OverheatTime = 2.5;
		HeatPerFireMin = 7;
		HeatPerFireMax = 8;
		MinDepletion = 2;
		MaxDepletion = 4;
		ShotsForDepletion = 12;
		OverheatAnimationID = nil;
		OverheatAnimationSpeed = 1;
	
		--Viewmodel
		VMOverheatAnimationID = nil;
		VMOverheatAnimationSpeed = 1;
	
--	====================
--	MISCELLANEOUS
--	Etc. settings for the gun
--	====================

		Knockback = 0; --Setting above 0 will enabling the gun to push enemy back
		Lifesteal = 0; --In percent - Setting above 0 will allow user to steal enemy's health by dealing a damage to them
	
		Debuff = false; --Enable the bullet to give enemy a debuff
		DebuffName = "";
		DebuffChance = 100;

		DualFireEnabled = false; --Enable the user to fire two guns instead one. In order to make this setting work, you must clone its Handle and name it to "Handle2".
 
	    PenetrationType = "WallPenetration"; --2 types: "WallPenetration" and "HumanoidPenetration"
		PenetrationDepth = 15; --"WallPenetration" only. This is how many studs a bullet can penetrate into a wall. So if penetration is 0.5 and the wall is 1 studs thick, the bullet won't come out the other side. NOTE: It doesn't work with "ExplosiveEnabled"
		PenetrationAmount = 0; --"HumanoidPenetration" only. Setting above 0 will enabling the gun to penetrate up to XX victim(s). Cannot penetrate wall. NOTE: It doesn't work with "ExplosiveEnabled"
	
		RicochetAmount = 0; --Setting above 0 will enabling the gun to bounce objects in amount of bounces. NOTE: This will disable "PenetrationDepth"
		BounceElasticity = 1;
		FrictionConstant = 0;
		NoExplosionWhileBouncing = false; --Enable the bullet to be prevented from exploding on bounce. NOTE: "NoExplosionWhileBouncing" will be disabled after reaching 0 bounce
		StopBouncingOnHitHumanoid = false; --Enable the bullet to be forced to stop bouncing after hitting humanoid
		SuperRicochet = false; --Enable the bullet to bounce objects in countless bounces. NOTE: This doesn't affect "RicochetAmount" but won't remove bullet regardless of its limited amount of bounces

		TouchEventOnTimeout = false; --Yield "ontouch" event after timing out (exceed maximum life time). Useful for a TF2 styled grenade launcher		
	
		SelfKnockback = false; --Enable the gun to knockback player. Useful for shotgun jumping
		SelfKnockbackPower = 50;
		SelfKnockbackMultiplier = 2;
		SelfKnockbackRedution = 0.8;

		ProjectileMotion = false; --Enable the gun to visible trajectory. Useful for projectile arc weapon	
	
		FriendlyFire = false; --Enable the user to inflict damage on teammates (works with custom "TEAM" as well)
	
--	====================
--	CHARGED SHOT ADVANCE
--	Unlike "ChargedShot", this advanced version will allow gun to charge by holding down input. NOTE: This setting will disable some features such as "Auto", "ChargedShot", "MinigunEnabled"
--	====================

		ChargedShotAdvanceEnabled = false;
		AdvancedChargingTime = 5; --Known as Level3ChargingTime
		Level1ChargingTime = 1;
		Level2ChargingTime = 2;
		ChargingSoundIncreasePitch = true;
		ChargingSoundPitchRange = {1, 1.5};

		ChargingAnimationEnabled = false; --You need an animation ID in order to enable it
		ChargingAnimationID = nil; --Set to "nil" if you don't want to animate
		ChargingAnimationSpeed = 1;

		AimChargingAnimationID = nil; --Set to "nil" if you don't want to animate
		AimChargingAnimationSpeed = 1;
	
		--Viewmodel
		VMChargingAnimationID = nil;
		VMChargingAnimationSpeed = 1;
	
		ChargeAlterTable = {
		};
	
--	====================
--	HOLD AND RELEASE
--	Similar to "ChargedShotAdvance", but this is just hold-the-trigger-and-release-to-fire feature
--	====================

		HoldAndReleaseEnabled = false;
		HoldingTime = 1; --Time before being able to fire

--		Charging animation and charging sound are shared from "ChargedShotAdvance" to this feature	
	
--	====================
--	ANIMATION KEYFRAMES
--	List of keyframes that can be customized for existing animations
--	====================
	
		AnimationKeyframes = {
		};
		
		VMAnimationKeyframes = {
		};
	
--		Template:
--
--		(Thrid person)
--
--[[	
		["AnimationName"] = {
			["KeyframeName"] = function(keyframeName, tool)
				print(keyframeName)
			end;
		};	
]]	
--
--		(First person)
--
--[[
		["AnimationName"] = {
			["KeyframeName"] = function(keyframeName, tool, viewmodel)
				print(keyframeName)
			end;
		};
]]	
	
--		How to use:
	
--		Copy and paste template table above into "AnimationKeyframes" (third person) or "VMAnimationKeyframes" (first person) table and uncomment it
--		>>>
--		Change "AnimationName" to specific string that is listed below
--		>>>
--		Change "KeyframeName" to existing keyframe name from your existing animation
--		>>>
--		Now write something you want inside its callback function
	
--		NOTE: To make this work, open animation editor and import your animation. Next, add animation event (edit if it exists), and then move (event) keyframe names to "Parameter" side whilst everything in "Event Name" side is renamed to "AnimationEvents"
--		NOTE 2: You can add more than one table. For an example:
	
--[[
		AnimationKeyframes = {
			["EquippedAnim"] = {
				["1"] = function(keyframeName, tool)
					print(keyframeName)
				end;
				["2"] = function(keyframeName, tool)
					print(keyframeName)
				end;
			};
			["ReloadAnim"] = {
				["1"] = function(keyframeName, tool)
					print(keyframeName)
				end;
				["2"] = function(keyframeName, tool)
					print(keyframeName)
				end;
				["3"] = function(keyframeName, tool)
					print(keyframeName)
				end;
			};
		};
		
		VMAnimationKeyframes = {
			["VMEquippedAnim"] = {
				["1"] = function(keyframeName, tool, viewmodel)
					print(keyframeName)
				end;
				["2"] = function(keyframeName, tool, viewmodel)
					print(keyframeName)
				end;
			};
			["VMReloadAnim"] = {
				["1"] = function(keyframeName, tool, viewmodel)
					print(keyframeName)
				end;
				["2"] = function(keyframeName, tool, viewmodel)
					print(keyframeName)
				end;
				["3"] = function(keyframeName, tool, viewmodel)
					print(keyframeName)
				end;
			};
		};
]]
	
--		List of supported animations:
--
--		(Thrid person)
--
-- 		IdleAnim
-- 		FireAnim
-- 		ReloadAnim
-- 		TacticalReloadAnim
-- 		ShotgunClipinAnim
-- 		ShotgunPumpinAnim
-- 		SecondaryShotgunPumpinAnim
-- 		HoldDownAnim
-- 		EquippedAnim
-- 		SecondaryFireAnim
-- 		AimIdleAnim
-- 		AimFireAnim
-- 		AimSecondaryFireAnim
-- 		AimChargingAnim
-- 		InspectAnim
-- 		PreShotgunReloadAnim
-- 		MinigunRevUpAnim
-- 		MinigunRevDownAnim
-- 		ChargingAnim
-- 		SwitchAnim
-- 		OverheatAnim
-- 		MeleeAttackAnim
--		AltAnim
--
--		(First person)
--
-- 		VMIdleAnim
-- 		VMFireAnim
-- 		VMReloadAnim
-- 		VMTacticalReloadAnim
-- 		VMShotgunClipinAnim
-- 		VMShotgunPumpinAnim
-- 		VMSecondaryShotgunPumpinAnim
-- 		VMHoldDownAnim
-- 		VMEquippedAnim
-- 		VMSecondaryFireAnim
-- 		VMInspectAnim
-- 		VMPreShotgunReloadAnim
-- 		VMMinigunRevUpAnim
--		VMMinigunRevDownAnim
-- 		VMChargingAnim
-- 		VMSwitchAnim
-- 		VMOverheatAnim
-- 		VMMeleeAttackAnim
--		VMAltAnim
	
--	====================
--	END OF SETTING
--	====================
}

return Module
