.class public Lcom/zte/zgesture/setting/AlarmSettingActivity;
.super Lcom/zte/mifavor/widget/PreferenceActivityZTE;
.source "AlarmSettingActivity.java"


# instance fields
.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/setting/AlarmSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/AlarmSettingActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget-boolean v5, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v5, :cond_0

    .line 26
    invoke-static {p0}, Lcom/zte/zgesture/tools/Utils;->getIndicatorColor(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/zte/zgesture/setting/AlarmSettingActivity;->setIndicatorColor(I)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/zgesture/setting/AlarmSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 29
    iget-object v5, p0, Lcom/zte/zgesture/setting/AlarmSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v5}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 30
    const v5, 0x7f03004a

    invoke-virtual {p0, v5}, Lcom/zte/zgesture/setting/AlarmSettingActivity;->addPreferencesFromResource(I)V

    .line 32
    new-instance v1, Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/zte/zgesture/ui/ActionBarView;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    .line 33
    .local v1, "actionBarView":Lcom/zte/zgesture/ui/ActionBarView;
    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->initActionBar()V

    .line 34
    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f090066

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 35
    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarSwitch()Landroid/widget/Switch;

    move-result-object v0

    .line 36
    .local v0, "actionBarSwitch":Landroid/widget/Switch;
    iget-object v5, p0, Lcom/zte/zgesture/setting/AlarmSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v6, "setting_all"

    invoke-virtual {v5, v6}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v2

    .line 37
    .local v2, "isEnabled":Z
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 38
    iget-object v5, p0, Lcom/zte/zgesture/setting/AlarmSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v6, "setting_alarm_turn"

    invoke-virtual {v5, v6}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 39
    new-instance v5, Lcom/zte/zgesture/setting/AlarmSettingActivity$1;

    invoke-direct {v5, p0}, Lcom/zte/zgesture/setting/AlarmSettingActivity$1;-><init>(Lcom/zte/zgesture/setting/AlarmSettingActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmSettingActivity;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v4

    .line 48
    .local v4, "prefScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    const-string v5, "alarm_cancel"

    invoke-virtual {v4, v5}, Lcom/zte/mifavor/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v3

    .line 49
    .local v3, "pref":Lcom/zte/mifavor/preference/Preference;
    if-eqz v3, :cond_1

    .line 50
    sget-boolean v5, Lcom/zte/zgesture/tools/FeatureConfig;->alarmCancelEnable:Z

    if-eqz v5, :cond_3

    .line 51
    new-instance v5, Lcom/zte/zgesture/setting/AlarmSettingActivity$2;

    invoke-direct {v5, p0}, Lcom/zte/zgesture/setting/AlarmSettingActivity$2;-><init>(Lcom/zte/zgesture/setting/AlarmSettingActivity;)V

    invoke-virtual {v3, v5}, Lcom/zte/mifavor/preference/Preference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    :cond_1
    :goto_0
    const-string v5, "alarm_snooze"

    invoke-virtual {v4, v5}, Lcom/zte/mifavor/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    sget-boolean v5, Lcom/zte/zgesture/tools/FeatureConfig;->alarmSnoozeEnable:Z

    if-eqz v5, :cond_4

    .line 69
    new-instance v5, Lcom/zte/zgesture/setting/AlarmSettingActivity$3;

    invoke-direct {v5, p0}, Lcom/zte/zgesture/setting/AlarmSettingActivity$3;-><init>(Lcom/zte/zgesture/setting/AlarmSettingActivity;)V

    invoke-virtual {v3, v5}, Lcom/zte/mifavor/preference/Preference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 84
    :cond_2
    :goto_1
    return-void

    .line 62
    :cond_3
    invoke-virtual {v4, v3}, Lcom/zte/mifavor/preference/PreferenceScreen;->removePreference(Lcom/zte/mifavor/preference/Preference;)Z

    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {v4, v3}, Lcom/zte/mifavor/preference/PreferenceScreen;->removePreference(Lcom/zte/mifavor/preference/Preference;)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 95
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmSettingActivity;->finish()V

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
