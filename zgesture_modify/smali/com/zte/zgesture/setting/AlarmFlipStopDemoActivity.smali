.class public Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;
.super Landroid/app/Activity;
.source "AlarmFlipStopDemoActivity.java"

# interfaces
.implements Lcom/zte/zgesture/core/external/InterfaceControl;


# instance fields
.field private mBackgroundBmp:Landroid/graphics/Bitmap;

.field private mDetected:Z

.field private mTipsView:Lcom/zte/zgesture/ui/TipsView;

.field private mTurnOverRecognizer:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mDetected:Z

    return-void
.end method


# virtual methods
.method public destroyAction()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v0, Lcom/zte/zgesture/ui/TipsView;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/ui/TipsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    .line 46
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->setContentView(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020203

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    .line 49
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mTurnOverRecognizer:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mDetected:Z

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 59
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 60
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->releaseMediaPlayer()V

    .line 61
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mTurnOverRecognizer:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 29
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->stopMediaPlayer()V

    .line 30
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 35
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mTurnOverRecognizer:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 36
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mDetected:Z

    if-nez v0, :cond_0

    .line 37
    invoke-static {p0, v1, v1}, Lcom/zte/zgesture/tools/Utils;->playMediaPlayer(Landroid/content/Context;II)V

    .line 39
    :cond_0
    return-void
.end method

.method public recongizerAction()V
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->stopMediaPlayer()V

    .line 66
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020231

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    .line 68
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mDetected:Z

    .line 72
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;->mTurnOverRecognizer:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 74
    return-void
.end method
