.class public Lcom/zte/zgesture/tools/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final MEDIASOURCEID:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "GestureMotionUtils"

.field private static mInterfaceControl:Lcom/zte/zgesture/core/external/InterfaceControl;

.field private static mIsNear:Z

.field private static mLocalplayer:Landroid/media/MediaPlayer;

.field private static mProximityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

.field private static mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

.field private static sShowToast:Z

.field private static sTips:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 289
    sput-boolean v1, Lcom/zte/zgesture/tools/Utils;->sShowToast:Z

    .line 290
    sput-object v0, Lcom/zte/zgesture/tools/Utils;->sTips:Ljava/lang/String;

    .line 400
    sput-object v0, Lcom/zte/zgesture/tools/Utils;->mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    .line 401
    sput-object v0, Lcom/zte/zgesture/tools/Utils;->mProximityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .line 402
    sput-boolean v1, Lcom/zte/zgesture/tools/Utils;->mIsNear:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dp2Px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 257
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static Px2Dp(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # F

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 262
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 38
    sput-boolean p0, Lcom/zte/zgesture/tools/Utils;->mIsNear:Z

    return p0
.end method

.method static synthetic access$100()Lcom/zte/zgesture/core/external/InterfaceControl;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/zte/zgesture/tools/Utils;->mInterfaceControl:Lcom/zte/zgesture/core/external/InterfaceControl;

    return-object v0
.end method

.method static synthetic access$200()Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/zte/zgesture/tools/Utils;->mProximityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    return-object v0
.end method

.method static synthetic access$300()Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/zte/zgesture/tools/Utils;->mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    return-object v0
.end method

.method public static answerRingCall(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    const-string v4, "GestureMotionUtils"

    const-string v5, "answerRingCall"

    invoke-static {v4, v5}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :try_start_0
    const-string v4, "android.os.ServiceManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 349
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "telecom"

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 350
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v3

    .line 351
    .local v3, "telephony":Lcom/android/internal/telecom/ITelecomService;
    invoke-interface {v3}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "telephony":Lcom/android/internal/telecom/ITelecomService;
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "GestureMotionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acceptRingingCall():Exception e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static changeToReceiver(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    const-string v2, "GestureMotionUtils"

    const-string v3, "changeToReceiver"

    invoke-static {v2, v3}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :try_start_0
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 372
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GestureMotionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeToReceiver():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static changeToSpeeker(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    const-string v2, "GestureMotionUtils"

    const-string v3, "changeToSpeeker"

    invoke-static {v2, v3}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :try_start_0
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 384
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GestureMotionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeToSpeeker():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static closeBlackScreenGestureInDriver(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    invoke-static {p0}, Lcom/zte/zgesture/tools/Utils;->lightScreen(Landroid/content/Context;)V

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 183
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/zte/zgesture/tools/Utils$3;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/tools/Utils$3;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    return-void
.end method

.method public static getIndicatorColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_sb"

    const v2, 4287734701

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v2
.end method

.method public static getIntentForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 522
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 523
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 524
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public static getSettingColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_sb"

    const v2, 4287734701

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v2
.end method

.method private static initMediaPlayer()V
    .locals 1

    .prologue
    .line 438
    sget-object v0, Lcom/zte/zgesture/tools/Utils;->mLocalplayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/zte/zgesture/tools/Utils;->mLocalplayer:Landroid/media/MediaPlayer;

    .line 441
    :cond_0
    sget-object v0, Lcom/zte/zgesture/tools/Utils;->mLocalplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 442
    return-void
.end method

.method public static isInLauncher(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 98
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 101
    .local v1, "homeInfo":Landroid/content/pm/ActivityInfo;
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 102
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 104
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 109
    :goto_0
    return v4

    :cond_0
    move v4, v6

    goto :goto_0
.end method

.method public static isLeatherCase(Landroid/content/Context;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string v6, "1"

    .line 55
    .local v6, "prop":Ljava/lang/String;
    const/4 v1, 0x0

    .line 56
    .local v1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v8, "android.os.SystemProperties"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 58
    .local v5, "meths_dis":[Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v5

    if-ge v3, v8, :cond_0

    .line 59
    aget-object v8, v5, v3

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 60
    aget-object v8, v5, v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "persist.sys.zte.hallsensor"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v3    # "i":I
    .end local v5    # "meths_dis":[Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    const-string v8, "GestureMotionUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isLeatherCase :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v4, 0x1

    .line 70
    .local v4, "leatherCase":I
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 75
    :goto_2
    const/4 v7, 0x0

    .line 76
    .local v7, "res":Z
    packed-switch v4, :pswitch_data_0

    .line 84
    :goto_3
    return v7

    .line 58
    .end local v4    # "leatherCase":I
    .end local v7    # "res":Z
    .restart local v3    # "i":I
    .restart local v5    # "meths_dis":[Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    .end local v3    # "i":I
    .end local v5    # "meths_dis":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "GestureMotionUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SystemProperties.get persist.sys.zte.hallsensor Exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 71
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "leatherCase":I
    :catch_1
    move-exception v2

    .line 72
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    .line 73
    const-string v8, "GestureMotionUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Integer.parseInt(prop) Exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 78
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "res":Z
    :pswitch_0
    const/4 v7, 0x1

    .line 79
    goto :goto_3

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static isLockScreenState(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 90
    .local v0, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x1

    .line 93
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNear()Z
    .locals 1

    .prologue
    .line 405
    sget-boolean v0, Lcom/zte/zgesture/tools/Utils;->mIsNear:Z

    return v0
.end method

.method public static isSpeekerActivited(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 360
    :try_start_0
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 361
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 365
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :goto_0
    return v2

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GestureMotionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSpeekerActivited():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static lightScreen(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 310
    .local v0, "powerMgr":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    const v2, 0x10000006

    const-string v3, "bright"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 313
    .local v1, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 314
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 315
    const-string v2, "GestureMotionUtils"

    const-string v3, "lightScreen "

    invoke-static {v2, v3}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v1    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_0
    return-void
.end method

.method public static openBlackScreenGestureInDriver(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-static {p0}, Lcom/zte/zgesture/tools/Utils;->lightScreen(Landroid/content/Context;)V

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 146
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/zte/zgesture/tools/Utils$2;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/tools/Utils$2;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    return-void
.end method

.method public static playMediaPlayer(Landroid/content/Context;II)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneType"    # I
    .param p2, "streamtype"    # I

    .prologue
    .line 445
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->initMediaPlayer()V

    .line 447
    :try_start_0
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 448
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "GestureMotionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " playMediaPlayer Uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    sget-object v2, Lcom/zte/zgesture/tools/Utils;->mLocalplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 450
    sget-object v2, Lcom/zte/zgesture/tools/Utils;->mLocalplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 451
    sget-object v2, Lcom/zte/zgesture/tools/Utils;->mLocalplayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 452
    sget-object v2, Lcom/zte/zgesture/tools/Utils;->mLocalplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 453
    sget-object v2, Lcom/zte/zgesture/tools/Utils;->mLocalplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static releaseMediaPlayer()V
    .locals 1

    .prologue
    .line 466
    sget-object v0, Lcom/zte/zgesture/tools/Utils;->mLocalplayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 467
    sget-object v0, Lcom/zte/zgesture/tools/Utils;->mLocalplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 468
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/tools/Utils;->mLocalplayer:Landroid/media/MediaPlayer;

    .line 470
    :cond_0
    return-void
.end method

.method public static requestStartQueryNearStatus(Landroid/content/Context;Lcom/zte/zgesture/core/external/InterfaceControl;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "interfaceControl"    # Lcom/zte/zgesture/core/external/InterfaceControl;

    .prologue
    .line 409
    sget-object v0, Lcom/zte/zgesture/tools/Utils;->mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    if-nez v0, :cond_0

    .line 410
    invoke-static {p0}, Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;->getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    move-result-object v0

    sput-object v0, Lcom/zte/zgesture/tools/Utils;->mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    .line 412
    :cond_0
    sget-object v0, Lcom/zte/zgesture/tools/Utils;->mProximityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    if-nez v0, :cond_1

    .line 413
    new-instance v0, Lcom/zte/zgesture/tools/Utils$6;

    invoke-direct {v0}, Lcom/zte/zgesture/tools/Utils$6;-><init>()V

    sput-object v0, Lcom/zte/zgesture/tools/Utils;->mProximityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .line 431
    :cond_1
    sput-object p1, Lcom/zte/zgesture/tools/Utils;->mInterfaceControl:Lcom/zte/zgesture/core/external/InterfaceControl;

    .line 432
    sget-object v0, Lcom/zte/zgesture/tools/Utils;->mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    sget-object v1, Lcom/zte/zgesture/tools/Utils;->mProximityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;->registerListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 433
    return-void
.end method

.method public static sendLeftMusicKey()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/zgesture/tools/Utils$4;

    invoke-direct {v1}, Lcom/zte/zgesture/tools/Utils$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 233
    return-void
.end method

.method public static sendPowerKey()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "GestureMotionUtils"

    const-string v1, "sendPowerKey"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/zgesture/tools/Utils$1;

    invoke-direct {v1}, Lcom/zte/zgesture/tools/Utils$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 140
    return-void
.end method

.method public static sendRightMusicKey()V
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/zgesture/tools/Utils$5;

    invoke-direct {v1}, Lcom/zte/zgesture/tools/Utils$5;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 253
    return-void
.end method

.method public static setEnableScreenTouchIntercept(Ljava/lang/String;)V
    .locals 9
    .param p0, "enable"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 117
    .local v3, "meths_dis":[Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 118
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "set"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    aget-object v4, v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "persist.sys.zte.screenshot"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v2    # "i":I
    .end local v3    # "meths_dis":[Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-void

    .line 117
    .restart local v2    # "i":I
    .restart local v3    # "meths_dis":[Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "i":I
    .end local v3    # "meths_dis":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "GestureMotionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEnableScreenTouchIntercept Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setToastFlag(Z)V
    .locals 0
    .param p0, "show"    # Z

    .prologue
    .line 297
    sput-boolean p0, Lcom/zte/zgesture/tools/Utils;->sShowToast:Z

    .line 298
    return-void
.end method

.method public static setToastTips(Ljava/lang/String;)V
    .locals 0
    .param p0, "tips"    # Ljava/lang/String;

    .prologue
    .line 293
    sput-object p0, Lcom/zte/zgesture/tools/Utils;->sTips:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public static showToastTips(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    sget-boolean v0, Lcom/zte/zgesture/tools/Utils;->sShowToast:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zgesture/tools/Utils;->sTips:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lcom/zte/zgesture/tools/Utils;->sTips:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 303
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zgesture/tools/Utils;->sShowToast:Z

    .line 304
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/tools/Utils;->sTips:Ljava/lang/String;

    .line 306
    :cond_0
    return-void
.end method

.method public static startApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .prologue
    .line 511
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 513
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GestureMotionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext.startActivity Exception e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentStr"    # Ljava/lang/String;

    .prologue
    .line 266
    const-string v5, "GestureMotionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start app intentStr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v3, 0x1

    .line 268
    .local v3, "res":Z
    const/4 v1, 0x0

    .line 270
    .local v1, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 271
    const-string v5, "Appname"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "isVoiceAssistance":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    move v4, v3

    .line 286
    .end local v2    # "isVoiceAssistance":Ljava/lang/String;
    .end local v3    # "res":Z
    .local v4, "res":I
    :goto_1
    return v4

    .line 275
    .end local v4    # "res":I
    .restart local v2    # "isVoiceAssistance":Ljava/lang/String;
    .restart local v3    # "res":Z
    :cond_0
    const-string v5, "isFromDrawChar"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 280
    .end local v2    # "isVoiceAssistance":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v3, 0x0

    .line 282
    const-string v5, "GestureMotionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startApp: ActivityNotFoundException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    move v4, v3

    .line 286
    .restart local v4    # "res":I
    goto :goto_1

    .line 283
    .end local v4    # "res":I
    :catch_1
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "GestureMotionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startApp: Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static stopMediaPlayer()V
    .locals 1

    .prologue
    .line 460
    sget-object v0, Lcom/zte/zgesture/tools/Utils;->mLocalplayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 461
    sget-object v0, Lcom/zte/zgesture/tools/Utils;->mLocalplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 463
    :cond_0
    return-void
.end method

.method public static turnOffFlashlight(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightBroadcastType:I

    packed-switch v1, :pswitch_data_0

    .line 502
    :goto_0
    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    const-string v1, "GestureMotionUtils"

    const-string v2, "turnOffFlashlight"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    return-void

    .line 494
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ONOFF_FLASH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ONOFF_FLASH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 495
    goto :goto_0

    .line 497
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.TURNOFF_FLASH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 492
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static turnOnFlashlight(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightBroadcastType:I

    packed-switch v1, :pswitch_data_0

    .line 484
    :goto_0
    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 486
    const-string v1, "GestureMotionUtils"

    const-string v2, "turnOnFlashlight"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    return-void

    .line 476
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ONOFF_FLASH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ONOFF_FLASH"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 477
    goto :goto_0

    .line 479
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.TURNON_FLASH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static unLockSafe(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    sget v1, Lcom/zte/zgesture/tools/FeatureConfig;->unlockType:I

    packed-switch v1, :pswitch_data_0

    .line 333
    :goto_0
    :pswitch_0
    return-void

    .line 325
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 326
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zte.zgesture.need_unlock_screen"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 328
    const-string v1, "GestureMotionUtils"

    const-string v2, "sendBroadcast com.zte.zgesture.need_unlock_screen"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static vibrate(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "milliseconds"    # I

    .prologue
    .line 393
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 394
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 395
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 397
    :cond_0
    return-void
.end method
