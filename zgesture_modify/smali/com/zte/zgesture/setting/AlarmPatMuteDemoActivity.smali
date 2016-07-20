.class public Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;
.super Landroid/app/Activity;
.source "AlarmPatMuteDemoActivity.java"


# static fields
.field public static mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;


# instance fields
.field private mBackgroundBmp:Landroid/graphics/Bitmap;

.field private mPatSucceed:Z

.field private mScreenMotionReceiver:Landroid/content/BroadcastReceiver;

.field private mTipsView:Lcom/zte/zgesture/ui/TipsView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mPatSucceed:Z

    .line 33
    new-instance v0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity$1;-><init>(Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;)V

    iput-object v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mScreenMotionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->handleMotion(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private handleMotion(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 49
    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 50
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mPatSucceed:Z

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->stopMediaPlayer()V

    .line 53
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 54
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020231

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    .line 55
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mScreenMotionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mPatSucceed:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public static setStatusListener(Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;)V
    .locals 0
    .param p0, "demoStatusListener"    # Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    .prologue
    .line 28
    if-eqz p0, :cond_0

    .line 29
    sput-object p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    new-instance v0, Lcom/zte/zgesture/ui/TipsView;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/ui/TipsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    .line 95
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->setContentView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020203

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    .line 98
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    invoke-interface {v0}, Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;->onStartDemo()V

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mPatSucceed:Z

    .line 105
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 113
    sget-object v0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    invoke-interface {v0}, Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;->onStopDemo()V

    .line 116
    :cond_0
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->releaseMediaPlayer()V

    .line 117
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 74
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mPatSucceed:Z

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mScreenMotionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    :cond_0
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->stopMediaPlayer()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    iget-boolean v1, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mPatSucceed:Z

    if-nez v1, :cond_0

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "viewrootMotionIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.zte.zgesture.viewrootmotion"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->mScreenMotionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    invoke-static {p0, v2, v2}, Lcom/zte/zgesture/tools/Utils;->playMediaPlayer(Landroid/content/Context;II)V

    .line 89
    .end local v0    # "viewrootMotionIntentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method
