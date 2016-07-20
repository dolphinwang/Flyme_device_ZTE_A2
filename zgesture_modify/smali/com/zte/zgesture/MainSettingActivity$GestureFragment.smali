.class public Lcom/zte/zgesture/MainSettingActivity$GestureFragment;
.super Lcom/zte/mifavor/preference/PreferenceFragment;
.source "MainSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/MainSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x4

    .line 404
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 405
    const v0, 0x7f030054

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/MainSettingActivity$GestureFragment;->addPreferencesFromResource(I)V

    .line 407
    new-instance v5, Landroid/content/Intent;

    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    .local v5, "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureEnable:Z

    const-string v4, "setting_black_screen_gesture"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 411
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapEnable:Z

    const-string v4, "setting_double_tap"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    move-result-object v7

    .line 416
    .local v7, "pref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    if-eqz v7, :cond_0

    sget v0, Lcom/zte/zgesture/tools/FeatureConfig;->mfvVersion:I

    if-ne v0, v8, :cond_0

    .line 417
    const v0, 0x7f09009c

    invoke-virtual {v7, v0}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setTitle(I)V

    .line 420
    :cond_0
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/4 v1, 0x3

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    const-string v4, "setting_close_app"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 425
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/4 v1, 0x2

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    const-string v4, "setting_switch_app"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 430
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsEnable:Z

    const-string v4, "setting_screen_shot"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 435
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/zte/zgesture/MainSettingActivity;->initLearnMorePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;)Z

    .line 436
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    # setter for: Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/MainSettingActivity;->access$002(Lcom/zte/zgesture/setting/GestureSetting;)Lcom/zte/zgesture/setting/GestureSetting;

    .line 438
    :try_start_0
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$000()Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_all"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/zte/zgesture/MainSettingActivity;->enablePreference(Z)V

    .line 439
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->updatePreferenceStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    const-string v0, "GestureFragment onCreate"

    invoke-static {v0}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 444
    return-void

    .line 440
    :catch_0
    move-exception v6

    .line 441
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

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 448
    invoke-super {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->onDestroy()V

    .line 449
    return-void
.end method
