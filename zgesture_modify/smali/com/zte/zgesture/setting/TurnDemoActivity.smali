.class public Lcom/zte/zgesture/setting/TurnDemoActivity;
.super Landroid/app/Activity;
.source "TurnDemoActivity.java"

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

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mDetected:Z

    return-void
.end method


# virtual methods
.method public destroyAction()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Lcom/zte/zgesture/ui/TipsView;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/ui/TipsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    .line 44
    iget-object v0, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/TurnDemoActivity;->setContentView(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TurnDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02022e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    .line 47
    iget-object v0, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TurnDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object v0, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TurnDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TurnDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mTurnOverRecognizer:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mDetected:Z

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 57
    iget-object v0, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->releaseMediaPlayer()V

    .line 59
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 26
    iget-object v0, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mTurnOverRecognizer:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 27
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->stopMediaPlayer()V

    .line 28
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 33
    iget-object v0, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mTurnOverRecognizer:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 34
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mDetected:Z

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/zte/zgesture/tools/Utils;->playMediaPlayer(Landroid/content/Context;II)V

    .line 38
    :cond_0
    return-void
.end method

.method public recongizerAction()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->stopMediaPlayer()V

    .line 64
    iget-object v0, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TurnDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mDetected:Z

    .line 66
    iget-object v0, p0, Lcom/zte/zgesture/setting/TurnDemoActivity;->mTurnOverRecognizer:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 68
    return-void
.end method
