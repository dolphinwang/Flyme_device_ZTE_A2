.class public Lcom/zte/zgesture/MainSettingActivity$GestureMotionFragment;
.super Lcom/zte/mifavor/preference/PreferenceFragment;
.source "MainSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/MainSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureMotionFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x4

    .line 289
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 291
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v0, :cond_4

    .line 292
    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/MainSettingActivity$GestureMotionFragment;->addPreferencesFromResource(I)V

    .line 297
    :goto_0
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/zte/zgesture/MainSettingActivity;->initHeadTipsPref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;)Z

    .line 299
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/zte/zgesture/MainSettingActivity;->initCategoryPref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;)Z

    .line 300
    new-instance v5, Landroid/content/Intent;

    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .local v5, "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureEnable:Z

    const-string v4, "setting_air_gestures"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 304
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .restart local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureVisable:Z

    const-string v4, "setting_black_screen_gesture"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 308
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapEnable:Z

    const-string v4, "setting_double_tap"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    move-result-object v7

    .line 313
    .local v7, "pref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    if-eqz v7, :cond_0

    sget v0, Lcom/zte/zgesture/tools/FeatureConfig;->mfvVersion:I

    if-ne v0, v8, :cond_0

    .line 314
    const v0, 0x7f09009c

    invoke-virtual {v7, v0}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setTitle(I)V

    .line 317
    :cond_0
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/4 v1, 0x3

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    const-string v4, "setting_close_app"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 322
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/4 v1, 0x2

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    const-string v4, "setting_switch_app"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 327
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsEnable:Z

    const-string v4, "setting_screen_shot"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    move-result-object v7

    .line 331
    if-eqz v7, :cond_1

    sget v0, Lcom/zte/zgesture/tools/FeatureConfig;->mfvVersion:I

    if-ne v0, v8, :cond_1

    .line 332
    const v0, 0x7f09009d

    invoke-virtual {v7, v0}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setTitle(I)V

    .line 335
    :cond_1
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/zte/zgesture/MainSettingActivity;->initLearnMorePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;)Z

    .line 337
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/4 v1, 0x5

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->callFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->callEnable:Z

    const-string v4, "setting_call"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 342
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/4 v1, 0x7

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->answerFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->answerEnable:Z

    const-string v4, "setting_answer"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 347
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/PocketModeIntroActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    .restart local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->pocketModeFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->pocketModeEnable:Z

    const-string v4, "setting_pocket"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 351
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/16 v1, 0x8

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->callTurnFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->callTurnEnable:Z

    const-string v4, "setting_call_turn"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 356
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/AlarmSettingActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    .restart local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->alarmCLockFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->alarmCLockEnable:Z

    const-string v4, "setting_alarm_turn"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 360
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/16 v1, 0xb

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->changeForSpeakerFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->changeForSpeakerEnable:Z

    const-string v4, "setting_change_to_receiver"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 365
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/16 v1, 0xc

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenEnable:Z

    const-string v4, "setting_close_screen"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 370
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightRadioEnable:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->caculatorRadioEnable:Z

    if-eqz v0, :cond_5

    .line 371
    :cond_2
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/ShakeSettingActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    .restart local v5    # "intent":Landroid/content/Intent;
    :goto_1
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->shakeFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->shakeEnable:Z

    const-string v4, "setting_shake"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    move-result-object v7

    .line 379
    if-eqz v7, :cond_3

    sget v0, Lcom/zte/zgesture/tools/FeatureConfig;->mfvVersion:I

    if-ne v0, v8, :cond_3

    .line 380
    const v0, 0x7f09009e

    invoke-virtual {v7, v0}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setSummary(I)V

    .line 383
    :cond_3
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    # setter for: Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/MainSettingActivity;->access$002(Lcom/zte/zgesture/setting/GestureSetting;)Lcom/zte/zgesture/setting/GestureSetting;

    .line 385
    :try_start_0
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$000()Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_all"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/zte/zgesture/MainSettingActivity;->enablePreference(Z)V

    .line 386
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->updatePreferenceStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_2
    const-string v0, "GestureMotionFragment onCreate"

    invoke-static {v0}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 392
    return-void

    .line 294
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "pref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    :cond_4
    const v0, 0x7f030053

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/MainSettingActivity$GestureMotionFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 373
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v7    # "pref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    :cond_5
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/16 v1, 0xd

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 387
    :catch_0
    move-exception v6

    .line 388
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set preferenceStatus error , Exception e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 396
    invoke-super {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->onDestroy()V

    .line 397
    return-void
.end method
