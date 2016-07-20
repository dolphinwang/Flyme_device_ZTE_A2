.class public Lcom/zte/zgesture/MainSettingActivity;
.super Lcom/zte/mifavor/widget/ActivityZTE;
.source "MainSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zgesture/MainSettingActivity$MyPagerAdapter;,
        Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;,
        Lcom/zte/zgesture/MainSettingActivity$MotionFragment;,
        Lcom/zte/zgesture/MainSettingActivity$GestureFragment;,
        Lcom/zte/zgesture/MainSettingActivity$GestureMotionFragment;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG_GESTURE:Ljava/lang/String; = "gesture"

.field private static final FRAGMENT_TAG_GESTUREMOTION:Ljava/lang/String; = "gesture motion"

.field private static final FRAGMENT_TAG_MOTION:Ljava/lang/String; = "motion"

.field public static final KEY_TAB_POSITION:Ljava/lang/String; = "tab_position"

.field private static mContext:Landroid/content/Context;

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

.field private static mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTabAdapter:Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;

.field private mTabs:Lcom/zte/mifavor/widget/PagerSecond;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/zgesture/MainSettingActivity;->mFeatureList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityZTE;-><init>()V

    .line 63
    new-instance v0, Lcom/zte/zgesture/MainSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/MainSettingActivity$1;-><init>(Lcom/zte/zgesture/MainSettingActivity;)V

    iput-object v0, p0, Lcom/zte/zgesture/MainSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 575
    return-void
.end method

.method static synthetic access$000()Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/zgesture/setting/GestureSetting;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/GestureSetting;

    .prologue
    .line 47
    sput-object p0, Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static enablePreference(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    .line 266
    sget-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->preferenceEnable:Z

    if-nez v2, :cond_0

    .line 267
    sget-object v2, Lcom/zte/zgesture/MainSettingActivity;->mFeatureList:Ljava/util/HashMap;

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

    .line 268
    .local v1, "pref":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v1, p0}, Lcom/zte/mifavor/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 271
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pref":Lcom/zte/mifavor/preference/Preference;
    :cond_0
    sget-object v2, Lcom/zte/zgesture/MainSettingActivity;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/preference/Preference;

    .line 272
    .restart local v1    # "pref":Lcom/zte/mifavor/preference/Preference;
    check-cast v1, Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .end local v1    # "pref":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v1, p0}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setSwitchEnable(Z)V

    goto :goto_1

    .line 276
    :cond_1
    return-void
.end method

.method public static initCategoryPref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefFragment"    # Lcom/zte/mifavor/preference/PreferenceFragment;

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/PreferenceFragment;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v2

    .line 183
    .local v2, "prefScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    const-string v3, "gesture_category"

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    .line 184
    .local v0, "gestureCategory":Lcom/zte/mifavor/preference/Preference;
    if-eqz v0, :cond_2

    .line 185
    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureEnable:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureEnable:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsEnable:Z

    if-eqz v3, :cond_1

    .line 187
    :cond_0
    const/4 v3, 0x1

    .line 196
    :goto_0
    return v3

    .line 189
    :cond_1
    invoke-virtual {v2, v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->removePreference(Lcom/zte/mifavor/preference/Preference;)Z

    .line 190
    const-string v3, "motion_category"

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v1

    .line 191
    .local v1, "motionCategory":Lcom/zte/mifavor/preference/Preference;
    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v2, v1}, Lcom/zte/mifavor/preference/PreferenceScreen;->removePreference(Lcom/zte/mifavor/preference/Preference;)Z

    .line 196
    .end local v1    # "motionCategory":Lcom/zte/mifavor/preference/Preference;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static initHeadTipsPref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefFragment"    # Lcom/zte/mifavor/preference/PreferenceFragment;

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/PreferenceFragment;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    .line 171
    .local v1, "prefScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    const-string v2, "head_tips"

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    .line 172
    .local v0, "headTipsPref":Lcom/zte/mifavor/preference/Preference;
    if-eqz v0, :cond_1

    .line 173
    sget-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->headTipsEnable:Z

    if-eqz v2, :cond_0

    .line 174
    const/4 v2, 0x1

    .line 178
    :goto_0
    return v2

    .line 176
    :cond_0
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->removePreference(Lcom/zte/mifavor/preference/Preference;)Z

    .line 178
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static initLearnMorePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefFragment"    # Lcom/zte/mifavor/preference/PreferenceFragment;

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/PreferenceFragment;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    .line 201
    .local v1, "prefScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    const-string v2, "learn_more"

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    .line 202
    .local v0, "learnMorePref":Lcom/zte/mifavor/preference/Preference;
    if-eqz v0, :cond_2

    .line 203
    sget-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsEnable:Z

    if-eqz v2, :cond_1

    .line 204
    :cond_0
    new-instance v2, Lcom/zte/zgesture/MainSettingActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/zte/zgesture/MainSettingActivity$3;-><init>(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;)V

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/preference/Preference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 212
    const/4 v2, 0x1

    .line 217
    :goto_0
    return v2

    .line 214
    :cond_1
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->removePreference(Lcom/zte/mifavor/preference/Preference;)Z

    .line 217
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefFragment"    # Lcom/zte/mifavor/preference/PreferenceFragment;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "setting"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/PreferenceFragment;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    .line 228
    .local v1, "prefScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    invoke-virtual {v1, p2}, Lcom/zte/mifavor/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 230
    .local v0, "myPref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    if-nez v0, :cond_0

    move-object v0, v2

    .line 262
    .end local v0    # "myPref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    :goto_0
    return-object v0

    .line 234
    .restart local v0    # "myPref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    :cond_0
    if-nez p3, :cond_1

    .line 235
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->removePreference(Lcom/zte/mifavor/preference/Preference;)Z

    move-object v0, v2

    .line 236
    goto :goto_0

    .line 240
    :cond_1
    new-instance v2, Lcom/zte/zgesture/MainSettingActivity$4;

    invoke-direct {v2, p1, p5, p4}, Lcom/zte/zgesture/MainSettingActivity$4;-><init>(Lcom/zte/mifavor/preference/PreferenceFragment;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setListener(Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;)V

    .line 260
    sget v2, Lcom/zte/zgesture/tools/FeatureConfig;->preferenceTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setTitleSize(F)V

    .line 261
    sget-object v2, Lcom/zte/zgesture/MainSettingActivity;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static updatePreferenceStatus()V
    .locals 4

    .prologue
    .line 279
    sget-object v3, Lcom/zte/zgesture/MainSettingActivity;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 280
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lcom/zte/zgesture/MainSettingActivity;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 281
    .local v2, "pref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    sget-object v3, Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v3, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setSwitchChecked(Z)V

    goto :goto_0

    .line 283
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pref":Lcom/zte/zgesture/setting/SettingSwitchPreference;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f090051

    .line 76
    invoke-virtual {p0}, Lcom/zte/zgesture/MainSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;

    .line 78
    const v6, 0x7f0a002f

    invoke-virtual {p0, v6}, Lcom/zte/zgesture/MainSettingActivity;->setTheme(I)V

    .line 80
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v6, 0x7f030058

    invoke-virtual {p0, v6}, Lcom/zte/zgesture/MainSettingActivity;->setContentView(I)V

    .line 82
    sget-boolean v6, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v6, :cond_0

    .line 83
    invoke-static {p0}, Lcom/zte/zgesture/tools/Utils;->getSettingColor(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/zte/zgesture/MainSettingActivity;->setIndicatorColor(I)V

    .line 86
    :cond_0
    sget-object v6, Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v6

    sput-object v6, Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 87
    sget-object v6, Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v6}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 88
    const v6, 0x7f06006c

    invoke-virtual {p0, v6}, Lcom/zte/zgesture/MainSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/zte/mifavor/widget/PagerSecond;

    iput-object v6, p0, Lcom/zte/zgesture/MainSettingActivity;->mTabs:Lcom/zte/mifavor/widget/PagerSecond;

    .line 89
    const v6, 0x7f06006d

    invoke-virtual {p0, v6}, Lcom/zte/zgesture/MainSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/zte/zgesture/MainSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 90
    new-instance v6, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;

    iget-object v7, p0, Lcom/zte/zgesture/MainSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v6, p0, p0, v7}, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;-><init>(Lcom/zte/zgesture/MainSettingActivity;Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V

    iput-object v6, p0, Lcom/zte/zgesture/MainSettingActivity;->mTabAdapter:Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;

    .line 91
    sget v6, Lcom/zte/zgesture/tools/FeatureConfig;->tabCount:I

    packed-switch v6, :pswitch_data_0

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/zte/zgesture/MainSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 112
    .local v0, "actionBar":Landroid/app/ActionBar;
    new-instance v2, Lcom/zte/zgesture/ui/ActionBarView;

    sget-object v6, Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, v0}, Lcom/zte/zgesture/ui/ActionBarView;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    .line 113
    .local v2, "actionBarView":Lcom/zte/zgesture/ui/ActionBarView;
    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->initActionBar()V

    .line 114
    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f090050

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 115
    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarSwitch()Landroid/widget/Switch;

    move-result-object v1

    .line 116
    .local v1, "actionBarSwitch":Landroid/widget/Switch;
    sget-object v6, Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v7, "setting_all"

    invoke-virtual {v6, v7}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v5

    .line 117
    .local v5, "toStart":Z
    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 119
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v4, "service":Landroid/content/Intent;
    const-string v6, "com.zte.zgesture"

    const-string v7, "com.zte.zgesture.GestureService"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    new-instance v6, Lcom/zte/zgesture/MainSettingActivity$2;

    invoke-direct {v6, p0, v4}, Lcom/zte/zgesture/MainSettingActivity$2;-><init>(Lcom/zte/zgesture/MainSettingActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    if-eqz v5, :cond_1

    .line 135
    invoke-virtual {p0, v4}, Lcom/zte/zgesture/MainSettingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 138
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v6, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v6, p0, Lcom/zte/zgesture/MainSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/zte/zgesture/MainSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    const-string v6, "MainSettingActivity onCreate"

    invoke-static {v6}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 144
    return-void

    .line 93
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "actionBarSwitch":Landroid/widget/Switch;
    .end local v2    # "actionBarView":Lcom/zte/zgesture/ui/ActionBarView;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v4    # "service":Landroid/content/Intent;
    .end local v5    # "toStart":Z
    :pswitch_0
    iget-object v6, p0, Lcom/zte/zgesture/MainSettingActivity;->mTabAdapter:Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;

    const-string v7, "gesture motion"

    invoke-virtual {p0, v8}, Lcom/zte/zgesture/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/zte/zgesture/MainSettingActivity$GestureMotionFragment;

    invoke-virtual {v6, v7, v8, v9}, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->addTab(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Class;)V

    .line 95
    iget-object v6, p0, Lcom/zte/zgesture/MainSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lcom/zte/zgesture/MainSettingActivity;->mTabAdapter:Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 96
    iget-object v6, p0, Lcom/zte/zgesture/MainSettingActivity;->mTabs:Lcom/zte/mifavor/widget/PagerSecond;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/zte/mifavor/widget/PagerSecond;->setVisibility(I)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v6, p0, Lcom/zte/zgesture/MainSettingActivity;->mTabAdapter:Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;

    const-string v7, "gesture"

    invoke-virtual {p0, v8}, Lcom/zte/zgesture/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/zte/zgesture/MainSettingActivity$GestureFragment;

    invoke-virtual {v6, v7, v8, v9}, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->addTab(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Class;)V

    .line 100
    iget-object v6, p0, Lcom/zte/zgesture/MainSettingActivity;->mTabAdapter:Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;

    const-string v7, "motion"

    const v8, 0x7f090061

    invoke-virtual {p0, v8}, Lcom/zte/zgesture/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/zte/zgesture/MainSettingActivity$MotionFragment;

    invoke-virtual {v6, v7, v8, v9}, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->addTab(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Class;)V

    .line 102
    iget-object v6, p0, Lcom/zte/zgesture/MainSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lcom/zte/zgesture/MainSettingActivity;->mTabAdapter:Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 103
    iget-object v6, p0, Lcom/zte/zgesture/MainSettingActivity;->mTabs:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v7, p0, Lcom/zte/zgesture/MainSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v7}, Lcom/zte/mifavor/widget/PagerSecond;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 104
    iget-object v6, p0, Lcom/zte/zgesture/MainSettingActivity;->mTabs:Lcom/zte/mifavor/widget/PagerSecond;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {p0, v7}, Lcom/zte/zgesture/tools/Utils;->Dp2Px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/zte/mifavor/widget/PagerSecond;->setIndicatorHeight(I)V

    .line 105
    iget-object v6, p0, Lcom/zte/zgesture/MainSettingActivity;->mTabs:Lcom/zte/mifavor/widget/PagerSecond;

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {p0, v7}, Lcom/zte/zgesture/tools/Utils;->Dp2Px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/zte/mifavor/widget/PagerSecond;->setDividerPadding(I)V

    goto/16 :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/zte/zgesture/MainSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/MainSettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onDestroy()V

    .line 166
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 155
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/zgesture/MainSettingActivity;->finish()V

    .line 156
    const/4 v0, 0x1

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
