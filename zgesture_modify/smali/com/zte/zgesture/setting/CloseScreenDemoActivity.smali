.class public Lcom/zte/zgesture/setting/CloseScreenDemoActivity;
.super Landroid/app/Activity;
.source "CloseScreenDemoActivity.java"


# static fields
.field public static final DARK_ACTION:Ljava/lang/String; = "DoubleTapDemoActivity.dark"


# instance fields
.field private darkBroadcast:Landroid/content/BroadcastReceiver;

.field private mBackgroundBmp:Landroid/graphics/Bitmap;

.field private mControlExist:Z

.field private mDark:Z

.field private mHandTurnControl:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

.field private mTipsView:Lcom/zte/zgesture/ui/TipsView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mDark:Z

    .line 23
    iput-boolean v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mControlExist:Z

    .line 25
    new-instance v0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/setting/CloseScreenDemoActivity$1;-><init>(Lcom/zte/zgesture/setting/CloseScreenDemoActivity;)V

    iput-object v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->darkBroadcast:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/setting/CloseScreenDemoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/CloseScreenDemoActivity;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mDark:Z

    return v0
.end method

.method static synthetic access$002(Lcom/zte/zgesture/setting/CloseScreenDemoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/CloseScreenDemoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mDark:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zte/zgesture/setting/CloseScreenDemoActivity;)Lcom/zte/zgesture/ui/TipsView;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/CloseScreenDemoActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v1, Lcom/zte/zgesture/ui/TipsView;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/ui/TipsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    .line 55
    iget-object v1, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0, v1}, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->setContentView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020231

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    .line 58
    iget-object v1, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/ui/TipsView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v1, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, "darkfilter":Landroid/content/IntentFilter;
    const-string v1, "DoubleTapDemoActivity.dark"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->darkBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    invoke-static {}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->isExistInstance()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mControlExist:Z

    .line 65
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mHandTurnControl:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {v0, v2}, Lcom/zte/zgesture/ui/TipsView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->darkBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mHandTurnControl:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->demoListener(Z)V

    .line 76
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mControlExist:Z

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mHandTurnControl:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    invoke-virtual {v0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->destroyAction()V

    .line 79
    :cond_1
    iput-object v2, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mHandTurnControl:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 81
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 40
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mHandTurnControl:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->demoListener(Z)V

    .line 42
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mHandTurnControl:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->demoListener(Z)V

    .line 48
    return-void
.end method
