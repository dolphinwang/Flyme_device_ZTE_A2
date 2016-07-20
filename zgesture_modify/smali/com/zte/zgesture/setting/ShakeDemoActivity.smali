.class public Lcom/zte/zgesture/setting/ShakeDemoActivity;
.super Landroid/app/Activity;
.source "ShakeDemoActivity.java"

# interfaces
.implements Lcom/zte/zgesture/core/external/InterfaceControl;


# instance fields
.field private mBackgroundBmp:Landroid/graphics/Bitmap;

.field private mDetected:Z

.field private mShakeTwiceRecognizer:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

.field private mTipsView:Lcom/zte/zgesture/ui/TipsView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/ShakeDemoActivity;->mDetected:Z

    return-void
.end method


# virtual methods
.method public destroyAction()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Lcom/zte/zgesture/ui/TipsView;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/ui/TipsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zgesture/setting/ShakeDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    .line 40
    iget-object v0, p0, Lcom/zte/zgesture/setting/ShakeDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/ShakeDemoActivity;->setContentView(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ShakeDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020234

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/setting/ShakeDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    .line 43
    iget-object v0, p0, Lcom/zte/zgesture/setting/ShakeDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ShakeDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/setting/ShakeDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v0, p0, Lcom/zte/zgesture/setting/ShakeDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ShakeDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/ShakeDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/setting/ShakeDemoActivity;->mShakeTwiceRecognizer:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 52
    iget-object v0, p0, Lcom/zte/zgesture/setting/ShakeDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 53
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/ShakeDemoActivity;->mDetected:Z

    .line 26
    iget-object v0, p0, Lcom/zte/zgesture/setting/ShakeDemoActivity;->mShakeTwiceRecognizer:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 27
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/ShakeDemoActivity;->mDetected:Z

    .line 33
    iget-object v0, p0, Lcom/zte/zgesture/setting/ShakeDemoActivity;->mShakeTwiceRecognizer:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 34
    return-void
.end method

.method public recongizerAction()V
    .locals 3

    .prologue
    .line 57
    iget-boolean v1, p0, Lcom/zte/zgesture/setting/ShakeDemoActivity;->mDetected:Z

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/zte/zgesture/setting/ShakeDemoActivity;->mShakeTwiceRecognizer:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    invoke-virtual {v1, p0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 59
    invoke-static {p0}, Lcom/zte/zgesture/tools/Utils;->turnOnFlashlight(Landroid/content/Context;)V

    .line 60
    const-string v1, "zte.android.flashlight"

    invoke-static {p0, v1}, Lcom/zte/zgesture/tools/Utils;->getIntentForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 62
    const-string v1, "shake"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/ShakeDemoActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 65
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "zte.android.flashlight"

    const-string v2, "zte.android.flashlight.ZTEFlashLight"

    invoke-static {p0, v1, v2}, Lcom/zte/zgesture/tools/Utils;->startApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
