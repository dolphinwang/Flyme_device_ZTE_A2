.class public Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;
.super Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
.source "ScreenShotRecognizer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenShotRecognizer"

.field private static mInstance:Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;


# instance fields
.field private final MAX_TOUCHPOINTS:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mFirNewPoint:Landroid/graphics/Point;

.field private mFirOriginPoint:Landroid/graphics/Point;

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private mOriginFirDistance:I

.field private mOriginSecDistance:I

.field private mOriginThiDistance:I

.field private mPivotPoint:Landroid/graphics/Point;

.field private mSecNewPoint:Landroid/graphics/Point;

.field private mSecOriginPoint:Landroid/graphics/Point;

.field private mStart:Z

.field private mSwitch:Z

.field private mThiNewPoint:Landroid/graphics/Point;

.field private mThiOriginPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mInstance:Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;-><init>()V

    .line 30
    iput v2, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mOriginFirDistance:I

    .line 31
    iput v2, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mOriginSecDistance:I

    .line 32
    iput v2, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mOriginThiDistance:I

    .line 34
    const/4 v1, 0x3

    iput v1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->MAX_TOUCHPOINTS:I

    .line 36
    iput-boolean v2, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mStart:Z

    .line 39
    new-instance v1, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer$1;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer$1;-><init>(Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;)V

    iput-object v1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    iput-object p1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mContext:Landroid/content/Context;

    .line 50
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 51
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 52
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_screen_shot"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mSwitch:Z

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v0, "myIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mSwitch:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    .line 136
    :cond_0
    sget-object v0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mInstance:Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mInstance:Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;

    .line 140
    :cond_1
    sget-object v0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mInstance:Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;

    goto :goto_0
.end method

.method private judgeShotRecognizer()I
    .locals 7

    .prologue
    .line 96
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mPivotPoint:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mFirNewPoint:Landroid/graphics/Point;

    invoke-direct {p0, v3, v4}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->pointDistance(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v0

    .line 97
    .local v0, "newFirDistance":I
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mPivotPoint:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mSecNewPoint:Landroid/graphics/Point;

    invoke-direct {p0, v3, v4}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->pointDistance(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v1

    .line 98
    .local v1, "newSecDistance":I
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mPivotPoint:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mThiNewPoint:Landroid/graphics/Point;

    invoke-direct {p0, v3, v4}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->pointDistance(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v2

    .line 99
    .local v2, "newThiDistance":I
    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mFirNewPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mSecNewPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mThiNewPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mFirNewPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mSecNewPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mThiNewPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mPivotPoint:Landroid/graphics/Point;

    .line 101
    const-string v3, "ScreenShotRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newFirDistance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newSecDistance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newThiDistance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mOriginFirDistance:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mOriginFirDistance:I

    div-int/lit8 v4, v4, 0xa

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mOriginSecDistance:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mOriginSecDistance:I

    div-int/lit8 v4, v4, 0xa

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mOriginThiDistance:I

    sub-int/2addr v3, v2

    iget v4, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mOriginThiDistance:I

    div-int/lit8 v4, v4, 0xa

    if-le v3, v4, :cond_0

    .line 106
    const/4 v3, 0x1

    .line 108
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private notifyApp()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ScreenShotRecognizer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method private pointDistance(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 6
    .param p1, "p1"    # Landroid/graphics/Point;
    .param p2, "p2"    # Landroid/graphics/Point;

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 112
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 113
    :cond_0
    const/4 v0, -0x1

    .line 116
    :goto_0
    return v0

    :cond_1
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private processMoveEvent(Landroid/view/MotionEvent;)I
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mFirNewPoint:Landroid/graphics/Point;

    .line 61
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mSecNewPoint:Landroid/graphics/Point;

    .line 62
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mThiNewPoint:Landroid/graphics/Point;

    .line 64
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mFirNewPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mSecNewPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mThiNewPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mFirNewPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mSecNewPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mThiNewPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mPivotPoint:Landroid/graphics/Point;

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "res":I
    sget-boolean v1, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    if-nez v1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->judgeShotRecognizer()I

    move-result v0

    .line 71
    if-ne v0, v6, :cond_0

    .line 72
    iput-boolean v5, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mStart:Z

    .line 75
    :cond_0
    return v0
.end method

.method private processUpEvent()I
    .locals 5

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "res":I
    sget-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    if-eqz v2, :cond_2

    .line 84
    :cond_0
    iget-boolean v2, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mStart:Z

    if-nez v2, :cond_1

    move v1, v0

    .line 92
    .end local v0    # "res":I
    .local v1, "res":I
    :goto_0
    return v1

    .line 88
    .end local v1    # "res":I
    .restart local v0    # "res":I
    :cond_1
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->judgeShotRecognizer()I

    move-result v0

    .line 89
    const-string v2, "ScreenShotRecognizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processUpEvent() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mStart:Z

    move v1, v0

    .line 92
    .end local v0    # "res":I
    .restart local v1    # "res":I
    goto :goto_0
.end method

.method private startRecognizerHandler()V
    .locals 4

    .prologue
    .line 120
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.mipop"

    const-string v3, "com.android.mipop.cropimage.CropImageService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v1, "mipop":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    iget-object v2, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    return-void
.end method


# virtual methods
.method public doRecoginzer()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "ScreenShotRecognizer"

    const-string v1, "doRecoginzer()"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-boolean v0, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mInDemo:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->notifyApp()V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->startRecognizerHandler()V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mInstance:Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;

    .line 204
    const-string v0, "ScreenShotRecognizer"

    const-string v1, "finish()"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public handleMotion(Landroid/view/MotionEvent;)I
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, "res":I
    iget-boolean v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mSwitch:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mInDemo:Z

    if-nez v3, :cond_0

    move v2, v1

    .line 192
    .end local v1    # "res":I
    .local v2, "res":I
    :goto_0
    return v2

    .line 151
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 153
    .local v0, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v2, v1

    .line 192
    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto :goto_0

    .line 155
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->processUpEvent()I

    move-result v1

    .line 156
    const-string v3, "ScreenShotRecognizer"

    const-string v4, "MotionEvent.ACTION_UP"

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 159
    :pswitch_2
    const-string v3, "ScreenShotRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MotionEvent.ACTION_POINTER_UP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 162
    :pswitch_3
    const-string v3, "ScreenShotRecognizer"

    const-string v4, "MotionEvent.ACTION_DOWN"

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 165
    :pswitch_4
    const-string v3, "ScreenShotRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MotionEvent.ACTION_POINTER_DOWN pointerCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-ne v0, v9, :cond_2

    .line 167
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mFirOriginPoint:Landroid/graphics/Point;

    .line 168
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mSecOriginPoint:Landroid/graphics/Point;

    .line 169
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mThiOriginPoint:Landroid/graphics/Point;

    .line 170
    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mFirOriginPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mSecOriginPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mThiOriginPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mFirOriginPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mSecOriginPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mThiOriginPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mPivotPoint:Landroid/graphics/Point;

    .line 172
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mPivotPoint:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mFirOriginPoint:Landroid/graphics/Point;

    invoke-direct {p0, v3, v4}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->pointDistance(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v3

    iput v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mOriginFirDistance:I

    .line 173
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mPivotPoint:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mSecOriginPoint:Landroid/graphics/Point;

    invoke-direct {p0, v3, v4}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->pointDistance(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v3

    iput v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mOriginSecDistance:I

    .line 174
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mPivotPoint:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mThiOriginPoint:Landroid/graphics/Point;

    invoke-direct {p0, v3, v4}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->pointDistance(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v3

    iput v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mOriginThiDistance:I

    .line 175
    iput-boolean v7, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mStart:Z

    .line 176
    const-string v3, "ScreenShotRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MotionEvent.ACTION_POINTER_DOWN mOriginFirDistance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mOriginFirDistance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mOriginSecDistance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mOriginSecDistance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mOriginThiDistance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mOriginThiDistance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 180
    :cond_2
    iput-boolean v6, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mStart:Z

    goto/16 :goto_1

    .line 185
    :pswitch_5
    iget-boolean v3, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mStart:Z

    if-eqz v3, :cond_1

    if-ne v0, v9, :cond_1

    .line 186
    invoke-direct {p0, p1}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->processMoveEvent(Landroid/view/MotionEvent;)I

    move-result v1

    goto/16 :goto_1

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
