.class public Lcom/zte/zgesture/setting/CallDemoActivity;
.super Landroid/app/Activity;
.source "CallDemoActivity.java"

# interfaces
.implements Lcom/zte/zgesture/core/external/InterfaceControl;


# instance fields
.field private mBackgroundBmp:Landroid/graphics/Bitmap;

.field private mDetected:Z

.field private mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

.field private mTipsView:Lcom/zte/zgesture/ui/TipsView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mDetected:Z

    return-void
.end method


# virtual methods
.method public destroyAction()V
    .locals 0

    .prologue
    .line 71
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

    iput-object v0, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    .line 40
    iget-object v0, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/CallDemoActivity;->setContentView(Landroid/view/View;)V

    .line 41
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CallDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02022f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    .line 42
    iget-object v0, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CallDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 43
    iget-object v0, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CallDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CallDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 51
    iget-object v0, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 52
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mDetected:Z

    .line 26
    iget-object v0, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

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

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mDetected:Z

    .line 33
    iget-object v0, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 34
    return-void
.end method

.method public recongizerAction()V
    .locals 5

    .prologue
    .line 56
    iget-boolean v1, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mDetected:Z

    if-nez v1, :cond_0

    .line 57
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/zte/zgesture/setting/CallDemoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 58
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 59
    iget-object v1, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 60
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CallDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020230

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    .line 61
    iget-object v1, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CallDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/ui/TipsView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v1, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CallDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    invoke-virtual {v1, p0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/zgesture/setting/CallDemoActivity;->mDetected:Z

    .line 66
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    return-void
.end method
