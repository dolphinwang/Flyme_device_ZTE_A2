.class public Lcom/zte/zgesture/setting/GestureSetting;
.super Ljava/lang/Object;
.source "GestureSetting.java"


# static fields
.field public static final CACULATOR_PKG:Ljava/lang/String; = "com.android.calculator2"

.field public static final FLASH_LIGHT_PKG:Ljava/lang/String; = "zte.android.flashlight"

.field public static final SETTING_AIR_GESTURES:Ljava/lang/String; = "setting_air_gestures"

.field public static final SETTING_AIR_M:Ljava/lang/String; = "setting_air_m"

.field public static final SETTING_AIR_O:Ljava/lang/String; = "setting_air_o"

.field public static final SETTING_AIR_O_APP:Ljava/lang/String; = "setting_air_o_app"

.field public static final SETTING_AIR_V:Ljava/lang/String; = "setting_air_v"

.field public static final SETTING_AIR_V_APP:Ljava/lang/String; = "setting_air_v_app"

.field public static final SETTING_AIR_W:Ljava/lang/String; = "setting_air_w"

.field public static final SETTING_AIR_W_APP:Ljava/lang/String; = "setting_air_w_app"

.field public static final SETTING_AIR_Z:Ljava/lang/String; = "setting_air_z"

.field public static final SETTING_AIR_Z_APP:Ljava/lang/String; = "setting_air_z_app"

.field public static final SETTING_ALARM_CLOCK:Ljava/lang/String; = "setting_alarm_turn"

.field public static final SETTING_ALL:Ljava/lang/String; = "setting_all"

.field public static final SETTING_ANSWER:Ljava/lang/String; = "setting_answer"

.field public static final SETTING_BLACK_SCREEN_GESTURE:Ljava/lang/String; = "setting_black_screen_gesture"

.field public static final SETTING_BROADCAST:Ljava/lang/String; = "com.zte.zgesture.refreshSetting"

.field public static final SETTING_CALL:Ljava/lang/String; = "setting_call"

.field public static final SETTING_CALL_TURN:Ljava/lang/String; = "setting_call_turn"

.field public static final SETTING_CHANGE_TO_RECEIVER:Ljava/lang/String; = "setting_change_to_receiver"

.field public static final SETTING_CLOSE_APP:Ljava/lang/String; = "setting_close_app"

.field public static final SETTING_CLOSE_SCREEN:Ljava/lang/String; = "setting_close_screen"

.field public static final SETTING_DOUBLE_TAP:Ljava/lang/String; = "setting_double_tap"

.field public static final SETTING_DRAW_C:Ljava/lang/String; = "setting_draw_c"

.field public static final SETTING_DRAW_C_APP:Ljava/lang/String; = "setting_draw_c_app"

.field public static final SETTING_DRAW_DOWN:Ljava/lang/String; = "setting_draw_down"

.field public static final SETTING_DRAW_E:Ljava/lang/String; = "setting_draw_e"

.field public static final SETTING_DRAW_E_APP:Ljava/lang/String; = "setting_draw_e_app"

.field public static final SETTING_DRAW_LEFT:Ljava/lang/String; = "setting_draw_left"

.field public static final SETTING_DRAW_M:Ljava/lang/String; = "setting_draw_m"

.field public static final SETTING_DRAW_M_APP:Ljava/lang/String; = "setting_draw_m_app"

.field public static final SETTING_DRAW_O:Ljava/lang/String; = "setting_draw_o"

.field public static final SETTING_DRAW_O_APP:Ljava/lang/String; = "setting_draw_o_app"

.field public static final SETTING_DRAW_RIGHT:Ljava/lang/String; = "setting_draw_right"

.field public static final SETTING_DRAW_S:Ljava/lang/String; = "setting_draw_s"

.field public static final SETTING_DRAW_S_APP:Ljava/lang/String; = "setting_draw_s_app"

.field public static final SETTING_DRAW_UP:Ljava/lang/String; = "setting_draw_up"

.field public static final SETTING_DRAW_UP_APP:Ljava/lang/String; = "setting_draw_up_app"

.field public static final SETTING_DRAW_V:Ljava/lang/String; = "setting_draw_v"

.field public static final SETTING_DRAW_V_APP:Ljava/lang/String; = "setting_draw_v_app"

.field public static final SETTING_DRAW_W:Ljava/lang/String; = "setting_draw_w"

.field public static final SETTING_DRAW_W_APP:Ljava/lang/String; = "setting_draw_w_app"

.field public static final SETTING_POCKET:Ljava/lang/String; = "setting_pocket"

.field public static final SETTING_SCREEN_SHOT:Ljava/lang/String; = "setting_screen_shot"

.field public static final SETTING_SHAKE:Ljava/lang/String; = "setting_shake"

.field public static final SETTING_SHAKE_APP_PACKAGE_DEFAULT:Ljava/lang/String; = "setting_shake_app_package_default"

.field public static final SETTING_SWITCH_APP:Ljava/lang/String; = "setting_switch_app"

.field public static final VOICE_ASSIST_INTENT:Ljava/lang/String; = "android.intent.action.wakeup.ztevoice.command"

.field private static mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;


# instance fields
.field private mBooleanData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mStringData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/setting/GestureSetting;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    .line 104
    iput-object p1, p0, Lcom/zte/zgesture/setting/GestureSetting;->mContext:Landroid/content/Context;

    .line 105
    const-string v0, " GestureSetting is created "

    invoke-static {v0}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public static getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    sget-object v0, Lcom/zte/zgesture/setting/GestureSetting;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    if-nez v0, :cond_0

    .line 90
    if-eqz p0, :cond_1

    .line 91
    new-instance v0, Lcom/zte/zgesture/setting/GestureSetting;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/setting/GestureSetting;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/setting/GestureSetting;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 96
    :cond_0
    :goto_0
    sget-object v0, Lcom/zte/zgesture/setting/GestureSetting;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0

    .line 93
    :cond_1
    const-string v0, " GestureSetting can\'t create : context is null "

    invoke-static {v0}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/setting/GestureSetting;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 101
    return-void
.end method


# virtual methods
.method public getAppTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 610
    invoke-virtual {p0, p1}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 611
    .local v3, "uri":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 622
    :goto_0
    return-object v2

    .line 614
    :cond_0
    const/4 v1, 0x0

    .line 616
    .local v1, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 621
    invoke-virtual {p0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitleByName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "title":Ljava/lang/String;
    goto :goto_0

    .line 617
    .end local v2    # "title":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAppTitleByName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 627
    if-nez p1, :cond_0

    move-object v9, v11

    .line 666
    :goto_0
    return-object v9

    .line 630
    :cond_0
    const/4 v9, 0x0

    .line 631
    .local v9, "title":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 632
    .local v3, "component":Landroid/content/ComponentName;
    if-eqz v3, :cond_3

    .line 634
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, "componentName":Ljava/lang/String;
    const-string v12, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 636
    iget-object v11, p0, Lcom/zte/zgesture/setting/GestureSetting;->mContext:Landroid/content/Context;

    const v12, 0x7f090054

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 639
    :cond_1
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v6, v12, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 640
    .local v6, "mainIntent":Landroid/content/Intent;
    iget-object v11, p0, Lcom/zte/zgesture/setting/GestureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 641
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 645
    .local v8, "pkgName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 646
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 647
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 648
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 649
    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 646
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 655
    .end local v0    # "app":Landroid/content/pm/ResolveInfo;
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "componentName":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "mainIntent":Landroid/content/Intent;
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_3
    const-string v11, "Appname"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, "appName":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 657
    iget-object v11, p0, Lcom/zte/zgesture/setting/GestureSetting;->mContext:Landroid/content/Context;

    const v12, 0x7f090059

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 659
    :cond_4
    const-string v11, "title"

    const/4 v12, -0x1

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 660
    .local v10, "titleId":I
    if-gtz v10, :cond_5

    .line 661
    const-string v11, "app name has not resId"

    invoke-static {v11}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;)I

    .line 665
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getAppTitleByName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 663
    :cond_5
    iget-object v11, p0, Lcom/zte/zgesture/setting/GestureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseToIntent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 670
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 671
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    iget-object v2, p0, Lcom/zte/zgesture/setting/GestureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 675
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public reloadSetting()V
    .locals 21

    .prologue
    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "gesture_setting"

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 136
    .local v16, "sharedPref":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_all"

    const-string v19, "setting_all"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->gestureMotionSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureEnable:Z

    if-eqz v17, :cond_7

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_air_gestures"

    const-string v19, "setting_air_gestures"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->airMEnable:Z

    if-eqz v17, :cond_0

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_air_m"

    const-string v19, "setting_air_m"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->airMSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->airOEnable:Z

    if-eqz v17, :cond_2

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_air_o"

    const-string v19, "setting_air_o"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->airOSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v17, "setting_air_o_app"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "air_o_app":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 152
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v15, "intent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.android.chrome"

    const-string v19, "com.google.android.apps.chrome.Main"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 157
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    .line 159
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_air_o_app"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v3    # "air_o_app":Ljava/lang/String;
    :cond_2
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->airVEnable:Z

    if-eqz v17, :cond_4

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_air_v"

    const-string v19, "setting_air_v"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->airVSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v17, "setting_air_v_app"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "air_v_app":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 165
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.zte.camera"

    const-string v19, "com.zte.camera.CameraActivity"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 168
    const-string v17, "pkgName"

    const-string v18, "com.zte.camera"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .line 171
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_air_v_app"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v4    # "air_v_app":Ljava/lang/String;
    :cond_4
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->airZEnable:Z

    if-eqz v17, :cond_6

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_air_z"

    const-string v19, "setting_air_z"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->airZSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v17, "setting_air_z_app"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "air_z_app":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 177
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.android.dialer"

    const-string v19, "com.android.dialer.DialtactsActivity"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 181
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    .line 183
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_air_z_app"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v6    # "air_z_app":Ljava/lang/String;
    :cond_6
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->airWEnable:Z

    if-eqz v17, :cond_7

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_air_w"

    const-string v19, "setting_air_w"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->airWSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v17, "setting_air_w_app"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "air_w_app":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_air_w_app"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v5    # "air_w_app":Ljava/lang/String;
    :cond_7
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureEnable:Z

    if-eqz v17, :cond_1c

    .line 193
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureVisable:Z

    if-eqz v17, :cond_8

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_black_screen_gesture"

    const-string v19, "setting_black_screen_gesture"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_8
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapEnable:Z

    if-eqz v17, :cond_9

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_double_tap"

    const-string v19, "setting_double_tap"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_9
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->drawCEnable:Z

    if-eqz v17, :cond_b

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_c"

    const-string v19, "setting_draw_c"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->drawCSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v17, "setting_draw_c_app"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "draw_c_app":Ljava/lang/String;
    if-nez v7, :cond_a

    .line 206
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    sget v17, Lcom/zte/zgesture/tools/FeatureConfig;->appDefaultType:I

    packed-switch v17, :pswitch_data_0

    .line 221
    :goto_0
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    .line 223
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_c_app"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .end local v7    # "draw_c_app":Ljava/lang/String;
    :cond_b
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->drawMEnable:Z

    if-eqz v17, :cond_d

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_m"

    const-string v19, "setting_draw_m"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->drawMSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v17, "setting_draw_m_app"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 229
    .local v9, "draw_m_app":Ljava/lang/String;
    if-nez v9, :cond_c

    .line 230
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    sget v17, Lcom/zte/zgesture/tools/FeatureConfig;->appDefaultType:I

    packed-switch v17, :pswitch_data_1

    .line 267
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    .line 269
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_m_app"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .end local v9    # "draw_m_app":Ljava/lang/String;
    :cond_d
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->drawWEnable:Z

    if-eqz v17, :cond_f

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_w"

    const-string v19, "setting_draw_w"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->drawWSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v17, "setting_draw_w_app"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 275
    .local v14, "draw_w_app":Ljava/lang/String;
    if-nez v14, :cond_e

    .line 276
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    sget v17, Lcom/zte/zgesture/tools/FeatureConfig;->appDefaultType:I

    packed-switch v17, :pswitch_data_2

    .line 291
    :goto_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    .line 293
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_w_app"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .end local v14    # "draw_w_app":Ljava/lang/String;
    :cond_f
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->drawVEnable:Z

    if-eqz v17, :cond_11

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_v"

    const-string v19, "setting_draw_v"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->drawVSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v17, "setting_draw_v_app"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 299
    .local v13, "draw_v_app":Ljava/lang/String;
    if-nez v13, :cond_10

    .line 301
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.zte.voice"

    const-string v19, "com.zte.voice\u3002VoiceSettings"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 304
    const-string v17, "title"

    const v18, 0x7f090059

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    const-string v17, "pkgName"

    const-string v18, "com.zte.voice"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    .line 308
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_v_app"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .end local v13    # "draw_v_app":Ljava/lang/String;
    :cond_11
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->drawEEnable:Z

    if-eqz v17, :cond_13

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_e"

    const-string v19, "setting_draw_e"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->drawESettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v17, "setting_draw_e_app"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, "draw_e_app":Ljava/lang/String;
    if-nez v8, :cond_12

    .line 315
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.android.gallery3d"

    const-string v19, "com.android.gallery3d.app.Gallery"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 318
    const-string v17, "title"

    const v18, 0x7f09005a

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    const-string v17, "pkgName"

    const-string v18, "com.android.gallery3d"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    .line 322
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_e_app"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .end local v8    # "draw_e_app":Ljava/lang/String;
    :cond_13
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->drawSEnable:Z

    if-eqz v17, :cond_15

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_s"

    const-string v19, "setting_draw_s"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->drawCSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v17, "setting_draw_s_app"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 328
    .local v11, "draw_s_app":Ljava/lang/String;
    if-nez v11, :cond_14

    .line 329
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.android.mms"

    const-string v19, "com.android.mms.ui.ConversationList"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 332
    const-string v17, "title"

    const v18, 0x7f090058

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string v17, "pkgName"

    const-string v18, "com.android.mms"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    .line 336
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_s_app"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .end local v11    # "draw_s_app":Ljava/lang/String;
    :cond_15
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->drawUpEnable:Z

    if-eqz v17, :cond_17

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_up"

    const-string v19, "setting_draw_up"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->drawUpSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v17, "setting_draw_up_app"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 343
    .local v12, "draw_up_app":Ljava/lang/String;
    if-nez v12, :cond_16

    .line 344
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.zte.camera"

    const-string v19, "com.zte.camera.CameraActivity"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 347
    const-string v17, "title"

    const v18, 0x7f09005b

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    const-string v17, "pkgName"

    const-string v18, "com.zte.camera"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v12

    .line 351
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_up_app"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .end local v12    # "draw_up_app":Ljava/lang/String;
    :cond_17
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->drawDownEnable:Z

    if-eqz v17, :cond_18

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_down"

    const-string v19, "setting_draw_down"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->drawDownSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_18
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->drawLeftEnable:Z

    if-eqz v17, :cond_19

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_left"

    const-string v19, "setting_draw_left"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->drawLeftSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_19
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->drawRightEnable:Z

    if-eqz v17, :cond_1a

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_right"

    const-string v19, "setting_draw_right"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->drawRightSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_1a
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->drawOEnable:Z

    if-eqz v17, :cond_1c

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_o"

    const-string v19, "setting_draw_o"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->drawOSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v17, "setting_draw_o_app"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 369
    .local v10, "draw_o_app":Ljava/lang/String;
    if-nez v10, :cond_1b

    .line 370
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.android.chrome"

    const-string v19, "com.google.android.apps.chrome.Main"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 374
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    .line 376
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_draw_o_app"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .end local v10    # "draw_o_app":Ljava/lang/String;
    :cond_1c
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    if-eqz v17, :cond_1d

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_close_app"

    const-string v19, "setting_close_app"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_1d
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    if-eqz v17, :cond_1e

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_switch_app"

    const-string v19, "setting_switch_app"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_1e
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsEnable:Z

    if-eqz v17, :cond_1f

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_screen_shot"

    const-string v19, "setting_screen_shot"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_1f
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->callEnable:Z

    if-eqz v17, :cond_20

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_call"

    const-string v19, "setting_call"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->callSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_20
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->answerEnable:Z

    if-eqz v17, :cond_21

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_answer"

    const-string v19, "setting_answer"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->answerSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_21
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->pocketModeEnable:Z

    if-eqz v17, :cond_22

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_pocket"

    const-string v19, "setting_pocket"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->pocketSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_22
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->callTurnEnable:Z

    if-eqz v17, :cond_23

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_call_turn"

    const-string v19, "setting_call_turn"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->callTurnSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_23
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->alarmCLockEnable:Z

    if-eqz v17, :cond_24

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_alarm_turn"

    const-string v19, "setting_alarm_turn"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->alarmCLockSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_24
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->changeForSpeakerEnable:Z

    if-eqz v17, :cond_25

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_change_to_receiver"

    const-string v19, "setting_change_to_receiver"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->changeForSpeakerSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_25
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenEnable:Z

    if-eqz v17, :cond_26

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_close_screen"

    const-string v19, "setting_close_screen"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_26
    sget-boolean v17, Lcom/zte/zgesture/tools/FeatureConfig;->shakeEnable:Z

    if-eqz v17, :cond_27

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_shake"

    const-string v19, "setting_shake"

    sget-boolean v20, Lcom/zte/zgesture/tools/FeatureConfig;->shakeSettingValue:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setting_shake_app_package_default"

    const-string v19, "setting_shake_app_package_default"

    const-string v20, "zte.android.flashlight"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_27
    return-void

    .line 210
    .restart local v7    # "draw_c_app":Ljava/lang/String;
    .restart local v15    # "intent":Landroid/content/Intent;
    :pswitch_0
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.android.contacts"

    const-string v19, "com.android.contacts.activities.DialtactsActivity"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 212
    const-string v17, "title"

    const v18, 0x7f090054

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const-string v17, "pkgName"

    const-string v18, "com.android.contacts"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 216
    :pswitch_1
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.android.dialer"

    const-string v19, "com.android.dialer.DialtactsActivity"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 234
    .end local v7    # "draw_c_app":Ljava/lang/String;
    .restart local v9    # "draw_m_app":Ljava/lang/String;
    :pswitch_2
    const-string v17, "cn.zte.music"

    const-string v18, "cn.zte.music.activity.MusicBrowserActivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->parseToIntent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_28

    .line 235
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "cn.zte.music"

    const-string v19, "cn.zte.music.activity.MusicBrowserActivity"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 237
    const-string v17, "pkgName"

    const-string v18, "cn.zte.music"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    :goto_3
    const-string v17, "title"

    const v18, 0x7f090055

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 238
    :cond_28
    const-string v17, "com.imusic.musicplayer"

    const-string v18, "com.imusic.musicplayer.ui.WelcomeActivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->parseToIntent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_29

    .line 240
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.imusic.musicplayer"

    const-string v19, "com.imusic.musicplayer.ui.WelcomeActivity"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 242
    const-string v17, "pkgName"

    const-string v18, "com.imusic.musicplayer"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 243
    :cond_29
    const-string v17, "com.imusic.hifi"

    const-string v18, "com.gwsoft.imusic.controller.LoadingActivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->parseToIntent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2a

    .line 244
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.imusic.hifi"

    const-string v19, "com.gwsoft.imusic.controller.LoadingActivity"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 246
    const-string v17, "pkgName"

    const-string v18, "com.imusic.hifi"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 248
    :cond_2a
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "cn.zte.music"

    const-string v19, "cn.zte.music.activity.MusicBrowserActivity"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 250
    const-string v17, "pkgName"

    const-string v18, "cn.zte.music"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 255
    :pswitch_3
    const-string v17, "com.android.music"

    const-string v18, "com.android.music.MusicBrowserActivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->parseToIntent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2b

    .line 256
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.android.music"

    const-string v19, "com.android.music.MusicBrowserActivity"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 259
    :cond_2b
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.google.android.music"

    const-string v19, "com.android.music.activitymanagement.TopLevelActivity"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 280
    .end local v9    # "draw_m_app":Ljava/lang/String;
    .restart local v14    # "draw_w_app":Ljava/lang/String;
    :pswitch_4
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.tencent.mm"

    const-string v19, "com.tencent.mm.ui.LauncherUI"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 281
    const-string v17, "title"

    const v18, 0x7f090056

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string v17, "pkgName"

    const-string v18, "com.tencent.mm"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 285
    :pswitch_5
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.android.mms"

    const-string v19, "com.android.mms.ui.ConversationList"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 232
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 278
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    return-void
.end method

.method public writeBack()V
    .locals 7

    .prologue
    .line 428
    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mContext:Landroid/content/Context;

    const-string v5, "gesture_setting"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 429
    .local v3, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 431
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "setting_all"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_all"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 433
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureEnable:Z

    if-eqz v4, :cond_4

    .line 434
    const-string v5, "setting_air_gestures"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_air_gestures"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 435
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->airMEnable:Z

    if-eqz v4, :cond_0

    .line 436
    const-string v5, "setting_air_m"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_air_m"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 438
    :cond_0
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->airOEnable:Z

    if-eqz v4, :cond_1

    .line 439
    const-string v5, "setting_air_o"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_air_o"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 441
    :cond_1
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->airVEnable:Z

    if-eqz v4, :cond_2

    .line 442
    const-string v5, "setting_air_v"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_air_v"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 443
    const-string v5, "setting_air_v_app"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    const-string v6, "setting_air_v_app"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 445
    :cond_2
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->airZEnable:Z

    if-eqz v4, :cond_3

    .line 446
    const-string v5, "setting_air_z"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_air_z"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 447
    const-string v5, "setting_air_z_app"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    const-string v6, "setting_air_z_app"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 449
    :cond_3
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->airWEnable:Z

    if-eqz v4, :cond_4

    .line 450
    const-string v5, "setting_air_w"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_air_w"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 451
    const-string v5, "setting_air_w_app"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    const-string v6, "setting_air_w_app"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 454
    :cond_4
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureEnable:Z

    if-eqz v4, :cond_12

    .line 455
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureVisable:Z

    if-eqz v4, :cond_5

    .line 456
    const-string v5, "setting_black_screen_gesture"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_black_screen_gesture"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 458
    :cond_5
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapEnable:Z

    if-eqz v4, :cond_6

    .line 459
    const-string v5, "setting_double_tap"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_double_tap"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 461
    :cond_6
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawCEnable:Z

    if-eqz v4, :cond_7

    .line 462
    const-string v5, "setting_draw_c"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_draw_c"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 463
    const-string v5, "setting_draw_c_app"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    const-string v6, "setting_draw_c_app"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    :cond_7
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawMEnable:Z

    if-eqz v4, :cond_8

    .line 466
    const-string v5, "setting_draw_m_app"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    const-string v6, "setting_draw_m_app"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 468
    :cond_8
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawMEnable:Z

    if-eqz v4, :cond_9

    .line 469
    const-string v5, "setting_draw_m"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_draw_m"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 471
    :cond_9
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawWEnable:Z

    if-eqz v4, :cond_a

    .line 472
    const-string v5, "setting_draw_w"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_draw_w"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 473
    const-string v5, "setting_draw_w_app"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    const-string v6, "setting_draw_w_app"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 475
    :cond_a
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawVEnable:Z

    if-eqz v4, :cond_b

    .line 476
    const-string v5, "setting_draw_v"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_draw_v"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 477
    const-string v5, "setting_draw_v_app"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    const-string v6, "setting_draw_v_app"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 479
    :cond_b
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawEEnable:Z

    if-eqz v4, :cond_c

    .line 480
    const-string v5, "setting_draw_e"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_draw_e"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 481
    const-string v5, "setting_draw_e_app"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    const-string v6, "setting_draw_e_app"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 483
    :cond_c
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawSEnable:Z

    if-eqz v4, :cond_d

    .line 484
    const-string v5, "setting_draw_s"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_draw_s"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 485
    const-string v5, "setting_draw_s_app"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    const-string v6, "setting_draw_s_app"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 487
    :cond_d
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawUpEnable:Z

    if-eqz v4, :cond_e

    .line 488
    const-string v5, "setting_draw_up"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_draw_up"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 489
    const-string v5, "setting_draw_up_app"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    const-string v6, "setting_draw_up_app"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 491
    :cond_e
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawDownEnable:Z

    if-eqz v4, :cond_f

    .line 492
    const-string v5, "setting_draw_down"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_draw_down"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 494
    :cond_f
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawLeftEnable:Z

    if-eqz v4, :cond_10

    .line 495
    const-string v5, "setting_draw_left"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_draw_left"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 497
    :cond_10
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawRightEnable:Z

    if-eqz v4, :cond_11

    .line 498
    const-string v5, "setting_draw_right"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_draw_right"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 500
    :cond_11
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawOEnable:Z

    if-eqz v4, :cond_12

    .line 501
    const-string v5, "setting_draw_o"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_draw_o"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 502
    const-string v5, "setting_draw_o_app"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    const-string v6, "setting_draw_o_app"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 507
    :cond_12
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureEnable:Z

    if-eqz v4, :cond_13

    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureVisable:Z

    if-eqz v4, :cond_13

    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenAnimation:Z

    if-nez v4, :cond_13

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v5, "setting_black_screen_gesture"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 512
    const-string v4, "0000000000"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :goto_0
    const-string v4, "BlackScreenGestureControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeBack sb = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.zte.zgesture.blackstatus"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 570
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_13
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    if-eqz v4, :cond_14

    .line 571
    const-string v5, "setting_close_app"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_close_app"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 573
    :cond_14
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    if-eqz v4, :cond_15

    .line 574
    const-string v5, "setting_switch_app"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_switch_app"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 576
    :cond_15
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsEnable:Z

    if-eqz v4, :cond_16

    .line 577
    const-string v5, "setting_screen_shot"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_screen_shot"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 579
    :cond_16
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->callEnable:Z

    if-eqz v4, :cond_17

    .line 580
    const-string v5, "setting_call"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_call"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 582
    :cond_17
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->answerEnable:Z

    if-eqz v4, :cond_18

    .line 583
    const-string v5, "setting_answer"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_answer"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 585
    :cond_18
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->pocketModeEnable:Z

    if-eqz v4, :cond_19

    .line 586
    const-string v5, "setting_pocket"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_pocket"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 588
    :cond_19
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->alarmCLockEnable:Z

    if-eqz v4, :cond_1a

    .line 589
    const-string v5, "setting_alarm_turn"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_alarm_turn"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 591
    :cond_1a
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->callTurnEnable:Z

    if-eqz v4, :cond_1b

    .line 592
    const-string v5, "setting_call_turn"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_call_turn"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 594
    :cond_1b
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenEnable:Z

    if-eqz v4, :cond_1c

    .line 595
    const-string v5, "setting_close_screen"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_close_screen"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 597
    :cond_1c
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->changeForSpeakerEnable:Z

    if-eqz v4, :cond_1d

    .line 598
    const-string v5, "setting_change_to_receiver"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_change_to_receiver"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 600
    :cond_1d
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->shakeEnable:Z

    if-eqz v4, :cond_1e

    .line 601
    const-string v5, "setting_shake"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v6, "setting_shake"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 602
    const-string v5, "setting_shake_app_package_default"

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mStringData:Ljava/util/HashMap;

    const-string v6, "setting_shake_app_package_default"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 604
    :cond_1e
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 605
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.zte.zgesture.refreshSetting"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 607
    return-void

    .line 514
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1f
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawCEnable:Z

    if-eqz v4, :cond_20

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v5, "setting_draw_c"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 515
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :goto_1
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawMEnable:Z

    if-eqz v4, :cond_21

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v5, "setting_draw_m"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 520
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :goto_2
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawWEnable:Z

    if-eqz v4, :cond_22

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v5, "setting_draw_w"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 525
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :goto_3
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawVEnable:Z

    if-eqz v4, :cond_23

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v5, "setting_draw_v"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 530
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :goto_4
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawEEnable:Z

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v5, "setting_draw_e"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 535
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :goto_5
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawSEnable:Z

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v5, "setting_draw_s"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 540
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :goto_6
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawUpEnable:Z

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v5, "setting_draw_up"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 545
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :goto_7
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawDownEnable:Z

    if-eqz v4, :cond_27

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v5, "setting_draw_down"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 550
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :goto_8
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawLeftEnable:Z

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v5, "setting_draw_left"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 555
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :goto_9
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->drawRightEnable:Z

    if-eqz v4, :cond_29

    iget-object v4, p0, Lcom/zte/zgesture/setting/GestureSetting;->mBooleanData:Ljava/util/HashMap;

    const-string v5, "setting_draw_right"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 560
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 517
    :cond_20
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 522
    :cond_21
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 527
    :cond_22
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 532
    :cond_23
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 537
    :cond_24
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 542
    :cond_25
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 547
    :cond_26
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 552
    :cond_27
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 557
    :cond_28
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 562
    :cond_29
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method
