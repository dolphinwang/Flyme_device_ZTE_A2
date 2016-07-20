.class Lcom/zte/zgesture/ui/AutoDrawView$1;
.super Ljava/lang/Object;
.source "AutoDrawView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/ui/AutoDrawView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/ui/AutoDrawView;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/ui/AutoDrawView;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/zte/zgesture/ui/AutoDrawView$1;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 151
    iget-object v1, p0, Lcom/zte/zgesture/ui/AutoDrawView$1;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/zte/zgesture/ui/AutoDrawView;->access$000(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 152
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 153
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 154
    iget-object v1, p0, Lcom/zte/zgesture/ui/AutoDrawView$1;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/zte/zgesture/ui/AutoDrawView;->access$000(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/zte/zgesture/ui/AutoDrawView$1;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/zgesture/ui/AutoDrawView;->access$200(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$1;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mStartDrawRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/zte/zgesture/ui/AutoDrawView;->access$100(Lcom/zte/zgesture/ui/AutoDrawView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    return-void
.end method
