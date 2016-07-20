.class public Lcom/zte/zgesture/setting/ScreenshotDemoActivity;
.super Landroid/app/Activity;
.source "ScreenshotDemoActivity.java"


# static fields
.field public static mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;


# instance fields
.field private ScreenShotRecognizerReceiver:Landroid/content/BroadcastReceiver;

.field private mBitMap:Landroid/graphics/Bitmap;

.field private mControlExist:Z

.field private mSucceed:Z

.field private mTipsView:Lcom/zte/zgesture/ui/TipsView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mSucceed:Z

    .line 23
    iput-boolean v0, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mControlExist:Z

    .line 33
    new-instance v0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity$1;-><init>(Lcom/zte/zgesture/setting/ScreenshotDemoActivity;)V

    iput-object v0, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->ScreenShotRecognizerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/setting/ScreenshotDemoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/ScreenshotDemoActivity;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mSucceed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/zte/zgesture/setting/ScreenshotDemoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/ScreenshotDemoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mSucceed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zte/zgesture/setting/ScreenshotDemoActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/ScreenshotDemoActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mBitMap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/zgesture/setting/ScreenshotDemoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/ScreenshotDemoActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mBitMap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/zgesture/setting/ScreenshotDemoActivity;)Lcom/zte/zgesture/ui/TipsView;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/ScreenshotDemoActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    return-object v0
.end method

.method public static setStatusListener(Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;)V
    .locals 0
    .param p0, "demoStatusListener"    # Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    .prologue
    .line 28
    if-eqz p0, :cond_0

    .line 29
    sput-object p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v1, Lcom/zte/zgesture/ui/TipsView;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/ui/TipsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    .line 54
    iget-object v1, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0, v1}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020209

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mBitMap:Landroid/graphics/Bitmap;

    .line 56
    iget-object v1, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/ui/TipsView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v1, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, "appFilter":Landroid/content/IntentFilter;
    const-string v1, "ScreenShotRecognizer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->ScreenShotRecognizerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mSucceed:Z

    .line 64
    sget-object v1, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    if-eqz v1, :cond_0

    .line 65
    sget-object v1, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    invoke-interface {v1}, Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;->onStartDemo()V

    .line 67
    :cond_0
    invoke-static {}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->isExistInstance()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mControlExist:Z

    .line 68
    const-string v1, "ScreenMotionControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mControlExist :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mControlExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    .line 70
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->SetDemoStatus(Z)V

    .line 71
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 76
    iget-object v0, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->ScreenShotRecognizerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    iget-object v0, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    sget-object v0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    invoke-interface {v0}, Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;->onStopDemo()V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->SetDemoStatus(Z)V

    .line 83
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mControlExist:Z

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->destroyAction()V

    .line 86
    :cond_1
    return-void
.end method
