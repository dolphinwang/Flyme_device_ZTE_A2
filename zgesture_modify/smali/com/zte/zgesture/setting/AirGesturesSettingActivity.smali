.class public Lcom/zte/zgesture/setting/AirGesturesSettingActivity;
.super Lcom/zte/mifavor/widget/PreferenceActivityZTE;
.source "AirGesturesSettingActivity.java"


# static fields
.field public static mAppNameList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/zte/mifavor/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field public static mFeatureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/zte/mifavor/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mFeatureList:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mAppNameList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;-><init>()V

    .line 29
    new-instance v0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$1;-><init>(Lcom/zte/zgesture/setting/AirGesturesSettingActivity;)V

    iput-object v0, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/setting/AirGesturesSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/AirGesturesSettingActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method


# virtual methods
.method public enablePreference(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 197
    sget-object v2, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/preference/Preference;

    .line 198
    .local v1, "pref":Lcom/zte/mifavor/preference/Preference;
    check-cast v1, Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .end local v1    # "pref":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v1, p1}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setSwitchEnable(Z)V

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super/range {p0 .. p1}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget-boolean v1, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v1, :cond_0

    .line 45
    invoke-static/range {p0 .. p0}, Lcom/zte/zgesture/tools/Utils;->getSettingColor(Landroid/content/Context;)I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->setIndicatorColor(I)V

    .line 47
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 48
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 50
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v15, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v15}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    .line 55
    .local v11, "actionBar":Landroid/app/ActionBar;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    .line 56
    .local v14, "context":Landroid/content/Context;
    new-instance v13, Lcom/zte/zgesture/ui/ActionBarView;

    invoke-direct {v13, v14, v11}, Lcom/zte/zgesture/ui/ActionBarView;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    .line 57
    .local v13, "actionBarView":Lcom/zte/zgesture/ui/ActionBarView;
    invoke-virtual {v13}, Lcom/zte/zgesture/ui/ActionBarView;->initActionBar()V

    .line 58
    invoke-virtual {v13}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09005f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 59
    invoke-virtual {v13}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarSwitch()Landroid/widget/Switch;

    move-result-object v12

    .line 60
    .local v12, "actionBarSwitch":Landroid/widget/Switch;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_all"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v17

    .line 61
    .local v17, "isEnabled":Z
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 62
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_air_gestures"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v16

    .line 63
    .local v16, "isChecked":Z
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 64
    new-instance v1, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$2;-><init>(Lcom/zte/zgesture/setting/AirGesturesSettingActivity;)V

    invoke-virtual {v12, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    sget-boolean v1, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v1, :cond_1

    .line 74
    const v1, 0x7f030048

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->addPreferencesFromResource(I)V

    .line 79
    :goto_0
    new-instance v10, Landroid/content/Intent;

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v10, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const/16 v2, 0xe

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    sget-object v3, Lcom/zte/zgesture/tools/FeatureConfig;->airMFeature:Ljava/lang/String;

    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->airMEnable:Z

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    const v1, 0x7f0900a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "setting_air_m"

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v10}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Z

    .line 85
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v1, "type"

    const/16 v2, 0xf

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    sget-object v3, Lcom/zte/zgesture/tools/FeatureConfig;->airOFeature:Ljava/lang/String;

    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->airOEnable:Z

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    const v1, 0x7f0900a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "setting_air_o"

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v10}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Z

    .line 91
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v1, "type"

    const/16 v2, 0x10

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    sget-object v3, Lcom/zte/zgesture/tools/FeatureConfig;->airVFeature:Ljava/lang/String;

    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->airVEnable:Z

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020200

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "setting_air_v_app"

    const-string v8, "setting_air_v"

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v10}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Z

    .line 97
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v1, "type"

    const/16 v2, 0x11

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    sget-object v3, Lcom/zte/zgesture/tools/FeatureConfig;->airZFeature:Ljava/lang/String;

    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->airZEnable:Z

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020202

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "setting_air_z_app"

    const-string v8, "setting_air_z"

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v10}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Z

    .line 103
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v1, "type"

    const/16 v2, 0x12

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    sget-object v3, Lcom/zte/zgesture/tools/FeatureConfig;->airWFeature:Ljava/lang/String;

    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->airWEnable:Z

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020201

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "setting_air_w_app"

    const-string v8, "setting_air_w"

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v10}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Z

    .line 108
    if-eqz v17, :cond_2

    if-eqz v16, :cond_2

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->enablePreference(Z)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->updatePreferenceStatus()V

    .line 110
    return-void

    .line 76
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_1
    const v1, 0x7f030049

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 108
    .restart local v10    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->onDestroy()V

    .line 127
    iget-object v0, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->finish()V

    .line 117
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "fixedTitle"    # Z
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "setting"    # Ljava/lang/String;
    .param p8, "enableClick"    # Z
    .param p9, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    .line 140
    .local v1, "prefScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    invoke-virtual {v1, p2}, Lcom/zte/mifavor/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;

    .line 142
    .local v0, "myPref":Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;
    if-nez v0, :cond_0

    .line 193
    :goto_0
    return v3

    .line 146
    :cond_0
    if-nez p3, :cond_1

    .line 147
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->removePreference(Lcom/zte/mifavor/preference/Preference;)Z

    goto :goto_0

    .line 151
    :cond_1
    new-instance v4, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$3;

    invoke-direct {v4, p0, p8, p9, p7}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$3;-><init>(Lcom/zte/zgesture/setting/AirGesturesSettingActivity;ZLandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setListener(Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;)V

    .line 172
    invoke-virtual {v0, p4}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 173
    sget v4, Lcom/zte/zgesture/tools/FeatureConfig;->preferenceTextSize:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setTitleSize(F)V

    .line 174
    if-eqz p8, :cond_4

    .line 175
    if-eqz p5, :cond_2

    .line 176
    invoke-virtual {v0, p6}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 192
    :goto_1
    sget-object v3, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v3, p7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/4 v3, 0x1

    goto :goto_0

    .line 178
    :cond_2
    iget-object v3, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v3, p6}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 180
    const v3, 0x7f090072

    invoke-virtual {p0, v3}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    :goto_2
    sget-object v3, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mAppNameList:Ljava/util/HashMap;

    invoke-virtual {v3, p6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 182
    :cond_3
    invoke-virtual {v0, v2}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 188
    .end local v2    # "str":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, p6}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {v0, v3}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setSegmentViewVisible(Z)V

    goto :goto_1
.end method

.method public updatePreferenceStatus()V
    .locals 5

    .prologue
    .line 203
    sget-object v4, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    .local v1, "key":Ljava/lang/String;
    sget-object v4, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 205
    .local v2, "pref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    iget-object v4, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v4, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setSwitchChecked(Z)V

    goto :goto_0

    .line 209
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    :cond_0
    sget-object v4, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mAppNameList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 210
    .restart local v1    # "key":Ljava/lang/String;
    sget-object v4, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mAppNameList:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 211
    .restart local v2    # "pref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    iget-object v4, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v4, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "str":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 213
    const v4, 0x7f090072

    invoke-virtual {v2, v4}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setTitle(I)V

    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 218
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    return-void
.end method
