.class public Lcom/zte/zgesture/setting/ShakeSettingActivity;
.super Lcom/zte/mifavor/widget/PreferenceActivityZTE;
.source "ShakeSettingActivity.java"


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
.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mFeatureList:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mAppNameList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/setting/ShakeSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/ShakeSettingActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method


# virtual methods
.method public enablePreference(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 104
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget-boolean v5, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v5, :cond_0

    .line 30
    invoke-static {p0}, Lcom/zte/zgesture/tools/Utils;->getIndicatorColor(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->setIndicatorColor(I)V

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 33
    iget-object v5, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v5}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 34
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 35
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 36
    .local v3, "context":Landroid/content/Context;
    new-instance v2, Lcom/zte/zgesture/ui/ActionBarView;

    invoke-direct {v2, v3, v0}, Lcom/zte/zgesture/ui/ActionBarView;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    .line 37
    .local v2, "actionBarView":Lcom/zte/zgesture/ui/ActionBarView;
    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->initActionBar()V

    .line 38
    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f09006f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 39
    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarSwitch()Landroid/widget/Switch;

    move-result-object v1

    .line 40
    .local v1, "actionBarSwitch":Landroid/widget/Switch;
    iget-object v5, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v6, "setting_all"

    invoke-virtual {v5, v6}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v4

    .line 41
    .local v4, "isEnabled":Z
    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 42
    iget-object v5, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v6, "setting_shake"

    invoke-virtual {v5, v6}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 43
    new-instance v5, Lcom/zte/zgesture/setting/ShakeSettingActivity$1;

    invoke-direct {v5, p0}, Lcom/zte/zgesture/setting/ShakeSettingActivity$1;-><init>(Lcom/zte/zgesture/setting/ShakeSettingActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    sget-boolean v5, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v5, :cond_1

    .line 52
    const v5, 0x7f03005d

    invoke-virtual {p0, v5}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->addPreferencesFromResource(I)V

    .line 57
    :goto_0
    sget-object v5, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightRadioFeature:Ljava/lang/String;

    sget-boolean v6, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightRadioEnable:Z

    const-string v7, "zte.android.flashlight"

    invoke-virtual {p0, v5, v6, v7}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->setFeaturePref(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 59
    sget-object v5, Lcom/zte/zgesture/tools/FeatureConfig;->caculatorRadioFeature:Ljava/lang/String;

    sget-boolean v6, Lcom/zte/zgesture/tools/FeatureConfig;->caculatorRadioEnable:Z

    const-string v7, "com.android.calculator2"

    invoke-virtual {p0, v5, v6, v7}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->setFeaturePref(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 61
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->updatePreferenceStatus(Lcom/zte/mifavor/preference/Preference;)V

    .line 62
    iget-object v5, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v6, "setting_shake"

    invoke-virtual {v5, v6}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->enablePreference(Z)V

    .line 64
    return-void

    .line 54
    :cond_1
    const v5, 0x7f03005e

    invoke-virtual {p0, v5}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 70
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->finish()V

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setFeaturePref(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "defaultAppName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    .line 79
    .local v1, "preferenceScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    invoke-virtual {v1, p1}, Lcom/zte/mifavor/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zte/zgesture/setting/RadioPreference;

    .line 80
    .local v0, "myPref":Lcom/zte/zgesture/setting/RadioPreference;
    if-nez v0, :cond_0

    .line 96
    :goto_0
    return v2

    .line 83
    :cond_0
    if-nez p2, :cond_1

    .line 84
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->removePreference(Lcom/zte/mifavor/preference/Preference;)Z

    goto :goto_0

    .line 87
    :cond_1
    new-instance v2, Lcom/zte/zgesture/setting/ShakeSettingActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/zte/zgesture/setting/ShakeSettingActivity$2;-><init>(Lcom/zte/zgesture/setting/ShakeSettingActivity;Lcom/zte/zgesture/setting/RadioPreference;)V

    invoke-virtual {v0, v2}, Lcom/zte/zgesture/setting/RadioPreference;->setOnPreferenceChangeListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    sget-object v2, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v2, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mAppNameList:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public updatePreferenceStatus(Lcom/zte/mifavor/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 108
    if-nez p1, :cond_3

    .line 109
    const-string v4, "init shake radio UI: "

    invoke-static {v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 110
    sget-object v4, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/preference/Preference;

    .line 111
    .local v3, "pref":Lcom/zte/mifavor/preference/Preference;
    check-cast v3, Lcom/zte/zgesture/setting/RadioPreference;

    .end local v3    # "pref":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v3, v5}, Lcom/zte/zgesture/setting/RadioPreference;->setChecked(Z)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v4, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v5, "setting_shake_app_package_default"

    invoke-virtual {v4, v5}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "defaultAppName":Ljava/lang/String;
    sget-object v4, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mAppNameList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    sget-object v4, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mAppNameList:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/preference/Preference;

    .line 117
    .restart local v3    # "pref":Lcom/zte/mifavor/preference/Preference;
    check-cast v3, Lcom/zte/zgesture/setting/RadioPreference;

    .end local v3    # "pref":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v3, v6}, Lcom/zte/zgesture/setting/RadioPreference;->setChecked(Z)V

    .line 140
    .end local v0    # "defaultAppName":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 123
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    sget-object v4, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/preference/Preference;

    .line 124
    .restart local v3    # "pref":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 125
    check-cast v3, Lcom/zte/zgesture/setting/RadioPreference;

    .end local v3    # "pref":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v3, v6}, Lcom/zte/zgesture/setting/RadioPreference;->setChecked(Z)V

    goto :goto_2

    .line 127
    .restart local v3    # "pref":Lcom/zte/mifavor/preference/Preference;
    :cond_4
    check-cast v3, Lcom/zte/zgesture/setting/RadioPreference;

    .end local v3    # "pref":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v3, v5}, Lcom/zte/zgesture/setting/RadioPreference;->setChecked(Z)V

    goto :goto_2

    .line 131
    :cond_5
    sget-object v4, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mAppNameList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    .restart local v2    # "key":Ljava/lang/String;
    sget-object v4, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mAppNameList:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/preference/Preference;

    .line 133
    .restart local v3    # "pref":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set shake default packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 135
    iget-object v4, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v5, "setting_shake_app_package_default"

    invoke-virtual {v4, v5, v2}, Lcom/zte/zgesture/setting/GestureSetting;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v4, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v4}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto :goto_1
.end method
