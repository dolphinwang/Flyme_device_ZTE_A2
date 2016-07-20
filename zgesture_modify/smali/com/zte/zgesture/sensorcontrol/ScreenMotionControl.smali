.class public Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;
.super Ljava/lang/Object;
.source "ScreenMotionControl.java"

# interfaces
.implements Lcom/zte/zgesture/core/external/InterfaceControl;


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenMotionControl"

.field private static mInstance:Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMotionRecognizerList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewRootMotionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mMotionRecognizerList:Ljava/util/Set;

    .line 24
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl$1;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl$1;-><init>(Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mViewRootMotionReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->createMotionRecognizers()V

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "viewrootMotionIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.zte.zgesture.viewrootmotion"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mViewRootMotionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    const-string v1, "ScreenMotionControl"

    const-string v2, "ScreenMotionControl()"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mMotionRecognizerList:Ljava/util/Set;

    return-object v0
.end method

.method private createMotionRecognizers()V
    .locals 2

    .prologue
    .line 104
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mMotionRecognizerList:Ljava/util/Set;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsEnable:Z

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mMotionRecognizerList:Ljava/util/Set;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_2
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 96
    :cond_0
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    .line 100
    :cond_1
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    goto :goto_0
.end method

.method public static isExistInstance()Z
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroyAction()V
    .locals 4

    .prologue
    .line 120
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mMotionRecognizerList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;

    .line 121
    .local v1, "recognizer":Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
    invoke-virtual {v1}, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;->finish()V

    goto :goto_0

    .line 123
    .end local v1    # "recognizer":Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
    :cond_0
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mMotionRecognizerList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mViewRootMotionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    const/4 v2, 0x0

    sput-object v2, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    .line 131
    const-string v2, "ScreenMotionControl"

    const-string v3, "destroyAction()"

    invoke-static {v2, v3}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 126
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public recongizerAction()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
