.class public Lcom/zte/zgesture/setting/BlackScreenSettingActivity;
.super Lcom/zte/mifavor/widget/PreferenceActivityZTE;
.source "BlackScreenSettingActivity.java"


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
    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mFeatureList:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mAppNameList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;-><init>()V

    .line 28
    new-instance v0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$1;-><init>(Lcom/zte/zgesture/setting/BlackScreenSettingActivity;)V

    iput-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/setting/BlackScreenSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method


# virtual methods
.method public enablePreference(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 211
    sget-object v2, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mFeatureList:Ljava/util/HashMap;

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

    .line 212
    .local v1, "pref":Lcom/zte/mifavor/preference/Preference;
    check-cast v1, Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .end local v1    # "pref":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v1, p1}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setSwitchEnable(Z)V

    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super/range {p0 .. p1}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0}, Lcom/zte/zgesture/tools/Utils;->getIndicatorColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->setIndicatorColor(I)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 47
    iget-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 49
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v12, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v12}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    .line 54
    .local v9, "actionBar":Landroid/app/ActionBar;
    new-instance v11, Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0, v9}, Lcom/zte/zgesture/ui/ActionBarView;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    .line 55
    .local v11, "actionBarView":Lcom/zte/zgesture/ui/ActionBarView;
    invoke-virtual {v11}, Lcom/zte/zgesture/ui/ActionBarView;->initActionBar()V

    .line 56
    invoke-virtual {v11}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    invoke-virtual {v11}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarSwitch()Landroid/widget/Switch;

    move-result-object v10

    .line 58
    .local v10, "actionBarSwitch":Landroid/widget/Switch;
    iget-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_all"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v14

    .line 59
    .local v14, "isEnabled":Z
    invoke-virtual {v10, v14}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_black_screen_gesture"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v13

    .line 61
    .local v13, "isChecked":Z
    invoke-virtual {v10, v13}, Landroid/widget/Switch;->setChecked(Z)V

    .line 62
    new-instance v0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$2;-><init>(Lcom/zte/zgesture/setting/BlackScreenSettingActivity;)V

    invoke-virtual {v10, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v0, :cond_1

    .line 71
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->addPreferencesFromResource(I)V

    .line 76
    :goto_0
    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawCFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawCEnable:Z

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020212

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "setting_draw_c_app"

    const-string v6, "setting_draw_c"

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 80
    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawOFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawOEnable:Z

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02028a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "setting_draw_o_app"

    const-string v6, "setting_draw_o"

    const/4 v7, 0x1

    const/4 v8, 0x7

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 84
    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawMFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawMEnable:Z

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02026f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "setting_draw_m_app"

    const-string v6, "setting_draw_m"

    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 88
    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawWFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawWEnable:Z

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "setting_draw_w_app"

    const-string v6, "setting_draw_w"

    const/4 v7, 0x1

    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 92
    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawVFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawVEnable:Z

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "setting_draw_v_app"

    const-string v6, "setting_draw_v"

    const/4 v7, 0x1

    const/4 v8, 0x5

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 96
    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawEFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawEEnable:Z

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "setting_draw_e_app"

    const-string v6, "setting_draw_e"

    const/4 v7, 0x1

    const/4 v8, 0x6

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 100
    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawSFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawSEnable:Z

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "setting_draw_s_app"

    const-string v6, "setting_draw_s"

    const/4 v7, 0x1

    const/4 v8, 0x4

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 104
    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawUpFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawUpEnable:Z

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "setting_draw_up"

    const/4 v7, 0x0

    const/16 v8, 0x8

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 108
    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawDownFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawDownEnable:Z

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020236

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v0, 0x7f090097

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "setting_draw_down"

    const/4 v7, 0x0

    const/16 v8, 0x9

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 112
    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawLeftFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawLeftEnable:Z

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02026e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "setting_draw_left"

    const/4 v7, 0x0

    const/16 v8, 0xa

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 116
    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawRightFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawRightEnable:Z

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "setting_draw_right"

    const/4 v7, 0x0

    const/16 v8, 0xb

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 119
    if-eqz v14, :cond_2

    if-eqz v13, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->enablePreference(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->updatePreferenceStatus()V

    .line 121
    return-void

    .line 73
    :cond_1
    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 119
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->onDestroy()V

    .line 127
    iget-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 139
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->finish()V

    .line 140
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "setting"    # Ljava/lang/String;
    .param p7, "enableClick"    # Z
    .param p8, "drawType"    # I

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    .line 156
    .local v1, "prefScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    invoke-virtual {v1, p2}, Lcom/zte/mifavor/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;

    .line 158
    .local v0, "myPref":Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;
    if-nez v0, :cond_0

    .line 207
    :goto_0
    return v3

    .line 162
    :cond_0
    if-nez p3, :cond_1

    .line 163
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->removePreference(Lcom/zte/mifavor/preference/Preference;)Z

    goto :goto_0

    .line 167
    :cond_1
    new-instance v4, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;

    invoke-direct {v4, p0, p7, p8, p6}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;-><init>(Lcom/zte/zgesture/setting/BlackScreenSettingActivity;ZILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setListener(Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;)V

    .line 190
    invoke-virtual {v0, p4}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 191
    sget v4, Lcom/zte/zgesture/tools/FeatureConfig;->preferenceTextSize:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setTitleSize(F)V

    .line 192
    if-eqz p7, :cond_3

    .line 193
    iget-object v3, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v3, p5}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 195
    const v3, 0x7f090072

    invoke-virtual {p0, v3}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    :goto_1
    sget-object v3, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mAppNameList:Ljava/util/HashMap;

    invoke-virtual {v3, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .end local v2    # "str":Ljava/lang/String;
    :goto_2
    sget-object v3, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v3, p6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/4 v3, 0x1

    goto :goto_0

    .line 197
    .restart local v2    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v2}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 202
    .end local v2    # "str":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, p5}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v0, v3}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setSegmentViewVisible(Z)V

    goto :goto_2
.end method

.method public updatePreferenceStatus()V
    .locals 5

    .prologue
    .line 217
    sget-object v4, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mFeatureList:Ljava/util/HashMap;

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

    .line 218
    .local v1, "key":Ljava/lang/String;
    sget-object v4, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 219
    .local v2, "pref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    iget-object v4, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v4, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setSwitchChecked(Z)V

    goto :goto_0

    .line 223
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    :cond_0
    sget-object v4, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mAppNameList:Ljava/util/HashMap;

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

    .line 224
    .restart local v1    # "key":Ljava/lang/String;
    sget-object v4, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mAppNameList:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 225
    .restart local v2    # "pref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    iget-object v4, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v4, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "str":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 227
    const v4, 0x7f090072

    invoke-virtual {p0, v4}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 232
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    return-void
.end method
