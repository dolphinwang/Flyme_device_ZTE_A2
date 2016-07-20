.class Lcom/zte/zgesture/setting/DoubleTapDemoActivity$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DoubleTapDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/setting/DoubleTapDemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/DoubleTapDemoActivity;


# direct methods
.method private constructor <init>(Lcom/zte/zgesture/setting/DoubleTapDemoActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity$GestureListener;->this$0:Lcom/zte/zgesture/setting/DoubleTapDemoActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/zgesture/setting/DoubleTapDemoActivity;Lcom/zte/zgesture/setting/DoubleTapDemoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/zgesture/setting/DoubleTapDemoActivity;
    .param p2, "x1"    # Lcom/zte/zgesture/setting/DoubleTapDemoActivity$1;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/zte/zgesture/setting/DoubleTapDemoActivity$GestureListener;-><init>(Lcom/zte/zgesture/setting/DoubleTapDemoActivity;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity$GestureListener;->this$0:Lcom/zte/zgesture/setting/DoubleTapDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mDark:Z
    invoke-static {v0}, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->access$100(Lcom/zte/zgesture/setting/DoubleTapDemoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity$GestureListener;->this$0:Lcom/zte/zgesture/setting/DoubleTapDemoActivity;

    const/4 v1, 0x0

    # setter for: Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mDark:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->access$102(Lcom/zte/zgesture/setting/DoubleTapDemoActivity;Z)Z

    .line 65
    iget-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity$GestureListener;->this$0:Lcom/zte/zgesture/setting/DoubleTapDemoActivity;

    iget-object v1, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity$GestureListener;->this$0:Lcom/zte/zgesture/setting/DoubleTapDemoActivity;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020231

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->access$202(Lcom/zte/zgesture/setting/DoubleTapDemoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 66
    iget-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity$GestureListener;->this$0:Lcom/zte/zgesture/setting/DoubleTapDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->access$300(Lcom/zte/zgesture/setting/DoubleTapDemoActivity;)Lcom/zte/zgesture/ui/TipsView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity$GestureListener;->this$0:Lcom/zte/zgesture/setting/DoubleTapDemoActivity;

    invoke-virtual {v2}, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity$GestureListener;->this$0:Lcom/zte/zgesture/setting/DoubleTapDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mBackgroundBmp:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->access$200(Lcom/zte/zgesture/setting/DoubleTapDemoActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v0, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity$GestureListener;->this$0:Lcom/zte/zgesture/setting/DoubleTapDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->access$300(Lcom/zte/zgesture/setting/DoubleTapDemoActivity;)Lcom/zte/zgesture/ui/TipsView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity$GestureListener;->this$0:Lcom/zte/zgesture/setting/DoubleTapDemoActivity;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 69
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
