.class public Lcom/zte/zgesture/setting/DoubleTapDemoActivity;
.super Landroid/app/Activity;
.source "DoubleTapDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zgesture/setting/DoubleTapDemoActivity$1;,
        Lcom/zte/zgesture/setting/DoubleTapDemoActivity$GestureListener;
    }
.end annotation


# instance fields
.field private mBackgroundBmp:Landroid/graphics/Bitmap;

.field private mDark:Z

.field private mGesture:Landroid/view/GestureDetector;

.field private mTipsView:Lcom/zte/zgesture/ui/TipsView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mDark:Z

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/zte/zgesture/setting/DoubleTapDemoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/DoubleTapDemoActivity;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mDark:Z

    return v0
.end method

.method static synthetic access$102(Lcom/zte/zgesture/setting/DoubleTapDemoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/DoubleTapDemoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mDark:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zte/zgesture/setting/DoubleTapDemoActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/DoubleTapDemoActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/zgesture/setting/DoubleTapDemoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/DoubleTapDemoActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zte/zgesture/setting/DoubleTapDemoActivity;)Lcom/zte/zgesture/ui/TipsView;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/DoubleTapDemoActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/zte/zgesture/setting/DoubleTapDemoActivity$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/zgesture/setting/DoubleTapDemoActivity$GestureListener;-><init>(Lcom/zte/zgesture/setting/DoubleTapDemoActivity;Lcom/zte/zgesture/setting/DoubleTapDemoActivity$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mGesture:Landroid/view/GestureDetector;

    .line 38
    new-instance v0, Lcom/zte/zgesture/ui/TipsView;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/ui/TipsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    .line 39
    iget-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->setContentView(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setBackgroundColor(I)V

    .line 42
    iget-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 52
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 26
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 31
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
